part of 'navigation_bloc.dart';

class NavigationState extends Equatable {
  final int pageIndex;

  const NavigationState({required this.pageIndex});

  const NavigationState.calendar() : this(pageIndex: 0);
  const NavigationState.results() : this(pageIndex: 1);
  const NavigationState.news() : this(pageIndex: 2);
  const NavigationState.account() : this(pageIndex: 3);

  @override
  List<Object?> get props => [pageIndex];
}
