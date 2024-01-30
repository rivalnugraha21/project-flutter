import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:latihan_flutter/helpers/size_helper.dart';
import 'package:latihan_flutter/output_booking.dart';
import 'package:latihan_flutter/output_screen.dart';

class booking extends StatefulWidget {
  const booking({Key? key}) : super(key: key);

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  String _pilihTaman = " ";
  final List<String> taman = [
    "Taman Papua",
    "Taman Kenangan",
    "Taman Nil",
    "Taman Maldivase",
    "Taman Magrove"
  ];

  final Map<String, double> tamanPrices = {
    "Taman Papua": 100000.0,
    "Taman Kenangan": 50000.0,
    "Taman Nil": 100000.0,
    "Taman Maldivase": 70000.0,
    "Taman Magrove": 30000.0,
  };

  final Map<String, String> tamanImages = {
    "Taman Papua":
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/08/30/1890953656.jpg",
    "Taman Kenangan":
        "https://o-cdn-cas.sirclocdn.com/parenting/images/Taman_Bunga_Nusantara.width-800.format-webp.webp",
    "Taman Nil":
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/08/30/1890953656.jpg",
    "Taman Maldivase":
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/08/30/1890953656.jpg",
    "Taman Magrove":
        "https://ik.imagekit.io/tvlk/blog/2020/03/Taman-Nasional-Bali-Barat-NativeIndonesia.jpg?tr=dpr-2,w-675",
  };

  double selectedTamanPrice = 10000.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Booking"),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Nama Lengkap",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                              hintText: "Tiket",
                              labelText: "Pilih Tiket",
                              border: OutlineInputBorder()),
                          items: taman.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _pilihTaman = newValue!;
                              selectedTamanPrice =
                                  tamanPrices[_pilihTaman] ?? 10000.0;
                            });
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: jumlahController,
                          decoration: InputDecoration(
                            hintText: "Jumlah Tiket",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: tglController,
                          decoration: InputDecoration(
                            hintText: "Tanggal",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
                            }
                            return null;
                          },
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              String tgl =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              setState(() {
                                tglController.text = tgl;
                              });
                            } else {
                              print("Tanggal Tidak Dipilih");
                            }
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: displayHeight(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Colors.white60)),
                              ),
                            ),
                            child: Text("Simpan"),
                            onPressed: () {
                              _submit();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      String jumlah = jumlahController.text;
      String tgl = tglController.text;

      double totalHarga = double.parse(jumlah) * selectedTamanPrice;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputBookingScreen(
            nama: nama,
            jumlah: jumlah,
            tgl: tgl,
            taman: _pilihTaman,
            selectedTamanPrice: selectedTamanPrice,
            totalHarga: totalHarga,
            tamanImage: tamanImages[_pilihTaman] ?? "",
          ),
        ),
      );
    }
  }
}
