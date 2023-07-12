import 'package:api/scr/constants/constants.dart';
import 'package:api/scr/services/base.dart';
import 'package:api/scr/ui/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NetworkBase.networkBaseInitialization();
  AppConstant.loadingConfig();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeView(),
      builder: EasyLoading.init(),
    );
  }
}
