import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeStateInitial()){
    on<HomeEventCreateGroup>((event, emit) async {
      emit(const HomeStateLoading());
      try {
        emit(const HomeStateCreateGroup());
      } catch (e) {
        emit(const HomeStateError());
      }
    });
    on<HomeEventSearchGroup>((event, emit) async {
      emit(const HomeStateLoading());
      try {
        emit(const HomeStateSearchGroup());
      } catch (e) {
        emit(const HomeStateError());
      }
    });
  }


}