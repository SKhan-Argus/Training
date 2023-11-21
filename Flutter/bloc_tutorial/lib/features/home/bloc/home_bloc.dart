

import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/features/home/bloc/home_event.dart';
import 'package:meta/meta.dart';
import 'package:bloc_tutorial/features/home/bloc/home_state.dart';

import 'home_event.dart';

class HomeBloc extends Bloc<HomeBloc, HomeState>{

  HomeBloc():super(HomeInitial)){
  on<HomeEvent>((event, emit){

  });
  }
}
