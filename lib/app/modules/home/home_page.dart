import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showAlertDialog(BuildContext context, String title, String message) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.none);

    OneSignal.shared.setNotificationReceivedHandler((displayType) {
      for (var item in displayType.payload.additionalData.entries) {
        print(item);
      }
      showAlertDialog(
          context, displayType.payload.title, displayType.payload.body);
      print('Clicou setNotificationReceivedHandler');
    });

    OneSignal.shared.setNotificationOpenedHandler((openedResult) {
      print('Clicou setNotificationOpenedHandler');
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('Show alert'),
              onPressed: () {
                showAlertDialog(context, "Titulo", "Mensagem");
              },
            ),
          )
        ],
      ),
    );
  }
}
