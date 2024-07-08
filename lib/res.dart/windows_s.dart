import 'package:flutter/material.dart';
import 'package:responsive/conts.dart';

class WindowsScafold extends StatefulWidget {
  const WindowsScafold({super.key});

  @override
  State<WindowsScafold> createState() => _WindowsScafoldState();
}

class _WindowsScafoldState extends State<WindowsScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackground,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Windows'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          mydraawer,
          Expanded(
            flex: 3,
            child: Column(
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
                      itemBuilder: (context, index) {
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
                      }),
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white, 
                  ),
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
}
