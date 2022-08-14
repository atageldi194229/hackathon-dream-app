// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';


//     const kBottomContainerHeight=80.0;
//     const kActiveCardCololour=Color(0xFF1D1E33);
//     const kInactiveCardColour=Color.fromRGBO(56, 107, 246, 1);
//     const kBottomContainerColour=Color(0xFFEB1555);

//     const kLabelTextStyle = TextStyle(
//       fontSize: 19.0,
//       color: Color(0xFF8D8E98);
//     );

//      const kNumberTextStyle = TextStyle(
//       fontSize: 50.0,
//       fontWeight: FontWeight.w900,
//     );

//     const kLargeButonTextStyle = TextStyle(
//       fontSize: 25.0,
//       fontWeight: FontWeight.bold,
//     );

//     const kTitleTextStyle = TextStyle(
//       fontSize: 50.0,
//       fontWeight: FontWeight.bold,
//     );

//     const kResultTextStyle = TextStyle(
//       color: Color(0xFF24D876),
//       fontSize: 22.0,
//       fontWeight: FontWeight.bold,
//     );

//     const kBMITextStyle = TextStyle(
//       fontSize: 100.0,
//       fontWeight: FontWeight.bold,
//     );

//     const kBodyTextStyle = TextStyle(
//       fontSize: 22.0,
//     );

// class ReusableCard extends StatelessWidget {
//       final Color color;
//       final Widget child;
//       final Function onTap;
//       const ReusableCard({
//         Key key, 
//         this.color,
//         this.child,
//         this.onTap, 
//         }) : super(key: key);
    
//       @override
//       Widget build(BuildContext context) {
//         return GestureDetector(
//           onTap: onTap,
//           child: Container(
//             decoration: BoxDecoration(
//               color: kInactiveCardColour,
//               borderRadius: BorderRadius.all(Radius.circular(10))
//             ),
//           ),
          
//         );
//       }
//     }