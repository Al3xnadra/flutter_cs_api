import 'package:flutter/material.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';

class SkinDetailsPage extends StatelessWidget {
  const SkinDetailsPage({
    super.key,
    required this.skin,
  });

  final SkinModel skin;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final padding = width < 600
        ? EdgeInsets.symmetric(vertical: 30, horizontal: 50)
        : width < 1200
            ? EdgeInsets.symmetric(vertical: 30, horizontal: 30)
            : EdgeInsets.symmetric(vertical: 50, horizontal: 50);

    final content = width < 600
        ? _ContentForMobile(
            skin: skin,
          )
        : width < 1200
            ? _ContentForWeb(
                skin: skin,
              )
            : _ContentForWeb(
                skin: skin,
              );
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Padding(
        padding: padding,
        child: content,
      ),
    );
  }
}

class _ContentForMobile extends StatelessWidget {
  final SkinModel skin;

  const _ContentForMobile({required this.skin});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFeb4b4b),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 289,
          width: 289,
          child: Image.network(
              'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/default_generated/weapon_ak47_cu_panther_ak47_light_png.png'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          skin.name,
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.white,
          thickness: 4,
        ),
        SizedBox(
          height: 15,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Description: ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              TextSpan(
                text:
                    'Powerful and reliable, the AK-47 is one of the most popular assault rifles in the world. It is most deadly in short, controlled bursts of fire. It has been custom painted with the image of a panther over a tiger camo background.',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFF2D2D2D),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Crates:',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Image.network(
                        'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/weapon_cases/crate_esports_2014_summer_png.png'),
                    Text(
                      'eSports 2014 Summer Case',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Collection:',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Image.network(
                        'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/set_icons/set_esports_iii_png.png '),
                    Text(
                      'The eSports 2014 Summer Collection',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 15),
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
                    '0',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '1',
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
      ],
    );
  }
}

class _ContentForWeb extends StatelessWidget {
  final SkinModel skin;

  const _ContentForWeb({required this.skin});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFeb4b4b),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 289,
              width: 289,
              child: Image.network(
                  'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/default_generated/weapon_ak47_cu_panther_ak47_light_png.png'),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      skin.name,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            TextSpan(
                              text:
                                  'Powerful and reliable, the AK-47 is one of the most popular assault rifles in the world. It is most deadly in short, controlled bursts of fire. It has been custom painted with the image of a panther over a tiger camo background.',
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
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF2D2D2D),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Crates:',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.network(
                              'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/weapon_cases/crate_esports_2014_summer_png.png'),
                          Text(
                            'eSports 2014 Summer Case',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Collection:',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.network(
                              'https://raw.githubusercontent.com/ByMykel/counter-strike-image-tracker/main/static/panorama/images/econ/set_icons/set_esports_iii_png.png '),
                          Text(
                            'The eSports 2014 Summer Collection',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
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
                          '0',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '1',
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
            ),
          ],
        ),
      ],
    );
  }
}
