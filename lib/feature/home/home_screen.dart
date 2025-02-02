
import 'package:daweny/feature/home/ui/widget/doctors_blue_container.dart';
import 'package:daweny/feature/home/ui/widget/home_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: Padding(
          
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              HomeAppbar(),
              DoctorsBlueContainer()
              
            ],
          ),
        ),
      ),
    );
  }
}

