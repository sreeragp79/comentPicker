import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            SizedBox(height: 350),
            Text(
              "Loading your post\n"
              "     comments...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 350,),
            TextButton(
              onPressed: () {

              },
              child: Text("Start Giveaway",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              style: TextButton.styleFrom(
                  minimumSize: Size(370, 57),
                  backgroundColor:  Color(0xffDDDDDD).withOpacity(0.20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  )

              ),
            ),
          ],
        ),
      ),
    );
  }
}
