import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_image.dart';

import 'data.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  bool isLoading = true;
  @override
  void initState() {
    getData();
    super.initState();
  }

  late List<CategoryModel> list;

  Future<void> getData() async {
    final response = await Dio().get('https://thimar.amr.aait-d.com/api/categories');
    list = CategoryData.fromJson(response.data).list;
    isLoading = false;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Category',style: TextStyle(fontWeight: FontWeight.w600,),),
            SizedBox(
              height: 108,
              child: ListView.separated(
                itemBuilder: (context, index) => _item(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 16),
                itemCount: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _item extends StatelessWidget {
  const _item();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AppImage(
            'https://www.health.com/thmb/cNpAbv57UhP4IIEZmxOql7_BVmQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/HealthiestFruits-feb2318dc0a3454993007f57c724753f.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.white.withOpacity(0.5),
            height: 25,
            width: double.infinity,
            child: Text(
              'Fruits',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

/*


 */
