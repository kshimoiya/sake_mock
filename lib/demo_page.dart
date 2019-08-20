import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

const blueColor = const Color(0xff234794);
const darkBlueColor = const Color(0xff1f2f54);
const productImage = 'assets/images/azakura.png';

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        title: Text(
          "日本酒情報",
          style: TextStyle(color: Colors.black),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          buildTop(),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15),
                  Text(
                    "Basic Information",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildCardDetail(context, "720", "ml", "size"),
                      buildCardDetail(context, "15.2", "", "alcohol"),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildCardDetail(BuildContext context, String value, String unit, String unitName) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width / 2 - 50,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.only(
//          topLeft: Radius.circular(20),
//          topRight: Radius.circular(20),
            ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Text(
                unit,
                style: TextStyle(
                  color: Colors.white70,
                ),
              )
            ],
          ),
          Text(
            unitName,
            style: TextStyle(
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }

  Widget buildTop() {
    return Expanded(
      flex: 4,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
//            bottomLeft: Radius.circular(110),
              ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 300,
                child: Text(
                  "阿櫻 大吟醸 無濾過原酒",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '阿桜酒造 / 秋田県',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 10),
// https://pub.dev/packages/smooth_star_rating
//              SmoothStarRating(
//                  allowHalfRating: false,
//                  starCount: 5,
//                  rating: 4.5,
//                  size: 40.0,
//                  color: blueColor,
//                  borderColor: blueColor,
//                  spacing: 0.0),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
//                    child: FloatingActionButton(
//                      onPressed: () {
////                        Navigator.of(context).push(MaterialPageRoute(
////                          builder: ((c) => SampleDetailPage()),
////                        ));
//                      },
//                      backgroundColor: blueColor,
//                      child: Icon(Icons.library_books),
//                    ),
                  ),
//                  Hero(
//                    tag: "image-azakura",
//                    child: Container(
//                      alignment: Alignment.bottomCenter,
//                      width: 230,
//                      child: Image.asset(
//                        productImage,
//                        fit: BoxFit.fill,
//                        alignment: Alignment.bottomCenter,
//                      ),
//                    ),
//                  )
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: 230,
                    child: Image.asset(
                      productImage,
                      fit: BoxFit.fill,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
