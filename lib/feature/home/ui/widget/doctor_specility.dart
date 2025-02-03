
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/feature/home/ui/widget/doctor_specility_listview.dart';
import 'package:flutter/material.dart';


class DoctorSpecility extends StatelessWidget {
  const DoctorSpecility({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
          const  Text(
              'Doctor Speciality',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child:  Text(
                'See All',
                style:MangerStyle.font12Blue400w
              ),
            ),
         
            

          ],
        ),
       const  DoctorSpecilityListView()
      ],
    );
  }
}
