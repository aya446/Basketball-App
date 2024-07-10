import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 50, 95, 109),
            title: Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$teamAPoints',
                          style: TextStyle(fontSize: 150),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints++;
                              });
                              print(teamAPoints);
                            },
                            child: Text(
                              'Add 1 point',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 50, 95, 109),
                              minimumSize: Size(150, 50),
                            )),
                        SizedBox(
                          height: 18,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 2;
                              });
                              print(teamAPoints);
                            },
                            child: Text(
                              'Add 2 point',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 50, 95, 109),
                                minimumSize: Size(150, 50))),
                        SizedBox(
                          height: 18,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 3;
                              });
                              print(teamAPoints);
                            },
                            child: Text(
                              'Add 3 point',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 50, 95, 109),
                                minimumSize: Size(150, 50)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Color.fromARGB(68, 0, 0, 0),
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$teamBpoints',
                          style: TextStyle(fontSize: 150),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBpoints++;
                              });
                              print(teamBpoints);
                            },
                            child: Text(
                              'Add 1 point',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 50, 95, 109),
                              minimumSize: Size(150, 50),
                            )),
                        SizedBox(
                          height: 18,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBpoints = teamBpoints + 2;
                              });
                              print(teamBpoints);
                            },
                            child: Text(
                              'Add 2 point',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 50, 95, 109),
                                minimumSize: Size(150, 50))),
                        SizedBox(
                          height: 18,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBpoints = teamBpoints + 3;
                              });
                              print(teamBpoints);
                            },
                            child: Text(
                              'Add 3 point',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 50, 95, 109),
                                minimumSize: Size(150, 50)))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 70),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                      teamBpoints = 0;
                    });
                  },
                  child: Text(
                    'reset',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 50, 95, 109),
                      minimumSize: Size(150, 50)))
            ],
          )),
    );
  }
}
