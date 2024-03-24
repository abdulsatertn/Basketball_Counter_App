import 'package:basket_ball_counter/cubit/counter_cubit.dart';
import 'package:basket_ball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(CounterAIncrementState()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter '),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('Team A', style: TextStyle(fontSize: 32)),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncreement(team: 'A', buttonNumber: 1);
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncreement(team: 'A', buttonNumber: 2);
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncreement(team: 'A', buttonNumber: 3);
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text('Team B', style: TextStyle(fontSize: 32)),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncreement(team: 'B', buttonNumber: 1);
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncreement(team: 'B', buttonNumber: 2);
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncreement(team: 'B', buttonNumber: 3);
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50)),
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).reset();
              },
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            const Spacer()
          ],
        ),
      );
    }, listener: (context, state) {
      if (state is CounterAIncrementState) {
      } else {}
    });
  }
}
