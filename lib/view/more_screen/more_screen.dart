import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/global_widgets/user_name_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserSelectionSection(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: ColorConstants.mainWhite,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Manage Profiles",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  )
                ],
              ),
              SizedBox(
                height: 6,
              ),
              _buildRefferalSection(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.check, color: ColorConstants.mainWhite),
                  Text(
                    "My List",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: ColorConstants.mainWhite.withOpacity(.5),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "App Settings",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Account",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Help",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Sign Out",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildRefferalSection() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      color: ColorConstants.maingrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.sms_outlined,
                color: ColorConstants.mainWhite,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                textAlign: TextAlign.justify,
                "Tell friends about Netflix.",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            textAlign: TextAlign.justify,
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
            style: TextStyle(
                fontSize: 10,
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            textAlign: TextAlign.justify,
            "Terms & Conditions",
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: ColorConstants.mainWhite,
                decorationThickness: 2,
                fontSize: 10,
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: ColorConstants.mainBlack, filled: true),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 40,
                color: ColorConstants.mainWhite,
                child: Text(
                  "Copy Link",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(ImageConstants.whatzapp, scale: 60),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Image.asset(ImageConstants.facebook, scale: 30),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Image.asset(ImageConstants.gmail, scale: 80),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Column(
                children: [
                  Icon(
                    size: 35,
                    Icons.more_horiz,
                    color: ColorConstants.mainWhite,
                  ),
                  Text(
                    "More",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildUserSelectionSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              4,
              (index) => UserNameCard(
                  onCardPressed: () {
                    print(index);
                    selectedIndex = index;
                    setState(() {});
                    print(selectedIndex);
                  },
                  imagePath: DummyDb.userList[index]["imagePath"].toString(),
                  userName: DummyDb.userList[index]["name"].toString(),
                  height: index == selectedIndex ? 70 : 60,
                  width: index == selectedIndex ? 73 : 65),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 6),
            height: 60,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ColorConstants.mainWhite, width: 1)),
            child: Icon(
              Icons.add,
              color: ColorConstants.mainWhite,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
