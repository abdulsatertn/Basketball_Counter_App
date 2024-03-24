import 'package:basket_ball_counter/cubit/counter_cubit.dart';
import 'package:basket_ball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
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
                  Text('Team A', style: TextStyle(fontSize: 32)),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 150),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                    onPressed: () {},
                    child: Text(
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
                        minimumSize: Size(150, 50)),
                    onPressed: () {},
                    child: Text(
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
                        minimumSize: Size(150, 50)),
                    onPressed: () {},
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 350,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  Text('Team B', style: TextStyle(fontSize: 32)),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 150),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                    onPressed: () {},
                    child: Text(
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
                        minimumSize: Size(150, 50)),
                    onPressed: () {},
                    child: Text(
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
                        minimumSize: Size(150, 50)),
                    onPressed: () {},
                    child: Text(
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
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
            onPressed: () {},
            child: Text(
              'Reset',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
