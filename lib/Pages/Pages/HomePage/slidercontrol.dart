import 'package:BullsEye/Pages/Model/gameModel.dart';
import 'package:BullsEye/Pages/Theme/textstyles.dart';
import 'package:flutter/material.dart';

class SliderControl extends StatefulWidget {
  // SliderControl({Key key, @required this.model}) : super(key: key);
  // final GameModel model;

  @override
  _SliderControlState createState() => _SliderControlState();
}

class _SliderControlState extends State<SliderControl> {
  double _currentValue = 50.0;
  static const _edgeInsets = 32.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: _edgeInsets),
          child: Text(
            "1",
            style: LabelTextStyle.bodyText1(context),
          ),
        ),
        Expanded(
          child: _makeSlider(context),
        ),
        Padding(
          padding: const EdgeInsets.only(right: _edgeInsets),
          child: Text(
            "100",
            style: LabelTextStyle.bodyText1(context),
          ),
        )
      ],
    );
  }

  _makeSlider(BuildContext context) {
    return Slider(
      value: gameModel.sliderCurrent.toDouble(),
      min: 1.0,
      max: 100.0,
      label: _currentValue.round().toString(),
      onChangeEnd: (double value) {},
      onChanged: (double value) {
        setState(() {
          _currentValue = value;
          gameModel.sliderCurrent = _currentValue.toInt();
        });
      },
    );
  }
}
