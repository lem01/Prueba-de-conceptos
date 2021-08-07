import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/routes/app_pages.dart';
import 'package:proof_concept_2/app/routes/app_routes.dart';

class HistoryTabPage extends StatelessWidget {
  const HistoryTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SimpleList(),
      ),
    );
  }
}

/// ---------------------------
///  Lista de widgets simple
/// ---------------------------

class SimpleList extends StatefulWidget {
  // static const routeName = '/SimpleList';
  @override
  _SimpleListState createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        /// ---------------------------
        ///  creamos lista de items (ListTile)
        /// ---------------------------

        ListTile(
          onTap: () {
            print("AppPages.pages.length =  ${AppPages.pages.length}");
            Get.toNamed(
              AppRoutes.GRIDVIEWROUTE,
            );
          },
          leading: Icon(Icons.list_sharp),
          title: Text('Grid View'),
        ),

        ListTile(
          onTap: () => null,
          leading: Icon(Icons.photo_album),
          title: Text('Grid View 2'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
        ),
        ListTile(
          leading: Icon(Icons.desktop_mac),
          title: Text('DeskTop MAC'),
        ),
        ListTile(
          leading: Icon(Icons.device_hub),
          title: Text('Device Hub'),
        ),
        ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('Fast Food'),
        ),
        ListTile(
          leading: Icon(Icons.flag),
          title: Text('Flag'),
        ),
        ListTile(
          leading: Icon(Icons.folder),
          title: Text('Folder'),
        ),
        ListTile(
          leading: Icon(Icons.games),
          title: Text('Games'),
        ),
        ListTile(
          leading: Icon(Icons.keyboard),
          title: Text('Keyboard'),
        ),
        ListTile(leading: Icon(Icons.group), title: Text('Group')),
        ListTile(
          leading: Icon(Icons.headset),
          title: Text('Geadset'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        ListTile(
          leading: Icon(Icons.insert_chart),
          title: Text('Chart'),
        ),
      ],
    );
  }
}
