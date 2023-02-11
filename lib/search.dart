import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();

}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: 10, start: 15, bottom: 10, end: 15),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.black,
                hintText: "Search for store or item",
                hintStyle: TextStyle(color: Colors.black),
                filled: true,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Container(
              child: Text(
                "Collection",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
      Expanded(child: Container(
        child:
        ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
           Padding(padding: EdgeInsets.all(15),
           child:  GridView(
             physics:NeverScrollableScrollPhysics() ,
             shrinkWrap: true,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 1,
               crossAxisSpacing: 15,
               childAspectRatio: 1,
             ),
             children: [
               card("asset/alreadythere.jpg", "Already there", "99+ Stors"),
               card('asset/florwerbouquets.jpg', "Florwer bouquets", "10 Stors"),
               card('asset/definitelyeatalian.jpg', "Definit elyeatalian", "25 Stors"),
               card("asset/goodforgrups.jpg", "Good for grups", "42 Stors"),
               card("asset/grocery.jpg", "Grocery", "27 Stors"),
               card("asset/healthypicks.jpg", "Flowers", "18 Stors"),
               card("asset/localfavorites.jpg", "Local favorites", "9 Stors"),
               card("asset/newontoters.jpg", "New on toters", "25 Stors"),
               card("asset/retailontoters.jpg", "Retail on toters", "10 Stors"),
               card("asset/getfreemeals.jpg", "Retail on toters", "3 Stors"),
             ],
           ),
           )
          ],
        ),
      ))
        ],
      ),
    );
  }

  Container card(String path, String title, String number) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width/3.4,
            width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
          Text(
            number,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.w500,

            ),
          ),
        ],
      ),
    );
  }
}
