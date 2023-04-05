import 'package:flutter/material.dart';

class Dialog extends StatefulWidget {
  const Dialog({super.key});

  @override
  State<Dialog> createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.deepPurpleAccent,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: ElevatedButton(
          child: Text('Show Dialog'),
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => SplashScreen()));
            showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    child: AlertDialog(
                        title: Text('Email sent'),
                        content: TextField(
                          onChanged: (value) {},
                          decoration:
                              InputDecoration(hintText: 'Enter Folder Name'),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('YES'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('NO'),
                          )
                        ]),
                  );
                });
          },
        ),
      ),
    ));
  }
}
