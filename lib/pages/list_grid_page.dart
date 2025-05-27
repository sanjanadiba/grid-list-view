import 'package:flutter/material.dart';

class ListGridPage extends StatelessWidget {
  const ListGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // so everything can scroll together
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🖼️ Image at top
          Center(
            child: Image.asset(
              'assets/welcome.jpg', // replace with your image
              height: 180,
            ),
          ),
          const SizedBox(height: 20),

          // 📋 ListView section (inside Column)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "List Items",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              ListTile(leading: Icon(Icons.star), title: Text('List Item 1')),
              ListTile(leading: Icon(Icons.star), title: Text('List Item 2')),
              ListTile(leading: Icon(Icons.star), title: Text('List Item 3')),
            ],
          ),

          const SizedBox(height: 20),

          // 🧱 GridView section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Grid Items",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.all(10),
            children: List.generate(
              4,
              (index) => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 105, 82, 91),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("Grid ${index + 1}"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
