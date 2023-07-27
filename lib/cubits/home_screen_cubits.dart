// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/cubits/internet_cubit.dart';

class HomeScreenCubitPattern extends StatelessWidget {
  const HomeScreenCubitPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Cubit")),
        body: Center(
          child: BlocConsumer<InternetCubit, InternetState>(
            listener: (context, state) {
              if (state == InternetState.Gained) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Connected"), backgroundColor: Colors.green));
              } else if (state == InternetState.Lost) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Not Connected"),
                    backgroundColor: Colors.red));
              }
            },
            builder: (context, state) {
              if (state == InternetState.Gained) {
                return Text("Connected");
              } else if (state == InternetState.Lost) {
                return Text("Not Connected");
              } else {
                return Text("Loading...");
              }
            },
          ),
        ));
  }
}
