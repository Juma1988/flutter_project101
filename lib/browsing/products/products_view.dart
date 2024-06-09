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

class _items extends StatefulWidget {
  const _items({super.key});

  @override
  State<_items> createState() => _itemsState();
}

class _itemsState extends State<_items> {
  bool isLoading = false;
  bool isFavourite = false;
  bool isCart = false;

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
          // contain of image
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8).copyWith(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
            ),
            clipBehavior: Clip.antiAlias,
            child: AppImage(
              'https://www.starhealth.in/blog/wp-content/uploads/2022/08/Pineapples.jpg',
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // contain of every thing else
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Banana',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          isFavourite = !isFavourite;
                          setState(() {});
                        },
                        icon: isFavourite
                            ? Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              )
                            : Icon(Icons.favorite_border))
                  ],
                ),
                Text(
                  'a curved, yellow fruit with a thick skin and soft sweet flesh. If you eat a banana every day for breakfast.',
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.35),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '50 Egp',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14),
                        ),
                        Text(
                          '68 Egp',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.35),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          isCart = !isCart;
                          setState(() {});
                        },
                        icon: isCart
                            ? Icon(
                                Icons.shopping_cart,
                                color: Colors.greenAccent,
                              )
                            : Icon(Icons.add_shopping_cart_outlined))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
