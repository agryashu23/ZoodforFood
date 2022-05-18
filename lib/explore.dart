import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zoodforfood/utils/image_constant.dart';
import 'package:zoodforfood/utils/slider.dart';
import 'dart:ui' as ui;


class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  ui.Image? customImage;
  double sliderValue = 0.0;
  var value = 0.0;

  Future<ui.Image> loadImage(String assetPath) async {
    ByteData data = await rootBundle.load(assetPath);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),targetHeight: 40,targetWidth: 40);
    ui.FrameInfo fi = await codec.getNextFrame();

    return fi.image;
  }

  @override
  void initState() {
    super.initState();
    _loadImage = loadImage('assets/images/food2.png');
  }

  late Future<ui.Image> _loadImage;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder<ui.Image>(
        future: _loadImage,
        builder: (context, snapshot) {
          if (snapshot.hasData || snapshot.data != null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderTheme(
                data: SliderThemeData(
                  trackHeight: 28,
                  inactiveTrackColor: Colors.grey.shade300,
                  activeTrackColor: Colors.blue,
                  thumbShape: SliderThumbImage(snapshot.data!),
                ),
                child: Slider(
                  value: value,
                  min: 0,
                  max:50,
                  onChanged: (setup) {
                    // setState(() {
                    //   value = setup;
                    //
                    // });
                  },
                ),
              ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      value  = value + 10.0;

                    });
                  },
                  child: Text("OK",style: TextStyle(fontSize: 25,color: Colors.black),),
                )
          ],
            );
          }
          // progress indicator while loading image,
          // you can return and empty Container etc. if you like
          return CircularProgressIndicator();
        }
      ),);
  }
}
