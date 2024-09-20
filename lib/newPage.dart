import 'package:comment_pickerrr/Provider/MainProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _HomeState();
}

class _HomeState extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<MainProvider>(
          builder: (context, value, child) {
            return Container(
              height: screenHeight, // Full screen height
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
                  Container(
                    width: 386,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextFormField(
                        controller: value.apiUserNameController,
                        decoration: InputDecoration(
                          fillColor: Color(0xffDDDDDD).withOpacity(0.20),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                          hintText: "User Name",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.45),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 34),
                  Container(
                    width: 386,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextFormField(
                        controller: value.apiPasswordController,
                        decoration: InputDecoration(
                          fillColor: Color(0xffDDDDDD).withOpacity(0.20),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                          hintText: "Password",
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
                        value.apiLogin(context);
                        value.getEmployees();
                        // Button press action
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: Size(370, 57),
                        backgroundColor: Color(0xffDDDDDD).withOpacity(0.20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
