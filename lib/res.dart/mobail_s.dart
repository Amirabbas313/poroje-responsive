import 'package:flutter/material.dart';
import 'package:responsive/conts.dart';

class MobaileScafold extends StatefulWidget {
  const MobaileScafold({super.key});

  @override
  State<MobaileScafold> createState() => _MobaileScafoldState();
}

class _MobaileScafoldState extends State<MobaileScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackground,
      appBar: myappbar,
      drawer: mydraawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
              itemCount: 5,
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
