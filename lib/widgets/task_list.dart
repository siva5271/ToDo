import 'package:flutter/material.dart';

import 'tasks.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [Tasks(), Tasks(), Tasks()],
          ),
        )
      ],
    );
  }
}
