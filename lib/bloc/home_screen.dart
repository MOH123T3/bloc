// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'internet_bloc/internet_bloc.dart';
import 'internet_bloc/internet_state.dart';

class HomeScreenBlocPattern extends StatelessWidget {
  const HomeScreenBlocPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Bloc")),
        body: Center(
          child: BlocConsumer<InternetBloc, InternetState>(
            listener: (context, state) {
              if (state is InternetGainedState) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Connected"), backgroundColor: Colors.green));
              } else if (state is InternetLostState) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Not Connected"),
                    backgroundColor: Colors.red));
              }
            },
            builder: (context, state) {
              if (state is InternetGainedState) {
                return Text("Connected");
              } else if (state is InternetLostState) {
                return Text("Not Connected");
              } else {
                return Text("Loading...");
              }
            },
          ),
        )

// For Show Dialog, Navigation, toast etc

        //  BlocListener<InternetBloc, InternetState>(
        //   listener: (context, state) {
        //     if (state is InternetGainedState) {
        //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //           content: Text("Connected"), backgroundColor: Colors.green));
        //     } else if (state is InternetLostState) {
        //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //           content: Text("Not Connected"), backgroundColor: Colors.red));
        //     } else {
        //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //           content: Text("Loading..."), backgroundColor: Colors.white));
        //     }
        //   },
        // )
// For UI
        // BlocBuilder<InternetBloc, InternetState>(
        //   builder: (context, state) {
        //     if (state is InternetGainedState) {
        //       return Text("Connected");
        //     } else if (state is InternetLostState) {
        //       return Text("Not Connected");
        //     } else {
        //       return Text("Loading...");
        //     }
        //   },
        // ),

        );
  }
}
