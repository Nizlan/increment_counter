import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(counter: 0)) {
    on<CounterIncrement>((event, emit) {
      emit(CounterInitial(counter: event.counter + 1));
    });
    on<CounterDecrement>((event, emit) {
      emit(CounterInitial(counter: event.counter - 1));
    });
  }
}
