import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/thems/fonts/manger_style.dart';

class DoctorAndlogAndText extends StatelessWidget {
  const DoctorAndlogAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          SvgPicture.asset('assets/images/logo_low.svg'),
          Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.4])),
            child: Image.asset('assets/images/doctor.png'),
          ),
          Positioned(
              bottom: 15,
              right: 0,
              left: 0,
              child: Text(
                "Best Doctor\nAppoinment App",
                textAlign: TextAlign.center,
                style: MangerStyle.fontBoldSize32,
              ))
        ],
      ),
    );
  }
}
