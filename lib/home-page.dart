import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Better notes"),
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Text("Recent Notes",
              style: TextStyle(color: Colors.white, fontSize: 30.0)),
        ),
        RecentList(),
        RaisedButton(
          child: Text('New Scan'),
          onPressed: () {
            // go to camera screen
          },
        )
      ]),
    );
  }
}

class RecentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    for (int i = 0; i < 3; i++) {
      // hardcoded to 3
      items.add(Text(""));
    }
    return Column(children: items);
  }
  // String targets[] = new String[3];
  // for(int i = 0; i < targets.length; i++){
  //   targets[i] = "dummy" + i.toString;
  // }
  // return targets;
}
/*


for(var i in targets){
    Text(targets[i],style: TextStyle(color: Colors.purple, fontSize: 15.0))
    // should be a flat button with an icon so it can
  }

children: 
*/
