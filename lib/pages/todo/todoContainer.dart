import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/todo/styled_body_text.dart';

class Todocontainer extends StatefulWidget {
  const Todocontainer({super.key});

  @override
  State<Todocontainer> createState() => _TodocontainerState();
}

class _TodocontainerState extends State<Todocontainer> {
  final _formGlobalKey = GlobalKey<FormState>();

  final List<Todo> todos = [
    Todo(title: "Ratheesh", description: "Role 1"),
    Todo(title: "Neymar", description: "Role 2")
  ];

  // String _name = "";
  String _title = "";
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              StyledBodyText('List'),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: todos.length,
                    itemBuilder: (context, index) => Card(
                          child: ListTile(
                            title: Text(todos[index].title),
                            subtitle: Text(todos[index].description),
                            trailing: Icon(
                              Icons.more_vert,
                              size: 16,
                            ),
                          ),
                        )),
              ),
              Form(
                key: _formGlobalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // todo title
                    TextFormField(
                      maxLength: 20,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(label: Text("Todo Title")),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "You must enter a value for the title";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _title = value!;
                      },
                    ),
                    // todo description
                    TextFormField(
                      maxLength: 40,
                      decoration:
                          InputDecoration(label: Text("Todo Description")),
                      validator: (value) {
                        print("LENGTH ===> ${value!.length}");
                        if (value.isEmpty || value.length < 5) {
                          return "Enter the description at least 5 chars long";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _description = value!;
                      },
                    ),
                    FilledButton(
                        onPressed: () {
                          if (_formGlobalKey.currentState!.validate()) {
                            _formGlobalKey.currentState!.save();

                            setState(() {
                              todos.add(Todo(
                                  title: _title, description: _description));
                            });

                            _formGlobalKey.currentState!.reset();
                          }
                        },
                        style: FilledButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 119, 116, 116),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4))),
                        child: Text("Add")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Todo {
  String title;
  String description;

  Todo({required this.title, required this.description});
}
