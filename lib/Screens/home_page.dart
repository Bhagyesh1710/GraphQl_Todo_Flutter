import 'package:flutter/material.dart';
import 'package:flutter_graphtodo/Screens/add_todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text("Available todo"),
                  ),
                  Expanded(child: ListView(
                    children: List.generate(5, (index){
                      return ListTile(
                        title: Text('Todo title'),
                        subtitle: Text('Todo time'),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.delete),
                        ),
                      );
                    }),
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddTodo()));
      }, label: Text('Add Todo')),
    );
  }
}
