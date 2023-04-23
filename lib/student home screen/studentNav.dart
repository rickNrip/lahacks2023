import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/student%20home%20screen/studentAddWidgets.dart';
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
          backgroundColor: Color.fromARGB(188, 244, 67, 54),
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
                          leading: Icon(Icons.add),
                          title: Text('Add Your Water'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => addWater()),
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.apple),
                          title: Text('Add Your Caliores'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.speaker_notes_rounded),
                          title: Text('Add Your Health Notes'),
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
          child: Icon(Icons.add),
          elevation: 10.0,
        ),
        bottomNavigationBar: BottomAppBar(
            color: Color.fromARGB(220, 246, 35, 35),
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
                                builder: (context) => const FirstRoute()),
                          );
                        },
                        icon: Icon(Icons.chat),
                      ),
                      Text(
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
                    children: [
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
                                builder: (context) => const FirstRoute()),
                          );
                        },
                        icon: Icon(Icons.logout),
                      ),
                      Text(
                        'LogOut',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                )
              ],
            )),
        appBar: NewGradientAppBar(
          title: Text('Kidz Eat'),
          gradient: LinearGradient(
            colors: [Colors.red, Colors.pink],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text('studntes.org'),
                accountName: Text('Ricky Bailey'),
                currentAccountPicture: CircleAvatar(
                    foregroundImage: AssetImage("images/IMG_0596.jpeg")),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Notes'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => viewNotes()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.article),
                title: Text('Assignment'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.quiz),
                title: Text('Quiz'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Quiz()),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text('Labes'),
              ),
              ListTile(
                leading: Icon(Icons.sports_gymnastics),
                title: Text('WorkOuts'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.apple),
                title: Text('Healthy Food'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.leaderboard),
                title: Text('LeaderBoards'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(227, 244, 54, 54),
            Color.fromARGB(255, 233, 30, 209)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ));
  }
}
