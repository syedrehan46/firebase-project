import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 240,
          child: Card(
            shadowColor: Colors.red,
            elevation: 10,
            margin: EdgeInsets.all(25),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.teal,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAiGxYld3ZrdEz-_2YTKBitFLrSE811pIFpg&s",
                      height: 160,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Champion trophy 1998",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10),
                          Text(
                              "Inaugurated in 1998, The ICC conceived the idea of the Champions Trophy"),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Text(
                                "Winner : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Text(
                                  "The South Africa Won the First Champion Trophy.")
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
