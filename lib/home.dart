import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'Add.dart';
import 'Todays grocery list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10.h,
            left: 5.w,
            child: Text(
              "Notepad",
              style: TextStyle(
                fontSize: 30.sp,
              ),
            ),
          ),
          Positioned(
              top: 20.h,
              left: 5.w,
              child: Container(
                padding: EdgeInsets.only(left: 5.w),
                height: 6.h,
                width: 90.w,
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 25.sp,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "search notes",
                      style: TextStyle(color: Colors.black54, fontSize: 16.sp),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.sp),
                  border: Border.all(color: Colors.black, width: 1.3.sp),
                ),
              )),
          Positioned(
              top: 30.h,
              left: 5.w,
              child: GestureDetector(
                onTap: (){
                  Get.to(Today());
                },
                child: Container(
                  padding: EdgeInsets.only(top: 2.h, left: 5.w),
                  height: 11.h,
                  width: 90.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today\'s grocery List",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.sp,
                        ),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(
                        "March 7, 2023 9:50 PM",
                        style: TextStyle(color: Colors.black, fontSize: 13.sp),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                ),
              )),
          Positioned(
            top: 45.h,
            left: 5.w,
            child: Container(
              padding: EdgeInsets.only(top: 2.h, left: 5.w),
              height: 11.h,
              width: 90.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rich and poor dad quotes",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    "March 7, 2023 9:50 PM",
                    style: TextStyle(color: Colors.black, fontSize: 13.sp),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20.sp),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(Add());
        },
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add,color: Colors.black,size: 35.sp,),
      ),
    );
  }
}
