import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';
import '../cubit/status.dart';
import '../screens/forurms_screen/forurms_screen.dart';
import '../screens/home/home.dart';
import '../screens/product_screen/product_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/qr_screen/qr_screen.dart';

class LayoutScreen extends StatefulWidget {
  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LavieCubitApp, LavieCubitStatus>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LavieCubitApp.get(context);
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            body: cubit.screen[cubit.currentPage],
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 12,
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cubit.bottomBar(
                      numberPage: 0,
                      currentscreen:ForumScreen (),
                      icon: AssetImage("assets/image/navbar_icons/leave.png"),
                    ),
                    cubit.bottomBargetuser(
                      numberPage: 1,
                      currentscreen: QRScanner (),
                      icon: AssetImage(
                          "assets/image/navbar_icons/qr-code-scan.png"),
                    ),
                    SizedBox(width: 15),
                    cubit.bottomBar(
                      numberPage: 2,
                      currentscreen: ProductScreen(),
                      // icon: Icons.mail,
                      icon: AssetImage("assets/image/navbar_icons/Bell.png"),
                    ),
                    cubit.bottomBar(
                      numberPage: 3,
                      currentscreen:ProfileScreen(),
                      // icon: Icons.settings_cell,
                      // iconName: 'Setting',
                      icon: AssetImage("assets/image/navbar_icons/person.png"),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: ImageIcon(
                AssetImage('assets/image/navbar_icons/home.png'),
                size: 25,
              ),
              backgroundColor: Colors.green,
              onPressed: () {
                cubit.flotingActionState(context);
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          ),
        );
      },
    );
  }
}
