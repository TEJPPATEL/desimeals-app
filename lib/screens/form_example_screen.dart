import 'package:flutter/material.dart';

class FormExampleScreen extends StatelessWidget {
  final Map<String, dynamic> personMap = {
    'name': 'Tej',
    'email': 'test@email.com'
  };

  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  FormExampleScreen({super.key});

  void _onSubmit() {
    print("Person::, ${_formKey.currentState!.validate()}");

    if (_formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    _firstnameController.text = personMap['name'];
    _emailController.text = personMap['email'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _firstnameController,
                decoration: InputDecoration(
                  labelText: 'Firstname',
                  hintText: 'Enter Firstname',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                autovalidateMode: AutovalidateMode.always, // To add validation at run time when you enter value
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _onSubmit,
                  child: const Text('Submit'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
