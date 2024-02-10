import 'package:flutter/material.dart';
import 'package:notification_app/plant_stats_page.dart';
import 'package:notification_app/widgets.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitle(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PlantStatsPage(),
                ),
              );
            },
            icon: Icon(
              Icons.insert_chart_outlined_rounded,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlantImage(),
            SizedBox(
              height: 25,
            ),
            HomePageButtons(
              onPressedOne: () async {},
              onPressedTwo: () async {},
              onPressedThree: () async {},
            ),
          ],
        ),
      ),
    );
  }
}
