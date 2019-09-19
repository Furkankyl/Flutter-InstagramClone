
import 'package:flutter/material.dart';
String image =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Expanded(
          child: Stories(),
          flex: 1,
        ),
        new Expanded(
          child: Posts(),
          flex: 7,
        ),
      ],
    );
  }
}

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyList.length,
        itemBuilder: (context, index) {
          return ListItem(index);
        },
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final index;

  ListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(255),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage: storyList[index].image.isEmpty?  NetworkImage(image) : NetworkImage(storyList[index].image),
              ),
            ),
          ),
          Text(
            storyList[index].name,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: ListView.builder(
          itemCount: postList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return PostItem(index);
          }),
    );
  }
}

class PostItem extends StatelessWidget {
  int index;

  PostItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage: postList[index].userImage.isEmpty?  NetworkImage(image) : NetworkImage(postList[index].userImage),
                  ),
                ),
                flex: 1,
              ),
              new Expanded(
                child: Text(
                  postList[index].userName,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                flex: 4,
              ),
              new Expanded(
                child: Icon(Icons.more_vert),
                flex: 1,
              ),
            ],
          ),
          Container(
            height: 1,
            decoration: BoxDecoration(color: Colors.black26),
          ),
          Image.network(postList[index].image),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(postList[index].isLiked?Icons.favorite:Icons.favorite_border,color: postList[index].isLiked ? Colors.red:Colors.black,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.comment),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.save),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0,left: 16),
            child: Row(

              children: <Widget>[
                Container(
                  width: 25,
                  height: 25,
                  margin: EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage: postList[index].userImage.isEmpty?  NetworkImage(image) : NetworkImage(postList[index].userImage),
                  ),
                ),
                new Text(
                  postList[index].comment,
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left,
                )
              ],

            ),
          )
        ],
      ),
    );
  }
}


class Story{
  String image;
  String name;

  Story(this.image, this.name);

}

List<Story> storyList = [
  new Story("https://d.newsweek.com/en/full/640286/mark-zuckerberg.jpg","Mark"),
  new Story("https://cdn-photo.pivol.com/15648/imgs/290620180639213479911.jpg","Bill"),
  new Story("https://static.businessinsider.com/image/54ac1929eab8ea004bcf6c1a-/image.jpg","Elon"),
  new Story("","Furkan Kayalı"),
  new Story("https://gatewaytovictory.files.wordpress.com/2016/07/portrait-nikola-tesla.jpg?w=960","Tesla"),
  new Story("","Merve Kayalı"),
  new Story("","Furkan Kayalı"),
  new Story("","Furkan Kayalı"),
  new Story("","Furkan Kayalı"),
  new Story("","Furkan Kayalı"),
  new Story("","Furkan Kayalı"),
  new Story("","Furkan Kayalı"),
  new Story("","Furkan Kayalı"),
  new Story("","Furkan Kayalı"),
];

class Post{
  String userImage;
  String image;
  bool isLiked;
  String userName;
  String comment;

  Post(this.userImage, this.image, this.isLiked, this.userName, this.comment);


}

List<Post> postList = [
new Post("https://gatewaytovictory.files.wordpress.com/2016/07/portrait-nikola-tesla.jpg?w=960","https://im0-tub-tr.yandex.net/i?id=214a4b129084299b8f1571c257286eba&n=13&exp=1",true,"Tesla","Elektrik keyfisi"),
new Post("https://gatewaytovictory.files.wordpress.com/2016/07/portrait-nikola-tesla.jpg?w=960","https://urfanews.com/uploads/images/image_380x226_5d50621d7f291.jpg",false,"Tesla","Arkadaşlar Edisonla olan filmimiz yayınladı bana destek vermek için\n hemen bilet alın"),
];
