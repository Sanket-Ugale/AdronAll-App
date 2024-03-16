import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<signUpPage> {
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _mobileController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _confirmPasswordController=TextEditingController();
  bool showConfPassword=false;
  bool showPassword=false;
  
  @override
  void dispose() {
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    // TODO: implement dispose
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
                      top: 80, bottom: 100, left: 30, right: 30),
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.all(10),
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(124, 134, 134, 134)),
                          child: TextFormField(
                            controller: _emailController,
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
                              if (value!.isEmpty){
                                return "Email is required";
                              }
                              else if(!value.isEmail){
                                return "Enter a valid email address";
                              }
                              return null;                       
                            },
                          ),
                        ),
                    
                       Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.all(10),
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(124, 134, 134, 134)),
                          child: TextFormField(
                            controller: _mobileController,
                            keyboardType: TextInputType.phone,
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: const BorderSide(color: Colors.white),),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: const BorderSide(color: Colors.white),),
                                labelText: "Mobile Number",
                              labelStyle: const TextStyle(color: Colors.white),
                              
                              icon: const Icon(Icons.phone),
                              iconColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty){
                                return "Mobile number is required";
                              }
                              else if(value.length!=10){
                                return "Enter a valid 10-digit mobile number";
                              }
                              return null;                       
                            },
                          ),
                        ),
                    
                    
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.all(10),
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(124, 134, 134, 134)),
                          child: TextFormField(
                            controller:_passwordController,
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
                              if (value!.isEmpty){
                                return "Password is require";
                              }
                              else if(value.length<8){
                                return "Password length should be 8 or more";
                              }
                              return null;                       
                            },
                          ),
                        ),
                    
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.all(10),
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(124, 134, 134, 134)),
                          child: TextFormField(
                            controller: _confirmPasswordController,
                            obscureText: showConfPassword?false:true,
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
                                  showConfPassword=!showConfPassword;
                                });
                              }, child:  showConfPassword? const Icon(Icons.visibility,color: Colors.white,):const Icon(Icons.visibility_off,color: Colors.white,)),
                              labelText: "Confirm Password",
                              labelStyle: const TextStyle(color: Colors.white),
                              icon: showConfPassword? const Icon(Icons.lock_open):const Icon(Icons.lock),
                              iconColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(90)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty){
                                return "Confirm password is required";
                              }
                              else if(value.length<8){
                                return "Password should be at least 8 characters long";
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
                              if (_signUpFormKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Processing Data')),
                                );
                              }
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 25, right: 25),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        TextButton(onPressed:() {
                          Navigator.pop(context);
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const loginPage(),));
                        }, 
                        child: const Text("Already have account? Login",style: TextStyle(color: Colors.white),),),
                    
                        // ElevatedButton(onPressed:() {
                          
                        // }, child: Row(children: [Text("Login With"),Image.asset("assets/icons/google.png")],))
                        // IconButton(onPressed:() {}, 
                        // icon: Image.asset("assets/icons/google.png"),)
                        Chip(label: const Text("SignUp with Google"),avatar: CircleAvatar(child: Image.asset("assets/icons/google.png")),),
                        const SizedBox(height: 10,),
                        // Chip(label: Text("SignUp with Phone Number"),avatar: CircleAvatar(child: Image.asset("assets/icons/phone.png")),),
                        // SizedBox(height: 20,)
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
