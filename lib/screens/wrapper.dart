import 'package:brew_crew/screens/authenticate/authencitae.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate widget 
    return Authenticate();
  }
}