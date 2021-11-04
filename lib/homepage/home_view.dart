import 'package:flutter/material.dart';
import 'package:wish_app/mainpage/main_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _header(),
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _people(),
                ),
                _items(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Stack(
      children: [
        Container(
            height: 400,
            margin: EdgeInsets.only(left: 250),
            child: Image.asset('assets/images/fly.png')),
        Container(
          margin: const EdgeInsets.only(top: 70, left: 25),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue.shade600,
                        size: 45,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('WISHLIST',
                          style: TextStyle(
                              color: Colors.blue.shade600,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Seham\'s \nWishlist',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mainpage()));
                    },
                    child: Text(
                      '5 Items',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _items() {
    return Stack(
      children: [
        Row(
          children: [
            //items widget
            Container(
              height: 170,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF3015CC).withOpacity(0.15),
                    offset: Offset(20, 20),
                    blurRadius: 30,
                    spreadRadius: 7,
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                left: 30,
              ),
              padding: EdgeInsets.only(
                left: 20,
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.list,
                    size: 30,
                    color: Color(0xFF3015CC).withOpacity(0.75),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Items',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '5',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),

            //Done widget
            Container(
              height: 170,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF3015CC).withOpacity(0.15),
                    offset: Offset(10, 20),
                    blurRadius: 30,
                    spreadRadius: 7,
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                right: 30,
              ),
              padding: EdgeInsets.only(
                right: 20,
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 30,
                    color: Color(0xFF5ECC15).withOpacity(0.75),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Done',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
          ],
        ),
        _addButton(),
      ],
    );
  }

  Widget _addButton() {
    return Positioned.fill(
      child: Center(
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0xFF3015CC).withOpacity(0.75),
                width: 6,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF3015CC).withOpacity(0.2),
                  offset: Offset(1, 10),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ]),
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
    );
  }

  Widget _people() {
    return Container(
      padding: EdgeInsets.all(30),
      margin: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 15,
      ),
      height: 180,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF3015CC).withOpacity(0.05),
            offset: Offset(4, 10),
            blurRadius: 20,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          '3 Pesons in this Wishlist',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _userList(),
      ]),
    );
  }

  Widget _userList() {
    return Row(
      children: [
        _user(
            imageUrl: "assets/images/profile1.jpg",
            username: 'Messi',
            isInvited: true),
        SizedBox(
          width: 35,
        ),
        _user(
            imageUrl: "assets/images/profile2.png",
            username: 'Iron Man',
            isInvited: true),
        SizedBox(
          width: 35,
        ),
        _user(
            imageUrl: "assets/images/profile3.png",
            username: 'Julius',
            isInvited: true),
        SizedBox(
          width: 35,
        ),
        _user(
            imageUrl: "assets/images/profile4.jpg",
            username: '4xmafole',
            isInvited: false),
      ],
    );
  }

  ColorFilter greyscale = ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);

  Widget _user(
      {required String imageUrl,
      required String username,
      required bool isInvited}) {
    return Column(
      children: [
        Transform.scale(
          scale: 1.4,
          child: isInvited
              ? CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                )
              : ColorFiltered(
                  colorFilter: greyscale,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                  ),
                ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          isInvited ? username : 'invite',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: isInvited ? null : Colors.black26,
          ),
        ),
      ],
    );
  }
}
