import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            height: 180.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/images/Background.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  S.of(context).bookNearestDoctor,
                  style: MangerStyle.font18White500w,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                      ),
                    ),
                    child: Text(
                      S.of(context).findNearby,
                      style: MangerStyle.font12Blue400w,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
           Positioned(
                  right: 8.w,
                  bottom: 0,
                  child:  Image.asset(
                    "assets/images/doctor_blue.png",
                    height: 200.h,
                  ),
                )
        ],
      ),
    );
  }
}
