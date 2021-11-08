import 'package:f_4_fitness/History/history_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IntermidiateModel{
  String iex1, iex2 , iex3 , iex4 , iex5,ieximage,iexname;
  // Route route;

  IntermidiateModel({
    this.iex1,this.iex2,this.iex3,this.iex4,this.iex5,this.ieximage,this.iexname,

  });
}

class IntermidiateModelPage extends StateNotifier<List<IntermidiateModel>> {
  IntermidiateModelPage(List<IntermidiateModel> state) : super([]);

  void add(IntermidiateModel intermediateModel){
    state = [...state, intermediateModel];
  }
  // void delete(IntermidiateModel index){
  //   state = state.where((intermediateModel) =>intermediateModel.index != index).toList();
  // }

  List<IntermidiateModel> intermidiateModel = [

    IntermidiateModel(
      iexname: 'Full Chest Workout',
      iex1: '4 X 12 Incline Bench Press',
      iex2: '4 X 12 Flat Bench Dumbell Press',
      iex3: '4 X 12 Flat Bench Dumbell Fly',
      iex4: '4 X 12 Chest Cable Crossover',
      iex5: '4 X 12 decline Bench Press',
      ieximage: 'assets/Chest.png.png',),

    IntermidiateModel(
        iexname: 'Full Back Workout',
        iex1: '4 X 12 Front Lats Pulldown',
        iex2: '4 X 12 Wide Grip Bent Over Row',
        iex3: '4 X 12 One Hand Dumbell Pull',
        iex4: '5 X 10 Wide Grip Pull ups',
        iex5: '4 X 12 Seated Cable Pull',
        ieximage: 'assets/Back.png'),

    IntermidiateModel(
      iexname: 'Full Biceps Workout',
      iex1: '4 X 12 Barbell Curl',
      iex2: '4 X 12 Dumbell Curls',
      iex3: '3 X 12 Preacher',
      iex4: '3 X 12 Dumbell Hammer',
      iex5: '3 X 12 Reverse Grip Barbell Curl Externsion',
      ieximage: 'assets/Bicep.png',
    ),
    IntermidiateModel(
        iexname: 'Full Tricep Workout',
        iex1: '5 X 12 Skull Crusher',
        iex2: '4 X 12 Extension Pull Down',
        iex3: '4 X 12 Rope Extension Pull Down',
        iex4: '3 X 12 Dumbell Overhead Triceps',
        iex5: '3 X 12 Close Grip Bench Press',
        ieximage: 'assets/Tricep.png'
    ),
    IntermidiateModel(
        iexname: 'Full Shoulder Workout',
        iex1: '4 x 12 Dumbell Military Press',
        iex2: '4 x 12 Behind Neck Press Smith Machine',
        iex3: '4 x 12 Dumbell Front Raises',
        iex4: '4 x 12 Lateral Raises',
        iex5: '4 x 12 Reverse Fly',
        ieximage: 'assets/Shoulder.png'
    ),

    IntermidiateModel(
        iexname: 'Full Legs Workout',
        iex1: '5 x 12 Leg Press',
        iex2: '4 x 12 Squats',
        iex3: '4 x 12 Leg Extension',
        iex4: '4 x 12 Hamstring Raise',
        iex5: '4 x 12 Dead Lifts',
        ieximage: 'assets/Legs.png'
    ),

    IntermidiateModel(
        iexname: 'Full Abs Workout',
        iex1: '5 x 25 Crunches',
        iex2: '4 x 2mint Plank',
        iex3: '3 x 25 Leg Raises',
        iex4: '3 x 25 Side Crunches',
        iex5: '3 x 25 Hanging Leg Raise',
        ieximage: 'assets/Abs.png'
    ),
  ];

  // Widget build(BuildContext context) {
  //   return  Scaffold(
  //     body: ListView.builder(itemCount:intermidiateModel.length ,
  //         itemBuilder: (context,index){
  //           IntermidiateModel newintermidiateModel = intermidiateModel[index];
  //
  //           return Padding(
  //             padding: EdgeInsets.only(top: 20, left: 15, bottom: 15, right: 15),
  //             child: GestureDetector(
  //               onTap: (){
  //                 // notifyListeners();
  //                 ///Commented to test riverpod
  //                 // Navigator.push(context, MaterialPageRoute(builder: (context)=> HistoryPage(iexname: newintermidiateModel.iexname,ieximage: newintermidiateModel.ieximage,iex1:newintermidiateModel.iex1,iex2: newintermidiateModel.iex2, iex3: newintermidiateModel.iex3,iex4: newintermidiateModel.iex4, iex5: newintermidiateModel.iex5,),));
  //               },
  //               child: Container(
  //                 width: MediaQuery
  //                     .of(context)
  //                     .size
  //                     .width,
  //                 height: 180,
  //                 decoration: BoxDecoration(
  //                   border: Border.all(
  //                     color: Colors.green,
  //                   ),
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(12),
  //                 ),
  //                 child: Padding(
  //                   padding: const EdgeInsets.only(left: 10),
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     mainAxisSize: MainAxisSize.min,
  //                     children: [
  //                       Row(
  //                         children: [
  //                           CircleAvatar(
  //                             child: Image(image: AssetImage(newintermidiateModel.ieximage),),
  //                             backgroundColor: Colors.white,
  //                             radius: 30,
  //                           ),
  //                           SizedBox(width: 5),
  //                           Padding(
  //                             padding: const EdgeInsets.only(top: 8),
  //                             child: Text(newintermidiateModel.iexname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(height: 7,),
  //                       Text(newintermidiateModel.iex1,style: TextStyle(fontWeight: FontWeight.bold)),
  //                       SizedBox(height: 7,),
  //                       Text(newintermidiateModel.iex2,style: TextStyle(fontWeight: FontWeight.bold)),
  //                       SizedBox(height: 7,),
  //                       Text(newintermidiateModel.iex3,style: TextStyle(fontWeight: FontWeight.bold)),
  //                       SizedBox(height: 7,),
  //                       Text(newintermidiateModel.iex4,style: TextStyle(fontWeight: FontWeight.bold)),
  //                       SizedBox(height: 7,),
  //                       Text(newintermidiateModel.iex5,style: TextStyle(fontWeight: FontWeight.bold)),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           );
  //         }),
  //   );
  // }
}
