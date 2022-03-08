import 'package:flutter/material.dart';

class ContainerSamples extends StatelessWidget {
  const ContainerSamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          _buildRow(1),
          Container(
            padding: EdgeInsets.all(5),
            margin: const EdgeInsets.all(20),
            height: 100,
            width: double.infinity,
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(color: Colors.greenAccent, width: 4)),
            child: Image.network(
                "https://res.cloudinary.com/dtyij2uf1/image/upload/v1642005113/sample.jpg"),
          ),
        ],
      )),
    );
  }
}

Widget _buildContainer({int? imageIndex}) => Expanded(
      child: Container(
        child: Image.asset("images/pic$imageIndex.jpg"),
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );

Widget _buildRow(int imageNumber) {
  return Row(
    children: [
      _buildContainer(imageIndex: imageNumber),
      _buildContainer(imageIndex: imageNumber++),
    ],
  );
}
