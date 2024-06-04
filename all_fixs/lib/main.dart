// ignore_for_file: unused_import
import 'package:all_fixs/Views/Features/Album/album_main.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/BatteryInfo/battery_info.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/Device%20Specs/device_specs.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/General%20Info/general_info.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/Location%20Info/location_info.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/UserStatus/user_status.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/device_info.dart';
import 'package:all_fixs/Views/Homepage/Dashboard.dart';
import 'package:all_fixs/Views/Homepage/home_page.dart';
import 'package:all_fixs/Views/Profile/profile.dart';
import 'package:all_fixs/Views/Profile/profile_settings.dart';
import 'package:all_fixs/Views/Widgets/Auth/splash_loader_animation.dart';
import 'package:all_fixs/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:all_fixs/Views/Auth/Forget_Password.dart';
import 'package:all_fixs/Views/Auth/Login.dart';
import 'package:all_fixs/Views/Auth/Register.dart';
import 'package:all_fixs/Views/Invitation/accept_invite.dart';
import 'package:all_fixs/Views/Invitation/invite_friend.dart';
import 'package:all_fixs/Views/Profile/profile_setup.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(Allfixs());
}

class Allfixs extends StatelessWidget {
  const Allfixs({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        // theme: ThemeData(
        //   useMaterial3: false,
        // ),
        title: 'All Fixs',
        home: Register(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
