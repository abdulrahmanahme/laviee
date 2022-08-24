
import 'package:lavie/responsive/respnsive.dart';
import 'package:lavie/screens/qr_screen/qr_code_design.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  MobileScannerController cameraController = MobileScannerController();

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
              MobileScanner(
              allowDuplicates: false,
              controller: cameraController,
              onDetect: (barcode, args) {
                if (barcode.rawValue == null) {
                  debugPrint('Failed to scan Barcode');
                } else {
                  final String code = barcode.rawValue!;
                  debugPrint('Barcode found! $code');
                }
              }),
              

QRScannerOverlay(overlayColour: Colors.black.withOpacity(.1),),
// Column(
//   mainAxisAlignment:MainAxisAlignment.end,
//   children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child:Column(
//       mainAxisAlignment: MainAxisAlignment.center,

//       // crossAxisAlignment: CrossAxisAlignment.center,

//       children: [
//         Padding(
//           padding:
//               const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 1),
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               primary: Colors.grey,

//               onPrimary: Colors.grey,
//               // side: BorderSide(
//               //     width: 1.0, color: Color.fromARGB(255, 158, 186, 235)),

//               padding: EdgeInsets.only(
//                 top: 20,
//                 bottom: 9,
//               ),

//               // shadowColor: pressAttention ? Color(0xffFF4500) : Color(0xffE6E5E7),

//               elevation: 6,

//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 bottom: 1,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                  Padding(
//                    padding: const EdgeInsets.only(left: 10),
//                    child: Column(
//                 // mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//   Text(
//                       'SNAKE PLANTS (SANSEVIERIA)',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w600,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                      Text(
//                       'Native to southerm Africa',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.black,
//                         // fontWeight: FontWeight.w600,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     ],
//                    ),
//                  ),
// //                  SizedBox(
// // width: displayWidth(context)*.1,
// //                  ),
//                  Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   borderRadius: BorderRadius.all(Radius.circular(20)),
//                 ),
//                 width: double.infinity,
//                  ),
//                   // SizedBox(
//                   //   width: MediaQuery.of(context).size.width * .40,
//                   // ),
//                 ],
//               ),
//             ),
//             onPressed: () {},
//           ),
//         ),
//       ],
//     ),
//           ),


//   ],
// ),

          ],
       
        ));
  }
  }

  