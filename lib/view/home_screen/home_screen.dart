import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/home_screen/widgets/movies_card_builder_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMoviePosterSection(),
            SizedBox(
              height: 11,
            ),
            _buildPlaySection(),
            SizedBox(
              height: 40,
            ),
            MoviesCardBuilderWidget(
              title: "Previews",
              isCircle: true,
              posterImages: DummyDb.moviePosterList,
            ),
            MoviesCardBuilderWidget(
              posterImages: DummyDb.moviePosterList2,
              haveInfoCard: true,
              title: "Continue watchin for Eminalo",
            ),
            MoviesCardBuilderWidget(
              posterImages: DummyDb.moviePosterList,
              title: "Popular on Netflix",
              customHeight: 251,
              customWidth: 154,
            ),
            MoviesCardBuilderWidget(
              posterImages: DummyDb.moviePosterList2,
              title: "Trending Now",
            ),
            MoviesCardBuilderWidget(
              posterImages: DummyDb.moviePosterList,
              title: "Top 10",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          decoration: BoxDecoration(color: Color(0xfFFC4C4C4)),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                color: ColorConstants.mainBlack,
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                "Play",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Info",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildMoviePosterSection() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImageConstants.MAIN_IMAGE_HOME_PNG)),
          ),
          height: 415,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [ColorConstants.mainBlack, Colors.transparent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImageConstants.LETTER_N_PNG),
                    Text(
                      "TV Shows",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 18),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 18),
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 18),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "#2 in Nigeria Today",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
