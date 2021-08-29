import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  late String namePlace;
  late double starNumber;
  late String descriptionPlace;

  DescriptionPlace(this.starNumber, this.namePlace, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final star_empty = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );


    final calification_star = Row(
      children: List.generate(
          5,
              (i) => i < starNumber.floor()
              ? star
              : i + 0.5 == starNumber
                ? star_half
                : star_empty
      ),

    );

    final title_star = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        calification_star,
      ],
    );

    final text_description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF6D6E71),
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return Column(
      children: <Widget>[
        title_star,
        text_description
      ],
    );
  }
   
}