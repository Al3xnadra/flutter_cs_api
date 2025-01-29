import 'package:flutter/material.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';

class SkinCratesCollection extends StatelessWidget {
  const SkinCratesCollection({
    super.key,
    required this.skin,
  });

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
            if (skin.crates.length == 1)
              OneCase(
                skin: skin,
              )
            else
              MoreCases(
                skin: skin,
              )
          ],
        ),
      ),
    );
  }
}

class MoreCases extends StatelessWidget {
  const MoreCases({
    super.key,
    required this.skin,
  });

  final SkinModel skin;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.5;

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF2D2D2D),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          if (skin.collections!.isNotEmpty)
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Collection:',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          Image.network(
            skin.collections!.first.image,
            height: 80,
          ),
          Text(
            skin.collections!.first.name,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          if (skin.crates.isNotEmpty)
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Crates:',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          GridView.count(
              crossAxisCount: 3,
              childAspectRatio: (itemWidth / itemHeight),
              controller: ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: List.generate(
                skin.crates.length,
                (index) {
                  return Column(
                    children: [
                      Flexible(
                        child: Image.network(
                          skin.crates[index].image,
                          height: 80,
                        ),
                      ),
                      Text(
                        skin.crates[index].name,
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  );
                },
              )),
        ],
      ),
    );
  }
}

class OneCase extends StatelessWidget {
  const OneCase({super.key, required this.skin});

  final SkinModel skin;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Crates:',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Image.network(skin.crates.first.image),
              Text(
                skin.crates.first.name,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        if (skin.collections!.isNotEmpty)
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Collection:',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Image.network(skin.collections!.first.image),
                Text(
                  skin.collections!.first.name,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
