import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_project101/browsing/slider/api.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  int currentIndex = 2;
  bool isLoading = true;

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }
  //
  // late SliderData model;
  //
  // Future<void> getData() async {
  //   final response =
  //       await Dio().get('https://thimar.amr.aait-d.com/api/slider');
  //   model = SliderData.fromJson(response.data);
  //   isLoading = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 232,
          child: CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (context, index, realIndex) =>
                //Image.network(model.list[index].image),
                Image.network('https://img.freepik.com/free-vector/grocery-store-landing-page-template_23-2151089804.jpg?t=st=1717953014~exp=1717956614~hmac=b68d987a40b9abe205eb6e1a197cd44602360576f2ff8d8791e5fd52d9401178&w=826'),
            options: CarouselOptions(
              clipBehavior: Clip.antiAlias,
              autoPlay: true,
              viewportFraction: 1,
              aspectRatio: 16 / 9,
              height: 232,
              autoPlayInterval: Duration(seconds: 4),
              pauseAutoPlayOnManualNavigate: true,
              onPageChanged: (index, reason) {
                currentIndex = index;
                setState(() {});
              },
            ),
          ),
        ),
        SizedBox(height: 8),
        Center(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
            (index) => Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 2),
              child: CircleAvatar(
                backgroundColor: Color(0xFF16A124)
                    .withOpacity(index == currentIndex ? 1 : 0.1),
                maxRadius: 4,
              ),
            ),
          ),
        ))
      ],
    );
  }
}
