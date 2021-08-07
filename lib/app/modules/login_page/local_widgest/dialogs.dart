import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogs {
  static Future<void> alert(
    BuildContext context, {
    required String title,
    required String body,
    String okText = "Aceptar",
  }) async {
    Completer<void> c = Completer();

    showCupertinoDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: title != "" ? Text(title) : null,
            content: body != "" ? Text(body) : null,
            actions: [
              CupertinoDialogAction(
                child: Text(okText),
                onPressed: () {
                  Navigator.pop(context);
                  c.complete();
                },
              ),
            ],
          );
        });
    return c.future;
  }

  static Future<bool> confirm(
    BuildContext context, {
    required String title,
    required String body,
    String confirmText = 'Aceptar',
    String cancelText = 'Cancelar',
  }) async {
    Completer<bool> c = new Completer();

    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.transparent,
            alignment: Alignment.bottomCenter,
            child: CupertinoActionSheet(
              title: title != ""
                  ? Text(
                      title,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  : null,
              message: body != ""
                  ? Text(
                      body,
                      style: TextStyle(fontSize: 16),
                    )
                  : null,
              actions: [
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                      c.complete(true);
                    },
                    child: Text(
                      confirmText,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    )),
              ],
              cancelButton: CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                    c.complete(false);
                  },
                  child: Text(
                    cancelText,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.w300),
                  )),
            ),
          );
        });

    ////////// para hacerlos con con botones de material desing 2
    // showDialog(
    //       context: context,
    //       barrierDismissible: false,
    //       builder: (_) {
    //         return AlertDialog(
    //           title: title != null ? Text(title) : null,
    //           content: body != null ? Text(body) : null,
    //           actions: [
    //             FlatButton(
    //                 onPressed: () {
    //                   Navigator.pop(context);
    //                   c.complete(true);
    //                 },
    //                 child: Text(
    //                   confirmText,
    //                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
    //                 )),
    //             FlatButton(
    //                 onPressed: () {
    //                   Navigator.pop(context);
    //                   c.complete(false);
    //                 },
    //                 child: Text(
    //                   cancelText,
    //                   style: TextStyle(
    //                       color: Colors.red,
    //                       fontSize: 17,
    //                       fontWeight: FontWeight.w300),
    //                 ))
    //           ],
    //         );
    //       });

    return c.future;
  }

  //otro dialogo
  static void input(BuildContext context,
      {String? label,
      String? placeholder,
      @required void Function(String)? onOk}) {
    String text = '';

    showCupertinoDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: label != null ? Text(label) : null,
            content: CupertinoTextField(
              onChanged: (String _text) {
                text = _text;
              },
              placeholder: placeholder,
            ),
            actions: [
              CupertinoButton(
                  child: Text('ACEPTAR'),
                  onPressed: () {
                    onOk!(text);
                    Navigator.pop(context);
                  })
            ],
          );
        });
  }

  //input dialog para email
  static void inputEmail(BuildContext context,
      {required String label,
      required String placeholder,
      @required void Function(String)? onOk}) {
    showCupertinoDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
              title: label != ""
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 9.0),
                      child: Text(label),
                    )
                  : null,
              content: InputEmail(
                placeholder: placeholder,
                onOk: (text) {
                  if (onOk != null) onOk(text);
                },
              ));
        });
  }
}

class InputEmail extends StatefulWidget {
  final String placeholder;
  final void Function(String) onOk;

  InputEmail({
    Key? key,
    required this.placeholder,
    required this.onOk,
  }) : super(key: key);

  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  String _email = '';

  bool _validate() {
    return (_email.contains("@"));
  }

  @override
  Widget build(BuildContext context) {
    final isValid = _validate();

    return Column(
      children: [
        CupertinoTextField(
          onChanged: (String text) {
            _email = text;
            _validate();
            setState(() {});
          },
          placeholder: widget.placeholder,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                  // color: Colors.blue,
                  onPressed: () => Get.back(),
                  child: Text(
                    'CANCELAR',
                    style: TextStyle(color: Colors.red),
                  )),
            ),
            Expanded(
              child: TextButton(
                  onPressed: isValid
                      ? () {
                          Navigator.pop(context);
                          widget.onOk(_email);
                        }
                      : null,
                  child: Text('ACEPTAR',
                      style: TextStyle(
                          color: isValid ? Colors.blue : Colors.black45))),
            )
          ],
        )
      ],
    );
  }
}
