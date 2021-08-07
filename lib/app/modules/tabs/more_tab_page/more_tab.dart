import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/modules/login_page/local_widgest/dialogs.dart';
import 'package:proof_concept_2/app/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local_widgets/avatar.dart';
import 'local_widgets/left_right_icon_button.dart';

class MoreTabPage extends StatefulWidget {
  MoreTabPage({Key? key}) : super(key: key);

  @override
  _MoreTabPageState createState() => _MoreTabPageState();
}

class _MoreTabPageState extends State<MoreTabPage> {
  String _emailText = "";

  _logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    // Get.offAllNamed(AppRoutes.LOGINROUTE);
    // Get.offAll(LoginPage());
    Get.offAllNamed(AppRoutes.LOGINROUTE);
    // Get.off(LoginPage());
    // Get.offNamedUntil(AppRoutes.LOGINROUTE, (route) => false);
    // Navigator.pushNamedAndRemoveUntil(
    //     context, LoginPage.routeNmae, (route) => false);
  }

  _confirm() async {
    final isOk = await Dialogs.confirm(context,
        title: "ACCIÓN REQUERIDA",
        body: "Esta seguro de que desea cerrar sesion?");
    if (isOk) {
      _logOut();
    }
  }

  _setEmail() {
    Dialogs.inputEmail(context, onOk: (String text) {
      print('input Dialog $text');
      _emailText = text;
      setState(() {});
    }, placeholder: "example@domain.com", label: "Ingrese un email");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xfff8f8f8),
              padding: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Avatar(size: 145
                      // sizebtnEdit: contraints.maxHeight * 0.1,
                      ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Bienvenido',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Lennox Monge',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            LeftRihtIconButton(
              leftIcon: 'assets/icons/mail.svg',
              rightContent: Text(
                _emailText != "" ? _emailText : 'lemci@example.com',
                style: TextStyle(color: Color(0xffaaaaaa)),
              ),
              label: 'E-mail',
              onPressed: () {
                _setEmail();
              },
            ),
            LeftRihtIconButton(
              leftIcon: 'assets/icons/security.svg',
              rightContent: SvgPicture.asset(
                'assets/icons/arrow-rigth.svg',
                width: 20,
              ),
              label: 'Configuraciones de privacidad',
              onPressed: () {},
            ),
            LeftRihtIconButton(
              leftIcon: 'assets/icons/notification.svg',
              rightContent: Text(
                'ACTIVADO',
                style: TextStyle(color: Color(0xffaaaaaa), letterSpacing: 0.5),
              ),
              label: 'Notificaicones Push',
              onPressed: () {},
            ),
            LeftRihtIconButton(
              leftIcon: 'assets/icons/logout.svg',
              rightContent: Text(
                'ACTIVADO',
                style: TextStyle(color: Color(0xffaaaaaa), letterSpacing: 0.5),
              ),
              label: 'Cerrar Sesion',
              onPressed: _confirm,
            )
          ],
        ),
      ),
    );
  }
}
