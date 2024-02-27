import 'package:flutter/material.dart';
import 'package:shape_shift_app/ui/login_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Logout"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
          },
        ),
      ),
    );
  }
}