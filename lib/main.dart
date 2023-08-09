import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  get txt => const Text("welcome");

  get onPressed => null;

  @override
  Widget build(BuildContext context){
        return MaterialApp(
          home: Material(
            color: Colors.white60,
            child: Column(
              children: [
                SizedBox(height: 40),
                Text("Welcome To M&T Technical Services",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
                SizedBox(height: 20,),
                Image.asset("assets/images/my - Copy.jpg", width: 250,height: 250,fit: BoxFit.fill,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("have Registed?"), ElevatedButton(onPressed: onPressed, child: Text("Register")),],
                ),
                SizedBox(
                  height: 40, width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: " Enter User ID"
                      ),
                      maxLines: 1,
                    )),
                SizedBox(height: 20,),
                SizedBox(
                    height: 40, width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: " Enter User Password"
                      ),
                      maxLines: 1,
                    ))
              ],
            ),
          ),
        );
  }
}