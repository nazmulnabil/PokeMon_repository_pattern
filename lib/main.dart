import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/home/bindings/home_binding.dart';
import 'app/modules/home/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodBank',
      theme: ThemeData(),
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/",
            page: () => const HomePage(),
            binding: HomePageBinding()),
      ],
    );
  }
}
