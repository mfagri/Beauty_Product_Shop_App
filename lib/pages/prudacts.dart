import 'package:beauty_pruduct_shop/colors.dart';
import 'package:beauty_pruduct_shop/pages/info.dart';
import 'package:beauty_pruduct_shop/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Prudactes extends StatefulWidget {
  const Prudactes({super.key});

  @override
  State<Prudactes> createState() => _PrudactesState();
}



class _PrudactesState extends State<Prudactes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: mainc,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Myappbar(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 8, right: 8),
              child: Container(
                height: 80,
                // color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      search(context),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 25,
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(
                      child: Text(
                    'Found \n10 Results',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .7,
                  child: MasonryGridView.count(
                    itemCount: 10,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    crossAxisSpacing: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(productinfo(),transition: Transition.circularReveal,duration: Duration(seconds: 1));
                        },
                        child: Container(
                          
                          // margin: EdgeInsets.symmetric(vertical: _pading(index), horizontal: 10),
                          margin: EdgeInsets.only(
                              top: _pading(index), left: 8, right: 8),
                          height: 300,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage('lib/images/product.png'),fit: BoxFit.cover)
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Moisturiser',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: textb),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Oil balncing mask'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('\$9.99',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: textb)),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.black),
                                            child: Center(
                                              child: Icon(
                                                Icons.favorite,
                                                color: Colors.white,
                                              ),
                                            )),
                                      ],
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Container Myappbar() {
    return Container(
      height: 80,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios, size: 30)),
        Text(
          'Search Product',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: textb),
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              image:
                  DecorationImage(image: AssetImage('lib/images/shots.jpeg'))),
        )
      ]),
    );
  }
}

double _pading(int index) {
  if (index == 0) return 60;
  return 10;
}
