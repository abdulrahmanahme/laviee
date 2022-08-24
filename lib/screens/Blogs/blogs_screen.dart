
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lavie/responsive/respnsive.dart';
import '../../widgets/widgets.dart';
class BlogsScreen extends StatefulWidget {
  static const String cartpage = 'cartpage';

  int numofItem = 1;
  @override
  _BlogsScreenState createState() => _BlogsScreenState();
}


  
class _BlogsScreenState extends State<BlogsScreen> {
  @override
  void initState() {
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
  ]);
    super.initState();
  }

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
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Blogs',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              height: displayHeight(context)*0.85,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: double.infinity,
              child: Column(
                children: [
                BlogsCard(),
                 BlogsCard(),
                 BlogsCard(),

                  // CartProduct(),
                ],
              )
            ),
            
            
            
          ]),
        ),
      ),
    );
  }
}