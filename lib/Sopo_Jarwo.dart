import 'package:flutter/material.dart';
import 'package:latihan_flutter/container2.dart';

class SopoJarwo extends StatelessWidget {
  SopoJarwo({super.key});
  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  final List<String> image1 = <String>[
    "https://1.bp.blogspot.com/-iIg07QfXtlQ/VrTCXJMygwI/AAAAAAAANrY/qLDSOgKBc6w/s1600/Gambar%2BAnimasi%2BSopo%2BJarwo%2B%252814%2529.jpg"
  ];

  final List<String> nama1 = <String>[
    "tampilan film dari Adit Sopo Dan Jarwo, dan para pemeran film adit sopo dan jarwo"
  ];

  final List<String> image2 = <String>[
    "http://2.bp.blogspot.com/-rPZnnoJd1RA/VXQnT4H-ktI/AAAAAAAACWg/s2XiAvwitdg/s1600/adit1.png",
    "https://2.bp.blogspot.com/-yIGu87P15Qo/VXQnzkivAtI/AAAAAAAACXA/f3WFvSQ5T6I/s1600/adit3.png",
    "http://2.bp.blogspot.com/-0HbfbsQMR4A/VXQnYqbYjaI/AAAAAAAACWo/bCMbxw5adqo/s1600/adit5.png",
    "http://1.bp.blogspot.com/-2R2ayCeO9XY/VXQntfQdqUI/AAAAAAAACW4/2MUfMEUuQq8/s1600/adit2.jpg",
    "https://4.bp.blogspot.com/-bldT8eEcI00/VXQoLrS5flI/AAAAAAAACXQ/-qssJVXC180/s1600/adit8.png",
    "https://1.bp.blogspot.com/-C0bBTe21dqU/VXQoR_s98PI/AAAAAAAACXY/r0xkU2U7bDM/s1600/adit6.jpg",
    "http://1.bp.blogspot.com/-EMi5z1Tl-Gk/VXQoC61km-I/AAAAAAAACXI/iHloQz1OOdg/s640/adit7.jpg",
  ];
  final List<String> image3 = <String>[
    "https://tse2.mm.bing.net/th?id=OIP.IdSnt3vN2fIPI8V5O_X5SgAAAA&pid=Api&P=0&h=220",
    "http://2.bp.blogspot.com/-J3hTMwC0mAo/VKEdaVDAqiI/AAAAAAAAKXc/lAukE-hR3xw/s1600/10306316_599643453514285_5798041589688654940_n.jpg",
    "https://tse3.mm.bing.net/th?id=OIP.o3XMAmlNeqVw0tFTtte41QHaHT&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.yNT4QiU3_pfl3XcPRgcb8QHaHd&pid=Api&P=0&h=220",
    "https://akcdn.detik.net.id/visual/2021/04/30/adit-sopo-jarwo-the-movie-1.jpeg?w=650",
    "https://lh3.googleusercontent.com/proxy/I9RyS6XFhCzOOQZW3uPnse_rnla-ZQg1vh5YdU0pZ8JAy1-22h81z0d8SSE8WvL4v50TifD4uBByy4yQW-c6u6DKRlQR5g6r97mn2Yj-Rt8QwokJ25CIy1scfA=w1200-h630-p-k-no-nu",
    "https://pbs.twimg.com/media/Cw-sHM7VIAEBzQY.jpg",
  ];
  final List<String> nama2 = <String>[
    "Adit",
    "Denis",
    "Jarwo",
    "Sopo",
    "Adel",
    "Freya",
    "Nunung"
  ];

  @override
  var data = 1;
  var color = 0;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           Column(
            children: [
              Text(
                'Halaman Info',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: image1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    // color: Colors.white,
                    child: Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.network(
                          '${image1[index]}',
                          height: 150,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          
                        ),
                        //  Text(
                        //   '${nama1[index]}',
                        //   style: TextStyle(fontWeight: FontWeight.bold),
                        // ),
                      ),
                        
                     
                    ),
                  );
                }),
          ),
          Column(
             children: [
              Text(
                'Pemeran',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              )
             ],
          ),
          Container(
            // color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(3),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      // color: Colors.white,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailKar()
                                  ),
                              );
                            },
                            child: Image.network('${image2[index]}'),
                          ),
                          Text(
                            '${nama2[index]}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],

                      ),
                      // child: Center(child: Text('Entry ${entries[index]}')),
                    ),
                  );
                }),
          ),

           Column(
            children: [
              Text(
                'Galery',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            // color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: image3.length,
              itemBuilder: (context, index) {
                return Container( 
                  child: Card(

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        image3[index], width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class DetailKar extends StatelessWidget {
  const DetailKar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kembali'),
        // backgroundColor: Colors.amber,
      ),
      body: Container(
        
        color: Colors.amber,
        height: 100, 
        width: double.infinity,
      ),
    );
  }
}