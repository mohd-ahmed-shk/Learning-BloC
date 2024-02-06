import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/rivaan/bloc/counter_bloc.dart';
import 'package:learning_bloc/rivaan/boc_again/again_counter_bloc.dart';
import 'package:learning_bloc/rivaan/boc_again/again_counter_event.dart';

import '../../rivaan/cubit/counter_cubit.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    final againCounterBloc = BlocProvider.of<AgainCounterBloc>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // onPressed: () => counterCubit.increment(),
            onPressed: () {
              // counterBloc.add(CounterIncremented());
              againCounterBloc.add(AgainCounterIncremented());
            },
            tooltip: 'Increment',
            heroTag: "btn1",
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            // onPressed: () => counterCubit.decrement(),
            onPressed: () {
              // counterBloc.add(CounterDecremented());
              againCounterBloc.add(AgainCounterDecremented());
            },
            tooltip: 'Decrement',
            heroTag: "btn2",
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
