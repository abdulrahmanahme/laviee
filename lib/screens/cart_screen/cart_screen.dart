
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../responsive/respnsive.dart';
import '../../widgets/widgets.dart';
class Cartpage extends StatefulWidget {
  static const String cartpage = 'cartpage';

  int numofItem = 1;
  @override
  _CartpageState createState() => _CartpageState();
}


  
class _CartpageState extends State<Cartpage> {
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
        backgroundColor: Color.fromARGB(255, 40, 20, 20),
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
                  'My Cart',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              height: displayHeight(context)*2,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  CartProduct(),
                  CartProduct(),
                  // CartProduct(),
                  // CartProduct(),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                  '180,000 EGP',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  ),
                  SizedBox(
height: 50,
                    ),
                  
                ],
              ),
            ),
             SizedBox(
height: 20,
                    ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                  // shadowColor: Color(0xffFF4500),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    Text(
                      'Checkout',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    
                   
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ),
      ),
    );
  }
}