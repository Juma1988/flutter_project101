import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final String path;
  final double? height, width;
  final BoxFit fit;
  final Color? color;

  const AppImage(this.path,
      {super.key,
      this.height,
      this.width,
      this.fit = BoxFit.scaleDown,
      this.color});

  @override
  Widget build(BuildContext context) {
    if (path.endsWith("svg")) {
      return SvgPicture.asset(
        "assets/svg",
        height: height,
        width: width,
        fit: fit,
        colorFilter: color != null
            ? ColorFilter.mode(
                Colors.transparent,
                BlendMode.srcIn,
              )
            : null,
      );
    } else if (path.startsWith("http")) {
      return Image.network(
        path,
        height: height,
        width: width,
        fit: fit,
        color: color,
        errorBuilder: (context, error, stackTrace) => _errorWidget(),
      );
    } else if (path.endsWith("jpg") || path.endsWith("png")) {
      return Image.asset(
        "assets/images/$path",
        height: height,
        width: width,
        fit: fit,
        color: color,
        errorBuilder: (context, error, stackTrace) => _errorWidget(),
      );
    } else {
      return _errorWidget();
    }
  }

  Widget _errorWidget() {
    return AppImage(
      "not_found.png",
      height: height,
      width: width,
    );
  }
}
