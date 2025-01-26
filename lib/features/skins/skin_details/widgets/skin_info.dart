import 'package:flutter/material.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';

class SkinInfo extends StatelessWidget {
  const SkinInfo({super.key, required this.skin});

  final SkinModel skin;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skin.name,
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: Colors.white,
          thickness: 4,
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Description: ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                TextSpan(
                  text: skin.description,
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
