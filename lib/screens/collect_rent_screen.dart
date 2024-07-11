import 'package:flutter/material.dart';

class CollectRentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kira Tahsilat Ekranı'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: CollectRentForm(),
        ),
      ),
    );
  }
}

class CollectRentForm extends StatefulWidget {
  @override
  _CollectRentFormState createState() => _CollectRentFormState();
}

class _CollectRentFormState extends State<CollectRentForm> {
  TextEditingController _propertyController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            controller: _propertyController,
            decoration: InputDecoration(
              labelText: 'Kiralık Yer',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Tutar (₺)',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: _dateController,
            decoration: InputDecoration(
              labelText: 'Tarih',
              border: OutlineInputBorder(),
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
                  _dateController.text = pickedDate.toString();
                });
              }
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Kira tahsilatı kaydetme işlemi
              String property = _propertyController.text.trim();
              String amount = _amountController.text.trim();
              String date = _dateController.text.trim();

              // Kayıt işlemi burada yapılacak

              // Örneğin:
              // Veritabanına kaydetme işlemi yapılabilir veya bir API çağrısı yapılabilir

              // Kayıt işlemi başarılıysa bilgilendirme göster
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Kira tahsilatı kaydedildi: $amount₺')),
              );
            },
            child: Text('Kaydet'),
          ),
        ],
      ),
    );
  }
}
