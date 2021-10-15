import 'package:flutter/material.dart';

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
        children: [
// NAVBAR
          NavBar(),
          SizedBox(
            height: device.height * 0.15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'icon.png',
                width: device.width * 0.3,
              ),
              SizedBox(
                width: device.width * 0.15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "VERIFICATION\nMADE EASY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: device.width * 0.25,
                    child: Text(
                      content,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          decoration: TextDecoration.none),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
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
        Image.asset(
          "Menu.png",
          width: 25,
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
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Text(
            "GET STARTED",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                decoration: TextDecoration.none),
          ),
        )
      ],
    );
  }
}
