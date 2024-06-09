import 'package:flutter/material.dart';
import 'package:flutter_project101/browsing/category/category_view.dart';
import 'package:flutter_project101/browsing/slider/slider_view.dart';
import 'package:flutter_project101/core/app_theme.dart';

import 'products/products_view.dart';

class BrowsingView extends StatelessWidget {
  const BrowsingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('An Application'),
        centerTitle: true,
        backgroundColor: PrimaryColor2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderView(),
            SizedBox(height: 16),
            CategoryView(),
            SizedBox(height: 16),
            ProductsView(),
          ],
        ),
      ),
    );
  }
}
