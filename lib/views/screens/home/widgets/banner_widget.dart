import 'package:flutter/cupertino.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xFFf7f7f7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2015/08/23/09/22/banner-902589_640.jpg',
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
