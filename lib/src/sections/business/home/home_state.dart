part of 'home_bloc.dart';
abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeStateInitial extends HomeState {
  const HomeStateInitial();
  @override
  List<Object> get props => [];
}

class HomeStateLoading extends HomeState {
  const HomeStateLoading();
  @override
  List<Object> get props => [];
}

class HomeStateCreateGroup extends HomeState {
  const HomeStateCreateGroup();
  @override
  List<Object> get props => [];
}

class HomeStateSearchGroup extends HomeState {
  const HomeStateSearchGroup();
  @override
  List<Object> get props => [];
}

class HomeStateError extends HomeState {
  const HomeStateError();
  @override
  List<Object> get props => [];
}