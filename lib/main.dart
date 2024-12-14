import 'package:daweny/core/di/depencey_injection.dart';
import 'package:daweny/core/rouets/router.dart';
import 'package:daweny/core/thems/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setup();
  runApp(const Docdoc ());
}

class Docdoc extends StatelessWidget {
  const Docdoc({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize:const Size(375, 812),
      child: MaterialApp.router(
        theme: ThemeData(
          primaryColor: MangerColors.mainBlue,
          scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: router,

      ),

    );
  }
}