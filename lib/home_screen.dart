import 'package:flutter/material.dart';
import 'package:flutter_foldable_sidebar_demo/custom_sidebar_drawer.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:flutter_foldable_sidebar_demo/routes/profile_screen.dart';

import 'custom_sidebar_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FSBStatus _fsbStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red[400],
          title: Text("Flutter Foldable Sidebar Demo"),
        ),
        body: FoldableSidebarBuilder(
          drawerBackgroundColor: Colors.cyan[100],
          drawer: CustomSidebarDrawer(
            drawerClose: () {
              setState(() {
                _fsbStatus = FSBStatus.FSB_CLOSE;
              });
            },
          ),
          screenContents: welcomeScreen(),
          status: _fsbStatus,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[400],
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _fsbStatus = _fsbStatus == FSBStatus.FSB_OPEN
                  ? FSBStatus.FSB_CLOSE
                  : FSBStatus.FSB_OPEN;
            });
          },
        ),
      ),
    );
  }
}

Widget welcomeScreen() {
  return Container(
    color: Colors.black.withAlpha(50),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome To Flutter Dev's",
            style: TextStyle(fontSize: 25.0, color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Click on FAB to Open Foldable Sidebar Drawer",
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;

  CustomAppBar(
    this.title, {
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 25.0),
      ),
      backgroundColor: Colors.red[400],
      automaticallyImplyLeading: false,
      elevation: 2,
    );
  }
}

class Body extends StatelessWidget {
  Body({
    this.firstImage,
    this.textOne,
    this.firstAmount,
    this.textDescription,
    this.textTwo,
    this.icon,
    this.buttonText,
    this.homeButton,
  });

  final String firstImage;
  final String textOne;
  final double firstAmount;
  final String textDescription;
  final String textTwo;
  final Icon icon;
  final String buttonText;
  final Function homeButton;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Image.asset(
          firstImage,
          fit: BoxFit.cover,
          height: height / 2.0,
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textOne,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    OutlinedButton(
                      child: icon,
                      style: OutlinedButton.styleFrom(
                        primary: Colors.grey,
                        side: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        shape: CircleBorder(),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '\$$firstAmount',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  textDescription,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  textTwo,
                  style: TextStyle(
                      fontSize: 18.0,
                      letterSpacing: 1,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                SizedBox(height: 10.0),
                SizedBox(height: 15.0),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      buttonText,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: homeButton,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
