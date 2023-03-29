import 'package:flutter/material.dart';
import 'package:login_screen/utils/shread_screen.dart';

class signinsctreen extends StatefulWidget {
  const signinsctreen({Key? key}) : super(key: key);

  @override
  State<signinsctreen> createState() => _signinsctreenState();
}

class _signinsctreenState extends State<signinsctreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Text("App"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtemail,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter the email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: txtpassword,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter the password"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  String useremail = txtemail.text;
                  String userpassword = txtpassword.text;

                  SHR shr = SHR();
                  Map m1 = await shr.readshr();

                  if(useremail==m1['e1'] && userpassword==m1['p1'])
                    {
                      shr.saveshr(txtemail.text, txtpassword.text, true);
                      Navigator.pushNamed(context, 'Homescreen');

                    }
                  else
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Id or Password")));
                    }
                },
                child: Text("Sign in"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red)),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signup');
                },
                child: Text(
                  "Creat a new account? sign-up",
                  style: TextStyle(color: Colors.red),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
          ],
        ),
      ),
    ));
  }
}
