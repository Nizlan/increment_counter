import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter/counter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<CounterBloc>(context),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () => context
                      .read<CounterBloc>()
                      .add(CounterDecrement(state.counter)),
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () => context
                      .read<CounterBloc>()
                      .add(CounterIncrement(state.counter)),
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
