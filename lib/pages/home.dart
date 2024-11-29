import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _searchField(),
            // _layout(),
            //_uiPractice(context),
            _pills(),
            _image(),
            _blueTower(),
            _listenActivityHeading(),
            _listenActivityContent()
          ],
        ),
      ),
    );
  }

  Container _listenActivityContent() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 247, 235, 234)),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Private rooms rent",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Feb 15,2023",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            "130",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Container _listenActivityHeading() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Listen activity",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "See all",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Container _blueTower() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blue Tower Coworking",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "123 main street, San Francisco",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text('150'),
                Text(
                  '/month',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _image() {
    return Container(
      child: Image.asset(
        "assets/images/6368627.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  Container _pills() {
    return Container(
      height: 40.0,
      margin: EdgeInsets.all(20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.only(left: 0, right: 10),
            // height: 50,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.purple.shade50,
                borderRadius: BorderRadius.circular(5)),
            child: Center(child: Text("One")),
          ),
          Container(
            margin: EdgeInsets.only(left: 0, right: 10),
            // height: 50,
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(width: 0.2),
                borderRadius: BorderRadius.circular(5)),
            child: Center(child: Text("Two")),
          ),
          Container(
            margin: EdgeInsets.only(left: 0, right: 10),
            // height: 50,
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(width: 0.2),
                borderRadius: BorderRadius.circular(5)),
            child: Center(child: Text("Three")),
          ),
          Container(
            margin: EdgeInsets.only(left: 0, right: 10),
            // height: 50,
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(width: 0.2),
                borderRadius: BorderRadius.circular(5)),
            child: Center(child: Text("Four")),
          )
        ],
      ),
    );
  }

  // SizedBox _uiPractice(BuildContext context) {
  //   return SizedBox(
  //     height: MediaQuery.of(context).size.height,
  //     width: MediaQuery.of(context).size.width,
  //     child: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           const Row(
  //             textDirection: TextDirection.rtl,
  //             children: [
  //               FlutterLogo(),
  //               Expanded(
  //                   child: Text(
  //                       "Flutter's hot reload helps you quickly and easily experiment,build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators")),
  //               Icon(Icons.sentiment_very_satisfied)
  //             ],
  //           ),
  //           // Column()
  //           Container(
  //             height: 100,
  //             width: 1000,
  //             margin: EdgeInsets.all(20),
  //             decoration: BoxDecoration(
  //                 border: Border.all(),
  //                 borderRadius: BorderRadius.circular(10),
  //                 color: Colors.amber),
  //             child: Text(
  //                 overflow: TextOverflow.ellipsis,
  //                 'asd sdsdsd s d sd s d sd s d s d s ds d s d s d '),
  //           ),
  //           Container(
  //             width: 100,
  //             height: 100,
  //             child: Image.asset(
  //               'assets/images/google.png',
  //               height: 100,
  //               width: 100,
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //           ListView(
  //             shrinkWrap: true,
  //             children: [
  //               ListTile(
  //                 leading: Icon(Icons.map),
  //                 title: Text("Map"),
  //               ),
  //               ListTile(
  //                 leading: Icon(Icons.photo_album),
  //                 title: Text('Album'),
  //               ),
  //               ListTile(
  //                 leading: Icon(Icons.phone),
  //                 title: Text('Phone'),
  //               ),
  //             ],
  //           ),
  //           ListView(
  //             shrinkWrap: true,
  //             // This next line does the trick.
  //             // scrollDirection: Axis.horizontal,
  //             children: [
  //               Container(
  //                 width: 160,
  //                 color: Colors.red,
  //               ),
  //               Container(
  //                 width: 160,
  //                 color: Colors.blue,
  //               ),
  //               Container(
  //                 width: 160,
  //                 color: Colors.green,
  //               ),
  //               Container(
  //                 width: 160,
  //                 color: Colors.yellow,
  //               ),
  //               Container(
  //                 width: 160,
  //                 color: Colors.orange,
  //               ),
  //             ],
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Row _layout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 50,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 30,
                color: Colors.orange,
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, top: 2),
                width: 100,
                height: 30,
                color: const Color.fromARGB(255, 201, 153, 209),
              )
            ],
          ),
        ),

        // Container(width: 50, height: 50, color: Colors.orange),
        // Container(width: 50, height: 50, color: Colors.red),
        // Container(width: 50, height: 50, color: Colors.purple),
      ],
    );
  }

  Container _searchField() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Search Pancake',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
          prefixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/Search.svg')),
          suffixIcon: Container(
            width: 60,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Colors.black,
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.1,
                  ),
                  Padding(
                      padding: EdgeInsets.all(12),
                      child: SvgPicture.asset('assets/icons/Filter.svg')),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "Breakfast",
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      leading: GestureDetector(
          onTap: () => print("leading"),
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/Arrow - Left 2.svg',
              height: 20,
              width: 20,
            ),
            decoration: BoxDecoration(
                color: Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
          )),
      actions: [
        GestureDetector(
          onTap: () => print('action'),
          child: Container(
            width: 35,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
            ),
            decoration: BoxDecoration(
                color: Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    );
  }
}
