import 'package:flutter/material.dart';

import 'constants.dart';
import 'my_box.dart';
import 'my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myDefaultBackground,
        appBar: myAppBar,
        body: Row(
          children: [
            //menu part
            myDrawer,
            //the rest of the body
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                          itemCount: 4,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return MyTile();
                        }),
                  ),
                ],
              ),
            ),
            Expanded(child: Column(
              children: [
                Expanded(child: Container(color: Colors.blue,))
              ],
            ))
          ],
        )
    );
  }
}
