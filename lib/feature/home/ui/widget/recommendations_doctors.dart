import 'package:daweny/feature/home/data/models/doctos_model.dart';
import 'package:daweny/feature/home/ui/widget/doctors_listview_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key,  this.doctors});
  final List<DoctorsModel?>? doctors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemCount: doctors?.length,
        itemBuilder: (context, index) {

         return  DoctorsListviewItem(doctors: doctors![index]!);
        },
      ),
    );
        }
      
    
  }
