import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: TEXT("Form Validation")
          )
          body: MyCustomForm(),
    ));
  }
}
class MyFustomForm extends StatefulWidget{

  @Overridge
  state<MyCustomForm> createState() => MyCustomFormState();

}

class MyCustomFormState extends State<MyCustomForm> {

  final formkey = GlobalKey<FormState>();

  @overridge
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(
            children: [
            Text("SignUpForm"),
        Padding(padding: EdgeInsets.all(20),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter Value';
              }
              return null;
            },
          ),
        );
        ElevatedButton(onPressed:()
    {
      if (formKey.currentState!.validate()) {
        ScaffoldMessenger.of(context).ShowSNnackBar(
            SnackBar(content: Text("Processing Data")));
      }
    }, child: Text("Submit"))
    ],
    )

    );


  }

}

