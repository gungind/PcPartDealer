import 'package:flutter/material.dart';


class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  TextEditingController namaController = TextEditingController();
  TextEditingController hpController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar:  AppBar(
            backgroundColor: Colors.blue,
            elevation: .5,
            title: Text("PC Part Dealer"),),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius : BorderRadius.circular(10)),
                      labelText: 'Nama Lengkap',
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Silahkan Masukan Nama Lengkap'),
                  controller: namaController,
                  maxLength: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius : BorderRadius.circular(10)),
                      labelText: 'Nomor HP',
                      prefixIcon: Icon(Icons.phone_android),
                      hintText: 'Silahkan  Masukan Nomor HP'),
                  controller: hpController,
                  maxLength: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius : BorderRadius.circular(10)),
                      labelText: 'Alamat',
                      prefixIcon: Icon(Icons.home),
                      hintText: 'Silahkan  Masukan Alamat'),
                  controller: alamatController,
                  maxLength: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: MaterialButton(
                    color: Colors.blue,
                    child: Text('Metode Pembayaran'),
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

