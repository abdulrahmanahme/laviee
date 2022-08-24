
import 'package:flutter/material.dart';
import 'package:lavie/cubit/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/forurms_screen/forurms_screen.dart';
import '../screens/home/home.dart';
import '../screens/notifcation/noitfication.dart';
import '../screens/product_screen/product_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/qr_screen/qr_screen.dart';

class LavieCubitApp extends Cubit<LavieCubitStatus>{

LavieCubitApp():super(LoginLavieCubitStatus());
static LavieCubitApp get(context) => BlocProvider.of(context);
  int currentPage = 0;
List<Widget> screen = [
 HomeScreen(),
  QRScanner (),
  NotifcationPage(),
 ProfileScreen(),

  ];
Future<void> flotingActionState(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return  HomeScreen();
        },
      ),
    );
  }
  Widget bottomBargetuser(
      {int? numberPage,
      Widget? currentscreen,
       ImageProvider<Object>? icon,
      String? iconName}) {
    return MaterialButton(
      minWidth: 20,
      onPressed: () {
      
        currentPage = numberPage!;
        currentscreen = currentscreen;
        emit(BottomState());
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageIcon(

              icon ,
  
     color: currentPage == numberPage ? Colors.green: Colors.black,
     size: 25,
),
          ),
         
        ],
      ),
    );
  }
  int currentIndex = 0;
Widget bottomBar(
      {int? numberPage,
      Widget? currentscreen,
      ImageProvider<Object>? icon,
      String? iconName}) {
    return MaterialButton(
      minWidth: 20,
      onPressed: () {
        currentPage = numberPage!;
        currentscreen = currentscreen;
        emit(BottomState());
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ImageIcon(

              icon ,
  
     color: currentPage == numberPage ? Colors.green: Colors.black,
     size: 25,
)  ,
          ),
        
        ],
      ),
    );
  }




 
}

