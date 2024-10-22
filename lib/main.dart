import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gretisapp/constants/theme.dart';

import 'constants/routes.dart';
import 'di/AppBindings.dart';
void main() async {
  runApp(MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      initialBinding: AppBindings(),
      routerDelegate: routerConfig.routerDelegate, // Use GoRouter for navigation
      routeInformationParser: routerConfig.routeInformationParser,
      routeInformationProvider: routerConfig.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          useMaterial3: true, colorScheme: MaterialTheme.darkScheme()),

    );
  }
}





