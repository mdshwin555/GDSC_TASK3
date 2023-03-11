import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Today extends StatefulWidget {
  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_outlined),
            color: Colors.yellow,
          ),
          title: Text(
            "Note",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.share),
              color: Colors.yellow,
            ),
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.tune),
              color: Colors.yellow,
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 5.w, top: 1.h),
          child: Column(
            children: [
              Text(
                "june 26,2022 08:05 PM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Title",
                style: TextStyle(fontSize: 45.sp, color: Colors.black54),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Today grecory list",
                style: TextStyle(fontSize: 15.sp, color: Colors.black),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                '''2 peanuts   
1 kg mangoes      
12 bananas''',
                style: TextStyle(fontSize: 15.sp, color: Colors.black,fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.yellow,
          onTap: (index) {
            setState(() {
              selectedindex = index;
              print(selectedindex);
            });
          },
          currentIndex: selectedindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: "Album",
              activeIcon: Icon(Icons.camera_alt),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined),
              label: "to do list",
              activeIcon: Icon(Icons.library_books),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: "Reminder",
              activeIcon: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }
}
