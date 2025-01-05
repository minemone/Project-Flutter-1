import 'package:flutter/material.dart';
 
void main() {
  var app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    title: "Portfolio",
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Portfolio",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,  // จัดเนื้อหาจากด้านบนสุด
        children: [
          // เพิ่มช่องว่างระหว่างด้านบนกับรูป
          SizedBox(height: 40),  // ระยะห่างจากด้านบนของหน้าจอจนถึงรูป
 
          // Section 1: Picture (updated to load from a URL)
          CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage('https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?t=st=1734945954~exp=1734949554~hmac=da805d49abd1999b94e713c6c872d09488d3d6acc13611c052fe670d1f6424e9&w=740'), // ใส่ URL ของรูปภาพที่คุณต้องการ
          ),
          SizedBox(height: 20),  // เพิ่มช่องว่างระหว่างส่วน
 
          // Section 2: Name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Chaiwat', style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold)), // สีฟ้า
                SizedBox(width: 10),
                Text('Saefung', style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold)), // สีเขียว
                SizedBox(width: 10),
                Text('Max', style: TextStyle(fontSize: 25, color: Colors.orange, fontWeight: FontWeight.bold)), // สีส้ม
              ],
            ),
          ),
          SizedBox(height: 20),  // เพิ่มช่องว่างระหว่างส่วน
 
          // Section 3: Hobby, Food, Birth
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Hobby: ', style: TextStyle(fontSize: 15)),
                    Text('Reading', style: TextStyle(fontSize: 15)),
                  ],
                ),
                Row(
                  children: [
                    Text('Food: ', style: TextStyle(fontSize: 15)),
                    Text('Pizza', style: TextStyle(fontSize: 15)),
                  ],
                ),
                Row(
                  children: [
                    Text('Birthplace: ', style: TextStyle(fontSize: 15)),
                    Text('Lampang', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),  // เพิ่มช่องว่างระหว่างส่วน
 
          // Section 4: Education
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Education', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: [
                    Text('Elementary: ', style: TextStyle(fontSize: 15)),
                    Text('Nakhonthaiwitthayakhom School', style: TextStyle(fontSize: 15)),
                    Text(' Year: ', style: TextStyle(fontSize: 15)),
                    Text('2009', style: TextStyle(fontSize: 15)),
                  ],
                ),
                Row(
                  children: [
                    Text('Primary: ', style: TextStyle(fontSize: 15)),
                    Text('Nakhonthaiwitthayakhom School', style: TextStyle(fontSize: 15)),
                    Text(' Year: ', style: TextStyle(fontSize: 15)),
                    Text('2013', style: TextStyle(fontSize: 15)),
                  ],
                ),
                Row(
                  children: [
                    Text('High School: ', style: TextStyle(fontSize: 15)),
                    Text('Nakhonthai School', style: TextStyle(fontSize: 15)),
                    Text(' Year: ', style: TextStyle(fontSize: 15)),
                    Text('2015', style: TextStyle(fontSize: 15)),
                  ],
                ),
                Row(
                  children: [
                    Text('Undergrad: ', style: TextStyle(fontSize: 15)),
                    Text('Naresuan University', style: TextStyle(fontSize: 15)),
                    Text(' Year: ', style: TextStyle(fontSize: 15)),
                    Text('2021', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  runApp(app);
}