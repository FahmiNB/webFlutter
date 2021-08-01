import 'dart:math';

import 'package:ecommerce_admin_tut/provider/tables.dart';
import 'package:ecommerce_admin_tut/widgets/cards/card_item.dart';
import 'package:ecommerce_admin_tut/widgets/page_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_table/ResponsiveDatatable.dart';
import 'package:responsive_table/responsive_table.dart';

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  @override
  Widget build(BuildContext context) {
    final TablesProvider tablesProvider = Provider.of<TablesProvider>(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
        PageHeader(
        text: 'Sample Product',
      ),
          new Card(
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      child:
                      new Image.asset(
                        'images/sedaap.jpg',
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Container(
                      child: new Text('Mie Sedaap'),
                    ),
                    new Container(
                      child:
                      new Image.asset(
                        'images/doritos.jpg',
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Container(
                      child: new Text('snack Doritos'),
                    ),
                  ],
                ),
              ],
            ),
          ),
  ]));

  }
}