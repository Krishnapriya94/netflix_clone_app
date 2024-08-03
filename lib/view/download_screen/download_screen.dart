import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Smart Downloads",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Introducing Downloads For You",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.justify,
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                style: TextStyle(color: ColorConstants.mainWhite),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  radius: 110,
                  backgroundColor: ColorConstants.maingrey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    color: ColorConstants.buttonBlue,
                    borderRadius: BorderRadius.circular(3)),
                child: Center(
                    child: Text(
                  "SET UP",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
                )),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorConstants.maingrey),
                  child: Text(
                    "Find Something to Download",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
