import 'package:flutter/material.dart';

import '../../cubit/cubit.dart';
import '../../cubit/status.dart';
import '../../responsive/respnsive.dart';
import '../../widgets/widgets.dart';
import '../cart_screen/cart_notfound.dart';
import '../cart_screen/cart_screen.dart';
import '../product_screen/product_screen.dart';
import '../search_screen/search_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return   BlocConsumer<LavieCubitApp, LavieCubitStatus>(
      listener: (context, state) {},
      builder: (context, state) {
     return  SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(
                height: 30,
              ),
                  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 130,
                                    // color:Colors.amber,
            child: Image.asset('assets/image/Group1.png'),
                                  ),
                                ],
                              ),
      
                 Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                     Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>ProductScreen(),
        ),
               );
                                  },
                                  child: Search_Box_widget(
                                    width: displayWidth(context)*.76,
                                  ),
                                ),
                              InkWell(child: CartIcon(),
                              onTap: (){
      Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>CartScreen()
            )
            );
                              },
                              ),
                              ],
                            ),
                // construct the profile details widget here
               
                 TabBar(
                          indicator: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(12) //
                                ),
                          ),
                          labelStyle:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          isScrollable: true,
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.grey,
                          indicatorWeight: 2,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: Colors.green,
                          unselectedLabelStyle: TextStyle(fontSize: 14),
                          tabs: [
                            Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade100,
                                    blurRadius: 2,
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors.grey.shade100,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Tab(
                                child: Text('All'),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade100,
                                    blurRadius: 2,
                                  ),
                                ],
                                border: Border.all(
                                  color:  Colors.grey.shade100,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Tab(
                                child: Text('Plants'),
                              ),
                            ),
                           
                            Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade100,
                                    blurRadius: 2,
                                  ),
                                ],
                                border: Border.all(
                                  color:  Colors.grey.shade100,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Tab(
                                child: Text('Seeds'),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade100,
                                    blurRadius: 2,
                                  ),
                                ],
                                border: Border.all(
                                  color:  Colors.grey.shade100,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Tab(
                                child: Text('Tools'),
                              ),
                            ),
                            
                            Tab(
                              child: Text('Pasta'),
                            ),
                          ],
                        ),
                 Expanded(
                  child: TabBarView(
                    children: [
                      // first tab bar view widget
                      GridleWidget(
                        itemBuilder: (_, index) => ProductWidget(),
                        itemCount: 5,
                      ),
                      GridleWidget(
                        itemBuilder: (_, index) => ProductWidget(),
                        itemCount: 5,
                      ),
                      GridleWidget(
                        itemBuilder: (_, index) => ProductWidget(),
                        itemCount: 5,
                      ),
                      GridleWidget(
                        itemBuilder: (_, index) => ProductWidget(),
                        itemCount: 5,
                      ),
                      GridleWidget(
                        itemBuilder: (_, index) => ProductWidget(),
                        itemCount: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    
      }
    );
  }
}

