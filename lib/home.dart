import 'package:comment_pickerrr/Provider/MainProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MainProvider>(
        builder: (context, value, child) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset(
                    "assets/image/Group 1.png",
                    scale: 3.80,
                  ),
                ),
                SizedBox(height: 130),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Enter the Instagram post link",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 386,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: value.linkController,
                      decoration: InputDecoration(
                        fillColor: Color(0xffDDDDDD).withOpacity(0.20),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                        hintText: "https://www.Instagram.com/p/xdr",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.45),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: TextButton(
                    onPressed: () {
                      // Button press action
                    },
                    child: Text(
                      "Find Post",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: Size(370, 57),
                      backgroundColor: Color(0xffDDDDDD).withOpacity(0.20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
