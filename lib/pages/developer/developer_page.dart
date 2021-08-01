import 'dart:math';

import 'package:ecommerce_admin_tut/provider/tables.dart';
import 'package:ecommerce_admin_tut/widgets/cards/card_item.dart';
import 'package:ecommerce_admin_tut/widgets/page_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_table/ResponsiveDatatable.dart';
import 'package:responsive_table/responsive_table.dart';

class DeveloperPage extends StatefulWidget {
  @override
  _DeveloperPageState createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  @override
  Widget build(BuildContext context) {
    final TablesProvider tablesProvider = Provider.of<TablesProvider>(context);
    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              PageHeader(
                text: 'Developer',
              ),
              new Card(
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Container(
                          child:
                          new Image.asset(
                            'images/fahmi.jpg',
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        new Container(
                          child: new Text('Fahmi Nur Baihaqi : Frontend Developer'),
                        ),
                        new Container(
                          child: new Text('            '),
                        ),
                        new Container(
                          child:
                          new Image.asset(
                            'images/irfan.jpg',
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        new Container(
                          child: new Text('Irfan Mulyana Abdilah : Backend Developer'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]));

  }
}