import 'package:flutter/material.dart';

import 'custom.dart';

Widget textformfield(
    IconData icon,
    String hinttext,
    TextEditingController controller,
    String valid,
    bool isEmail,
    bool isPassowrd,
    double width,
    double height,
    Color containercolor) {
  return Container(
    height: height,
    width: width,
    color: containercolor,
    child: TextFormField(
      cursorColor: Colors.black,

      validator: (value) {
        //  ftn

        if (value!.isEmpty && value.length == 0) {
          return valid;
        } else if (isEmail) {
          if (!mail(value)) {
            return 'enter valid email';
          }
        } else if (isPassowrd) {
          if (value.length < 6) {
            return 'password must be 6 character';
          }
        } else {
          return null;
        }
        return null;
      },
      // keyboardType: TextInputType.emailAddress,
      controller: controller,
      decoration: InputDecoration(
        fillColor: Color.fromARGB(255, 226, 222, 222),
        filled: true,
        //  contentPadding: const EdgeInsets.fromLTRB(0, 2, 8, 0),
        prefixIcon: Icon(icon, color: Color.fromARGB(255, 255, 33, 86)),
        // contentPadding:
        //     const EdgeInsets.only(bottom: 15),

        hintText: hinttext,
        border: InputBorder.none,
      ),
    ),
  );
}

Widget custombutton(String buttonname, String routes, BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, routes);
      // if (_mail.currentState!.validate()) {
      //   ScaffoldMessenger.of(context)
      //       .showSnackBar(SnackBar(content: Text('OKAY')));
      // }
    },
    child: Text(buttonname),
    style: TextButton.styleFrom(
      side: BorderSide(width: 2, color: Color.fromARGB(255, 255, 33, 86)),
      minimumSize: Size(300, 43),
      backgroundColor: Color.fromARGB(255, 255, 33, 86),
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
    ),
  );
}

Widget gridhome(String images, String texts) {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: BorderSide(width: 0.4, color: Color(0xFFE5E5E5)),
        fixedSize: Size(40, 40),
        backgroundColor: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Container(height: 40, width: 40, child: Image.asset(images)),
          ),
          Container(
            height: 5,
          ),
          Text(
            texts,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ));
}

Widget info(
  String name,
  String location,
) {
  return Container(
    height: 100,
    width: 300,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 5,
          offset: Offset(0, 3),
        )
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    // color: Colors.green,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 150,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Location',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                location,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          // color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.s,
              children: [
                Image.asset('assets/images/blood_group.png'),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Donate',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 33, 86),
                      ),
                    )),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
