import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/rohit/bloc/internet_bloc/internet_bloc.dart';
import 'package:learning_bloc/rohit/bloc/internet_bloc/internet_state.dart';
import 'package:learning_bloc/rohit/cubit/internet_cubit/internet_cubit.dart';

class InternetPage extends StatelessWidget {
  const InternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: BlocBuilder<InternetBloc,InternetState>(
        //   builder: (context, state) {
        //     if(state is InternetGainedState) {
        //       return const Text('Connected');
        //     } else if(state is InternetLostState) {
        //       return const Text('Not Connected');
        //     } else {
        //       return const Text('Loading');
        //     }
        //   },
        // ),

        // child: BlocConsumer<InternetBloc, InternetState>(
        //   listener: (context, state) {
        //     if (state is InternetGainedState) {
        //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Connected')));
        //     } else if(state is InternetLostState) {
        //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Not Connected')));
        //     } else {
        //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Loading')));
        //
        //     }
        //   },
        //   builder: (context, state) {
        //     if (state is InternetGainedState) {
        //       return const Text('Connected');
        //     } else if (state is InternetLostState) {
        //       return const Text('Not Connected');
        //     } else {
        //       return const Text('Loading');
        //     }
        //   },
        // ),

        child: BlocBuilder<InternetCubit, Internet>(
          builder: (context, state) {
            if (state == Internet.gain) {
              return const Text('Connected');
            } else if (state == Internet.lost) {
              return const Text('Not Connected');
            } else {
              return const Text('Loading');
            }
          },
        ),
      ),
    );
  }
}
