import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_image.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      padding: EdgeInsets.all(16),
      addAutomaticKeepAlives: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 189 / 300),
      itemBuilder: (context, index) => _items(),
    );
  }
}

class _items extends StatelessWidget {
  const _items({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black.withOpacity(.30),
              offset: Offset(0, 4),
            )
          ]),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8).copyWith(bottomLeft:Radius.circular(0),bottomRight: Radius.circular(0)),
            ),
            clipBehavior: Clip.antiAlias,
            child: AppImage(
              'https://www.starhealth.in/blog/wp-content/uploads/2022/08/Pineapples.jpg',
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
