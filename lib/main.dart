import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/auth/view/auth_gate_screen.dart';
import 'package:pp_app/bindings/initial_bindings.dart';
import 'package:pp_app/core/theme/app_theme.dart';
import 'package:pp_app/firebaseSeed/polity_seed.dart';
import 'package:pp_app/routes/app_pages.dart';
import 'package:pp_app/routes/app_routes.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  
// await PolitySeeder.seedPolityTrueFalse2();
  runApp(const PPApp());
}

class PPApp extends StatelessWidget {
  const PPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'For-Facts',
      theme: AppTheme.light,

      initialBinding: InitialBinding(),

      home: const AuthGateScreen(),

      getPages: AppPages.pages,
    );
  }
}