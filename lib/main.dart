import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jipbang/src/pallet/pallet.dart';
import 'package:jipbang/ui/registPage.dart';
import 'src/binding/appBinding.dart';
import 'src/pallet/pallet.dart';
import 'ui/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:
            ColorService.createMaterialColor(Color.fromARGB(205, 48, 86, 211)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: AppBinding(),
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage()),
        GetPage(name: '/regist', page: () => const RegistPage()),
      ],
    );
  }
}
