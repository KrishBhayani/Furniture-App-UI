import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:furniture_app/home_page.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/login2.jpeg",fit: BoxFit.fitHeight,),
            Column(
              children: [
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formkey,
                  child: Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 20),
                            child: Text("Let's give a life",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 5,bottom: 10),
                            child: Text("to your house..!!",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail,color: Colors.white,),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Colors.white
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,width: 2),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,width: 2),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                focusedErrorBorder:  OutlineInputBorder(
                                  borderSide:  BorderSide(color: Colors.white, width: 2),
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.white
                              ),
                              validator: (email){
                                if(email !=null && !EmailValidator.validate(email)){
                                 return 'Enter a valid email';
                                }
                                else{
                                  return null;
                                }
                              },
                            ),
                          ),
                          const SizedBox(height: 32,),
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20),
                            child: TextFormField(
                              obscureText: true,

                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,color: Colors.white,),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,width: 2),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,width: 2),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,width: 2),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                focusedErrorBorder:  OutlineInputBorder(
                                  borderSide:  BorderSide(color: Colors.white, width: 2),
                                ),
                              ),
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              validator: (value){
                                if(value != null && value.length<8){
                                  return 'Enter min. 8 characters';
                                }
                                else{
                                  return null;
                                }
                              },
                            ),
                          ),
                          const SizedBox(height: 22,),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(bottom: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                                onPressed: (){
                                   final isValidForm = formkey.currentState!.validate();
                                   if(isValidForm){
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                       return HomePage();
                                     },));
                                   }
                                },
                                child: Text("Sign in",
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
