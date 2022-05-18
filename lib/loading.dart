import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoodforfood/utils/image_constant.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
        Center(
          child: SvgPicture.asset(
            ImageConstant.imgZoodforfoodl,
            fit: BoxFit.fill,
          ),
        ),
            const Center(
              child: SpinKitFadingCircle(
                color: Colors.black,
                size: 50.0,
              ),
            )
    ],
    ),
      ),
    );
  }
}
