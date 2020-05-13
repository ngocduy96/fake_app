import 'package:fake_app/src/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class MatchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Match',
          style: TextStyle(
              color: Colors.orange,
              fontSize: 37.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.orange,
                size: 30.0,
              ),
              onPressed: () {
                print('search');
              })
        ],
      ),
      body: Stack(
        children: <Widget>[
          CustomScrollView(slivers: <Widget>[
            SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/image1.jpg',
                            ),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black,
                              Colors.black.withOpacity(.3)
                            ]),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                                1,
                                Text(
                                  "Đinh Thị Mỹ Linh",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "60 videos",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16.0),
                                    )),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(
                                    1.3,
                                    Text(
                                      "100k lượt theo dõi",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16.0),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1.6,
                            Text(
                              "Một con vịt xòe ra hai cái cánh,Nó kêu rằng cáp cáp cáp cạp cạp cạp.Gặp hồ nước nó bì bà bì bõm.Lúc lên bờ vẫy cái cánh cho khô",
                              style: TextStyle(color: Colors.grey, height: 1.4),
                            )),
                        SizedBox(
                          height: 40,
                        ),
                        FadeAnimation(
                            1.6,
                            Text(
                              "Ngày Sinh",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.6,
                            Text(
                              "04/10/1997, Đức Trọng, Việt Nam",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.0,
                              ),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        FadeAnimation(
                            1.6,
                            Text(
                              "Quốc tịch",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.6,
                            Text(
                              "Việt Nam",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.0,
                              ),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        FadeAnimation(
                            1.6,
                            Text("Videos",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(
                          height: 20.0,
                        ),
                        FadeAnimation(
                            1.8,
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  makeVideo(image: 'assets/image7.jpg'),
                                  makeVideo(image: 'assets/image9.jpg'),
                                  makeVideo(image: 'assets/image5.jpg'),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 120,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(
                  2,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange,
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: RaisedButton(
                            color: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            onPressed: () {
                              print("Theo dõi");
                            },
                            child: Text(
                              "Theo dõi",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget makeVideo({image}) {
  return AspectRatio(
    aspectRatio: 1.5 / 1,
    child: Container(
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.3),
          ]),
        ),
        child:
            Align(child: Icon(Icons.play_arrow, color: Colors.white, size: 50)),
      ),
    ),
  );
}
