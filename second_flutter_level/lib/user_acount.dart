import 'package:flutter/material.dart';

import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/screens/first_screen.dart';

String? firstName;
String? secondName;
String? email;
String? password;
String? selectGender;

class userAccont extends StatefulWidget {
  const userAccont({super.key});

  @override
  State<userAccont> createState() => _userAccontState();
}

class _userAccontState extends State<userAccont> {
  GlobalKey<FormState> key1 = GlobalKey();

  TextEditingController con1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 148, 110),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: ClipOval(
                            child: Image.asset(
                              "images/pty.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Gipsy",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.orange,
                            size: 50,
                          ),
                          Text(
                            "Bee",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 119, 78, 15),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "WELCOME",
                      style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 119, 78, 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.92,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 215, 201),
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Form(
                        key: key1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: TextFormField(
                                    //autovalidateMode: AutovalidateMode.always,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "This Field is Requered";
                                      }
                                    },
                                    onSaved: (newValue) {
                                      setState(() {
                                        firstName = newValue;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                      labelText: "First Name",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          borderSide: BorderSide(
                                              color: Color(
                                                  colormanager.searchColor))),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Expanded(
                                  child: TextFormField(
                                    //autovalidateMode: AutovalidateMode.always,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "This Field is Requered";
                                      }
                                    },
                                    onSaved: (newValue) {
                                      setState(() {
                                        secondName = newValue;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                      labelText: "Second Name",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 253, 255, 252))),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Expanded(
                                  child: TextFormField(
                                    //autovalidateMode: AutovalidateMode.always,
                                    controller: con1,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "This Field is Requered";
                                      }
                                    },
                                    onSaved: (newValue) {
                                      setState(() {
                                        email = newValue;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                      labelText: "Email",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          borderSide: BorderSide(
                                              color: Color(
                                                  colormanager.searchColor))),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Expanded(
                                  child: TextFormField(
                                    //autovalidateMode: AutovalidateMode.always,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "This Field is Requered";
                                      }
                                    },
                                    onSaved: (newValue) {
                                      setState(() {
                                        password = newValue;
                                      });
                                    },
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      labelText: "Password",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          borderSide: BorderSide(
                                              color: Color(
                                                  colormanager.searchColor))),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Row(
                                children: [
                                  // title: const Text("Male"),
                                  Expanded(
                                    child: RadioListTile<String>(
                                      title: const Text("Male"),
                                      value: "Male",
                                      groupValue: selectGender,
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectGender = value;
                                        });
                                      },
                                    ),
                                  ),

                                  //title: const Text("Female"),
                                  Expanded(
                                    child: RadioListTile(
                                      title: const Text("Female"),
                                      value: "Female",
                                      groupValue: selectGender,
                                      onChanged: (value) {
                                        setState(() {
                                          selectGender = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          if (key1.currentState!.validate()) {
                                            key1.currentState!.save();
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            myfirstscreen()));
                                          }
                                        });
                                      },
                                      child: const Text("Sign in"),
                                      color: Colors.orange,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        print("ok");
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    myfirstscreen()));
                                      },
                                      child: const Text("Login"),
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
