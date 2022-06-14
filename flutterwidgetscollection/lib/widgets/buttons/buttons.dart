import 'package:flutter/material.dart';

class ButtonsWidgets extends StatelessWidget {
  const ButtonsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: inkWellButton(context),
      ),
    );
  }

  //elevated button
  Widget elevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 20,
        primary: Colors.orangeAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Text('ElevatedButton'),
    );
  }

  Widget outLinedButton(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.blue),
          ),
        ),
      ),
      child: const Text("Button text"),
    );
  }

  Widget inkWellButton(BuildContext context) {
    return Material(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: InkWell(
        onTap: () {},
        child: const Icon(
          Icons.fingerprint,
          size: 100,
        ),
      ),
    );
  }
}


