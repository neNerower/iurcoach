part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.pageChanged({required int pageIndex}) = NavigationPageChanged;
}