import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const Magicball());
}

class Magicball extends StatefulWidget {
  const Magicball({Key? key}) : super(key: key);

  @override
  State<Magicball> createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int g =1;
  void ball(){
    setState(() {
      g=Random().nextInt(4)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.white10,
        appBar: AppBar(backgroundColor: Colors.black12,
          title: Center(
            child: Text('MAGIC BALL',style:
              TextStyle(
                fontSize:40,
                  fontWeight: FontWeight.w500,
                  color: Colors.lightGreen,
              fontFamily: 'Rubik80sFade'),),
          ),
        ),
        body: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child:InkWell(onTap: (){
                  ball();
        },
          child: Padding(
            padding: const EdgeInsets.all(100),
            child: Container(
                    height: 200,
                    width: 200,

                    // child: Image(image: AssetImage('images/ball$g.png')),
                    decoration: BoxDecoration(shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('images/ball$g.png'),
                      fit: BoxFit.cover,
                    ),
                    ),
                  ),
          ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
