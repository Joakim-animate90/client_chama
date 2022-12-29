part of 'home_bloc.dart';
abstract class HomeEvent extends Equatable {
  const HomeEvent();
}


class HomeEventCreateGroup extends HomeEvent {
  const HomeEventCreateGroup();
  @override
  List<Object> get props => [];
}

class HomeEventSearchGroup extends HomeEvent {
  const HomeEventSearchGroup();
  @override
  List<Object> get props => [];
}

