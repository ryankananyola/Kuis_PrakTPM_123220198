import 'package:flutter/material.dart';
import 'detail_ticket.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tujuanController = TextEditingController();
  final TextEditingController _jumlahController = TextEditingController();

  void _pesanTiket(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailTicketPage (
          nama: _namaController.text,
          tujuan: _tujuanController.text,
          jumlah: _jumlahController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ('Pemesanan Tiket'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => Navigator.pushReplacementNamed(context, '/'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset('assets/image/banner.png', height: 150),
            TextField(controller: _namaController, decoration: InputDecoration(labelText: 'Nama Pemesan')),
            TextField(controller: _tujuanController, decoration: InputDecoration(labelText: 'Tujuan Perjalanan')),
            TextField(controller: _jumlahController, decoration: InputDecoration(labelText: 'Jumlah Tiket')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pesanTiket,
              child: Text('Pesan Tiket'),
            ),
          ],
        ),
      ),
    );
  }
}