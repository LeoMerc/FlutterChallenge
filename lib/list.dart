import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

class Lista extends StatelessWidget {
  String pathImage =
      "https://images.squarespace-cdn.com/content/v1/5afceb6f5ffd2052611eff46/1620265160178-VBFLPCXNPR66AJEX9SO0/nike-dunk-low-white-black-2021-panda-hallofsneakz.png?format=750w";
  String shoeName = "Dunk Low";
  String shoePrice = "\$200";

  Lista(this.shoeName, this.shoePrice, this.pathImage);
  @override
  Widget build(BuildContext context) {
    var sneakerPic = Container(
      width: 150,
      height: 100,
      margin: EdgeInsets.only(
        top: 5.0,
        left: 5.0,
      ),
      child: Image(
        image: NetworkImage(pathImage),
        fit: BoxFit.scaleDown,
      ),
    );

    var SneakerName = Container(
      child: Text(shoeName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      margin: EdgeInsets.only(
        top: 5.0,
        left: 8.0,
      ),
      width: double.infinity,
    );

    var SneakerPrice = Container(
      child:
          Text(shoePrice, style: TextStyle(fontSize: 15, color: Colors.grey)),
      margin: EdgeInsets.only(
        top: 5.0,
        left: 8.0,
      ),
    );

    var sneakerDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SneakerName, SneakerPrice],
    );

    var CartLogo = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 10.0,
      ),
      child: IconButton(
        icon: Icon(Icons.shopping_cart),
        color: Colors.grey, 
        onPressed: () => Flushbar(
          title: "Added to Cart",
          message: "You have added ${shoeName} to your cart",
          duration: Duration(seconds: 2),
        )..show(context),
      ),
      
    );
    
    var FinishRow = Row(
      children: [
        Flexible(
          child: sneakerPic,
          flex: 1,
          fit: FlexFit.tight,
        ),
        Flexible(
          child: sneakerDetail,
          flex: 2,
          fit: FlexFit.tight,
        ),
        Flexible(
          child: CartLogo,
          flex: 1,
          fit: FlexFit.tight,
        ),
      ],
    );

    var contenedor = Container(
        child: FinishRow,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: .8, color: Colors.grey)),
        ));

    return contenedor;
  }
}
