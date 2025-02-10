import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/feature/home/data/models/doctos_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key,  this.doctors});
  final DoctorsModel? doctors;

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.only(bottom: 16.h),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        width: 90.w,
                        height: 100.h,
                        "assets/images/doctor.png",
                        
                        fit: BoxFit.fill
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            doctors?.name??"",
                            style: MangerStyle.font16Black700w,
                            overflow: TextOverflow.ellipsis,
                          ),
                          verticalSpace(5),
                          Text(
                           " ${doctors?.degree??''} | ${doctors?.phone??''}",
                            style: MangerStyle.font12Gray500w,
                          ),
                          verticalSpace(5),
                          Text(
                            doctors?.email??"",
                            style: MangerStyle.font12Gray500w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}