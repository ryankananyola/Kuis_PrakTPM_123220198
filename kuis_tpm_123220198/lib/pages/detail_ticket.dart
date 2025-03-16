import 'package:flutter/material.dart';

class DetailTicketPage extends StatelessWidget {
  final String nama;
  final String tujuan;
  final String jumlah;

  DetailTicketPage(
    {
      required this.nama,
      required this.tujuan, 
      required this.jumlah
    }
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pemesanan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Pemesan: $nama', style: TextStyle(fontSize: 18)),
            Text('Tujuan: $tujuan', style: TextStyle(fontSize: 18)),
            Text('Jumlah Tiket: $jumlah', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Kembali'),
            ),
          ],
        )
      ), 
    );
  }
}