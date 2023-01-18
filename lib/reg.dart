import 'package:flutter/material.dart';
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}
final _formKey = GlobalKey<FormState>();
TextEditingController _controller1 = TextEditingController();
TextEditingController _controller2 = TextEditingController();
TextEditingController _controller3 = TextEditingController();




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

        controller: _controller1,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "username",
        hintText: "please enter username",
        hintStyle: TextStyle(color: Colors.grey)


      ),

     
      ),
       TextFormField(
           obscureText: true,
        controller: _controller2,
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

        controller: _controller3,
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
          if(_formKey.currentState!.validate()) {
            print(_controller1.text);
          }

           if(_formKey.currentState!.validate()) {
            print(_controller2.text);
          }
          
        },
        child: Text('login'),
        )
  
  
    

       ],

      ),)
      











      
    
    );

    
  }
}
