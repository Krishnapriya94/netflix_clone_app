import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/widgets/custom_video_card.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/widgets/new_arrival_card.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({super.key});

  @override
  State<ComingSoonScreen> createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        leading: Center(
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.notifications_sharp,
              color: ColorConstants.mainWhite,
              size: 20,
            ),
          ),
        ),
        title: Text(
          "Notification",
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(
                DummyDb.newArrivalDb.length,
                (index) => NewArrivalCard(
                  title: DummyDb.newArrivalDb[index]["title"],
                  date: DummyDb.newArrivalDb[index]["date"],
                  image: DummyDb.newArrivalDb[index]["imagePath"],
                ),
              ), //generating List of NewArrivalCard
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                DummyDb.comingsoonScreenItems.length,
                (index) => CustomVideoCard(
                  image: DummyDb.comingsoonScreenItems[index]
                      ["comingsoonImages"],
                  title: DummyDb.comingsoonScreenItems[index]["title"],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
