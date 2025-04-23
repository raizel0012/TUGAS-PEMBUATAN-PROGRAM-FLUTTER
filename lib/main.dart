import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Builder',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView.Builder')),
        body: ListViewScreen(),
      ),
    );
  }
}

class ListViewScreen extends StatelessWidget {
  final List<Map<String, String>> data = [
    {"name": "Ikhwan Koto", "prodi": "Sistem Informasi"},
    {"name": "Pake Arrayid", "prodi": "Fisika"},
    {"name": "Ryan Kimo", "prodi": "Olah Raga"},
    {"name": "Arif Mahran", "prodi": "Biologi"},
    {"name": "Nurrahman Hado", "prodi": "Sistem Komputer"},
    {"name": "Ade Nuri", "prodi": "Psikologi"},
    {"name": "Fitriani Chairi", "prodi": "Ilmu Komputer"},
    {"name": "Elsa Aprillio", "prodi": "Teknik Mesin"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        String initials = getInitials(data[index]['name']!);
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              initials,
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text(data[index]['name']!),
          subtitle: Text(data[index]['prodi']!),
        );
      },
    );
  }

  String getInitials(String name) {
    List<String> parts = name.split(' ');
    if (parts.length >= 2) {
      return parts[0][0] + parts[1][0];
    } else {
      return parts[0][0];
    }
  }
}
