import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
 ));
}

class NinjaCard extends StatefulWidget{
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar : AppBar(
        title:const Text("Developer ID Card"),
        centerTitle: true,
        backgroundColor: Colors.red[900],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level += 1;
          });
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
      body:Padding(
        padding:const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile.jfif"),
                radius: 40,
              ),
            ),
            const Divider(
              height: 90,
              color: Colors.red,
            ),
            const Text("Name",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
            ),
            ),
            const SizedBox(height: 10),
            const Text("Aries",
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text("Current Level",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            Text('$level',
              style: const TextStyle(
                color: Colors.redAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'htetaungshine.dev@protonmail.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

