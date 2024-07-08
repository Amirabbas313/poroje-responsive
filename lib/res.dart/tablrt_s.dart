import 'package:flutter/material.dart';
import 'package:responsive/conts.dart';

class TabletScafold extends StatefulWidget {
  const TabletScafold({super.key});

  @override
  State<TabletScafold> createState() => _TabletScafoldState();
}

class _TabletScafoldState extends State<TabletScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackground,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Tablet'),
        centerTitle: true,
      ),
      drawer: mydraawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                      ),
                    );
                  }),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index){
                return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                      ),
                    );
              }
            ),
          )
        ],
      ),
    );
  }
}