import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _loginPageState();
}

class _loginPageState extends State<forgotPassword> {
  final TextEditingController _emailController1=TextEditingController();
  // final TextEditingController _emailController2=TextEditingController();
  final TextEditingController _otpController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _confirmPasswordController=TextEditingController();
  final _resetForm=GlobalKey<FormState>();
  final _setForm=GlobalKey<FormState>();
  bool restClicked=false;
  bool showPassword=false;
  bool showconfPassword=false;
  @override
  void dispose() {
    // TODO: implement dispose
    _confirmPasswordController.dispose();
    _emailController1.dispose();
    _otpController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: 
                // Main column for rest and set functionality
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // first sub-column of main column
                    if (restClicked) Form(
                      key: _setForm,
                      child: Column(
                        children: [
                          Container(
                        margin: const EdgeInsets.only(right: 10),
                        child:  const Text(
                          "Set Password",textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        )
                        
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(10),
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(124, 134, 134, 134)),
                        child: TextFormField(
                          controller: _otpController,
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(90),
                              borderSide: const BorderSide(color: Colors.white),),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(90),
                              borderSide: const BorderSide(color: Colors.white),),
                              labelText: "OTP",
                            labelStyle: const TextStyle(color: Colors.white),
                            
                            icon: const Icon(Icons.message),
                            iconColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "OTP is require";
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
                          controller: _passwordController,
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
                              return "Password is require";
                            } 
                            else if (value.length <8) {
                               return "Password length should be 8 or more";
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
                          controller: _confirmPasswordController,
                          obscureText: showconfPassword?false:true,
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
                                showconfPassword=!showconfPassword;
                              });
                            }, child:  showconfPassword? const Icon(Icons.visibility,color: Colors.white,):const Icon(Icons.visibility_off,color: Colors.white,)),
                            labelText: "Confirm Password",
                            labelStyle: const TextStyle(color: Colors.white),
                            icon: showconfPassword? const Icon(Icons.lock_open):const Icon(Icons.lock),
                            iconColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(90)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Confirm Password is require";
                            }
                            else if(_passwordController.text!=value){
                              return "Passwords do not match";
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_setForm.currentState!.validate()) {
                                setState(() {
                              restClicked=!restClicked;
                              });
                              }
                            
                          },
                          child:  const Padding(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 25, right: 25),
                            child:Text(
                              "Set Password",
                              style: TextStyle(color: Colors.black),
                            )
                          ),
                        ),
                      ),
                        ],
                      ),
                    ) 
                    else Form(
                      key: _resetForm,
                      child: Column(
                        children: [
                        const Text(
                          "Reset Password",textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                        Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(10),
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(124, 134, 134, 134)),
                        child: TextFormField(
                          controller: _emailController1,
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
                            if (value!.isEmpty) {
                              return "Email is require";
                            }
                            else if(!value.isEmail){
                              return "Invalid Email address";
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_resetForm.currentState!.validate()) {
                                setState(() {
                                restClicked=!restClicked;
                              });
                              }
                          },
                          child:  const Padding(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 25, right: 25),
                            child: Text(
                              "Reset Password",
                              style: TextStyle(color: Colors.black),
                            )
                          ),
                        ),
                      ),
                        ],
                      ),
                    )
                  


                    // Container(
                    //   margin: const EdgeInsets.only(top: 15, bottom: 15),
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       setState(() {
                    //         restClicked=!restClicked;
                    //       });
                    //     },
                    //     child:  Padding(
                    //       padding: const EdgeInsets.only(
                    //           top: 10, bottom: 10, left: 25, right: 25),
                    //       child: restClicked ? const Text(
                    //         "Set Password",
                    //         style: TextStyle(color: Colors.black),
                    //       ):
                    //       const Text(
                    //         "Reset Password",
                    //         style: TextStyle(color: Colors.black),
                    //       )
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
