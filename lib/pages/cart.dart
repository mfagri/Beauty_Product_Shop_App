import 'package:beauty_pruduct_shop/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainc,
      body: Container(
        child: ListView(children: [
          Container(
            height: MediaQuery.of(context).size.height * .5,
            color: mainc,
            child: Column(
              children: [
                barcart(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .3,
                    child: ListView(
                        padding: EdgeInsets.all(8),
                        children: [prodactcart(), prodactcart()]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Promo Code',
                          style: TextStyle(color: Colors.grey, fontSize: 23),
                        ),
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .5,
            color: mainc,
            child: Column(
              children: [
                total('Subtotal', '\$45.99'),
                whitelenr(),
                total('Shipping', '\$4.99'),
                whitelenr(),
                bagtotal(),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black),
                    child: Center(
                        child: Text(
                      'Proceed To Checkout',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Container prodactcart() {
    return Container(
      height: 100,
      width: 200,
      color: mainc,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('lib/images/product.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Facial Cleanser',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Size:7.60 fl oz /225ml',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '\$19.98',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.cancel_outlined)],
                  ),
                ),
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 1, color: textb)),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  color: textb,
                                  size: 15,
                                ),
                              ),
                            ),
                            Text(
                              '01',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  border: Border.all(width: 1, color: textb)),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding whitelenr() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
      child: Container(
        height: 1,
        color: Colors.white,
      ),
    );
  }

  Padding bagtotal() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Bag Total',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
          ),
          Container(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '(2 items)',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Colors.black),
                ),
                Text(
                  '\$50.98',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                Text(
                  'USD',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding total(String total, String dolar) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            total,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
          ),
          Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  dolar,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                Text(
                  'USD',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container barcart() {
    return Container(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios, size: 30)),
          Text(
            'Shopping Bag',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: textb),
          ),
          Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_bag_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Container(
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Center(
                          child: Text('2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
