
import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/cubit_counter.dart';
import 'package:counter_app/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, int>(
      builder: (context, counter) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const IncrementDecrementPage()));},
                tooltip: 'IncDecPage',
                heroTag: "home",
                child: const Icon(Icons.navigate_next),
              ),
            ],
          ),
        );
      }
    );
  }
}