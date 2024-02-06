import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/ui/slider/bloc/bloc_event.dart';
import 'package:learning_bloc/ui/slider/bloc/bloc_slider.dart';
import 'package:learning_bloc/ui/slider/bloc/bloc_state.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<BlocSlider, BlocState>(
              builder: (context, state) {
                if (state is InitialState) {
                  return Text("${state.value}");
                } else if (state is UpdatedState) {
                  return Text("${state.value}",style: TextStyle(color: Colors.blue),);
                } else {
                  return Container();
                }
              },
            ),
            BlocBuilder<BlocSlider, BlocState>(
              builder: (context, state) {
                double sliderValue = 0.0;
                if (state is UpdatedState) {
                  sliderValue = state.value;
                }
                return Slider(
                  min: 0,
                  max: 10,
                  value: sliderValue,
                  onChanged: (value) {
                    context.read<BlocSlider>().add(ForwardEvent(value));
                    print("===========$value==============");
                  },
                  activeColor: sliderValue == 0.0 ? Colors.green : Colors.black,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
