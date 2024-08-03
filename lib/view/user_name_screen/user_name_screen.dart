import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:netflix_clone_app/view/global_widgets/user_name_card.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        title: Image.asset(
          height: 37.2,
          ImageConstants.LOGO_PNG,
        ),
        actions: [
          Icon(
            Icons.edit,
            color: ColorConstants.mainWhite,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisExtent: 130,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            if (index < DummyDb.userList.length) {
              return UserNameCard(
                imagePath: DummyDb.userList[index]["imagePath"]!,
                userName: DummyDb.userList[index]["name"].toString(),
                onCardPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavScreen(),
                      ));
                },
              );
            } else {
              return InkWell(
                onTap: () {
                  DummyDb.userList.add({
                    "imagePath": ImageConstants.USER2_PNG,
                    "name": "kHDJFFM"
                  });
                  setState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Profile added successfully"),
                  ));
                },
                child: Column(children: [
                  Image.asset(
                    ImageConstants.ADD_PNG,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 13.25),
                  )
                ]),
              );
            }
          },
          itemCount: DummyDb.userList.length + 1,
        ),
      ),
    );
  }
}
