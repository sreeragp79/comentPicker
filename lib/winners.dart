import 'package:comment_pickerrr/Provider/MainProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Winners extends StatefulWidget {
  const Winners ({super.key});

  @override
  State<Winners> createState() => _WinneraState();
}

class _WinneraState extends State<Winners> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<MainProvider>(
          builder: (context,addvalue,child) {
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
              child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 360,),
                  Padding(
                    padding: const EdgeInsets.only(left: 160),
                    child: Text("Winners",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 125),
                    child: Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffDDDDDD).withOpacity(0.20),
                        borderRadius: BorderRadius.circular(23)
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: IconButton(
                                onPressed: () {
                              addvalue.decrementValue();
                                },
                                icon: Icon(Icons.remove,color: Colors.grey,),
                              ),
                            ),
                          ),
                      Text(addvalue.value.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: IconButton(
                            onPressed: () {
                         addvalue.incrementValue();
                            },
                            icon: Icon(Icons.add,color: Colors.grey,),
                          ),
                        ),
                      )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        ),
    );
  }
}
