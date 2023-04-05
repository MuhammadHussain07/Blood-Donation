import 'package:flutter/material.dart';

class Textfields extends StatefulWidget {
  const Textfields({super.key});

  @override
  State<Textfields> createState() => _TextfieldsState();
}

class _TextfieldsState extends State<Textfields> {
  TextEditingController golf = TextEditingController();
  TextEditingController passew = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 600,
      width: 300,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: golf,
            // enabled: false,
            decoration: InputDecoration(
              hintText: 'enter email',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.pink, width: 2)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 30, 233, 57), width: 2)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.purple)),
              // suffixText: 'this is work',
              // prefixText: 'here we start',
              // suffixIcon: IconButton(
              //   icon: Icon(
              //     Icons.android,
              //     color: Colors.brown,
              //   ),
              //   onPressed: () {},
              // ),
              // prefixIcon: IconButton(
              //   icon: Icon(
              //     Icons.golf_course,
              //     color: Colors.brown,
              //   ),
              //   onPressed: () {},
              // ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: passew,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                hintText: 'enter password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue))),
          ),
          ElevatedButton(
              onPressed: () {
                String alpa = golf.text.toString();
                String gog = passew.text;
                print("email:$alpa password:$gog");
              },
              child: Text('click login'))
        ],
      )),
    ));
  }
}
