import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Delivering To",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
        ),
        flexibleSpace: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 17, top: 7),
              child: Text(
                "Baghdad, Iraq",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.list, size: 30),
            ),
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon:
                    const Icon(Icons.login_outlined, color: Color(0xff0fb48c)),
                onPressed: () {},
              );
            },
          ),
          titleSpacing: -10,
          title: Text(
            "Sign in with Toters and enjoy exclusive benfits!",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  margin: EdgeInsets.only(top: 15, left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/2.jpg"))),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/4.jpg"))),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/1.jpg"))),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("asset/3.jpg"))),
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlayInterval: Duration(seconds: 4),
                      autoPlayAnimationDuration: Duration(milliseconds: 200),
                      viewportFraction: 1,
                      clipBehavior: Clip.antiAlias,
                      autoPlay: true,
                      enableInfiniteScroll: false,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 2,
                    right: 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 7.5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("asset/FOOD.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 7.5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("asset/MARKET.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 7.5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("asset/SHOPS.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 15, left: 2, right: 2, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 7.5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("asset/REWARDS.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 7.5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("asset/FRESH.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 7.5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("asset/BUTLER.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Weekly Discounts",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 23,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.calendar_today_outlined,
                              color: Color(0xff0fb48c),
                              size: 30,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4 + 20,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xff0fb48c),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 10),
                        child: Text(
                          "Get up 50% OFF on these selected resturants this week!",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 325,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            meal(
                                "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
                                "Pitzza ;)",
                                "Italian"),
                            meal(
                                "https://img.freepik.com/premium-photo/juicy-american-burger-hamburger-cheeseburger-with-two-beef-patties-with-sauce-basked-black-space_124865-5964.jpg?w=2000",
                                "Burger ",
                                "Fast Food"),
                            meal(
                                "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/2022-05-16-tcu-s3-high-engagement-sharon-salloum-falafels-tarator-l.jpg?itok=HKc7O3NC",
                                "Flafel",
                                "Fast Food")
                          ],
                        ) ,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Column meal(String Photo, String Name, String Description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width *0.927,
          height: (MediaQuery.of(context).size.width *0.5) ,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
              DecorationImage(fit: BoxFit.fill, image: NetworkImage(Photo),
              ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              Name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 23,
              ),
            )),
        Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              Description,
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontWeight: FontWeight.w500,
              ),
            )),
      ],
    );
  }
}

