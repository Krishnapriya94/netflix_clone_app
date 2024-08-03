import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummy_db/dummy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.search, color: Color(0xffC4C4C4)),
                      Text(
                        "Search for a show, movie, genre, e.t.c.",
                        style: TextStyle(color: Color(0xffC4C4C4)),
                      ),
                      Icon(Icons.mic, color: Color(0xffC4C4C4)),
                    ],
                  ),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xff424242))),
                  fillColor: Color(0xff424242)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Top Searches",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.mainWhite),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  leading: Container(
                    width: 146,
                    child: Image.network(
                        fit: BoxFit.cover,
                        DummyDb.searchScreenItems[index]["searchImages"]),
                  ),
                  title: Text(
                    DummyDb.searchScreenItems[index]["title"],
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                  trailing: Icon(
                    Icons.play_circle_outline,
                    color: Color(0xffC4C4C4),
                  ),
                ),
                itemCount: DummyDb.searchScreenItems.length,
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
