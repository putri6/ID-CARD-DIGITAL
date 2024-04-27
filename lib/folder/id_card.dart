import 'package:flutter/material.dart';

class idcard extends StatefulWidget {
  const idcard({Key? key}) : super(key: key);

  @override
  _idcardState createState() => _idcardState();
}
class _idcardState extends State<idcard> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              children: _generateConstraints(),
            );
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 1,
              children: _generateConstraints(),
            );
          } else {
            return GridView.count(
              crossAxisCount: 3,
              children: _generateConstraints(),
            );
          }
        },
      ),
    );
  }
  List<Widget> _generateConstraints() {
    // Generate some placeholder widgets
    return List.generate(6, (index) {
      return Container(
    height: 220, // Adjust the height according to your needs
    width: double.infinity,
    padding: const EdgeInsets.all(32),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF846AFF),
          Color(0xFF755EE8),
          Colors.purpleAccent,
          Colors.amber,
        ],
      ),
      borderRadius: BorderRadius.circular(16), // Modified radius here
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'ID CARD DIGITAL',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Colors.white,
              fontFamily: "monospace",
              fontSize: 50,
            ),
          ),
          SizedBox(height: 20), // Adjust the spacing between text and photo box
          Container(
            height: 150, // Adjust the height of the photo box
            width: 150, // Adjust the width of the photo box
            color: Colors.white, // You can change the color or use decoration for image
            child: Center(
              child: Image.asset(
                'assets/image.png', // Replace 'assets/images/photo.png' with your image path
                width: 150, // Adjust the width of the image
                height: 150, // Adjust the height of the image
                fit: BoxFit.cover, // Adjust how the image should be fitted within the box
              ),

            ),
          ),
          SizedBox(height: 20), // Adjust the spacing between photo box and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama : Putri Priyanti',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white,
                  fontFamily: "monospace",
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Jabatan : Mahasiswa',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white,
                  fontFamily: "monospace",
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'No Telp : 6287848793',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white,
                  fontFamily: "monospace",
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Email : Putripriyanti6@gmail.com',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white,
                  fontFamily: "monospace",
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
    });
  }
}