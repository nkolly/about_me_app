import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:photo_view/photo_view.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003366),
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xff003366)),
        backgroundColor: Colors.white,
        title: Text("About me",
            style: TextStyle(
              color: Color(0xff003366),
              fontSize: 28,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.zero,
                    topRight: Radius.zero),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/profile_avatar.jpg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 4),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Nate Koelliker",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            CarouselSlider(
              items: _carouselPages,
              enlargeCenterPage: true,
              height: 525,
              viewportFraction: 0.9,
              autoPlay: true,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
            )
          ],
        ),
      )),
      drawer: _navigationDrawer(context),
    );
  }
}

Widget _buildDrawerHeader() {
  return Container(
    color: Color(0xff003366),
    child: Column(
      children: <Widget>[
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/profile_avatar.jpg"),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.white, width: 2.0),
            shape: BoxShape.circle,
          ),
        ),
        Container(
            padding: EdgeInsets.all(12.0),
            child: Text("Nate Koelliker",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ))),
      ],
    ),
  );
}

Widget _navigationDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    children: <Widget>[
      DrawerHeader(child: _buildDrawerHeader()),
      ListTile(
          leading: Icon(FontAwesomeIcons.user, color: Colors.white),
          title: Text(
            "About Me",
            style: _txtStyle(),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
      ListTile(
        leading: Icon(FontAwesomeIcons.linkedin, color: Colors.white),
        title: Text(
          "LinkedIn Profile",
          style: _txtStyle(),
        ),
        onTap: () {
          _launchLinkedIn();
        },
      ),
      ListTile(
          leading: Icon(FontAwesomeIcons.clipboardList, color: Colors.white),
          title: Text(
            "Resume",
            style: _txtStyle(),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => _buildResumePage(context)));
          }),
      ListTile(
          leading: Icon(FontAwesomeIcons.phone, color: Colors.white),
          title: Text("Contact", style: _txtStyle()),
          onTap: () {
            _launchPhone();
          }),
    ],
  ));
}

List<Widget> _carouselPages = [
  Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    clipBehavior: Clip.antiAlias,
    child: Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Background",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              """   Hello, I am currently a student at the University of Utah studying Computer Science. I have always loved technology and began working with raspberry pi's to create fun projects. I have created a twitter bot with over 600 followers as well as a fully functioning arcade machine. 
            
   After exploring iOS developement with Swift for several months I discovered Flutter. I have been working with Flutter for quite sometime now and have loved learning all about it. It makes it easy to create beautiful and smooth apps very quickly which is why I think developers everywhere should explore its capabilities.""",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ),
  ),
  Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    clipBehavior: Clip.antiAlias,
    child: Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Flutter Experience",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              """   I created this very simple sample app to demonstrate that I have an understanding of how Flutter developement works. 
   
   My knowledge is broader than the scope of this app as I have worked with Firebase, Animations, and many other features. I also know that I have a lot to learn which is why an internship would be such an amazing experience and opportunity.
              
   I have several personal projects I am working on and am looking forward to publishing those summer 2019. 
               """,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    ),
  ),
  Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    clipBehavior: Clip.antiAlias,
    child: Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Why hire me?",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              """   I feel like I would be a good intern because I love to learn and I work great with teams. Almost everything I know about programming I have researched on my own which to me is an example of my motivation to learn. 
              
   I know I still have a lot to learn, but I can promise you that I will work exceptionally hard to be a contributor on your team and take advantage of this amazing opportunity. 
   
   
Thank you for your consideration, I hope to hear back from you.""",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    ),
  ),
];

_launchLinkedIn() async {
  const url = 'https://www.linkedin.com/in/nathankoelliker';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchPhone() async {
  const url = "sms:8888";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget _buildResumePage(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      iconTheme: IconThemeData(color: Color(0xff003366)),
      backgroundColor: Colors.white,
      title: Text("Resume",
          style: TextStyle(
            color: Color(0xff003366),
            fontSize: 28,
            fontWeight: FontWeight.w500,
          )),
      leading: Container(
        padding: EdgeInsets.all(8.0),
        child: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    ),
    body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: PhotoView(
          imageProvider: AssetImage("assets/NateKoellikerResume2019.jpg"),
          backgroundDecoration: BoxDecoration(color: Colors.white),
        ),
      ),
    ),
  );
}

TextStyle _txtStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  );
}
