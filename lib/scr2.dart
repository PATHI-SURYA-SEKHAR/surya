import 'package:flutter/material.dart';
class secondscreen extends StatefulWidget {
  const secondscreen({super.key});
  @override

  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  var color=<Color>[Colors.black,Colors.white,Colors.black,Colors.white,Colors.white,Colors.white,Colors.white];
  var img=["https://cdn.pixabay.com/photo/2022/04/18/13/56/flower-7140631_640.jpg"];

  get data => [
    Data(imgPath: ("https://cdn.pixabay.com/photo/2023/08/26/09/04/strawberry-8214486_1280.jpg"), name: ("SURYA"),color:Colors.grey )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          padding: EdgeInsets.all(15),
          itemCount: color.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15),
          itemBuilder:(context,i){
        return Container(
          color: color[i],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(img[0]),fit: BoxFit.fitHeight,
              ),
            ],
          ),
        );
      }),
    );
  }
}

class Data{
  final String imgPath;
  final String name;
  final Color color;
  Data({
    required this.imgPath,
    required this.name,
    required this.color
});
}