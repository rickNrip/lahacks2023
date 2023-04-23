import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/student%20home%20screen/leaderBoardData.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class leaderBoardMain extends StatelessWidget {
  const leaderBoardMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: const Text('LeaderBoards'),
        gradient: const LinearGradient(
          colors: [Colors.red, Colors.pink],
        ),
      ),
      body: ListView(
        children: const [cardLeader(), cardOther(), cardOther(), cardOther()],
      ),
    );
  }
}
