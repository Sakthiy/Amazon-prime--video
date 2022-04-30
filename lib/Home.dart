import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d1f36),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 200,
                    child: PageView.builder(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: listcards.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 2,
                          ),
                          color: Colors.white30,
                          child: Image.asset(
                            listcards[index].imageurl,
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: listcards.length,
                      effect: SwapEffect(
                        spacing: 10,
                        activeDotColor: Colors.white,
                        dotColor: Colors.white30,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Text(
                        'Top Movies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      label: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listcards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage(listcards[index].imageurl),
                          fit: BoxFit.fill,
                          ),
                        )
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Watch in Your Language',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listcards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(8),
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(listcards[index].imageurl),
                            fit: BoxFit.fill,
                          ),
                        )
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Text(
                        'Romantic movies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      label: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listcards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(8),
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(listcards[index].imageurl),
                            fit: BoxFit.fill,
                          ),
                        )
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Text(
                        'Drama movies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      label: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listcards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(8),
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(listcards[index].imageurl),
                            fit: BoxFit.fill,
                          ),
                        )
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "TV shows we think you'll like",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      // label: Icon(
                      //   Icons.arrow_forward_ios_outlined,
                      //   color: Colors.white70,
                      // ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listcards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(8),
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(listcards[index].imageurl),
                            fit: BoxFit.fill,
                          ),
                        )
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class pageCI {
  String imageurl;
  pageCI(this.imageurl);
}

List<pageCI> listcards = [
  pageCI("images/Movies Images/spiderman.jpg"),
  pageCI("images/Movies Images/715741.jpg"),
  pageCI("images/Movies Images/1512263.jpg"),
  pageCI("images/Movies Images/1512274.jpg"),
  pageCI("images/Movies Images/1512283.jpg"),
  pageCI("images/Movies Images/1512287.jpg"),
  pageCI("images/Movies Images/1512312.jpg"),
  pageCI("images/Movies Images/1512324.jpg"),
  pageCI("images/Movies Images/1512372.jpg"),
  pageCI("images/Movies Images/6032344.jpg"),
  pageCI("images/Movies Images/7931051.jpg"),
  pageCI(
      "images/Movies Images/Animated Movie Poster HD Wallpaper Search more high Definition 1080p.jpg"),
  pageCI("images/Movies Images/pushpa-movie.jpg"),
  pageCI("images/Movies Images/spiderman.jpg"),
];
