import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
    required this.image,
    required this.title,
    required this.date,
  });
  final String image;
  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      color: ColorConstants.maingrey,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
              image,
              height: 55,
              width: 113,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Arrival",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white.withOpacity(.83), fontSize: 14),
              ),
              Text(
                date,
                style: TextStyle(
                    color: Colors.white.withOpacity(.48), fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}
