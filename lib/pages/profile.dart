import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            elevation: 0,
            title: Text("Hello, Sanket"),
            floating: true,
          )
        ],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset.zero,
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.network(
                      "https://source.unsplash.com/featured/300x203",
                      fit: BoxFit.fill,
                    ),
                    radius: 60,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    // width: 250,
                    // height: 55,
                    // margin: const EdgeInsets.all(10),
                    child: TextFormField(
                      initialValue: "Sanket Ugale",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide()),
                          label: const Text("Name"),
                          hintText: "Username"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    // margin: const EdgeInsets.all(10),
                    // width: 250,
                    // height: 55,
                    child: TextFormField(
                      initialValue: "SanketUgale@gmail.com",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                          label: Text("Email"),
                          hintText: "Email"),
                    ),
                  ),
                  Padding(
                   padding: const EdgeInsets.all(30),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      initialValue: "4857484389",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        counterText: "",
                          icon: const Icon(Icons.phone),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide()),
                          label: const Text("Mobile no"),
                          hintText: "Mobile no"),
                    ),
                  ),
                  SizedBox(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width - 70,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    child: const Text(
                      "Address",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: TextFormField(
                      initialValue: "89",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(),
                          ),
                          label: const Text("House no"),
                          hintText: "House no"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: TextFormField(
                      initialValue: "9",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(),
                          ),
                          label: const Text("Building Name"),
                          hintText: "Building Name"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: TextFormField(
                      initialValue: "B.J Devrukhakar marg, Dadar (East)",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(),
                          ),
                          label: const Text("Street"),
                          hintText: "Street"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: TextFormField(
                      initialValue: "Mumbai",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(),
                          ),
                          label: const Text("Taluka"),
                          hintText: "Taluka"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: TextFormField(
                      initialValue: "Mumbai",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(),
                          ),
                          label: const Text("District"),
                          hintText: "District"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: TextFormField(
                      initialValue: "Maharashtra",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(),
                          ),
                          label: const Text("State"),
                          hintText: "State"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: TextFormField(
                      initialValue: "India",
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(),
                          ),
                          label: const Text("Country"),
                          hintText: "Country"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: TextFormField(
                      initialValue: "894343",
                      keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                      
                          // icon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(),
                          ),
                          label: const Text("Pin Code"),
                          hintText: "Pin code"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(onPressed: () {},  child: const Padding(
                      padding: EdgeInsets.only(top: 10.0,left:  30.0,right:  30.0,bottom:  10.0),
                      child: Text("Submit"),
                    )),
                  )
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
