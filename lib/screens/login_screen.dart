import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  String? emailError;
  final _email = TextEditingController();
  final _password = TextEditingController();

  void handleSubmit() {
    print("login pressed: ${_email.text} ${_password.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login ")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              TextField(
                controller: _email,
                minLines: 1,
                maxLines: 5,
                onChanged: (val) {
                  emailError = null;
                  if (val.length < 10) {
                    emailError = "email too short";
                  }
                  if (!RegExp(r"^\S+@\S+\.\S+$").hasMatch(val)) {
                    emailError = "invalid email";
                  }
                  setState(() {});
                },

                decoration: InputDecoration(
                  hintText: "Enter email here",
                  error: emailError is String
                      ? Text(emailError!, style: TextStyle(color: Colors.red))
                      : null,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  prefixIcon: Icon(Icons.email),
                  label: Text("Email:"),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _password,
                obscureText: !showPassword,

                inputFormatters: [FilteringTextInputFormatter.deny(r"r")],
                // keyboardType: TextInputType.numberWithOptions(decimal: false),
                decoration: InputDecoration(
                  hintText: "Enter password here",
                  // error: Text("wow"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      !showPassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  label: Text("Password:"),
                ),
              ),
              SizedBox(height: 20),

              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: handleSubmit,
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
