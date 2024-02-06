import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/ui/auth/signin/sign_in_bloc/sign_in_bloc.dart';
import 'package:learning_bloc/ui/auth/signin/sign_in_bloc/sign_in_event.dart';
import 'package:learning_bloc/ui/auth/signin/sign_in_bloc/sign_in_state.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _nameCon = TextEditingController();
  final _passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) {
                  if (state is SignInError) {
                    return Text(
                      state.errorMessage,
                      style: const TextStyle(color: Colors.red),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _nameCon,
                onChanged: (value) {
                  BlocProvider.of<SignInBloc>(context).add(
                      SignInTextChangedEvent(_nameCon.text, _passCon.text));
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), isDense: true),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passCon,
                onChanged: (value) {
                  BlocProvider.of<SignInBloc>(context).add(
                      SignInTextChangedEvent(_passCon.text, _passCon.text));
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.maxFinite,
                child: BlocBuilder(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: (state is SignInValidState)
                              ? Colors.blue
                              : Colors.red),
                      child: const Text('Sign In'),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
