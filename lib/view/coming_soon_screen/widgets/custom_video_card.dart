import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          fit: BoxFit.cover,
          image,
          height: 195,
          width: double.infinity,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications_sharp,
                        size: 24,
                        color: ColorConstants.mainWhite,
                      ),
                      Text(
                        "Remind Me",
                        style: TextStyle(
                            color: ColorConstants.mainWhite.withOpacity(.83)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 24,
                        color: ColorConstants.mainWhite,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: ColorConstants.mainWhite.withOpacity(.83)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Season 1 Coming December 14",
                style:
                    TextStyle(color: ColorConstants.mainWhite.withOpacity(.83)),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 20, color: ColorConstants.mainWhite),
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style:
                    TextStyle(color: ColorConstants.mainWhite.withOpacity(.83)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "•Streamy •Soapy •SlowBurn •Suspenseful •Teen •Mystery",
                style:
                    TextStyle(color: ColorConstants.mainWhite.withOpacity(.83)),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
