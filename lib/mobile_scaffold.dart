import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/my_box.dart';
import 'package:responsive_app/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: MyBox()
                    );
                  }),
            ),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
              return MyTile();
            }),
          ),
        ],
        )
    );
  }
}
