import 'package:flutter/material.dart';
import 'package:lab08/sevices/auth_sevice.dart';
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}
final _formKey = GlobalKey<FormState>();

TextEditingController emailuser = TextEditingController();
TextEditingController passworduser = TextEditingController();




class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {


  
    
    
    
    
    
    return Scaffold(
         appBar: AppBar(
        title: Text("เข้าสู่ระบบ"),

      ),
      body:Form(
        key: _formKey ,
        child:  Column(children: 
       [ 
  
       TextFormField(
           obscureText: true,
        controller: passworduser,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "plassword",
     
        hintText: "please enter plassword",
        hintStyle: TextStyle(color: Colors.grey)


      ),
      ),
       TextFormField(

        controller: emailuser,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "email",
        hintText: "please enter email",
        hintStyle: TextStyle(color: Colors.grey)


      ),

     
      ),


      

      
      ElevatedButton(
        onPressed: () {
          AuthService.registeruser    (emailuser.text ,passworduser.text).then((value){
            print("pass");
            Navigator.pop(context);
          });
        },
        child: Text('login'),
        )

       ],

      ),)
      

    );

    
  }
}
