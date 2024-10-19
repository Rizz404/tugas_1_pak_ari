import 'package:flutter/material.dart';
import 'package:tugas_1/components/ui/custom_app_bar.dart';
import 'package:tugas_1/config/app_colors.dart';

class Tugas2 extends StatefulWidget {
  const Tugas2({super.key});

  @override
  State<Tugas2> createState() => _Tugas2State();
}

class _Tugas2State extends State<Tugas2> {
  final _panjangController = TextEditingController();
  final _lebarController = TextEditingController();
  final _panjangFocusNode = FocusNode();
  String _hasil = '';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_panjangFocusNode);
    });
  }

  @override
  void dispose() {
    _panjangController.dispose();
    _lebarController.dispose();
    _panjangFocusNode.dispose();
    super.dispose();
  }

  void hitung() {
    if (_panjangController.text.isEmpty || _lebarController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Isi semua field')));
      return; // * Biar kaga lanjut
    }

    int panjangInt = int.parse(_panjangController.text);
    int lebarInt = int.parse(_lebarController.text);
    int rumus = panjangInt * lebarInt;

    setState(() {
      _hasil = 'Luas: $rumus';
      // * Menghapus isi TextField setelah menghitung
      _panjangController.clear();
      _lebarController.clear();
      // * Memberikan fokus kembali ke TextField panjang
      FocusScope.of(context).requestFocus(_panjangFocusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Tugas 2'),
      body: SingleChildScrollView(
        // * Biar kaga keder masalah overflow app
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.arrow_back),
                label: const Text('Ke Tugas 1'),
                onPressed: () => Navigator.pushNamed(context, '/'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Menghitung Persegi Panjang',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _panjangController,
                keyboardType: TextInputType.number,
                focusNode: _panjangFocusNode,
                decoration: const InputDecoration(
                  label: Text('Panjang'),
                  hintText: 'Masukkan panjang',
                  prefixIcon: Icon(Icons.straighten),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _lebarController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.straighten),
                  border: OutlineInputBorder(),
                  label: Text('Lebar'),
                  hintText: 'Masukkan lebar',
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => hitung(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    'Hitung Luas',
                    style: TextStyle(color: AppColors.surface, fontSize: 16),
                  ),
                ),
              ),
              if (_hasil.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        _hasil,
                        style: Theme.of(context).textTheme.headlineLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
