// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Diva',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
              Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: advertise.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: 140,
                            width: 260,
                            decoration: BoxDecoration(
                              color: index % 2 == 0
                                  ? Colors.orange.shade800
                                  : Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${advertise[index]["name"]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "Festival",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Text(
                                        "Look Now",
                                        style: TextStyle(
                                          color: index % 2 == 0
                                              ? Colors.orange.shade800
                                              : Colors.blue,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Image(
                                    width: 92,
                                    image: AssetImage(
                                        "${advertise[index]["img"]}"))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "SEE ALL",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.orange.shade800,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    topCategoryItems(
                        conatinerColor: Colors.orange.shade800,
                        iconColor: Colors.white,
                        iconName: Icons.headphones_rounded),
                    topCategoryItems(
                        conatinerColor: Colors.grey.shade300,
                        iconColor: Colors.grey.shade700,
                        iconName: Icons.camera_alt),
                    topCategoryItems(
                        conatinerColor: Colors.grey.shade300,
                        iconColor: Colors.grey.shade700,
                        iconName: Icons.tablet_android),
                    topCategoryItems(
                        conatinerColor: Colors.grey.shade300,
                        iconColor: Colors.grey.shade700,
                        iconName: Icons.watch_outlined),
                    topCategoryItems(
                        conatinerColor: Colors.grey.shade300,
                        iconColor: Colors.grey.shade700,
                        iconName: Icons.book),
                    topCategoryItems(
                        conatinerColor: Colors.grey.shade300,
                        iconColor: Colors.grey.shade700,
                        iconName: Icons.blender),
                    topCategoryItems(
                        conatinerColor: Colors.grey.shade300,
                        iconColor: Colors.grey.shade700,
                        iconName: Icons.bed),
                    topCategoryItems(
                        conatinerColor: Colors.grey.shade300,
                        iconColor: Colors.grey.shade700,
                        iconName: Icons.bike_scooter),
                    topCategoryItems(
                        conatinerColor: Colors.grey.shade300,
                        iconColor: Colors.grey.shade700,
                        iconName: Icons.business_center),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 210,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 190,
                      width: 155,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.orange),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                "30% OFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              Spacer(),
                              Icon(
                                Icons.favorite,
                                color: Colors.grey.shade500,
                              )
                            ],
                          ),
                          Image(
                            width: 100,
                            image: AssetImage("assets/headphoneImage.png"),
                          ),
                          Text(
                            "Sony Headphone -M2",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$140",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\$200",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 155,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.orange),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                "30% OFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              Spacer(),
                              Icon(
                                Icons.favorite,
                                color: Colors.grey.shade500,
                              )
                            ],
                          ),
                          Image(
                            width: 100,
                            image: AssetImage("assets/headphoneImage.png"),
                          ),
                          Text(
                            "Sony Headphone -M2",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$140",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\$200",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.orange.shade800,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.orange.shade800, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.grey.shade400,
              ),
              Icon(
                Icons.shopping_cart,
                color: Colors.grey.shade400,
              ),
              Icon(
                Icons.person,
                color: Colors.grey.shade400,
              )
            ],
          ),
        ),
      ),
    );
  }

  Container topCategoryItems(
      {required Color conatinerColor,
      required Color iconColor,
      required IconData iconName}) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: conatinerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        iconName,
        color: iconColor,
      ),
    );
  }
}
