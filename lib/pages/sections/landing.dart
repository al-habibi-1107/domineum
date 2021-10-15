import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var content =
        "DOMINEUM CREDENTIAL VERIFICATION SYSTEM IS A 3 SIDED MARKETPLACE DESIGNED TO BRIDGE THE ONLINE AND OFFLINE WORLDS FOR SHARING VERIFIABLE DOCUMENTS AND CREDENTIALS BETWEEN ISSUING INSTITUTIONS, BUSINESSES/INDIVIDUALS AND 3RD PARTY VERIFIERS.";
    return Container(
      width: device.width,
      height: device.height,
      color: Color.fromRGBO(29, 29, 29, 1),
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
// NAVBAR
          NavBar(),
          SizedBox(
            height: device.height * 0.1,
          ),
// MAIN LANDING PAGE
          LandingMain(device: device, content: content),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset('arrow.png')])
        ],
      ),
    );
  }
}

class LandingMain extends StatelessWidget {
  const LandingMain({
    Key? key,
    required this.device,
    required this.content,
  }) : super(key: key);

  final Size device;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
// MAIN ICON
        Image.asset(
          'icon.png',
          width: device.width * 0.3,
        ),
        SizedBox(
          width: device.width * 0.15,
        ),
// TEXT AREA
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
// HEADLINE
            Text(
              "VERIFICATION\nMADE EASY",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 18,
            ),
// CONTENT
            Container(
              width: device.width * 0.3,
              child: Text(
                content,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    decoration: TextDecoration.none,
                    height: 1.3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
// CTA
            Row(
              children: [
// LEFT CTA _ APP STORE
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                      border: Border.all(color: Colors.white)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'app-store-w.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "App Store",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
// RIGHT CTA _ PLAY STORE
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                      border: Border.all(color: Colors.white)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'google-play-w.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Google Playstore",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
// HAMBURGER ICON
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "Menu.png",
            width: 25,
          ),
        ),

// CENTER NAV TITLE
        Center(
          child: Row(
            children: [
              Image.asset(
                "icon.png",
                width: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "DOMINEUM",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    decoration: TextDecoration.none),
              )
            ],
          ),
        ),

// NAVBAR CTA
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: Text(
              "GET STARTED",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none),
            ),
          ),
        )
      ],
    );
  }
}
