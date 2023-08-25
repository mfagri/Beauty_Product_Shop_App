import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding search(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 26,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Cleasers',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          )
        ]),
      ),
    ),
  );
}
