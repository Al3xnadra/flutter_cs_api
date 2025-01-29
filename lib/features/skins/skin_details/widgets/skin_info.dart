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
          height: 10,
        ),
        if (skin.stattrak == true)
          Text(
            'StatTrak Available',
            style: TextStyle(
              color: Color(0xFFE88D09),
              fontSize: 18,
            ),
          )
        else
          Text(
            'Souvenir Available',
            style: TextStyle(
              color: Color(0xFFFFCA0B),
              fontSize: 18,
            ),
          ),
        SizedBox(
          height: 15,
        ),
        SkinDescription(description: skin.description)
      ],
    );
  }
}

class SkinDescription extends StatelessWidget {
  const SkinDescription({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    final desc = description
        .replaceAll('\\n', '\n')
        .replaceAll('<i>', '')
        .replaceAll('</i>', '');

    final paragraphs = desc.split('\n').where((s) => s.isNotEmpty).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: paragraphs.map((paragraph) {
        final isQuote = description.contains('<i>$paragraph</i>');

        return Padding(
          padding: EdgeInsets.only(right: 20, bottom: 20),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: isQuote ? 'Flavor: ' : 'Description: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: paragraph,
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontStyle: isQuote ? FontStyle.italic : FontStyle.normal,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
