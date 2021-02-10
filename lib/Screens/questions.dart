import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;




void main() => runApp(questions());

class questions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(

      home: Scaffold(
        resizeToAvoidBottomPadding: false,

        body: SingleChildScrollView(


          child: Column(
            children: [
              Container(
                child: Arc(
                  height: height*0.1,
                  child: Container(
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          Center(child: Text("Frequently Asked Questions",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),textAlign: TextAlign.center,))
                        ],
                      ),

                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      width: width*1,
                      height: height*0.25),

                ),


              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [

                          Expanded(
                            child: Text('loren ipsum dolor sit amet, consectetur?', maxLines: 2,
                              overflow: TextOverflow.ellipsis,

                             style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue)),

                          ),
                          SizedBox(width: width*0.1),
                          Icon(Icons.add,size: 30,color: Colors.blue,)

                        ],
                      ),
                      Divider(
                        color: Colors.grey,

                      ),

                      Row(
                        children: [

                          Expanded(
                            child: Text('loren ipsum dolor sit amet, consectetur?', maxLines: 2,
                                overflow: TextOverflow.ellipsis,

                                style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Colors.blue)),

                          ),
                          SizedBox(width: width*0.1),
                          Icon(Icons.add,size: 30,color: Colors.blue,)

                        ],
                      ),
                      Divider(
                        color: Colors.grey,

                      ),

                      Row(
                        children: [

                          Expanded(
                            child: Text('loren ipsum dolor sit amet, consectetur?', maxLines: 2,
                                overflow: TextOverflow.ellipsis,

                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue)),

                          ),
                          SizedBox(width: width*0.1),
                          Icon(Icons.add,size: 30,color: Colors.blue,)

                        ],
                      ),
                      Divider(
                        color: Colors.grey,

                      ),

                      Row(
                        children: [

                          Expanded(
                            child: Text('loren ipsum dolor sit amet, consectetur?', maxLines: 2,
                                overflow: TextOverflow.ellipsis,

                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue)),

                          ),
                          SizedBox(width: width*0.1),
                          Icon(Icons.add,size: 30,color: Colors.blue,)

                        ],
                      ),
                      Divider(
                        color: Colors.grey,

                      ),

                      Row(
                        children: [

                          Expanded(
                            child: Text('loren ipsum dolor sit amet, consectetur?', maxLines: 2,
                                overflow: TextOverflow.ellipsis,

                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue)),

                          ),
                          SizedBox(width: width*0.1),
                          Icon(Icons.add,size: 30,color: Colors.blue,)

                        ],
                      ),
                      Divider(
                        color: Colors.grey,

                      ),
                      Text("JOIN OUR COMMUNITY",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),textAlign: TextAlign.center,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),textAlign: TextAlign.center,),
                            SizedBox(width: 5,),
                            Container(
                                width: width*0.7,
                                height: height*0.05,
                                child: TextField(
                                  decoration: new InputDecoration(
                                    fillColor: Colors.grey,
                                      border: new OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(30.0),
                                        ),
                                      ),),
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        height: 2.0,
                                        color: Colors.black,
                                    ),
                                ),
                            ),

                          ],
                        ),


                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("E-Mail",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),textAlign: TextAlign.center,),
                            SizedBox(width: 5,),
                            Container(
                              width: width*0.7,
                              height: height*0.05,
                              child: TextField(
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(30.0),
                                    ),
                                  ),),
                                style: TextStyle(
                                    fontSize: 10.0,
                                    height: 2.0,
                                    color: Colors.black
                                ),
                              ),
                            ),

                          ],
                        ),


                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Description",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),textAlign: TextAlign.center,),
                            SizedBox(width: 5,),
                            Container(
                              width: width*0.6,
                              height: height*0.15,
                              child: TextField(
                                maxLines: 5,
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(15.0),
                                    ),
                                  ),),
                                style: TextStyle(
                                    fontSize: 15.0,
                                    height: 2.0,
                                    color: Colors.black
                                ),
                              ),
                            ),

                          ],
                        ),


                      ),


                    ],
                  ),
                ),
              ),


            ],

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
    paint.color = Colors.blue[200];
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






