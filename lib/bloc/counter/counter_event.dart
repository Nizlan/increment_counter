part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
  final int counter;

  const CounterEvent(this.counter);
}

class CounterIncrement extends CounterEvent {
  const CounterIncrement(int counter) : super(counter);
}

class CounterDecrement extends CounterEvent {
  const CounterDecrement(int counter) : super(counter);
}
