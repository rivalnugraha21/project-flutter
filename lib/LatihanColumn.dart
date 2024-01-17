import 'package:flutter/material.dart';

class LatihanColumn extends StatelessWidget {
  const LatihanColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
               child: Container(
                width: 400,
                height: 80,
                color: Colors.grey,
                alignment: Alignment.center,
                child: Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 160,
                    height: 130,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      color: Colors.brown,
                      child: Image.network('https://tse3.mm.bing.net/th?id=OIP.n5EMmc7bx5GXsMgyjQOfxAHaGI&pid=Api&P=0&h=220'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 160, // Sesuaikan dengan lebar yang diinginkan
                    height: 130, // Sesuaikan dengan tinggi yang diinginkan
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      width: double
                          .infinity, // Sesuaikan dengan lebar yang diinginkan
                      height: double
                          .infinity, // Sesuaikan dengan tinggi yang diinginkan
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      color: Colors.brown,
                      child: Image.network('https://tse4.mm.bing.net/th?id=OIP._HpKPqZKryZW8lwZtgp0IwHaEK&pid=Api&P=0&h=220'),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 100,
                width: 380,
                color: Colors.grey,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          padding: EdgeInsets.all(5),
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 100,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/img/smkass.png"),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'tes tes',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 100,
                width: 380,
                color: Colors.grey,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          padding: EdgeInsets.all(5),
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 100,
                            width: 60,
                            padding: EdgeInsets.all(10),
                           
                            child: Image.network('https://tse1.mm.bing.net/th?id=OIP.TODkLWsNF-ZbiQ0eoaLCtgHaEv&pid=Api&P=0&h=220'),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'tes tes',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),

            
          ],
        )
      ],
    );
  }
}
