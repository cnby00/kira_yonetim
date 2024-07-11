import 'package:flutter/material.dart';

class RegisterTenantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiracı Kayıt Ekranı'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: RegisterForm(),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
            labelText: 'Ad',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _surnameController,
          decoration: InputDecoration(
            labelText: 'Soyad',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person_outline),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _phoneController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: 'Telefon',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.phone),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'E-posta',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
          ),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Kiracıyı kaydetme işlemi
            String name = _nameController.text.trim();
            String surname = _surnameController.text.trim();
            String phone = _phoneController.text.trim();
            String email = _emailController.text.trim();

            // Örneğin:
            // Veritabanına kaydetme işlemi yapılabilir veya bir API çağrısı yapılabilir

            // Kayıt işlemi başarılıysa bilgilendirme göster
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Kiracı kaydedildi: $name $surname')),
            );
          },
          child: Text('Kaydet'),
        ),
      ],
    );
  }
}
