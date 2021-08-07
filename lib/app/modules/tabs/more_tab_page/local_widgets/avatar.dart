import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'circule_container.dart';

class Avatar extends StatefulWidget {
  final double size, sizebtnEdit;
  Avatar({
    Key? key,
    this.size = 150,
    this.sizebtnEdit = 50,
  }) : super(key: key);

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  GlobalKey snackBarKey = GlobalKey<ScaffoldState>();

  // }

  // tercera manera de hacerlo//////////////////////////////////
  File? _image;
  final picker = ImagePicker();

  Future _getImageGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  Future _getImageCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  _showBottomSheet() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: ListTile(
                    onTap: () => _getImageGallery(),
                    title: Text("Gallery"),
                    leading: Image.network(
                      "https://image.flaticon.com/icons/png/512/833/833453.png",
                      height: 25,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    onTap: () => _getImageCamera(),
                    title: Text("Camera"),
                    leading: Image.network(
                      "https://image.flaticon.com/icons/png/512/1042/1042339.png",
                      height: 25,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.size,
        height: widget.size,
        child: Stack(
          children: [
            _image == null
                ? SvgPicture.asset('assets/icons/login.svg')
                : ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.file(
                      _image!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
            Positioned(
                // top: 10,
                bottom: 10,
                right: 10,
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  minSize: 22,
                  child: CirculeContainer(
                    child: Icon(Icons.edit),
                    size: widget.sizebtnEdit,
                  ),
                  onPressed: () {
                    _showBottomSheet();
                  },
                ))
          ],
        ));
  }
}
