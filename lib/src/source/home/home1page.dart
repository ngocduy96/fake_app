import 'package:flutter/material.dart';

class Home1Page extends StatefulWidget {
  @override
  _Home1PageState createState() => _Home1PageState();
}

class _Home1PageState extends State<Home1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120.0,
              padding:
                  EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'assets/image01.png',
                    ),
                  ),
                  Row(children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.orange,
                        size: 30,
                      ),
                    ),
                    // SizedBox(width: 5),
                    Container(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.orange,
                        size: 30.0,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 22.0,
                child: Image.asset(
                  'assets/duynguyen.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Bạn đang nghĩ gì?',
                style: TextStyle(color: Colors.orange, fontSize: 20.0),
              ),
              onTap: () => {print('Status clicked')},
            ),
            Container(
              height: 40.0,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.control_point_duplicate,
                          size: 20.0,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Thêm tin',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.photo_size_select_actual,
                          size: 20.0,
                          color: Colors.green,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Ảnh',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          size: 20.0,
                          color: Colors.red,
                        ),
                        SizedBox(width: 3),
                        Text(
                          'Check in',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Stories',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                            letterSpacing: 1.3),
                      ),
                      Text('Xem thêm',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 180.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        StoriesWidget(
                          storyImage: "assets/image1.jpg",
                          userImage: "assets/image2.jpg",
                          userName: "Mỹ Linh",
                        ),
                        StoriesWidget(
                          storyImage: "assets/image2.jpg",
                          userImage: "assets/image7.jpg",
                          userName: "Duy Nguyễn",
                        ),
                        StoriesWidget(
                          storyImage: "assets/image3.jpg",
                          userImage: "assets/image8.jpg",
                          userName: "Lina lly",
                        ),
                        StoriesWidget(
                          storyImage: "assets/image4.jpg",
                          userImage: "assets/image9.jpg",
                          userName: "Mỹ Linh",
                        ),
                        StoriesWidget(
                          storyImage: "assets/image5.jpg",
                          userImage: "assets/image10.jpg",
                          userName: "Mỹ Linh",
                        ),
                        StoriesWidget(
                          storyImage: "assets/image6.jpg",
                          userImage: "assets/image11.jpg",
                          userName: "Mỹ Linh",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FeedWidget(
                    userName: "Mỹ Linh",
                    userImage: "assets/image11.jpg",
                    imageFeed: "assets/image6.jpg",
                    textFeed: "Một con vịt xòe ra hai cái cánh,Nó kêu rằng cáp cáp cáp cạp cạp cạp.Gặp hồ nước nó bì bà bì bõm.Lúc lên bờ vẫy cái cánh cho khô",
                    timeFeed: "1 hr",
                  ),
                  FeedWidget(
                    userName: "Duy Nguyễn",
                    userImage: "assets/duynguyen.png",
                    imageFeed: "assets/image7.jpg",
                    textFeed: "Một con vịt xòe ra hai cái cánh,Nó kêu rằng cáp cáp cáp cạp cạp cạp.Gặp hồ nước nó bì bà bì bõm.Lúc lên bờ vẫy cái cánh cho khô",
                    timeFeed: "1 hr",
                  ),
                  FeedWidget(
                    userName: "Lina Lyy",
                    userImage: "assets/image13.jpg",
                    imageFeed: "assets/image5.jpg",
                    textFeed: "Một con vịt xòe ra hai cái cánh,Nó kêu rằng cáp cáp cáp cạp cạp cạp.Gặp hồ nước nó bì bà bì bõm.Lúc lên bờ vẫy cái cánh cho khô",
                    timeFeed: "1 hr",
                  ),
                ],
              ),
            )),
          ]),
    );
  }
}

class StoriesWidget extends StatelessWidget {
  final String storyImage;
  final String userImage;
  final String userName;

  const StoriesWidget({Key key, this.storyImage, this.userImage, this.userName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        margin: EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
              Color(0xFFF101113).withOpacity(0.8),
              Color(0xFFF101113).withOpacity(0.1),
            ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 3),
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover)),
              ),
              Text(userName,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}

class FeedWidget extends StatelessWidget {
  final String userImage;
  final String userName;
  final String textFeed;
  final String timeFeed;
  final String imageFeed;

  const FeedWidget(
      {Key key,
      this.userImage,
      this.userName,
      this.textFeed,
      this.timeFeed,
      this.imageFeed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        ))),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(userName, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    Text(timeFeed,style: TextStyle(color: Colors.grey,fontSize:13),),
                  ],
                )
              ]),
              IconButton(icon: Icon(Icons.more_horiz, color: Colors.grey,), onPressed: null)
            ],
          ),
          SizedBox(height: 20,),
          Text(textFeed,style: TextStyle(color: Colors.white,fontSize: 15, height: 1.5,letterSpacing: .7),),
          SizedBox(height: 20,),
          imageFeed != '' ?
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imageFeed),
                fit: BoxFit.cover,
              )
            ),
          ): Container(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Row(children:<Widget>[
              makeLike(),
              Transform.translate(
                offset: Offset(-6, 0  ),
                child: makeLove(),
              ),
              Text('10K', style: TextStyle(color: Colors.white, fontSize: 15),)
            ]),
            Text('2.5K comment', style: TextStyle(color: Colors.white, fontSize: 15),)
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }
}
Widget makeLike(){
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Colors.orange,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: Center(
      child: Icon(Icons.thumb_up, size: 12, color: Colors.white)
    ),
  );
}
Widget makeLove(){
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Colors.red,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: Center(
      child: Icon(Icons.favorite, size: 12, color: Colors.white)
    ),
  );
}
Widget makeLikeButton({isActive}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Icon(Icons.thumb_up, color:isActive ? Colors.orange : Colors.grey,size: 18.0,),
          SizedBox(width: 5,),
          Text('Like', style: TextStyle(color:isActive ? Colors.orange : Colors.grey,),)
        ]
      ),
    ),
  );
}
Widget makeCommentButton(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Icon(Icons.chat_bubble, color:Colors.grey,size: 18.0,),
          SizedBox(width: 5,),
          Text('Comment', style: TextStyle(color: Colors.grey),)
        ]
      ),
    ),
  );
}
Widget makeShareButton(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Icon(Icons.share, color:Colors.grey,size: 18.0,),
          SizedBox(width: 5,),
          Text('Share', style: TextStyle(color: Colors.grey),)
        ]
      ),
    ),
  );
}
