import 'package:flutter/material.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithTransparent(context),
    );
  }

  // Simple AppBar with Centre Title
  PreferredSizeWidget appBarWithCentreTtile(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      title: const Text(
        "Title",
      ),
      elevation: 4.0,
      centerTitle: true,
    );
  }

  // App Bar with a List of Action Buttons
  PreferredSizeWidget appBarWithAction(BuildContext context) {
    return AppBar(
      title: const Text("Title"),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    );
  }

  //AppBar with only Title and Subtitle at Centre
  PreferredSizeWidget appBarWithSubtitle(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Title",
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              "subtitle",
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }

  //app bar with image
  PreferredSizeWidget appBarWithImage(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.yellow,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: const <Widget>[
          FlutterLogo(),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Title with image",
            ),
          ),
        ],
      ),
    );
  }

  //Transparent AppBar
  PreferredSizeWidget appBarWithTransparent(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text("Transparent AppBar"),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
