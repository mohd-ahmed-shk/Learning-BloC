import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/rivaan/bloc/counter_bloc.dart';
import 'package:learning_bloc/rivaan/boc_again/again_counter_bloc.dart';
import 'package:learning_bloc/rivaan/cubit/counter_cubit.dart';
import 'package:learning_bloc/ui/second/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // BlocBuilder<CounterCubit, int>(
            //   bloc: counterCubit,
            //   builder: (context, state) {
            //     print("----s------$state----------------------");
            //     return Text(
            //       '$state',
            //       style: Theme.of(context).textTheme.headlineMedium,
            //     );
            //   },
            // ),

            BlocBuilder<AgainCounterBloc,int>(
              builder: (context, state) {
                return Text(
                  '$state',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
              ));
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
