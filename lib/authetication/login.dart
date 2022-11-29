import 'package:flutter/material.dart';
import 'package:grovo/model/ad_banner.dart';
import 'package:grovo/view/dashboard/dashboard_screen.dart';



class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle:true,
          title: Text("Grovo"),
          backgroundColor: Colors.green.shade400,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Welcome to Grovo',
                      style: TextStyle(
                        color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    //controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    //controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text('Forgot Password',style: TextStyle(
                    color: Colors.green
                  ),),
                ),
                Container(
                    height: 50,
                    //color: Colors.green.shade400,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green.shade400)
                      ),
                      child: const Text('Login'),
                      onPressed: () {
                        // print(nameController.text);
                        // print(passwordController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                      },
                    )
                ),
                Row(
                  children: [
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20,
                        color: Colors.green,
                        ),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )),
      ),
    );
  }
}