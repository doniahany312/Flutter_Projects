import 'package:flutter/material.dart';

void main() {
  runApp(const Task1());
}

class Task1 extends StatelessWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  leading: const BackButton(),
                  title: const Center(child: Text("This is my first app")),
                  actions: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert))
                  ],
                  bottom: const TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.login),
                        text: "SignIn",
                      ),
                      Tab(
                        icon: Icon(Icons.app_registration),
                        text: "Register",
                      )
                    ],
                  ),
                ),
                body: TabBarView(children: [
                  SingleChildScrollView(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Center(
                          child: Image(
                              image: NetworkImage(
                                  'https://static1.xdaimages.com/wordpress/wp-content/uploads/2018/02/Flutter-Framework-Feature-Image-Background-Colour.png'))),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                hintText: "Email",
                                labelText: "Email",
                                prefixIcon: const Icon(Icons.email)),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                hintText: "Password",
                                labelText: "Password",
                                prefixIcon: const Icon(Icons.lock)),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: EdgeInsets.symmetric(horizontal: 32,vertical: 12)),
                      ),
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",),
                          TextButton(onPressed: (){}, child: Text("SignUp",style:TextStyle(color: Colors.red))),
                        ],
                      )
                    ],
                  ))
                ]))));
  }
}
