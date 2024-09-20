import 'package:comment_pickerrr/Provider/MainProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model Class/userModel.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  // List<String>image=[
  //   "assets/image/Rolex.jpg",
  //   "assets/image/girl.jpg"
  // ];
  // List<String>name=[
  //   "sreeeag_p__",
  //   "fathima__a"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MainProvider>(builder: (context1, value, child) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff2773BA),
                Color(0xff652AB6),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Winners",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                ),
              ),
              ListView.builder(
                physics: ScrollPhysics(),
                itemCount: value.userList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 80,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Color(0xffDDDDDD).withOpacity(0.60),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.white,
                        //     spreadRadius: 1,
                        //     blurRadius: 2,
                        //     offset: Offset(0,3),
                        //   ),
                        // ],
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    NetworkImage(value.userList[index].image),
                                radius: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                (value.userList[index].firstName+'   '+value.userList[index].secondName),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
