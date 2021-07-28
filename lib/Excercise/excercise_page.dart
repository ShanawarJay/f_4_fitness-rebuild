import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ExcercisePage extends StatelessWidget {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children:[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
              child: ExpansionTileCard(
                baseColor: Colors.cyan[50],
                expandedColor: Colors.red[50],
                key: cardA,
                leading: CircleAvatar(
                  child: Image.asset("assets/images/a_dot_ham.jpeg"),
                ),
                title: Text("Flutter Dev's"),
                subtitle: Text("Flutter Development Company"),
                children: [
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text("FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                          "creative and leading-edge flutter app development solutions for customers all around the globe",
                          style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceAround,
                    buttonHeight: 52.0,
                    buttonMinWidth: 90.0,
                    children: [
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)
                        ),
                        onPressed: (){
                          cardA.currentState?.expand();
                        },
                        child: Column(
                          children: [
                            Icon(Icons.arrow_downward),
                            Padding(padding: EdgeInsets.symmetric(vertical:2.0),
                            ),
                            Text('Open')
                          ],
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)
                        ),
                        onPressed: (){
                          cardA.currentState?.collapse();
                        },
                        child: Column(
                          children: [
                            Icon(Icons.arrow_upward),
                            Padding(padding: EdgeInsets.symmetric(vertical:2.0),
                            ),
                            Text('Close')
                          ],
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)
                        ),
                        onPressed: (){
                        },
                        child: Column(
                          children: [
                            Icon(Icons.swap_vert),
                            Padding(padding: EdgeInsets.symmetric(vertical:2.0),
                            ),
                            Text('Toggle')
                          ],
                        ),
                      ),

                    ],

                  )
                ],


              ),
            ),
          ],
        ));
  }


}