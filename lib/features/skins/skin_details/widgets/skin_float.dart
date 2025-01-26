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
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF2D2D2D),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
