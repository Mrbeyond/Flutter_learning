import "package:flutter/material.dart";
import 'package:transparent_image/transparent_image.dart';

class Images extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 0),
      child: Column(
        children: [
          SizedBox(height: 30, child: Text("Local Images")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: Image.asset('assets/locals/chart.png'),),
              Expanded(child: Image.asset('assets/locals/Presentation.png'),),
            ],
          ),
          SizedBox(height: 30, child: Text("Local Images changed dir")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: Image.asset('assets/locals/Presentation.png')),
              Expanded(child: Image.asset('assets/locals/chart.png')),
            ],
          ),
          SizedBox(height: 30, child: Text("Remote Images")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [

              Expanded(
                child: Image.network(
                  'https://img.favpng.com/19/23/20/computer-programming-software-developer-software-engineering-application-software-software-development-png-favpng-VBux2udSxw30eQMvN2tDdnsdv_t.jpg',
                  height: 200,
                ),
              ),
              Expanded(
                child:  Image.network(
                  'https://png.pngtree.com/png-clipart/20190925/original/pngtree-mobile-phone-receives-short-message-png-image_4999527.jpg',
                  height: 200,
                ),
              ),
            ],
          ),
          SizedBox(height: 60, child: Text("Placeholder Images for loading network images, FadeInImage")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [

              Expanded(child:
                FadeInImage.assetNetwork(
                  placeholder: "assets/locals/chart.png",
                  image: 'https://img.favpng.com/19/23/20/computer-programming-software-developer-software-engineering-application-software-software-development-png-favpng-VBux2udSxw30eQMvN2tDdnsdv_t.jpg',
                  height: 200,
                ),
              ),
            ],
          ),
          SizedBox(height: 60, child: Text("Placeholder using kTransparentImage lib, FadeInImage memoryNetwork")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://img.favpng.com/19/23/20/computer-programming-software-developer-software-engineering-application-software-software-development-png-favpng-VBux2udSxw30eQMvN2tDdnsdv_t.jpg',
                  height: 200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}