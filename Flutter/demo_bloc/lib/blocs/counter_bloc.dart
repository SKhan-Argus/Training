import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

// States
abstract class CounterState {
  get count => null;
}

class CounterInitial extends CounterState {
  final int count;

  CounterInitial(this.count);
}

// Bloc
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield CounterInitial(state.count + 1);
    } else if (event is DecrementEvent) {
      yield CounterInitial(state.count - 1);
    }
  }
}


