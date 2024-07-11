import 'package:flutter/material.dart';

class RegisterPropertyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiralık Yer Kayıt Ekranı'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: RegisterForm(),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  TextEditingController _addressController = TextEditingController();
  TextEditingController _typeController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          controller: _addressController,
          decoration: InputDecoration(
            labelText: 'Adres',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.location_on),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _typeController,
          decoration: InputDecoration(
            labelText: 'Tür',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.category),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _priceController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Fiyat',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.attach_money),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _descriptionController,
          maxLines: 3,
          decoration: InputDecoration(
            labelText: 'Açıklama',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.description),
          ),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Kiralık yeri kaydetme işlemi
            String address = _addressController.text.trim();
            String type = _typeController.text.trim();
            String price = _priceController.text.trim();
            String description = _descriptionController.text.trim();

            // Kaydetme işlemi burada yapılacak

            // Örneğin:
            // Veritabanına kaydetme işlemi yapılabilir veya bir API çağrısı yapılabilir

            // Kayıt işlemi başarılıysa bilgilendirme göster
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Kiralık yer kaydedildi: $address')),
            );
          },
          child: Text('Kaydet'),
        ),
      ],
    );
  }
}
