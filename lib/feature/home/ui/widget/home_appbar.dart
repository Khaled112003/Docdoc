import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/generated/l10n.dart';
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
          children: [Text("${S.of(context).hi}, khaled!",style: MangerStyle.font18Black700w,textAlign:TextAlign.start,),
          Text("${S.of(context).howAreYou}",style: MangerStyle.font11darkgray400w,textAlign:TextAlign.start),


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
