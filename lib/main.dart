import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationPage(),
    );
  }
}
class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animaton',style: TextStyle(fontSize: 35,
            fontWeight: FontWeight.w900,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xffe58e26),
      ),
      backgroundColor: Color(0xfffad390),
      floatingActionButton: FloatingActionButton(
        onPressed: (){setState(() {
          _value=!_value;});},
        child: Icon(Icons.play_circle_fill_outlined,size: 40,color: Colors.black,),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding( padding: EdgeInsets.only(right: 10,left: 10),
                  child: Container(
                    child: AnimatedContainer(
                      height: _value==false?30:300, width: _value==false?20:200,
                      child: CircleAvatar(radius: 10, backgroundColor: Colors.deepPurple,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/cherri.jpg'), radius: 90,),),
                      duration: Duration(seconds: 5),),),),
                Padding( padding: EdgeInsets.only(right: 10,left: 10),
                  child: Container(
                    child: AnimatedContainer(
                      height: _value==false?30:300,
                      width: _value==false?20:200,

                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.deepPurple,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/grapes.jpg'),
                          radius: 90,
                        ),
                      ),
                      duration: Duration(seconds: 5),
                    ),
                  ),
                ),],),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Cherry and Grapes",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.deepPurpleAccent),),
                Text("Strawberries and Apple",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.deepPurpleAccent),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding( padding: EdgeInsets.only(right: 10,left: 10),
                      child: Container(
                        child: AnimatedContainer(
                          height: _value==false?30:300,
                          width: _value==false?20:200,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.deepPurple,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/strawberries.jpg'),
                              radius: 90,
                            ),
                          ),
                          duration: Duration(seconds: 5),
                        ),
                      ),
                    ),
                    Padding( padding: EdgeInsets.only(right: 10,left: 10),
                      child: Container(
                        child: AnimatedContainer(
                          height: _value==false?30:300,
                          width: _value==false?20:200,

                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.deepPurple,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/apple.jpg'),
                              radius: 90,
                            ),
                          ),
                          duration: Duration(seconds: 5),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),],
        ),
      ),
    );
  }
}




