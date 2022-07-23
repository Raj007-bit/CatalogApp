import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "UserName",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "PassWord",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                // ignore: use_build_context_synchronously
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: changeButton ? 50 : 150,
                height: 50,
                alignment: Alignment.center,
                // ignore: sort_child_properties_last
                child: changeButton
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
