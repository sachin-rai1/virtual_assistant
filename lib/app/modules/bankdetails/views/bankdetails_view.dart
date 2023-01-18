import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bankdetails_controller.dart';

class BankDetailsView extends GetView<BankDetailsController> {
  const BankDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank details View'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: RadialGradient(
                colors: [
                  Colors.black,
                  Colors.black12,
                  Colors.black26,
                  Colors.black38,
                  Colors.black45,
                  Colors.black54,
                  Colors.black87,
                ]
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25 ,top: 40 , left: 25 , bottom: 10),
                  child: Text(
                    'Visa',
                    style: TextStyle(fontSize: 35 , color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25 ,top: 20 , left: 25 , bottom: 10),
                  child: Text(
                    '4142-4258-6987-6987',
                    style: TextStyle(fontSize: 20 , color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 25,left: 25 , bottom: 10),
                      child: Text(
                        'Name',
                        style: TextStyle(fontSize: 20 , color: Colors.white),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(right: 25,left: 25 , bottom: 10),
                      child: Text(
                        'Valid Till',
                        style: TextStyle(fontSize: 20 , color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 25,left: 25 , bottom: 30),
                      child: Text(
                        'Sachin Rai',
                        style: TextStyle(fontSize: 20 , color: Colors.white),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(right: 25,left: 25 , bottom: 30),
                      child: Text(
                        '11/29',
                        style: TextStyle(fontSize: 20 , color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
