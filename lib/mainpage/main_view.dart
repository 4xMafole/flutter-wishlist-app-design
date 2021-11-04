import 'package:flutter/material.dart';
import 'package:wish_app/custom/Color.dart' as color;
import 'package:wish_app/model/birthday.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final List<Birthday> _birthdayWork = [];

  void _initWork() {
    _birthdayWork.add(Birthday(
        title: "Corgi Puppy",
        subtitle: "Pass the Physics exams",
        imageUrl: 'assets/images/profile1.jpg',
        isDone: false));
    _birthdayWork.add(Birthday(
        title: "Beechcraft Flight",
        subtitle: "7 days volunteer's work",
        imageUrl: 'assets/images/profile2.png',
        isDone: false));
    _birthdayWork.add(Birthday(
        title: "Campfire",
        subtitle: "Not Assigned",
        imageUrl: 'assets/images/profile3.png',
        isDone: false));
    _birthdayWork.add(Birthday(
        title: "Sewing Class",
        subtitle: "Done by 4xmafole",
        imageUrl: 'assets/images/profile4.jpg',
        isDone: true));
  }

  @override
  void initState() {
    super.initState();
    _initWork();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 70,
          left: 30,
        ),
        child: Column(
          children: [
            _appBar(),
            SizedBox(
              height: 40,
            ),
            _header(),
            SizedBox(
              height: 10,
            ),
            _content(),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: color.AppColor.mainColor,
              size: 25,
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Seham\'s Birthday',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87.withOpacity(0.6),
                ),
              ),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: color.AppColor.mainColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.more_horiz,
              size: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _header() {
    return Stack(children: [
      Container(
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: 250,
        decoration: BoxDecoration(
          color: color.AppColor.mainColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'PINNED ITEM',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(child: Container()),
                Transform.rotate(
                  angle: 45,
                  child: Icon(
                    Icons.push_pin,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tongass National Trip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Clean the House Garden',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Assign',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 256,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'assets/images/tree.png',
            height: 180,
          ),
        ),
      ),
    ]);
  }

  Widget _content() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 30),
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: _birthdayWork.length,
            itemBuilder: (context, index) {
              return _birthdayItem(
                title: _birthdayWork[index].title,
                subtitle: _birthdayWork[index].subtitle,
                imageUrl: _birthdayWork[index].imageUrl,
                isDone: _birthdayWork[index].isDone,
              );
            }),
      ),
    );
  }

  Widget _birthdayItem({
    required String title,
    required String subtitle,
    required String imageUrl,
    required bool isDone,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: isDone ? null : Border.all(color: Colors.black26),
        color: isDone ? Color(0xFF62DF0F) : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              'assets/images/profile.jpg',
            ),
            backgroundColor: isDone
                ? Colors.white38
                : color.AppColor.mainColor.withOpacity(0.05),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: isDone ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w500,
                  decoration: isDone ? TextDecoration.lineThrough : null,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: isDone ? Colors.white60 : Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              imageUrl,
            ),
          ),
        ],
      ),
    );
  }
}
