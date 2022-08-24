import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../responsive/respnsive.dart';
import '../../widgets/widgets.dart';

class ForumScreen extends StatefulWidget {
  @override
  _ForumScreenState createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  // @override
  // void initState() {
  //    SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  // ]);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    iconSize: 25,
                    color: Colors.black,
                    icon: Icon(Icons.arrow_back_ios_new),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Discussion Forums',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Search_Box_widget(
              width: displayWidth(context) * .9,
            ),
            Row(
              children: [
                Button(
                  text: 'All fourms',
                  color: Colors.green,
                  textcolor: Colors.white,
                ),
                Button(
                  text: 'My fourms',
                  color: Colors.white,
                  textcolor: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: displayHeight(context) * 2,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Post(),
                    Post(),
                  ],
                )),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {
            // cubit.flotingActionState(context);
          },
        ),
      ),
    );
  }
}
