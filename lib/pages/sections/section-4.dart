import 'package:flutter/material.dart';

class Section4 extends StatelessWidget {
  const Section4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: [
// SECTION 4 _ FORM
          Container(
            width: device.width,
            height: device.height * 0.9,
            child: Stack(
              children: [
// BACKGROUND IMAGE
                Image.asset(
                  's-4.png',
                  fit: BoxFit.fitWidth,
                  width: device.width,
                ),
                Row(
                  children: [
                    Container(
                      width: device.width * 0.65,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
// FORM TITLE
                        Text(
                          "Contact Us",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
//
                        Text(
                          "Drop us a message",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
// FORM
                        Form(
                          child: Column(
                            children: [
// FORM FEILD 1
                              InputBoxDesign(
                                device: device,
                                helpTxt: "Name",
                                lines: 1,
                              ),
                              SizedBox(
                                height: 25,
                              ),
// FORM FEILD 2
                              InputBoxDesign(
                                device: device,
                                helpTxt: "Email",
                                lines: 1,
                              ),
                              SizedBox(
                                height: 25,
                              ),
// FORM FEILD 3
                              InputBoxDesign(
                                device: device,
                                helpTxt: "Message",
                                lines: 5,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          child: Center(
                            child: Text(
                              "Send",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: device.width,
            height: device.height * 0.1,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: device.width * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(child: Image.asset('instagram.png')),
                      InkWell(child: Image.asset('facebook.png')),
                      InkWell(child: Image.asset('twitter.png'))
                    ],
                  ),
                ),
                Container(
                  width: device.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "HOME",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "ABOUT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "DOWNLOAD THE APP",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "CONTACT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: device.height * 0.1,
                    color: Colors.black,
                    child: Icon(
                      Icons.north,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class InputBoxDesign extends StatelessWidget {
  const InputBoxDesign(
      {Key? key,
      required this.device,
      required this.helpTxt,
      required this.lines})
      : super(key: key);

  final Size device;
  final String helpTxt;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: device.width * 0.27,
      child: Column(
        children: [
          Card(
            elevation: 5,
            child: TextFormField(
              maxLines: lines,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none,
                  ),
                  hintText: helpTxt),
            ),
          )
        ],
      ),
    );
  }
}
