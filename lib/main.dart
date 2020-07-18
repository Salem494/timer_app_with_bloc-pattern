import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer/bloc/bloc.dart';
import 'package:timer/ticker.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timer',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(90, 150, 10, 1),
        accentColor: Color.fromRGBO(27, 50, 126, 1),
      ),
      home:BlocProvider(
        create: (context)=>TimerBloc(ticker: Ticker()),
        child: Home(),
      ) ,
    );
  }
}
