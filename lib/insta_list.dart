// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStories(),
              height: deviceSize.height * 0.17,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /*-- 1 --*/
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "girl",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.more_vert))
                    ],
                  ),
                ),
                /*-- 2 --*/
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    "https://media.istockphoto.com/photos/very-closeup-view-of-amazing-domestic-pet-in-mirror-round-fashion-is-picture-id1281804798?b=1&k=20&m=1281804798&s=170667a&w=0&h=HIWbeaP_cQSngCz7l9t3xwyE2eyzVgIy3K6xIqPhJQA=",
                    fit: BoxFit.cover,
                  ),
                ),
                /*-- 3 --*/
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (index == 2 || index == 4)
                            Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.red,
                            )
                          else
                            Icon(FontAwesomeIcons.heart),
                          SizedBox(width: 16.0),
                          Icon(
                            FontAwesomeIcons.comment,
                          ),
                          SizedBox(width: 16.0),
                          Icon(
                            FontAwesomeIcons.paperPlane,
                          )
                        ],
                      ),
                      Icon(
                        FontAwesomeIcons.bookmark,
                      )
                    ],
                  ),
                ),
                /*-- 4 --*/
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by walaa alkadamani, Badee Saloum and 538.23 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                /*-- 5 --*/
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                                "https://pin.dekhnews.com/wp-content/uploads/2019/09/lord-shiva-images-1.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          Text("What a great sunglasses .."),
                          Icon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(
                                "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment ..."),
                        ),
                      )
                    ],
                  ),
                ),
                /*-- 6 --*/
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "1 Day Ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
      itemCount: 5,
    );
  }
}
