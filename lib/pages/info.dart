import 'package:beauty_pruduct_shop/colors.dart';
import 'package:beauty_pruduct_shop/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class productinfo extends StatefulWidget {
  const productinfo({super.key});

  @override
  State<productinfo> createState() => _productinfoState();
}

class _productinfoState extends State<productinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: mainc,
        child: ListView(children: [
          Container(
            height: MediaQuery.of(context).size.height * .5,
            child: Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image:
                      AssetImage('lib/images/background3-removebg-preview.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Image(
                    image: AssetImage('lib/images/product.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: textb,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.window,
                            color: Colors.black,
                            size: 30,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: textb),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              height: MediaQuery.of(context).size.height * .5,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              'Vegan',
                              style: TextStyle(color: textb),
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              'Natural',
                              style: TextStyle(color: textb),
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              'C+Neutral',
                              style: TextStyle(color: textb),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Colors.white),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Facial Cleanser',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Container(
                                width: 140,
                                height: 15,
                                child: Row(children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: textb,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: textb,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: textb,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: textb,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    color: textb,
                                    size: 25,
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Size: 7.60 fl oz / 255ml'),
                              Text('(1337 Reviews)')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$9.99',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: textb,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width *.5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width *.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white
                                        ,border: Border.all(width: 1,color: textb)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                        Icon(Icons.remove,size: 15,),
                                        Text('1'),
                                        Icon(Icons.add,size: 15,),
                                      ]),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(Cart(),transition: Transition.circularReveal,duration: Duration(seconds: 1));
                                      },
                                      child: Container(
                                        height: 70,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.black
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
