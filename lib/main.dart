import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/rivaan/bloc/counter_bloc.dart';
import 'package:learning_bloc/rivaan/boc_again/again_counter_bloc.dart';
import 'package:learning_bloc/rivaan/cubit/counter_cubit.dart';
import 'package:learning_bloc/rohit/bloc/internet_bloc/internet_bloc.dart';
import 'package:learning_bloc/rohit/cubit/internet_cubit/internet_cubit.dart';
import 'package:learning_bloc/ui/auth/select/select_page.dart';
import 'package:learning_bloc/ui/auth/signin/sign_in_bloc/sign_in_bloc.dart';
import 'package:learning_bloc/ui/internet/internet_page.dart';
import 'package:learning_bloc/ui/my_home/my_home_page.dart';
import 'package:learning_bloc/ui/slider/bloc/bloc_slider.dart';
import 'package:learning_bloc/ui/slider/slider_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit(),),
        BlocProvider(create: (context) => CounterBloc(),),
        BlocProvider(create: (context) => AgainCounterBloc(),),
        BlocProvider(create: (context) => InternetBloc(),),
        BlocProvider(create: (context) => InternetCubit(),),
        BlocProvider(create: (context) => SignInBloc(),),
        BlocProvider(create: (context) => BlocSlider(),),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: const SliderPage(),
      ),
    );
  }
}



/*

UI---(Event)--->Bloc---(Request)--->Data
UI<---(State)---Bloc<---(Response)---Data

Event and State are the streams
Event is added and State is emitted

== -> it is used to check value
is -> it is used to check data type
 */
