import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/data/api/account_api.dart';
import 'package:proof_concept_2/app/modules/login_page/local_widgest/my_btn.dart';
import 'package:proof_concept_2/app/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local_widgest/dialogs.dart';

class LoginPage extends StatefulWidget {
  // static final routeNmae = 'login';
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _focusNodePass = FocusNode();
  AccountApi _accountApi = AccountApi();

  GlobalKey<FormState> _formKey = GlobalKey();
  // ignore: unused_field
  String _email = '', _password = '';
  bool _isFechin = false;

  @override
  void dispose() {
    _focusNodePass.dispose();
    super.dispose();
  }

  _submint() async {
    final bool isValid = _formKey.currentState!.validate();
    if (isValid) {
      setState(() {
        _isFechin = true;
      });
      bool isOk = await _accountApi.login(_email, _password);

      if (isOk) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('wasLogin', true);
        // Navigator.pushReplacementNamed(context, 'home');
        Get.offNamed(AppRoutes.HOMEROUTE);
      } else {
        setState(() {
          _isFechin = false;
        });
        await Dialogs.alert(
          context,
          title: "ERROR",
          body: "E-mail o contraseña incorrectos",
        );
        //print('lalalaa');
      }
    }
  }

  String? _validateEmail(email) {
    if (email.isNotEmpty && email.contains('@')) {
      _email = email;
      return null;
    } else
      return 'ivalid email';
  }

  String? _validatePassword(password) {
    if (password.isNotEmpty && password.length > 4) {
      _password = password;
      return null;
    } else
      return 'ivalid password';
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);

    final Size size = media.size;
    final EdgeInsets padding = media.padding;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                // color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                    child: Container(
                  height: size.height - padding.top - padding.bottom,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Image.asset(
                              'assets/images/logo 2.png',
                              width: 400,
                              color: Color(0xff304ffe),
                            ),
                          ),
                          Text(
                            'Magudali',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      ConstrainedBox(
                          constraints:
                              BoxConstraints(maxWidth: 340, minWidth: 200),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'expample@domain.com',
                                    labelText: 'E-mail',
                                    prefixIcon: Container(
                                      width: 70,
                                      height: 40,
                                      padding: EdgeInsets.all(11),
                                      child: SvgPicture.asset(
                                          'assets/icons/mail.svg',
                                          color: Colors.black54),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  validator: _validateEmail,
                                  keyboardType: TextInputType.emailAddress,
                                  keyboardAppearance: Brightness.light,
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (String text) {
                                    _focusNodePass.nextFocus();
                                  },
                                  initialValue: "eve.holt@reqres.in",
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: '********',
                                    labelText: 'Password',
                                    prefixIcon: Container(
                                      width: 70,
                                      height: 40,
                                      padding: EdgeInsets.all(11),
                                      child: SvgPicture.asset(
                                        'assets/icons/password.svg',
                                        color: Colors.black54,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  validator: _validatePassword,
                                  obscureText: true,
                                  keyboardAppearance: Brightness.light,
                                  focusNode: _focusNodePass,
                                  textInputAction: TextInputAction.send,
                                  onFieldSubmitted: (String text) {
                                    _submint();
                                  },
                                  initialValue: "cityslicka",
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              'Olvide mi contraseña',
                                              style: TextStyle(
                                                  color: Color(0xff304ffe)),
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 1,
                                                        color: Color(
                                                            0xff304ffe)))),
                                          ),
                                          onPressed: () {})
                                    ]),
                                SizedBox(
                                  height: 30,
                                ),
                                MyBtn(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 18),
                                  label: 'INGRESAR',
                                  fullwidth: true,
                                  bacgroundColor: Color(0xff304ffe),
                                  texColor: Colors.white,
                                  onPressed: () {
                                    _submint();
                                  },
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text('O inicia con'),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MyBtn(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 18),
                                        label: 'FACEBOOK',
                                        fullwidth: true,
                                        bacgroundColor: Color(0xff0000d6),
                                        texColor: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: MyBtn(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 18),
                                        label: 'GOOGLE',
                                        fullwidth: true,
                                        bacgroundColor: Color(0xffC62828),
                                        texColor: Colors.white,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ))),
            if (_isFechin)
              Positioned.fill(
                  child: Container(
                color: Colors.white70,
                child: Center(
                  child: CupertinoActivityIndicator(
                    radius: 15,
                  ),
                ),
              ))
          ],
        ),
      ),
    );
  }
}
