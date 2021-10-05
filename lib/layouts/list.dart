import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Scaffold(
          body: myBigList(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              showBar(context,"Add new item");
            },
            child: Icon(Icons.add),
            tooltip: "add new item",
          ),
        )
      )
    );

  }

  // This list use in range 50 item
  Widget myListView(){
    var list = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("List 1"),
          subtitle: Text("Go Go Go 1"),
          trailing: Icon(Icons.image),
          onTap: (){
            print("fff");
          },
        ),
        ListTile(
          leading: Icon(Icons.adb),
          title: Text("List 2"),
          subtitle: Text("Go Go Go 2"),
        ),
        ListTile(
          title: Text("List 3"),
          trailing: Icon(Icons.image),
        ),
      ],
    );
    return list;
  }

  List<String> getDataSource(){
    var items = List<String>.generate(100, (i) => "item ${i+1} ");
    return items;
  }

  Widget myBigList(){
    var items = getDataSource();
    var listView = ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          return ListTile (
            leading: Icon(Icons.ac_unit),
            title: Text(items[i]),
            onTap: (){
              debugPrint(" List number ${items[i]}");
            },
          );
        }
    );
    return listView;
  }


  void showBar (BuildContext context, String msg){
    var bar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: "Undo",
        onPressed: (){
          debugPrint("undo");
          },
      ),
    );
    Scaffold.of(context).showSnackBar(bar);
  }
}
