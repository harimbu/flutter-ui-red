import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.grey[900]),
        elevation: 0,
        actions: [IconButton(icon: Icon(Icons.volume_up, color: Colors.grey), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('빨강', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.grey[50])),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  itemCategory(isActive: true, title: '새벽'),
                  itemCategory(isActive: false, title: '밤'),
                  itemCategory(isActive: false, title: '아침'),
                  itemCategory(isActive: false, title: '저녁'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text('빨강색 사진', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[200])),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  itemPhoto(image: 'assets/img1.jpg', avatar: 'assets/face-1.jpg', name: '임꺽정', id: '@blue__mountain'),
                  itemPhoto(image: 'assets/img2.jpg', avatar: 'assets/face-2.jpg', name: '장길산', id: '@logn-timer'),
                  itemPhoto(image: 'assets/img3.jpg', avatar: 'assets/face-3.jpg', name: '홍길동', id: '@nothing__family'),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget itemCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: 3,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.red[800] : Colors.grey[50],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[900],
              fontWeight: isActive ? FontWeight.bold : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget itemPhoto({image, avatar, name, id}) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(avatar),
                    ),
                    title: Text(name, style: TextStyle(color: Colors.white)),
                    subtitle: Text(id, style: TextStyle(color: Colors.white70)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
