import 'package:expansionlistview/datascreen.dart';
import 'package:flutter/material.dart';

import 'baisicdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePages(),
    );
  }
}

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  Color colores = Colors.lightBlueAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            height: 420,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1.5,color: colores),
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width: 300, height: 330, child: _buildImage()),
                    _extendedButton(),
                    RaisedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DataScreen()));
                      },
                      child: Text("Next Page."),
                    ),


                    RaisedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BaisicDat()));
                      },
                      child: Text("Second Page"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset("assets/abc.jpg", fit: BoxFit.cover,);
  }

  Widget _extendedButton(){
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: true,
        childrenPadding: EdgeInsets.all(5).copyWith(top: 0),
        tilePadding: EdgeInsets.all(5),
        title: Text("Arjun Is Here ?"),
        children: [
          Text("Here I Working as a Fliutter Developer with the help of Android studio in Ubuntu Loptop lenovo thinkpad"),
        ],
        onExpansionChanged: (isExpanded) {
          setState(() {
            if(isExpanded == true){
              colores = Colors.black;
            }else{
              colores = Colors.lightBlueAccent;
            }
          });
        },
      ),
    );
  }
}
