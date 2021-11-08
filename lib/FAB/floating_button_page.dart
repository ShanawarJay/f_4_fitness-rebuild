import 'package:f_4_fitness/FAB/int_beg_adv_detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:f_4_fitness/FAB/fab_variables.dart';
import 'package:f_4_fitness/Excercise/excercise_page.dart';

import '../DetailPAge.dart';

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {


  List<FabVariables> template = [
    FabVariables(
        headingName: 'assets/Beginners.png',
        ex1: "Beginner",
    ),
    FabVariables(
        headingName: 'assets/Intermidiate.jpg',
        ex1: 'Intermidiate',
        ),
    FabVariables(
        headingName: 'assets/Advance_upgraded.png',
        ex1: 'Advance',
        ),
    FabVariables(headingName: 'assets/Advance_resize.png',
        ex1: 'Cardio',
        ),
    // FabVariables(headingName: '', ex1: '', ex2: '', ex3: '', ex4: '', ex5: ''),
    // FabVariables(headingName: '', ex1: '', ex2: '', ex3: '', ex4: '', ex5: ''),
    // FabVariables(headingName: '', ex1: '', ex2: '', ex3: '', ex4: '', ex5: ''),
    // FabVariables(headingName: '', ex1: '', ex2: '', ex3: '', ex4: '', ex5: ''),
    // FabVariables(headingName: '', ex1: '', ex2: '', ex3: '', ex4: '', ex5: ''),
    // FabVariables(headingName: '', ex1: '', ex2: '', ex3: '', ex4: '', ex5: ''),
    // FabVariables(headingName: '', ex1: '', ex2: '', ex3: '', ex4: '', ex5: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: template.length,
        itemBuilder: (context, index) {
          FabVariables newtemplate = template[index];

          return Padding(
            padding:
            const EdgeInsets.only(top: 20, left: 15, bottom: 15, right: 15),
            child: InkWell(

              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IntBegAdvDetailPage(newtemplate)));
              },
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage(newtemplate.headingName),
                              fit: BoxFit.fill,
                            ),
                            radius: 70,
                            backgroundColor: Colors.white,
                          ),
                          Text(newtemplate.ex1, style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 2),),
                        ],
                      ),

                      //Text(newtemplate.headingName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      // SizedBox(height: 10,),
                      // Text(newtemplate.ex1,style: TextStyle(fontSize: 18),),
                      // SizedBox(height: 5,),
                      // Text(newtemplate.ex2,style: TextStyle(fontSize: 18),),
                      // SizedBox(height: 5,),
                      // Text(newtemplate.ex3,style: TextStyle(fontSize: 18),),
                      // SizedBox(height: 5,),
                      // Text(newtemplate.ex4,style: TextStyle(fontSize: 18),),
                      // SizedBox(height: 5,),
                      // Text(newtemplate.ex5,style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
