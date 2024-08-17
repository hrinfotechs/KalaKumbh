import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kalakumbh/pages/login.dart';
import 'package:kalakumbh/route/routes.dart';
import 'package:kalakumbh/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: AppConstant.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: LoginPage(),
          onGenerateRoute: (settings) => generateRoute(settings),
        );
      },
      child: LoginPage(),
    );
  }
}
