import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Bloc Example')),
      body: BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterView(),
      ),
    );
  }
}

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is CounterInitial) {
                return Text(
                  'Count: ${state.count}',
                  style: TextStyle(fontSize: 24),
                );
              }
              return Container(); // Placeholder for other states
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterBloc.add(IncrementEvent());
                },
                child: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  counterBloc.add(DecrementEvent());
                },
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
