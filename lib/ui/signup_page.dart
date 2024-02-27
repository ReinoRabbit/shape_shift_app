import 'package:flutter/material.dart';
import 'package:shape_shift_app/components/button_reusable.dart';
import 'package:shape_shift_app/components/logo_image.dart';
import 'package:shape_shift_app/components/text_field.dart';
import 'package:shape_shift_app/ui/dashboard_page.dart';
import 'package:shape_shift_app/ui/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  logoWidget("lib/images/logo.png"),
                  const SizedBox(height: 5,),
                  const Text("Sign up to Shape Shift",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 50,),
                  textFieldWidget("Enter email here", Icons.person_outline, false, _emailTextController),
                  const SizedBox(height: 40,),
                  textFieldWidget("Enter password here", Icons.lock_outline, true, _passwordTextController),
                  const SizedBox(height: 30,),
                  reusableButton(context, false, () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage(),));
                  }),
                  loginOption()
                  ]),
              ),
            )
          ),
        ),
      ),
    );
  }

  Row loginOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Have an account?  ",
          style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginPage())));
          },
          child: const Text(
            "Login",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

}