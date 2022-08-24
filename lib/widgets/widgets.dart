import 'package:flutter/material.dart';

import '../responsive/respnsive.dart';
import '../screens/cart_screen/cart_screen.dart';
import '../screens/product_screen/product_screen.dart';
import '../screens/search_screen/search_screen.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  required TextInputType? type,
  ValueChanged<String>? onSubmit,
  FormFieldValidator<String>? onChange,
  bool isPassword = false,
  required Function? validate,
  // required String? label,
  // required IconData? prefix,
  TextStyle? style,
  IconData? suffix,
  Function? suffixpress,
  Widget? suffixIcon,
  int? maxLines,
}) =>
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        maxLines: maxLines,
        // onChanged: (value) {
        //   onChange!;
        // },
        validator: (value) {
          validate;
        },
        style: style,
        decoration: InputDecoration(
          // labelText: label,

          // prefixIcon: Icon(
          //   prefix,
          //   color: Colors.black,
          // ),

          // suffixIcon: suffixIcon,

          // suffixIcon: IconButton(
          //     icon: Icon(
          //       suffix,
          //     ),
          //     onPressed: () {
          //       suffixpress!;
          //     }),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(start: 20.0),
      child: Container(
        height: 5.0,
        color: Colors.amber,
      ),
    );

class nametextForm extends StatelessWidget {
  String? name;
  nametextForm({
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name!,
          style: TextStyle(
              // color: Color(0xff1A2552),
              fontSize: 18,
              color: Colors.grey[600],
              fontWeight: FontWeight.w700,
              fontFamily: 'jannah'),
        ),
      ],
    );
  }
}

class Search_Box_widget extends StatefulWidget {
  double? width;
  Search_Box_widget({this.width, this.suffixIcon});

  Widget? suffixIcon;
  @override
  _Search_Box_widgetState createState() => _Search_Box_widgetState();
}

class _Search_Box_widgetState extends State<Search_Box_widget> {
  bool pressAttention = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: Container(
            width: widget.width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              onChanged: (value) {
                ///Search value
              },
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Search',
                  suffixIcon: widget.suffixIcon,
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.only(top: 16)),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

class CartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 8,
      ),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          // color: Colors.red,
          color: Colors.green,

          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: IconButton(

              // icon: Icon(LineIcons.filter),
              icon: Image.asset(
                "assets/image/Cart.png",
                color: Colors.white,
              ),
              onPressed: () {}),
        ),
      ),
    );
  }
}

class GridleWidget extends StatelessWidget {
  Widget Function(BuildContext, int)? itemBuilder;
  int? itemCount;
  Function? press;
  Item? item;

  GridleWidget({
    this.itemBuilder,
    this.itemCount,
  });
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: GridView.builder(
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          childAspectRatio: 1 / 1.3,
          // crossAxisSpacing: 5,
        ),
        itemBuilder: itemBuilder!,
      ),
    );
  }
}

class Item {
  final String? name;
  final String? image;
  final double? price;
  final bool? favorite;
  const Item({this.name, this.image, this.favorite, this.price});
}

class ButtonShop extends StatefulWidget {
  ButtonShop({this.onPressed, this.icon});
  void Function()? onPressed;
  IconData? icon;
  @override
  State<ButtonShop> createState() => _ButtonShopState();
}

class _ButtonShopState extends State<ButtonShop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 30,
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,

            padding: EdgeInsets.only(top: 1, bottom: 8, left: 5, right: 5),

            // shadowColor: Color(0xffFF4500),

            elevation: 3,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Icon(
            widget.icon,
            size: 20,
            color: Colors.grey,
          ),
          onPressed: widget.onPressed,
        ),
      ),
    );
  }
}

class ButtonCart extends StatefulWidget {
  int numerOfItem = 1;
  @override
  State<ButtonCart> createState() => _ButtonCartState();
}

class _ButtonCartState extends State<ButtonCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: displayHeight(context) * .050,
        width: displayWidth(context) * .30,
        decoration: BoxDecoration(
          color: Colors.white12,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              blurRadius: 2,
            ),
          ],
          // color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(45)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  widget.numerOfItem--;
                });
              },
              icon: Icon(Icons.remove),
              iconSize: 20,
              color: Colors.green,
            ),
            Text(
              widget.numerOfItem.toString().padLeft(1, '0'),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  widget.numerOfItem++;
                });
              },
              icon: Icon(Icons.add),
              iconSize: 20,
              color: Colors.green,
            ),
          ],
        ));
  }
}

class BlogsCard extends StatefulWidget {
  // int numofItem = 0;
  // String cardname;
  // String cardimage;
  // Item item;

  // int index = 0;
  // double cardprice;
  // CartProduct({this.cardname, this.cardprice, this.cardimage});

  @override
  _BlogsCardState createState() => _BlogsCardState();
}

class _BlogsCardState extends State<BlogsCard> {
  int index = 0;
  int numerOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        // margin: EdgeInsets.only(left: 5, right: 0, top: 5, bottom: 5),
        elevation: 3,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              width: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Rectangle.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text(
                  "2 days ago",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35, top: 14),
                child: Text(
                  '5 Tips to treal plants',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  'leaf,in batany, any unsual leaf',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'leaf,in batany, any unsual leaf',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class CartProduct extends StatefulWidget {
  // int numofItem = 0;
  // String cardname;
  // String cardimage;
  // Item item;

  // int index = 0;
  // double cardprice;
  // CartProduct({this.cardname, this.cardprice, this.cardimage});

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  int index = 0;
  int numerOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        // margin: EdgeInsets.only(left: 5, right: 0, top: 5, bottom: 5),
        elevation: 3,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 120,
              width: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Rectangle.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  'Cactus plants',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text(
                  "20 EGP",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: ButtonCart(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete),
                    iconSize: 30,
                    color: Colors.green,
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}

class ProductWidget extends StatefulWidget {
  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  // String name;
  int index = 0;

  bool isloading = true;

  int numerOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ItemDetails(
        //       itemname: item.name,
        //       itemfavorite: item.favorite,
        //       itemimage: item.image,
        //       itemprice: item.price,
        //     ),
        //   ),
        // );
      },
      child: Hero(
        tag: 'image',
        transitionOnUserGestures: true,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child:
              // isloading
              //     ? SpinKitFadingCircle(
              //         color: Color(0xffFF4500),
              //       )
              //     :
              Container(
            height: displayHeight(context) * 76,
            width: displayWidth(context) * .9,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Material(
              type: MaterialType.transparency,
              child: Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 1, bottom: 10, left: 15, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 140.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/image/Background.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonShop(
                                icon: Icons.remove,
                                onPressed: () {
                                  setState(() {
                                    numerOfItem--;
                                  });
                                },
                              ),
                              Text(
                                numerOfItem.toString().padLeft(1, '0'),
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              ButtonShop(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    numerOfItem++;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            //
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                        right: 5,
                                        top: 55,
                                      ),
                                      child: Text(
                                        'GAREDNIA PLANT',
                                        style: TextStyle(
                                          // fontFamily: 'Lobster-Regular',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Text(
                                        '70 EGP',
                                        style: TextStyle(
                                          // fontFamily: 'Lobster-Regular',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Button(
                              text: 'Add to cart',
                              color: Colors.green,
                              textcolor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button({this.text, this.color, this.textcolor});
  String? text;
  Color? color;
  Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color!,

          padding: EdgeInsets.only(top: 5, bottom: 5, left: 40, right: 40),

          // shadowColor: Color(0xffFF4500),

          elevation: 6,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: textcolor,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                    'https://image.freepik.com/free-photo/close-up-confident-male-employee-white-collar-shirt-smiling-camera-standing-self-assured-against-studio-background_1258-26761.jpg',
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Abdo',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                        ],
                      ),
                      Text(
                        '2 month ago',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),

            Text(
              'How To treat plants',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'that is the estableshed fact a reader will be distracted',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                // fontWeight: FontWeight.bold,
              ),
            ),
            // if (model.postImage != '')
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 15.0),
              child: Expanded(
                child: Container(
                  height: 360.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      4.0,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://image.freepik.com/free-photo/close-up-confident-male-employee-white-collar-shirt-smiling-camera-standing-self-assured-against-studio-background_1258-26761.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.heart_broken,
                              size: 16.0,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '55',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.message,
                              size: 16.0,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '0 comment',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 18.0,
                          backgroundImage: NetworkImage(
                            'https://image.freepik.com/free-photo/close-up-confident-male-employee-white-collar-shirt-smiling-camera-standing-self-assured-against-studio-background_1258-26761.jpg',
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),

                        Expanded(
                          child: TextFormField(
                            // controller: commentcontroller,
                            decoration: InputDecoration(
                              hintText: 'write a comment ...',
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              Container(
                                height: 51,
                                color: Colors.blue,
                                child: MaterialButton(
                                  minWidth: 1.8,
                                  onPressed: () {
                                    // SocialLoginCubit.get(context).SendMessage(
                                    //     recevierId: model!.uid!,
                                    //     dateTime: time.toString(),
                                    //     text: chatControler.text);
                                  },
                                  child: Icon(
                                    Icons.send,
                                    size: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            },
                            onTap: () {
                              // SocialLoginCubit.get(context).postComment(
                              //     comment: commentcontroller.text);
                            },
                          ),
                        ),

                        // Text(
                        //   'write a comment ...',
                        //   style: Theme.of(context).textTheme.caption,
                        // ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(
                        Icons.heart_broken,
                        size: 16.0,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Like',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                  onTap: () {
                    // SocialLoginCubit.get(context).postLike(
                    //     SocialLoginCubit.get(context).postId[index]);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Profile_button extends StatelessWidget {
  IconData? icon;
  String? name;
  void Function()? press;
  double? width;
  Color? primary;
  Color? onPrimary;

  Profile_button(
      {this.icon,
      this.onPrimary,
      this.primary,
      this.name,
      this.press,
      this.width});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primary,
        onPrimary: onPrimary,
        side: BorderSide(
          width: 2.0,
          color: Colors.grey,
        ),
        padding: EdgeInsets.only(
          top: 35,
          bottom: 9,
        ),
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/icon.png'),
              SizedBox(
                width: 10,
              ),
              Text(
                name!,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: width,
              ),
              Image.asset('assets/back-arrow.png'),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
      onPressed: press!,
    );
  }
}

class ColorButton extends StatelessWidget {
  const ColorButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      // crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 1),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 171, 188, 216),

              onPrimary: Color.fromARGB(255, 158, 186, 235),
              side: BorderSide(
                  width: 1.0, color: Color.fromARGB(255, 158, 186, 235)),

              padding: EdgeInsets.only(
                top: 35,
                bottom: 9,
              ),

              // shadowColor: pressAttention ? Color(0xffFF4500) : Color(0xffE6E5E7),

              elevation: 6,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/winer.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'You have 30 points',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .40,
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
