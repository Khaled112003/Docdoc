import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/feature/onboarding/widgets/button_start.dart';
import 'package:daweny/feature/onboarding/widgets/doctor_logo_text.dart';
import 'package:daweny/feature/onboarding/widgets/logo_text.dart';
import 'package:daweny/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.h),
          child:  SingleChildScrollView(
            child: Column(
              children: [
              const  LogoAndText(),
               const DoctorAndlogAndText(),
                Text(
                  S.of(context).manageAppointments,
                  textAlign: TextAlign.center,style: MangerStyle.font400wSize10,
                ),
              const  ItemButtonStarted()
              ],
            ),
          ),
        ),
      ),
    );
  }
}





