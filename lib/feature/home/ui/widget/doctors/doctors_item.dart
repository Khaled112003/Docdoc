import 'package:cached_network_image/cached_network_image.dart';
import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/feature/home/data/models/doctos_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/helpers/spacing.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key, this.doctors});
  final DoctorsModel? doctors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://t4.ftcdn.net/jpg/03/20/52/31/360_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.jpg",
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: MangerColors.gray,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctors?.name ?? "",
                  style: MangerStyle.font16Black700w,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  " ${doctors?.degree ?? ''} | ${doctors?.phone ?? ''}",
                  style: MangerStyle.font12Gray500w,
                ),
                verticalSpace(5),
                Text(
                  doctors?.email ?? "",
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
