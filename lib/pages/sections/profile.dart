import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);
  final content =
      "Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet";

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Material(
      child: Container(
        width: device.width,
        height: device.height,
        color: Colors.white,
        child: Stack(
          children: [
            // BACKGROUD IMAGE
            Image.asset(
              "bg-2.png",
              fit: BoxFit.cover,
            ),
            // LEVEL 2 STACK
            Container(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // CENTER TITLE
                  Center(
                    child: Text(
                      "PROFILE TYPES",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          decoration: TextDecoration.none,
                          height: 1.3),
                    ),
                  ),
                  // CARDS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // CARD 1
                      RowCard(
                        device: device,
                        content: content,
                        img: "c-1.png",
                        title: "BUSINESS/ INDIVISUAL USER",
                      ),
                      // CARD 2
                      RowCard(
                        device: device,
                        content: content,
                        img: "c-2.png",
                        title: "BUSINESS ISSUING INSTITUTION",
                      ),
                      // CARD 3
                      RowCard(
                        device: device,
                        content: content,
                        img: "c-3.png",
                        title: "BUSINESS 3RD PARTY VERIFIER",
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowCard extends StatelessWidget {
  const RowCard({
    Key? key,
    required this.device,
    required this.content,
    required this.img,
    required this.title,
  }) : super(key: key);

  final Size device;
  final String content;
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: device.height * 0.6,
      width: device.width * 0.25,
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
// IMAGE ON CARD
              Image.asset(
                img,
                height: 150,
                width: 150,
                fit: BoxFit.contain,
              ),
// TITLE
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  decoration: TextDecoration.none,
                ),
              ),
// CONTENT
              Text(
                content,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  decoration: TextDecoration.none,
                ),
              ),
// BUTTON
              InkWell(
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(44, 44, 44, 1),
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: Center(
                    child: Text(
                      "Join As",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        decoration: TextDecoration.none,
                      ),
                    ),
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
