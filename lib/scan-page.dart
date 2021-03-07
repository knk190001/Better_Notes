import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class ScanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar:AppBar(
        //   title: const Text("Better notes"),
        // ),
        body: Column(
      children: <Widget>[
        // image

        // popup
        SizedBox(height: 20),
        Center(
            child: RaisedButton(
          child: Text('Take Scan', style: TextStyle(color: Colors.white)),
          color: Colors.black,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context));
          },
        ))
      ],
    ));
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Save Scan?'),
    // content: new Column(
    //   mainAxisSize: MainAxisSize.min,
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: <Widget>[
    //     Text("Hello"),
    //   ],
    // ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('SAVE'),
      ),
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('RETAKE'),
      ),
    ],
  );
}

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;
  const CameraScreen({
    Key key,
    @required this.camera,
  }) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController cameraController;
  Future<void> initializeControllerFuture;
  //List cameras;
  //int cameraIndex;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext contxt) {
    return Container();
  }
}
