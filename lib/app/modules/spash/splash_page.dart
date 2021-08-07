import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/routes/app_routes.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  @override
  void initState() {
    super.initState();
  }

  ///NOTA: si vamos a hacer uso del contex jamas deveriamos hacerlo dentro de init state,
  ///deveriamos esperar que ya se rederise la vista ya si despues llamar a navigator pusnamed
  /// o cualquer llamada que requiera de un contexto asociado con una vista renderizada
  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) {
      // print('ir al home');
      // Navigator.pushReplacementNamed(context, LoginPage.routeNmae);
      this._checkLogin();
    });
  }

  _checkLogin() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final bool? wasLogin = prefs.getBool('wasLogin');
      print('wasLogin: $wasLogin');

      if (wasLogin == null || wasLogin == false) {
        // if (wasLogin == null) {
        Get.offNamed(AppRoutes.LOGINROUTE);
        // Navigator.pushReplacementNamed(context, LoginPage.routeNmae);
      } else
        Get.offNamed(AppRoutes.HOMEROUTE);
      // Navigator.pushReplacementNamed(context, 'home');

    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 15,
        ),
      ),
    );
  }
}
