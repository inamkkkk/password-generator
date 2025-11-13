import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:password_generator/models/password_settings.dart';
import 'package:password_generator/services/password_generator_service.dart';

class PasswordGeneratorScreen extends StatefulWidget {
  @override
  _PasswordGeneratorScreenState createState() => _PasswordGeneratorScreenState();
}

class _PasswordGeneratorScreenState extends State<PasswordGeneratorScreen> {
  String _generatedPassword = '';

  @override
  Widget build(BuildContext context) {
    final passwordSettings = Provider.of<PasswordSettings>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Generator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Password Length: ${passwordSettings.passwordLength}'),
            Slider(
              value: passwordSettings.passwordLength.toDouble(),
              min: 8,
              max: 32,
              divisions: 24,
              label: passwordSettings.passwordLength.toString(),
              onChanged: (double value) {
                passwordSettings.passwordLength = value.toInt();
              },
            ),
            CheckboxListTile(
              title: Text('Include Uppercase'),
              value: passwordSettings.includeUppercase,
              onChanged: (bool? value) {
                passwordSettings.includeUppercase = value ?? false;
              },
            ),
            CheckboxListTile(
              title: Text('Include Numbers'),
              value: passwordSettings.includeNumbers,
              onChanged: (bool? value) {
                passwordSettings.includeNumbers = value ?? false;
              },
            ),
            CheckboxListTile(
              title: Text('Include Symbols'),
              value: passwordSettings.includeSymbols,
              onChanged: (bool? value) {
                passwordSettings.includeSymbols = value ?? false;
              },
            ),
            ElevatedButton(
              child: Text('Generate Password'),
              onPressed: () {
                setState(() {
                  _generatedPassword = PasswordGeneratorService.generatePassword(
                    passwordSettings.passwordLength,
                    passwordSettings.includeUppercase,
                    passwordSettings.includeNumbers,
                    passwordSettings.includeSymbols,
                  );
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Generated Password: $_generatedPassword',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
