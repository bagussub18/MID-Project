import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //recent aplikasi
        title: 'MID Project',
        //menyediakan layout dasar untuk sebuah halaman
        home: Scaffold(
          //app bar dan text nya
          appBar: AppBar(
            title: Text('MyApplication'),
          ),

          //body singglexhildscrollview agar dapat di scroll terutama saat akan input text
          body: SingleChildScrollView(
              //column child agar menggunakan child
              child: Column(children: [
            const SizedBox(height: 30),
            Padding(
              //menggnakan padding untuk margin 50
              padding: const EdgeInsets.all(50),
              //menggunakan circleavatar dengan ada background, size gambar, dan directory gambar.
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 48.0,
                child: Image.asset('assets/images/gb1.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              //menggunakan text field untuk input text serta menggunakan decoration
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  //agar field berbentuk bulat dengan radius 25
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  //untuk menambahkan icon ke kanan input textfield
                  suffixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Color.fromARGB(255, 170, 229, 255),
                elevation: 5.0,
                //menggunakan material button untuk membuat tombol dengan tambahan height, minwidth, color, child
                child: MaterialButton(
                  height: 50.0,
                  minWidth: 200.0,
                  onPressed: () {},
                  color: Colors.lightBlueAccent,
                  child: const Text('Log In',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
            ),
            //textbutton untuk forgot password
            TextButton(
              child: const Text(
                'Forgot password?',
                style: TextStyle(
                    color: Color.fromARGB(136, 3, 3, 3), fontSize: 15),
              ),
              onPressed: () {},
            ),
          ])),
        ));
  }
}
