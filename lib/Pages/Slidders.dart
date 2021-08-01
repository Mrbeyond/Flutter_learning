import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';
import "package:flutter_swiper/flutter_swiper.dart";

class Slidders extends StatefulWidget {
  @override
  _SliddersState createState() => _SliddersState();
}

class _SliddersState extends State<Slidders> {
  double _value = 6.0;
  RangeValues _rangeValue = RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
        children: [
          Pacer("The slider Section"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.volume_up),
              Expanded(
                child: Slider(
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 20.0,
                  divisions:10,
                  activeColor: Colors.green,
                  inactiveColor: Colors.orange,
                  label: "Set the volume value",
                  semanticFormatterCallback: (newValue){
                    return "${newValue.round()}";
                  },
                  onChanged: (value){
                    setState(() {
                      _value = value.round().toDouble();
                      print(_value);
                    });
                  },
                )
              )
            ],
          ),
          Pacer("The Range slider Section"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.volume_up),
              Expanded(
                  child: RangeSlider(
                    values: _rangeValue,
                    min: 0,
                    max: 100,
                    divisions:10,
                    labels: RangeLabels(
                      _rangeValue.start.round().toString(),
                      _rangeValue.end.round().toString(),
                    ),
                    activeColor: Colors.green,
                    inactiveColor: Colors.orange,
                    onChanged: (value){
                      setState(() {
                        _rangeValue = value;
                        print(_rangeValue);
                      });
                    },
                  )
              )
            ],
          ),

          Center(child: Pacer("The Image slider Section")),

          Container(
            height: 320.0,
            child: Swiper(
              itemHeight: 310.0,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              autoplay: true,
              scale: 0.8,
              viewportFraction: 0.7,
              controller: new SwiperController(),
              pagination: new SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                    color: Colors.black12, activeColor: Colors.blue
                ),
              ),
              itemBuilder: (context, int index){
                return Image.asset(
                  "assets/images/BTC.png",
                  fit: BoxFit.fitWidth,
                );
              },

            ),
          ),

        ],

      );
  }
}
