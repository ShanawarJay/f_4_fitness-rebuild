import 'package:f_4_fitness/FAB/fab_Intermidiate_model.dart';
import 'package:f_4_fitness/riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

class HistoryPage extends ConsumerWidget {
  // HistoryPage({@required this.iex1, this.iex2, this.iex3, this.iex4, this.iex5, this.ieximage,this.iexname});
  // String iex1, iex2 , iex3 , iex4 , iex5,ieximage,iexname;

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    final exerciseList  = context.read(exerciseListProvider);

    return
      Scaffold(
        body:
        Column(
          children: [
            Text(
                exerciseList.iexname
            ),
            // exerciseList.whe
          ],
        ),

      );
    // final exerciseList  = ref.watch(exerciseListProvider);
    // return Scaffold(
    //   body: Container(
    //     width: MediaQuery
    //         .of(context)
    //         .size
    //         .width,
    //     height: 180,
    //     decoration: BoxDecoration(
    //       border: Border.all(
    //         color: Colors.green,
    //       ),
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(12),
    //     ),
    //     child: Padding(
    //       padding: const EdgeInsets.only(left: 10),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           // child: Row(
    //             //   children: [
    //             //     CircleAvatar(
    //             //       // child: Image(image: AssetImage(widget.ieximage),),
    //             //       backgroundColor: Colors.white,
    //             //       radius: 30,
    //             //     ),
    //             //     SizedBox(width: 5),
    //             //     Padding(
    //             //       padding: const EdgeInsets.only(top: 8),
    //             //       // child: Text('Working'),
    //             //       // child: Text(exerciseList.when(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
    //             //     ),
    //             //   ],
    //             // ),
    //           ),
    //         //   SizedBox(height: 7,),
    //         //   Text(widget.iex1,style: TextStyle(fontWeight: FontWeight.bold)),
    //         //   SizedBox(height: 7,),
    //         //   Text(widget.iex2,style: TextStyle(fontWeight: FontWeight.bold)),
    //         //   SizedBox(height: 7,),
    //         //   Text(widget.iex3,style: TextStyle(fontWeight: FontWeight.bold)),
    //         //   SizedBox(height: 7,),
    //         //   Text(widget.iex4,style: TextStyle(fontWeight: FontWeight.bold)),
    //         //   SizedBox(height: 7,),
    //         //   Text(widget.iex5,style: TextStyle(fontWeight: FontWeight.bold)),
    //         // ],
    //           ],
    //       ),
    //     ),
    //   ),
    // );
  }

}