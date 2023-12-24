import 'package:flutter/material.dart';

void main() => runApp(TaskifyHubApp());

class TaskifyHubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskifyHub',
      home: TaskifyHubScreen(),
    );
  }
}

class TaskifyHubScreen extends StatefulWidget {
  @override
  _TaskifyHubScreenState createState() => _TaskifyHubScreenState();
}

class _TaskifyHubScreenState extends State<TaskifyHubScreen> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TaskifyHub'),
      ),
      body: Column(
        children: [
          // Display tasks
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index]),
                );
              },
            ),
          ),
          // Add new task
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Add a new task',
              ),
              onSubmitted: (newTask) {
                setState(() {
                  tasks.add(newTask);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
