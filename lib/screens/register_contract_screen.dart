import 'package:flutter/material.dart';

class RegisterContractScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Kontrat Kayıt Ekranı'),
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
  TextEditingController _contractNumberController = TextEditingController();
  TextEditingController _startDateController = TextEditingController();
  TextEditingController _endDateController = TextEditingController();
  TextEditingController _guarantorController = TextEditingController();
  TextEditingController _depositController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          controller: _contractNumberController,
          decoration: InputDecoration(
            labelText: 'Kontrat Numarası',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.description),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _startDateController,
          decoration: InputDecoration(
            labelText: 'Kira Başlangıç Tarihi',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.calendar_today),
          ),
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2021),
              lastDate: DateTime(2025),
            );
            if (pickedDate != null) {
              setState(() {
                _startDateController.text = pickedDate.toString();
              });
            }
          },
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _endDateController,
          decoration: InputDecoration(
            labelText: 'Kira Bitiş Tarihi',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.calendar_today),
          ),
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2021),
              lastDate: DateTime(2025),
            );
            if (pickedDate != null) {
              setState(() {
                _endDateController.text = pickedDate.toString();
              });
            }
          },
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _guarantorController,
          decoration: InputDecoration(
            labelText: 'Kefil Bilgisi',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _depositController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Depozito Bilgisi',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.money),
          ),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Yeni kontratı kaydetme işlemi
            String contractNumber = _contractNumberController.text.trim();
            String startDate = _startDateController.text.trim();
            String endDate = _endDateController.text.trim();
            String guarantor = _guarantorController.text.trim();
            String deposit = _depositController.text.trim();

            // Kaydetme işlemi burada yapılacak

            // Örneğin:
            // Veritabanına kaydetme işlemi yapılabilir veya bir API çağrısı yapılabilir

            // Kayıt işlemi başarılıysa bilgilendirme göster
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text('Yeni kontrat kaydedildi: $contractNumber')),
            );
          },
          child: Text('Kaydet'),
        ),
      ],
    );
  }
}
