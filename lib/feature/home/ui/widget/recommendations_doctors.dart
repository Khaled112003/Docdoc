import 'package:daweny/core/helpers/spacing.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RecommendationsDoctorsListView extends StatelessWidget {
  const RecommendationsDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemCount: 8,
        itemBuilder: (context, index) {

         return  Container(
                margin: EdgeInsets.only(bottom: 16.h),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        width: 110.w,
                        height: 120.h,
                        'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
                        fit: BoxFit.cover,
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: MangerStyle.font16Black700w,
                            overflow: TextOverflow.ellipsis,
                          ),
                          verticalSpace(5),
                          Text(
                            'Degree | 0111111111111',
                            style: MangerStyle.font12Gray500w,
                          ),
                          verticalSpace(5),
                          Text(
                            'Email@email.com',
                            style: MangerStyle.font12Gray500w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
        },
      ),
    );
        }
      
    
  }
