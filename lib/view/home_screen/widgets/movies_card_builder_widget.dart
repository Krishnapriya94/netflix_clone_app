import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class MoviesCardBuilderWidget extends StatelessWidget {
  const MoviesCardBuilderWidget(
      {super.key,
      this.isCircle = false,
      this.customHeight = 161,
      this.customWidth = 103,
      required this.title,
      required this.posterImages,
      this.haveInfoCard = false});

  final bool isCircle;
  final double customHeight;
  final double customWidth;
  final String title;
  final List<String> posterImages;
  final bool haveInfoCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SizedBox(
          height: isCircle ? customWidth : customHeight,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: DummyDb.moviePosterList.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(posterImages[index]))),
              height: customHeight,
              width: customWidth,
              child: Visibility(
                visible: haveInfoCard,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: customWidth,
                      height: 2,
                      color: Colors.grey,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      color: ColorConstants.mainBlack,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: ColorConstants.mainWhite,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: ColorConstants.mainWhite,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 7,
            ),
          ),
        )
      ],
    );
  }
}
