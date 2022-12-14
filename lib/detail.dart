import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      height: 550,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 60,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                child: Image.asset(
                  'assets/coffee.png',
                  fit: BoxFit.fill,
                  height: 130,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              'Toffee Nut Crunch Latte',
              //(widget.position),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.attach_money_outlined,
                  size: 18,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  'RM 9.90',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff335589)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Caramel Macchiato is an espresso-based beverage sold in Starbucks. It is made with vanilla syrup, steamed milk, espresso, and caramel sauce.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 45,
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 50,
              onPressed: () {
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
              color: const Color(0xff335589),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              child: const Text(
                "Order now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
