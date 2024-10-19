import 'package:flutter/material.dart';
import 'package:tugas_1/components/ui/custom_app_bar.dart';
import 'package:tugas_1/config/app_colors.dart';

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key});

  @override
  State<Tugas1> createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  final _panjangController = TextEditingController();
  final _lebarController = TextEditingController();
  String? _hasil = '';

  void handleHitung() {
    setState(() {
      int operasi =
          int.parse(_panjangController.text) * int.parse(_lebarController.text);
      _hasil = operasi.toString();
      _panjangController.clear();
      _lebarController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Tugas 1'),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Ke Tugas 2'),
              onPressed: () => Navigator.pushNamed(context, '/tugas_2'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
              ),
            ),
            const Text(
              'Menghitung persegi panjang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller: _panjangController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'Masukkan panjang persegi panjang',
                  label: Text('Panjang')),
            ),
            // * Untuk margin
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller: _lebarController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'Masukkan lebar persegi panjang',
                  label: Text('Lebar')),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              width:
                  double.infinity, // Mengatur lebar button agar memenuhi layar
              child: ElevatedButton(
                onPressed: handleHitung,
                child: const Text('Hitung'),
              ),
            ),

            if (_hasil != '')
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(6)),
                padding: const EdgeInsets.all(16),
                child: Text(
                  _hasil!,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              )
          ],
        ),
      ),
    );
  }
}
