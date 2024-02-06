import 'package:flutter/material.dart';
import 'package:learning_bloc/ui/auth/signin/signin_page.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage(),));
                  },
                  child: const Text("Sign In with Email"),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text("Sign In with Google"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
