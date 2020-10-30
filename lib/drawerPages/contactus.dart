import 'package:flutter/material.dart';

import '../configuration.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Contactus();
  }
}

class _Contactus extends State<Contactus> {
  String _name;
  String _email;
  String _subject;
  String _message;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  TextEditingController _controlSubject = TextEditingController();
  Widget _buildSubject() {
    return TextFormField(
      controller: _controlSubject,
      decoration: InputDecoration(labelText: 'Subject'),
      maxLength: 50,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Subject is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _subject = value;
      },
    );
  }

  TextEditingController _controlMessage = TextEditingController();
  Widget _buildMessage() {
    return TextFormField(
      controller: _controlMessage,
      maxLines: 7,
      decoration: InputDecoration(
        labelText: 'Message',
        alignLabelWithHint: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Message is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _message = value;
      },
    );
  }

  // String query =
  //     'mailto:aliyev7138@gmail.com?subject=${_controlSubject.text}&body=${_controlMessage.text}';

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('Could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact us")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(8.0), child: _buildName()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildEmail(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildSubject(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildMessage(),
                ),
                SizedBox(height: 100),
                GestureDetector(
                  onTap: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_name);
                    print(_email);
                    print(_subject);
                    print(_message);
                    //Send to API
                    String messagebody = '''
                        NAME: $_name  
                        EMAIL: $_email 
                        MESSAGE: ${_controlMessage.text}''';
                    customLaunch(
                        'mailto:aliyev7138@gmail.com?subject=${_controlSubject.text}&body=$messagebody');
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: primaryGreen,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
