import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'wrapper.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {


   TextEditingController email=TextEditingController();
  
   reset()async{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
   }

   
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(title :Text("Forgot password?"),),
     body:Column(
      children: [
        TextField(
          controller: email,
          decoration: InputDecoration(hintText :'Email Hereeeeee'),
        ),
        
        ElevatedButton(onPressed: (()=>reset()), child: Text('Send Reset Link'))
      ]


     )
     
    );
}}