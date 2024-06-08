import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class ImageCached extends StatelessWidget {
  final double? width;
  final double? height;
  final String path;
  const ImageCached({super.key,this.width,required this.path, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: (height != null) ? height : null,
      width: (width != null) ? width : null,
      fit: BoxFit.fill,
    );
  }
}
