import 'package:dio/dio.dart';
// import 'package:iurc_mobile_app/authentication/repositories/tokens_repository.dart';
import 'package:iurc_mobile_app/conf/globals.dart';

class Api {
  final dio = createDio();
  final tokenDio = Dio(BaseOptions(baseUrl: Globals.baseUrl));

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: Globals.baseUrl,
      receiveTimeout: 10000,
      connectTimeout: 10000,
      sendTimeout: 10000,
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        var accessToken = TokensRepository().getAccessToken();
        options.headers['Authorization'] = 'Bearer: $accessToken';
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401 ||
            error.response?.statusCode == 403) {
          await TokensRopository().refreshTokens();
          await _retry(error.requestOptions);
        }
        return handler.next(error);
      },
    ));
    return dio;
  }

  static Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = new Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return Api().dio.request<dynamic>(
          requestOptions.path,
          data: requestOptions.data,
          queryParameters: requestOptions.queryParameters,
          options: options,
        );
  }
}