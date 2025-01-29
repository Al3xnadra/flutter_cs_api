import 'package:flutter/material.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';

class SkinFloat extends StatelessWidget {
  SkinFloat({super.key, required this.skin});

  final SkinModel skin;
  final List<Map<String, dynamic>> segments = [
    {
      'name': 'FN',
      'message': 'Factory New: 0.00 - 0.07',
      'minFloat': 0.00,
      'maxFloat': 0.07,
    },
    {
      'name': 'MW',
      'message': 'Miminal Wear: 0.07 - 0.15',
      'minFloat': 0.07,
      'maxFloat': 0.15,
    },
    {
      'name': 'FT',
      'message': 'Field-Tested: 0.15 - 0.38',
      'minFloat': 0.15,
      'maxFloat': 0.38,
    },
    {
      'name': 'WW',
      'message': 'Well-Worn: 0.38 - 0.45',
      'minFloat': 0.38,
      'maxFloat': 0.45,
    },
    {
      'name': 'BS',
      'message': 'Battle-Scarred: 0.45 - 1.00',
      'minFloat': 0.45,
      'maxFloat': 1.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: BoxDecoration(
          color: Color(0xFF2D2D2D),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Indicators(
              left: 265 *
                      calculatePosition(skin.minFloat!, segments) /
                      segments.length +
                  9,
              minFloat: skin.minFloat!.toStringAsFixed(2),
              width: 265 *
                      calculateWidth(skin.minFloat!, skin.maxFloat!, segments) /
                      segments.length -
                  30,
              maxFloat: skin.maxFloat!.toStringAsFixed(2),
            ),
            Line(
              left: 265 *
                  calculatePosition(skin.minFloat!, segments) /
                  segments.length,
              width: 265 *
                  calculateWidth(skin.minFloat!, skin.maxFloat!, segments) /
                  segments.length,
            ),
            RowSegmentFloat(
              segments: segments,
            ),
          ],
        ),
      ),
    );
  }

  double calculatePosition(double value, List<Map<String, dynamic>> segments) {
    double position = 0.0;

    for (int i = 0; i < segments.length; i++) {
      var segment = segments[i];
      if (value >= segment['minFloat'] && value <= segment['maxFloat']) {
        double segmentWidth = (segment['maxFloat'] - segment['minFloat']);
        double relativePosition = (value - segment['minFloat']) / segmentWidth;
        position = i + relativePosition;
        break;
      }
    }
    return position;
  }

  double calculateWidth(
      double minFloat, double maxFloat, List<Map<String, dynamic>> segments) {
    return calculatePosition(maxFloat, segments) -
        calculatePosition(minFloat, segments);
  }
}

class RowSegmentFloat extends StatelessWidget {
  const RowSegmentFloat({
    super.key,
    required this.segments,
  });

  final List<Map<String, dynamic>> segments;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        segments.length,
        (index) => Container(
          width: 53,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey[700],
            border: index != segments.length - 1
                ? Border(
                    right: BorderSide(
                      color: Color(0xFF2D2D2D),
                    ),
                  )
                : null,
          ),
          child: Center(
            child: Tooltip(
                message: segments[index]['message'],
                child: Text(segments[index]['name'])),
          ),
        ),
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key, required this.left, required this.width});

  final double left, width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 265,
          height: 5,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Positioned(
          left: left,
          child: Container(
            height: 5,
            width: width,
            decoration: BoxDecoration(color: Colors.green),
          ),
        ),
      ],
    );
  }
}

class Indicators extends StatelessWidget {
  const Indicators(
      {super.key,
      required this.left,
      required this.width,
      required this.minFloat,
      required this.maxFloat});

  final double left, width;
  final String minFloat, maxFloat;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 305,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: left,
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  child: Stack(
                    children: [
                      Text(
                        minFloat,
                        style: TextStyle(color: Colors.white),
                      ),
                      Positioned(
                        top: 15,
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width),
                SizedBox(
                  height: 30,
                  child: Stack(
                    children: [
                      Text(
                        maxFloat,
                        style: TextStyle(color: Colors.white),
                      ),
                      Positioned(
                        top: 15,
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
