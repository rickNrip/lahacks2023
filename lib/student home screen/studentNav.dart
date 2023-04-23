import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/student%20home%20screen/AiChat.dart';
import 'package:flutter_application_2/student%20home%20screen/LeaderBoard.dart';
import 'package:flutter_application_2/student%20home%20screen/healthyFoods.dart';
import 'package:flutter_application_2/student%20home%20screen/studentAddWidgets.dart';
import 'package:flutter_application_2/student%20home%20screen/workoutMain.dart';
import 'package:flutter_application_2/studentScreenData/student_notes/models/datanotes.dart';
import 'package:flutter_application_2/studentScreenData/student_notes/widgets/notes-list.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'dataStudentWidget.dart';
import '../studentQuiz/quizstud.dart';
import 'waterCups.dart';
import '../studentScreenData/student_notes/studentNotes.dart';
import '../studentScreenData/student_notes/addnotes.dart';

class studentNav extends StatelessWidget {
  const studentNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(188, 244, 67, 54),
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 200,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.add),
                          title: const Text('Add Your Water'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => addWater()),
                            );
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.apple),
                          title: const Text('Add Your Caliores'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.speaker_notes_rounded),
                          title: const Text('Add Your Health Notes'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => addNoteStud(
                                        onAddNotes: (addNote) {},
                                      )),
                            );
                          },
                        ),
                      ],
                    )),
                  );
                });
          },
          child: const Icon(Icons.add),
          elevation: 10.0,
        ),
        bottomNavigationBar: BottomAppBar(
            color: const Color.fromARGB(220, 246, 35, 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const aiChat()),
                          );
                        },
                        icon: const Icon(Icons.chat),
                      ),
                      const Text(
                        'AI Chat',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 0.0, top: 10.0, bottom: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.class_,
                        color: Colors.white,
                      ),
                      Text(
                        'Class Members',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, top: 10.0, bottom: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const leaderBoardMain()),
                          );
                        },
                        icon: const Icon(Icons.leaderboard),
                      ),
                      const Text(
                        'LeaderBoards',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                )
              ],
            )),
        appBar: NewGradientAppBar(
          title: const Text('Kidz Eat'),
          gradient: const LinearGradient(
            colors: [Colors.red, Colors.pink],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountEmail: Text('studntes.org'),
                accountName: Text('Ricky Bailey'),
                currentAccountPicture: CircleAvatar(
                    foregroundImage: AssetImage("images/IMG_0596.jpeg")),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Notes'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const viewNotes()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.article),
                title: const Text('Assignment'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.quiz),
                title: const Text('Quiz'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Quiz()),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text('Labes'),
              ),
              ListTile(
                leading: const Icon(Icons.sports_gymnastics),
                title: const Text('WorkOuts'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const workOuts()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.apple),
                title: const Text('Find Food'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => healthyFoods()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(227, 244, 54, 54),
            Color.fromARGB(255, 233, 30, 209)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You ate this many Calories',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                child: Text(
                  '1250',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'You had this many cups of water!',
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  const Icon(Icons.water_drop, size: 60, color: Colors.blue),
                  Icon(Icons.water_drop, size: 60, color: Colors.blue),
                  Icon(Icons.water_drop, size: 60, color: Colors.blue),
                  Icon(Icons.water_drop, size: 60, color: Colors.blue),
                  Icon(Icons.water_drop, size: 60, color: Colors.blue),
                ],
              )
            ],
          ),
        ));
  }
}
