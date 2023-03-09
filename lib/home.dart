import 'package:accessor/model.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List bname = [
    "State Bank of India"
    "Bank of Baroda",
    "HDFC bank",
    "YES bank",
    "ICICI bank",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Banklist"),
          centerTitle:true,
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: bname.length,
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                if (index == 0) {
                  bank b1 = bank(
                      name: "ICICI bank",
                      contact: "tel:1800 1080",
                      sms: "sms:9215676766",
                      url: "https://www.icicibank.com");
                  Navigator.pushNamed(context, 'bank1', arguments: b1);
                } else if (index == 1) {
                  bank b1 = bank(
                      name: "Bank of Baroda",
                      contact: "tel:1800 102 4455",
                      sms: "sms:8422009988",
                      url: "https://www.bankofbaroda.in");
                  Navigator.pushNamed(context, 'bank1', arguments: b1);
                } else if (index == 2) {
                  bank b1 = bank(
                      name: "HDFC bank",
                      contact: "tel:079-61606161 1860 267 6161",
                      sms: "sms:7308080808",
                      url: "https://www.hdfcbank.com");
                  Navigator.pushNamed(context, 'bank1', arguments: b1);
                } else if (index == 3) {
                  bank b1 = bank(
                      name: "YES bank",
                      contact: "tel:1800 1200",
                      sms: "sms:09223920000",
                      url: "https://www.yesbank.in");
                  Navigator.pushNamed(context, 'bank1', arguments: b1);
                } else if (index == 4) {
                  bank b1 = bank(
                      name: "State Bank of India",
                      contact: "tel:1800 1234",
                      sms: "sms:918108511111",
                      url: "https://sbi.co.in");
                  Navigator.pushNamed(context, 'bank1', arguments: b1);
                }
              },
              child: ui(bname[index])),
        ),
      ),
    );
  }

  Widget ui(String name) {
    return Container(
      height: 70,
      margin: EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black45),
        boxShadow: [
          BoxShadow(
              color: Colors.white,
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 2)),
        ],
      ),
      child: Container(
          height: 50,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$name"),
                Icon(Icons.arrow_forward),
              ],
            ),
          )),
    );
  }
}