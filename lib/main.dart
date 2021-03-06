import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:passenger/features/custom-rides/presentation/pages/school_Business.dart';
import 'package:passenger/features/custom-rides/presentation/pages/custom-ridesScreen.dart';
import 'features/Drawer/presentation/pages/DrawerMaster.dart';
import 'features/your-trips/presentation/pages/your-trips.dart  ';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:passenger/features/your-trips/presentation/pages/types/TodayRides.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:passenger/features/your-trips/presentation/bloc/tabIndex.dart';
import 'package:passenger/features/custom-rides/presentation/pages/rideListTime_widget.dart';
import 'package:passenger/features/your-trips/presentation/pages/tripListTile_widget.dart';
import 'package:passenger/features/your-trips/presentation/pages/nav_bar_row.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:passenger/features/your-trips/presentation/bloc/tabIndex.dart';
import 'package:passenger/features/tripdetails/presentation/pages/trip-details.dart';
import 'package:passenger/features/signup-profile/presentation/pages/siginUpProfileScreen.dart';
import 'package:passenger/features/passenger-profile/presentation/pages/PassengerProfileScreen.dart';
import 'package:passenger/features/Select_Destination/presentation/pages/select-destination.dart';

import 'package:passenger/features/Select_your_car/presentation/pages/select-your-car.dart';
import 'package:passenger/features/Help/presentation/pages/Help.dart';
import 'package:passenger/features/Reciept-details/presentation/pages/reciept-details.dart';
import 'package:passenger/features/message_driver/presentation/pages/message_driver.dart';
import 'package:passenger/features/legal/presentation/pages/legal.dart';
import 'package:passenger/features/write_bank_card/presentation/pages/write_bank_card.dart';
import 'package:passenger/features/Welcome_school_run/presentation/pages/welcome_school_run.dart';
import 'package:passenger/features/Business_one/presentation/pages/business_One.dart';
import 'package:passenger/features/Business_two/presentation/pages/Business_two.dart';
import 'package:passenger/features/Add_payment/presentation/pages/add_payment.dart';
import 'package:passenger/features/School_run_one/presentation/pages/School_run_One.dart';
import 'package:passenger/features/School_run_two/presentation/pages/School_run_two.dart';
import 'package:passenger/features/School_run_three/presentation/pages/School_run_three.dart';
import 'package:passenger/features/Business_Payment/presentation/pages/Business_Payment.dart';
import 'package:passenger/features/maps/presentation/pages/maps.dart';
import 'package:passenger/features/welcome/presentation/pages/welcomeScreen.dart';

import 'package:provider/provider.dart';
import 'package:passenger/features/Select_your_fleet/presentation/bloc/provider/JourneyStoryState.dart';
import 'package:passenger/features/Select_your_fleet/presentation/pages/select_your_fleet.dart';

void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

return     ChangeNotifierProvider<JourneyProvider>(
    create: (context) => JourneyProvider(),
child: MaterialApp(
  home: Welcome(),
) ,
);

    return  MaterialApp(
      home: Welcome(),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ride App',
      home: Your_trips(),
    );
  }
}

// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
// // ignore: prefer_mixin
// class Counter with ChangeNotifier, DiagnosticableTreeMixin {
//   int _count = 0;
//
//   int get count => _count;
//
//   void increment() {
//     _count++;
//     notifyListeners();
//   }
//   void today(){
//     _count=0;
//     notifyListeners();
//   }
//   void weekly(){
//     _count=1;
//     notifyListeners();
//   }
//   void business(){
//     _count=2;
//     notifyListeners();
//   }
//   /// Makes `Counter` readable inside the devtools by listing all of its properties
//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(IntProperty('count', count));
//   }
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const <Widget>[
//             Text('You have pushed the button this many times:'),
//
//             /// Extracted as a separate widget for performance optimization.
//             /// As a separate widget, it will rebuild independently from [MyHomePage].
//             ///
//             /// This is totally optional (and rarely needed).
//             /// Similarly, we could also use [Consumer] or [Selector].
//             Count(),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         key: const Key('increment_floatingActionButton'),
//
//         /// Calls `context.read` instead of `context.watch` so that it does not rebuild
//         /// when [Counter] changes.
//         onPressed: () => context.read<Counter>().increment(),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class Count extends StatelessWidget {
//   const Count({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//
//       /// Calls `context.watch` to make [Count] rebuild when [Counter] changes.
//         '${context.watch<Counter>().count}',
//         key: const Key('counterState'),
//         style: Theme.of(context).textTheme.headline4);
//   }
// }
