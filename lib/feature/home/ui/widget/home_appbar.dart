import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    
      children: [
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Hi, khaled!",style: MangerStyle.font18Black700w,textAlign:TextAlign.start,),
          Text("How Are you Today?",style: MangerStyle.font11darkgray400w,textAlign:TextAlign.start),
          
          
          ],
        ),
       const Spacer(),
        const CircleAvatar(
          radius: 25,
          backgroundColor: MangerColors.moreLightgray,
          backgroundImage: AssetImage("assets/images/Notification.png"),
        )
      ],
    );
  }
}
