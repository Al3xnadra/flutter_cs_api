import 'package:flutter/material.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';

class SkinFloat extends StatelessWidget {
  const SkinFloat({super.key, required this.skin});

  final SkinModel skin;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  skin.minFloat.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  skin.maxFloat.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 265,
                  height: 3,
                  decoration: BoxDecoration(color: Colors.red),
                ),
                Container(
                  height: 3,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.green),
                ),
              ],
            ),
            RowSegmentFloat(),
          ],
        ),
      ),
    );
  }
}

class RowSegmentFloat extends StatelessWidget {
  RowSegmentFloat({
    super.key,
  });

  final List<Map<String, dynamic>> segments = [
    {
      'name': 'FN',
      'message': 'Factory New: 0.00 - 0.07',
    },
    {
      'name': 'MW',
      'message': 'Miminal Wear: 0.07 - 0.15',
    },
    {
      'name': 'FT',
      'message': 'Field-Tested: 0.15 - 0.38',
    },
    {
      'name': 'WW',
      'message': 'Well-Worn: 0.38 - 0.45',
    },
    {
      'name': 'BS',
      'message': 'Battle-Scarred: 0.45 - 1.00',
    },
  ];

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
