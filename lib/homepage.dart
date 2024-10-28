import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController mailcontroller=TextEditingController();
  TextEditingController passcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: mailcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                hintText: "Enter Email",
                prefixIcon: Icon(Icons.mail),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: passcontroller,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Password",
                hintText: "Enter password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),

          SizedBox(height: 15,),

          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
                onPressed: (){
                String email=mailcontroller.text;
                String pass=passcontroller.text;
                if(!email.contains("@") && !email.contains("."))
                  {
                    Fluttertoast.showToast(msg: "Invalid email");
                  }
                else if(pass.length<4)
                  {
                    Fluttertoast.showToast(msg: "Invalid password");
                  }
                else{
                  Fluttertoast.showToast(msg: "Email:"+email+"password:"+pass);
                }

                },
                child: Text("Submit",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),)
            ),
          )
        ],
      ),
    );
  }
}
