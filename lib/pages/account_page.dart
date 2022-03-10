import 'package:iurc_mobile_app/conf/imports.dart';

class AccountPage extends StatelessWidget {
  final UserModel model = Mocks.appUser;

  String get title => "Account";

  AccountPage({
    Key? key,
    // required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          AccountHeader(model: model),
        ],
      ),
    );
  }
}
