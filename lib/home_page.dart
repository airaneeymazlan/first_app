import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tutorial/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // HomePage(
  //     {Key? key,
  //     required this.name,
  //     required this.price,
  //     required this.description})
  //     : super(key: key);

  // String name;
  // String price;
  // String description;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff335589),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff335589),
              ),
              //Wrap with Center()
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.description_rounded,
                color: Color(0xff335589),
              ),
              title: const Text('Orders'),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => NotificationPage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xff335589),
              ),
              title: const Text('Profile'),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => NotificationPage()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome home,",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const SizedBox(height: 5),
              Text(
                'Guest',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                //padding: EdgeInsets.all(10),
                separatorBuilder: (_, index) => SizedBox(
                  height: 15,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 270,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => DetailPage());
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Toffee Nut Crunch Latte',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                              'A blend of toffee nut syrup, coffee, milk and ice'),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'RM 9.90',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff335589)),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Center(
                            child: Image.asset(
                              'assets/coffee.png',
                              fit: BoxFit.fill,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          )),
    );
  }
}
