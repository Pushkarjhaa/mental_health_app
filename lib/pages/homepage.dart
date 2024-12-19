import 'package:flutter/material.dart';
import 'package:mental_health_app/utility/emorticon_face.dart';
import 'package:mental_health_app/utility/excercises.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            //Greeting Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            //Hi Jared
                            "Hi, Jared!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "23 Jan,2024",
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),

                      //Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //How Do You Feel
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //Four Different Faces
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //badly
                      Column(
                        children: [
                          Emorticon_Face(),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bad",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //fine
                      Column(
                        children: [
                          Emorticon_Face(),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "fine",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          Emorticon_Face(),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //Excellent
                      Column(
                        children: [
                          Emorticon_Face(),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        //Excerise Heading
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Excercises",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Icon(
                              Icons.more_horiz,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //ListView of Exercises
                        Expanded(
                          child: ListView(
                            children: [
                              Excercise_Tile(),
                              Excercise_Tile(),
                              Excercise_Tile()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
