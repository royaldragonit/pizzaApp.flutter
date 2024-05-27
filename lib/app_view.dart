import 'package:first_app/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:first_app/screens/auth/views/welcome_screen.dart';
import 'package:first_app/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppView extends StatelessWidget{
const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: Colors.grey.shade100,
          onBackground: Colors.black,
          primary: Colors.blue,
          onPrimary: Colors.white
        )
      ),
      home: BlocBuilder<AuthenticationBloc,AuthenticationState>(
        builder: ((context,state){
          if(state.status==AuthenticationStatus.authenticated){
            return HomeScreen();
          }else{
            return WelcomeScreen();
          }
        }),),
    );
  }

}