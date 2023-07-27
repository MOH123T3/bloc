import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/bloc/internet_bloc/internet_bloc.dart';
import 'package:flutter_counter/cubits/home_screen_cubits.dart';
import 'bloc/home_screen.dart';
import 'cubits/internet_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // provide internet connection
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreenBlocPattern(),
      ),
    );
  }
}
