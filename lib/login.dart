import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  TextEditingController stdid = TextEditingController();
  TextEditingController passcode = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Padding fielss(String hints, String labelss, TextEditingController cont) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: cont,
        validator: (text) {
          if (text!.isEmpty) {
            return 'Please Enter Details';
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          hintText: hints,
          labelText: labelss,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN'),
        centerTitle: true,
      ),
      body: Card(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              fielss('Enter Account Id', 'Student ID', stdid),
              fielss('Enter password', 'Password', passcode),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, '/register');
                        }
                      });
                    },
                    child: const Text('LOGIN'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, '/register');
                      });
                    },
                    child: const Text('REGISTER'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
