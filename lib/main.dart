import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool darkMode= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[900] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.android_outlined,size: 90,color: Colors.black,),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4.0 , 4.0),
                    blurRadius: 15.0, spreadRadius: 1.0
                  ),
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4.0 , 4.0),
                    blurRadius: 15.0, spreadRadius: 1.0
                  ),
                ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        darkMode= false;
                      });
                    },
                    child: Text('Light',style: TextStyle(color: Colors.black),),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        darkMode= true;
                      });
                    },
                    child: Text('Dark',style: TextStyle(color: Colors.white),),
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

