import 'package:adronall/pages/forgotPassPage.dart';
import 'package:adronall/pages/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _loginFormKey=GlobalKey<FormState>();
  final TextEditingController _loginEmailController=TextEditingController();
  final TextEditingController _loginPasswordController=TextEditingController();
  bool showPassword=false;
  @override
  void dispose() {
    _loginEmailController.dispose();
    _loginPasswordController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/loginbg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(101, 2, 2, 2),
              ),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(122, 88, 88, 88)),
                  margin: const EdgeInsets.only(
                      top: 100, bottom: 100, left: 30, right: 30),
                  child: Form(
                    key: _loginFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.all(10),
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(124, 134, 134, 134)),
                          child: TextFormField(
                            controller: _loginEmailController,
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: const BorderSide(color: Colors.white),),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: const BorderSide(color: Colors.white),),
                                labelText: "Email",
                              labelStyle: const TextStyle(color: Colors.white),
                              icon: const Icon(Icons.person),
                              iconColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            validator: (value) {
                              if (!value!.isEmail) {
                                return "Email address is required";
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.all(10),
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(124, 134, 134, 134)),
                          child: TextFormField(
                            controller: _loginPasswordController,
                            obscureText: showPassword?false:true,
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: const BorderSide(color: Colors.white),),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: const BorderSide(color: Colors.white),),
                              suffixIcon: InkWell(onTap: () {
                                setState(() {
                                  showPassword=!showPassword;
                                });
                                
                              }, child:  showPassword? const Icon(Icons.visibility,color: Colors.white,):const Icon(Icons.visibility_off,color: Colors.white,)),
                              labelText: "Password",
                              labelStyle: const TextStyle(color: Colors.white),
                              icon: showPassword? const Icon(Icons.lock_open):const Icon(Icons.lock),
                              iconColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password is required";
                              } 
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 15),
                          child: ElevatedButton(
                            onPressed: () {
                       if (_loginFormKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Processing Data')),
                                );
                              }
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 25, right: 25),
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        TextButton(onPressed:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const signUpPage(),));
                        }, 
                        child: const Text("New Here? Sign UP",style: TextStyle(color: Colors.white),),),
                            
                        // ElevatedButton(onPressed:() {
                          
                        // }, child: Row(children: [Text("Login With"),Image.asset("assets/icons/google.png")],))
                        // IconButton(onPressed:() {}, 
                        // icon: Image.asset("assets/icons/google.png"),)
                        Chip(label: const Text("Login with Google"),avatar: CircleAvatar(child: Image.asset("assets/icons/google.png")),),
                        const SizedBox(height: 10,),
                        Chip(label: const Text("Login with Phone Number"),avatar: CircleAvatar(child: Image.asset("assets/icons/phone.png")),),
                        const SizedBox(height: 20,),
                        TextButton(onPressed:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const forgotPassword(),));
                        }, 
                        child: const Text("Forgot Password", style: TextStyle( color: Colors.white),),),
                            
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
