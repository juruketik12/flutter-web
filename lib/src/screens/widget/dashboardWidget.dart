import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardItem extends StatelessWidget {
  final Size? size;
  final String? svgSrc, count, title;
  final Color? color;
  DashboardItem({
    @required this.size,
    @required this.svgSrc,
    @required this.count,
    @required this.title,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size!.width * 0.12,
      height: size!.height * 0.16,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: color!),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color!,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  svgSrc!,
                  color: Colors.white,
                  height: 60,
                ),
              ),
              Text(
                count!,
                style: TextStyle(
                  fontSize: 30,
                  color: color!,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title!,
                style: TextStyle(
                  fontSize: 26,
                  color: color!,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: color!,
                size: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
