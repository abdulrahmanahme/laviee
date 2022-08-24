
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../responsive/respnsive.dart';
import '../../widgets/widgets.dart';

class CreatePostScreen extends StatefulWidget {
  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  // @override
  // void initState() {
  //    SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  // ]);
  //   super.initState();
  // }
  var controlleremail = TextEditingController();


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
                  'Create New post',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
           
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
               
                     Image.asset('assets/framephoto.png'),
               
               Icon(Icons.add ,
               color: Colors.green,
               size: 40,),
               SizedBox(
                height: 10,
               ),
                Text(
                  'Add photo',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    // fontWeight: FontWeight.bold,
                  ),
                ),

         
              ],
            ),
            SizedBox(
              height: 10,
            ),
             

           Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Padding(
                    padding: const EdgeInsets.only(right: 1,left: 15, top: 10, bottom: 5),
                    child: Text(
                      'Title',
                      style: TextStyle(

                            // color: Color(0xff1A2552),

                            fontSize: 18,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w700,
                            fontFamily: 'jannah'),
                    ),
                  ),
           ],
         ),
        


        
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: defaultFormField(
              // prefix: Icons.email,

              controller: controlleremail,

              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }

                return null;
              },

              type: TextInputType.emailAddress,
            ),
          ),
 Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Padding(
                    padding: const EdgeInsets.only(right: 1,left: 15, top: 10, bottom: 5),
                    child: Text(
                      'Description',
                      style: TextStyle(

                            // color: Color(0xff1A2552),

                            fontSize: 18,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w700,
                            fontFamily: 'jannah'),
                    ),
                  ),
                  
           ],
         ),
              Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: defaultFormField(
              // prefix: Icons.email,
              maxLines: 5,

              controller: controlleremail,

              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }

                return null;
              },

              type: TextInputType.emailAddress,
            ),
          ),
          SizedBox(
            height: 60,
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    Text(
                      'Post',
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
           
            ],
          ),

          // SizedBox(

          //   height: 8,

          // ),

          




          
        ),
       
      ),
    );
  }
}