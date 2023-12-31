import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/counter_cubit.dart';
import '../Cubit/counter_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, ProcessState>(
      builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${BlocProvider.of<CounterCubit>(context).counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).updateState(sign: '0');
                },
                child: const Text('Reset'),
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).updateState(sign: '+');
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).updateState(sign: '-');
                },
                child: const Icon(Icons.remove),
              ),
            ],
          )),
      listener: (context, state) {},
    );
  }
}
