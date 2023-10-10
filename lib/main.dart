import "package:flutter/material.dart";
import "package:surya/scr2.dart";


void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Container cont(double hi,Color clr){

    return Container(
      height: hi,
      color: clr,
    );
  }
  var l=["https://cdn.pixabay.com/photo/2023/05/30/05/50/yellow-headed-blackbird-8027623_640.jpg","https://cdn.pixabay.com/photo/2023/08/07/14/08/caterpillar-8175147_640.jpg","https://cdn.pixabay.com/photo/2023/09/04/18/08/sunflower-8233332_640.jpg",
    "https://cdn.pixabay.com/photo/2023/01/06/18/03/wreath-7701834_640.jpg","https://cdn.pixabay.com/photo/2023/07/20/06/53/falcon-8138544_640.jpg","https://cdn.pixabay.com/photo/2023/07/20/06/53/falcon-8138544_640.jpg","https://cdn.pixabay.com/photo/2023/06/22/17/05/flowers-8081925_640.jpg"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: l.length,
            itemBuilder: (context,i){
              return Container(
                  height: 320,
                  color: Colors.teal[700],
                  child: Center(child: SizedBox(child: Image(image: NetworkImage(l[i])),height: 300,)));
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>secondscreen()));
            setState(() {
              l;
            });
          },
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
    );
  }
}
