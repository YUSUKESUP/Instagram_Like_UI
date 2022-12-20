import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context,index){
        return Padding(
            padding: EdgeInsets.all(2),
            child: Container(color: Colors.grey[300],),
        );
        });
  }
}
