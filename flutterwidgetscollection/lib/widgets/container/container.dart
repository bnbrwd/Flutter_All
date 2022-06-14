import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: verticalRadiusConatiner(context),
      ),
    );
  }

  //round shape container
  Widget roundShapeConatiner(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        color: Colors.green,
      ),
      child: const Text('Hello'),
    );
  }

  Widget flutterConatiner(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(25.0),
      decoration: const FlutterLogoDecoration(),
    );
  }

  //Container with ShapeDecoration (Red Border and Shadow)
  Widget shapeConatiner(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(25.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shadows: const <BoxShadow>[
          BoxShadow(color: Colors.black, blurRadius: 15.0)
        ],
        shape: Border.all(
          color: Colors.red,
          width: 8.0,
        ),
      ),
      child: const Center(
        child: Text('Hello Flutter', textAlign: TextAlign.center),
      ),
    );
  }

  Widget roundConatiner(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(55.0),
        border: Border.all(
          width: 5.0,
          color: Colors.red,
        ),
      ),
      child: const Center(
        child: Text('Hello Flutter', textAlign: TextAlign.center),
      ),
    );
  }

  //Container with Alignment property
  Widget alignmentConatiner(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      width: double.infinity,
      height: 300.0,
      color: Colors.red,
      alignment: Alignment.topRight,
      padding: const EdgeInsets.all(20.0),
      child: const FlutterLogo(
        size: 100.0,
      ),
    );
  }

  //Container with List of BoxShadow
  Widget boxShadowConatiner(BuildContext context) {
    return Container(
      height: 100.0,
      width: 200.0,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.red, blurRadius: 12.0),
        BoxShadow(color: Colors.green, blurRadius: 40.0)
      ]),
      child: const Text('Hello'),
    );
  }

  //Container with Image and Rounded Border
  Widget imageConatiner(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://picsum.photos/200/300'),
        ),
      ),
    );
  }

//Circular Container
  Widget circularConatiner(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200.0),
        color: Colors.green,
      ),
      child: const Text('Hello'),
    );
  }

  //Container with Horizontal Radius of Left Radius and Right Radius
  Widget horizontalRadiusConatiner(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20.0),
          right: Radius.circular(80.0),
        ),
        color: Colors.green,
      ),
      child: const Text('Hello'),
    );
  }

  //Container with Vertical Radius of Top Radius and Bottom Radius
  Widget verticalRadiusConatiner(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
          bottom: Radius.circular(80.0),
        ),
        color: Colors.green,
      ),
      child: const Text('Hello'),
    );
  }
}
