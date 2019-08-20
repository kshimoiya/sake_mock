import 'package:flutter/material.dart';

var blueColor = Color(0xff234794);
var darkBlueColor = Color(0xff1f2f54);
var productImage = 'assets/images/azakura.png';

class SampleDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        leading: Icon(
          Icons.filter_vintage,
          color: Colors.white,
        ),
        title: Text(
          "阿櫻 大吟醸 無濾過原酒",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: blueColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              height: 180,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Product overview",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Hero(
                    tag: "image-azakura",
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 130,
                      child: Image.asset(
                        productImage,
                        fit: BoxFit.fill,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildRowDetail("Size", Icons.straighten, '720 ml'),
                  buildRowDetail("Water", Icons.star, "桜清水"),
                  buildRowDetail("Sake degree", Icons.category, "+2.0"),
                  buildRowDetail("Alcohol", Icons.ac_unit, "15.2"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                children: <Widget>[
                  buildAction('Delivery Information'),
                  SizedBox(height: 15),
                  buildAction('Return Policy'),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  alignment: Alignment.bottomRight,
                  child: Container(
                      alignment: Alignment.center,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            Text(
                              "Add to cart",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildAction(String action) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: darkBlueColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )),
      child: Row(
        children: <Widget>[
          SizedBox(width: 30),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 40),
          Text(
            action,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  Widget buildRowDetail(String name, IconData icon, String description) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            description,
            style: TextStyle(color: Colors.white54, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
