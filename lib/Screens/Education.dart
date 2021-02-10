import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:infigon/Screens/questions.dart';




void main() => runApp(Education());

class Education extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(

      home: Scaffold(
        resizeToAvoidBottomPadding: false,

        body: SingleChildScrollView(
          child: Container(

            child: Column(
              children: [
                Container(
                child: Arc(
                 height: height*0.1,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Text("EDUCATION",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue),)
                    ],
                  ),

                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    width: width*1,
                    height: height*0.25),

                ),


                ),
                Text("Scrol to select",style: TextStyle(fontSize: 10,color: Colors.blue[200]),),
                SizedBox(height: height*0.02,),
                Text("Pharmacist",style: TextStyle(fontSize: 12,color: Colors.blue[200],fontWeight: FontWeight.bold),),
                Text("Medical",style: TextStyle(fontSize: 13,color: Colors.blue[300],fontWeight: FontWeight.bold),),
                Divider(
                  color: Colors.grey,

                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: width*0.28,),
                    Text("Engineering",style: TextStyle(fontSize: 15,color: Colors.blue[400],fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    SizedBox(width: width*0.25,),
                    Column(
                      children:[
                        Icon(Icons.arrow_drop_up),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,

                ),
                Text("Writer/Post",style: TextStyle(fontSize: 13,color: Colors.blue[300],fontWeight: FontWeight.bold),),
                Text("Cinematographer",style: TextStyle(fontSize: 12,color: Colors.blue[200],fontWeight: FontWeight.bold),),


                Container(
                  height: height*0.50,
                  width: width*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: new Card(

                    color: Colors.white,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            children:<Widget>[
                              SizedBox(width: width*0.18,),
                          Icon(Icons.arrow_left_rounded),
                          Column(children: [
                             Text('Pathways',style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),),
                             Text('1 of 3',style: TextStyle(fontSize: 10,color: Colors.blue[200],fontWeight: FontWeight.bold),),
                      ],
                          ),
                          Icon(Icons.arrow_right_rounded),
                      ],
                          ),
                          SizedBox(height:height*0.05),
                          Text("B.Com",style: TextStyle(fontSize: 20,color: Colors.blue, fontWeight:FontWeight.bold),),
                          Icon(Icons.arrow_drop_down_outlined,size:50),
                          Text("M.Com",style: TextStyle(fontSize: 20,color: Colors.blue, fontWeight:FontWeight.bold),),
                          Icon(Icons.arrow_drop_down_outlined,size:50),
                          Text("Ph.D.",style: TextStyle(fontSize: 20,color: Colors.blue, fontWeight:FontWeight.bold),),
                          SizedBox(height:height*0.02),
                          SizedBox(
                            width: width*0.4,
                            child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.deepPurple,

                              child: Text("Continue"),
                              onPressed: () { Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => questions()),
                              );},
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
          ],

            ),
          ),
        ),
      ),
    );
  }
}
class ArcClipper extends CustomClipper<Path> {
  ArcClipper(this.height);

  ///The height of the arc
  final double height;

  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0.0, size.height/2);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height / 2);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    ArcClipper oldie = oldClipper as ArcClipper;
    return height != oldie.height;
  }
}
class ClipPainter extends CustomPainter {
  final CustomClipper<Path> clipper;

  ClipPainter(this.clipper);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue[100];
    paint.style = PaintingStyle.fill;
    canvas.drawPath(clipper.getClip(size), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
class Arc extends StatelessWidget {
  const Arc({
    Key key,
    @required this.height,
    @required this.child,
  }) : super(key: key);

  /// The widget which one of [edge]s is going to be clippddddded as arc
  final Widget child;

  ///The height of the arc
  final double height;

  @override
  Widget build(BuildContext context) {
    var clipper = ArcClipper(height);
    return CustomPaint(
      painter: ClipPainter(clipper),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}






