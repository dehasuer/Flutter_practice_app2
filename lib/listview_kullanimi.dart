import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
        index + 1, "Ogrenci ${index + 1}", "Ogrenci Soyadı ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Kullanımı"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          var secilenOgrenci = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0
                ? Colors.orange.shade100
                : Colors.orange.shade300,
            child: ListTile(
              onTap: () {
                if (index % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red;
                } else {
                  EasyLoading.instance.backgroundColor = Colors.blue;
                }
                print("Eleman indexi ; $index");
                EasyLoading.showToast(
                  "Eleman Tıklandı",
                  duration: Duration(
                    seconds: 3,
                  ),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.bottom,
                );
              },
              title: Text(secilenOgrenci.isim),
              subtitle: Text(secilenOgrenci.soyisim),
              leading: CircleAvatar(
                child: Text(
                  secilenOgrenci.id.toString(),
                ),
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
      ),
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.isim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(
                child: Text(
                  ogr.id.toString(),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
