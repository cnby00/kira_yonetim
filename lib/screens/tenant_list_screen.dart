import 'package:flutter/material.dart';

class TenantListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiracı Listesi'),
      ),
      body: ListView.builder(
        itemCount: 10, // Örnek olarak 10 kiracı listeleniyor
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text('Kiracı ${index + 1}'),
            subtitle: Text('Telefon Numarası: 05XX XXX XX XX'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Kiracı detayına gitmek için navigasyon
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TenantDetailScreen()),
              );
            },
          );
        },
      ),
    );
  }
}

class TenantDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiracı Detayı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Kiracı Detay Ekranı'),
            // Detay bilgileri burada gösterilebilir
          ],
        ),
      ),
    );
  }
}
