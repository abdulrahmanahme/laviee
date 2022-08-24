import 'package:flutter/material.dart';
import 'package:lavie/screens/Blogs/blogs_screen.dart';
import 'package:lavie/screens/Blogs/single_blogs.dart';
import 'package:lavie/screens/auth/login_screen.dart';
import 'package:lavie/screens/cart_screen/cart_screen.dart';
import 'package:lavie/screens/create_post/create_post.dart';
import 'package:lavie/screens/forurms_screen/forurms_screen.dart';
import 'package:lavie/screens/home/home.dart';
import 'package:lavie/screens/profile_screen/profile_screen.dart';
import 'package:lavie/screens/qr_screen/qr_screen.dart';
import 'package:lavie/screens/search_screen/search_screen.dart';

import 'cubit/cubit.dart';
import 'layout/layout_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
          providers: [
             BlocProvider(
          create: (context) => LavieCubitApp()
        ),
          ],
      child: MaterialApp(
        title: 'LaVie',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          
         
          primarySwatch: Colors.blue,
        ),
        home:LayoutScreen(),
      ),
    );
  }
}

