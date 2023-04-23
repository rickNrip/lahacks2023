import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/TeacherHomeScreen/homeScreenMiddle.dart';
import 'package:flutter_application_2/student%20home%20screen/studentAddWidgets.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/teacher_Lesson_Plan/Widgets/LessonMain.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class teacherView extends StatelessWidget {
  const teacherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewGradientAppBar(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.purple,
          ]),
          title: const Text('Home'),
          actions: [
            IconButton(
              icon: const Icon(Icons.all_inbox),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.menu_book),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          elevation: 20,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: studentCard(),
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountEmail: Text('studntes.org'),
                  accountName: Text('Ricky Bailey'),
                  currentAccountPicture: CircleAvatar(
                      foregroundImage: AssetImage("images/IMG_0596.jpeg")),
                ),
                ListTile(
                  leading: Icon(Icons.menu_book),
                  title: Text('Lesson Plan'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mainLesson()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Notes'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Assignment'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.quiz),
                  title: Text('Create a Quiz'),
                  onTap: () {},
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
                    leading: Icon(Icons.logout),
                    title: Text('LogOut'),
                    onTap: () {
                      onPressed:
                      () {
                        Navigator.pop(context);
                      };
                    }),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Color.fromARGB(197, 31, 131, 231),
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
                        onPressed: () {},
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
                        onPressed: () {
                          Navigator.pop(context);
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
            )));
  }
}
