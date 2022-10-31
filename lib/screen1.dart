import 'package:demo_thanh/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
              //FlatButton(onPressed: null, padding: EdgeInsets.all(0.0), child: Image.asset("assets/screen1.png")),
              InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Screen2()));
                  //avigator.push(context, MaterialPageRoute(builder: (context) => const QrScanner()))
                }, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/symbol.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text("Educora", style: TextStyle(color: Colors.blue,fontSize: 27,),),
              const Text("e-learning platform",style: TextStyle(color: Colors.blue,fontSize: 12)),
            ]),
          )),
    );
  }
}
