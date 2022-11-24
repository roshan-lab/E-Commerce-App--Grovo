import 'package:flutter/material.dart';
import 'package:grovo/component/main_header.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
      children: [
        MainHeader(),
      ],
    ),
    );
  }
}
