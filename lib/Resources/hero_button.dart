import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/second': (context) => const SecondScreen(),
        SecondScreen.routeName: (context) => const SecondScreen(),
        // '/third': (context) => const ThirdScreen()
        ThirdScreen.routeName: ((context) => const ThirdScreen()),

      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);
  final n1 = Parameters("image1", "images/Pilsen.jpg", "images/Pilsen_art.jpg", "Pilsen", 
    "Rich in Latino culture, Pilsen is a neighborhood that overflows with music, art, culinary tradition, and nightlife.\n922 W. 16th St., Chicago IL 60608", 
    "There are many murals throughout 16th street. Many businesses are accompanied with varying art from all sorts of cultures.");
  final n2 = Parameters("image2","images/the_loop.jpg" , "images/bean.jpg", "The Loop", 
    "The Loop, along with the rest of downtown Chicago, is the second largest commercial business district in the United States after New York City's Midtown Manhattan.\n55 W. Monroe St., Suite 2660, Chicago, IL 60603", 
    "Cloud Gate, better known as The Bean, is inspired by liquid mercury. The sculpture was built to reflect both the sky and the Chicago skyline. It gets wiped down and power washed daily, and twice a year it gets a thorough cleaning with 40 gallons of liquid detergent.");
  final n3 = Parameters("image3","images/lincoln_park.jpg" , "images/zoo.jpg", "Lincoln Park", 
    "Lincoln Park is a designated community area on the North Side of Chicago, Illinois. Lying to the west of Lincoln Park, Chicago's largest park, it is one of the most affluent neighborhoods in Chicago.\n2001 N Clark St Chicago, IL 60614", 
    "The Lincoln Park Zoo was founded in 1868, which makes it one of the oldest zoos in all of North America. Originally constructed in 1879 and then rebuilt in 1969, the Kovler Seal Pool is one of the oldest and most popular of the Lincoln Park Zoo exhibits.");
  final e1 = Parameters("image4","images/green_river.jpg" , "images/powder.jpg", "Chicago St. Patrick's Day Parade", 
    "The Chicago riven is dyed green annually for this event. Saint Patrick's Day, or the Feast of Saint Patrick, is a cultural and religious celebration held on 17 March, the traditional death date of Saint Patrick, the foremost patron saint of Ireland.\n2 N La Salle St, Floor 2, Chicago, IL 60602,", 
    "Although it used to be a liquid, the dye they use to color the river is now a powder. It is also not green but orange. (It looks yellow to me.)");
  final e2 = Parameters("image5","images/CRW.jpg" , "images/food.jpg", "Restaurant Week", 
    "Chicago Restaurant Week, which changes every year, is the biggest culinary celebration of the year. This annual event showcases the very best of Chicago's acclaimed restaurant scene with two weeks of dining deals.\nChicago, IL", 
    "In 2022, more than 343 restaurants spanning 35 Chicago neighborhoods and including 33 suburban eateries, were serving up specially priced and curated menus for lunch and dinner.");
  final e3 = Parameters("image6","images/CMF.jpg" , "images/Rachel.jpg", "Grant Park Music Festival", 
    "The Grant Park Music Festival is a ten-week classical music concert series held annually in Chicago, Illinois, United States. It claims to be the only free outdoor classical-music concert series in the US. June-August\nJay Pritzker Pavilion, 201 E. Randolph Street, Millennium Park, Chicago, IL", 
    "Rachel Barton Pine went in search for composers not usually represented in classical works. From knocking on doors of Scottish fiddlers to black composers. This was not an agenda to have social justice but to expand the classical music world.");
  final s1 = Parameters("image7","images/bulls.jpg" , "images/bulls23.jpg", "Chicago Bulls", 
    "The Chicago Bulls are an American professional basketball team based in Chicago. The Bulls compete in the National Basketball Association as a member of the league's Eastern Conference Central Division.\n1901 W Madison St, Chicago, IL 60612-2459", 
    "Chicago Bulls is considered as the third NBA franchise in Chicago. It earned the name Bulls on 16 January 1966.");
  final s2 = Parameters("image8","images/CFire.png" , "images/CFire_old.png", "Chicago Fire FC", 
    "Chicago Fire Football Club is an American professional soccer franchise based in Chicago. The team competes in Major League Soccer as a member of the league's Eastern Conference, having moved to the conference in 2002.\nCIBC Fire Pitch, 3700 N Talman Ave, Chicago, IL 60618, United States", 
    "Chicago Fire FC was founded in 1997 at Navy Pier, on the anniversary of the Great Fire.");
  final s3 = Parameters("image9","images/Cubs.png" , "images/CWS.png", "Chicago Cubs", 
    "The Chicago Cubs are an American professional baseball team based in Chicago. The Cubs compete in Major League Baseball as part of the National League Central division.\n1060 W Addison Street, Chicago, Illinois 60613", 
    "The Cubs used to be called The Chicago White Stockings. This is the logo from back then.");

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 3, 
    child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 7, 54),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0), 
        child:AppBar(
        backgroundColor: background,
        title: myText('Welcome to Chicago', 24),
        // backgroundColor: Colors.amberAccent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image:  AssetImage('images/Chicago.jpg'),
              fit: BoxFit.cover)
          ),
        ),
        bottom: TabBar(
          labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          tabs: [
            Tab(child: myText("NEIGHBORHOODS")),
            Tab(child: myText("EVENTS")),
            Tab(child: myText("SPORTS")),
          ],
        ),
      ),),
      body: TabBarView(children: [
        Center(
          child: Column(children: <Widget>[
            buildRow(context, n1, 1),
            buildRow(context, n2, 2),
            buildRow(context, n3, 3),
          ],),
        ),
        Center(
          child: Column(children: <Widget>[
            buildRow(context, e1, 1),
            buildRow(context, e2, 2),
            buildRow(context, e3, 3),
          ],),
        ),
        Center(
          child: Column(children: <Widget>[
            buildRow(context, s1, 1),
            buildRow(context, s2, 2),
            buildRow(context, s3, 3),
          ],),
        ),
      ],)
    ),);
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  static const routeName = "/second";

  @override
  Widget build(BuildContext context) {
    final param = ModalRoute.of(context)!.settings.arguments as Parameters;

    return Scaffold(
      backgroundColor: background,
      appBar: myAppBar(context, param.name),
      body: Center(
        child: buildCol(context, param, 1)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          Navigator.pushNamed(context, "/third", arguments: param);
        },
        tooltip: 'Show additional info',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  static const routeName = "/third";

  @override
  Widget build(BuildContext context) {
    final param = ModalRoute.of(context)!.settings.arguments as Parameters;

    return Scaffold(
      backgroundColor: background,
      appBar: myAppBar(context, param.name),
      body: Center(
        child: buildCol(context, param, 2)
          // const Text("https://www.pexels.com/photo/be-brilliant-neon-light-2002719/"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          Navigator.pop(context);
        },
        tooltip: 'Go back to previous screen',
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

PreferredSizeWidget myAppBar(BuildContext context, String name){
  return PreferredSize(
    preferredSize: const Size.fromHeight(75.0), 
    child:AppBar(
    backgroundColor: background,
    automaticallyImplyLeading: false,
    // leading: const Text(""), // remove back arrow
    title: myText(name, 24),
    // backgroundColor: Colors.amberAccent,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image:  AssetImage('images/Chicago.jpg'),
          fit: BoxFit.cover)
      ),
    ),
  ),);
}

Widget buttonImage(BuildContext context, param, String nav, int whichScreen, [double size = 125.0]){
  final double radius = size/12.5;
  final String image;
  // set which image. If this is for screen two then show image2 else show image1
  if (whichScreen == 2){
    image = param.image2;
  }
  else{image = param.image1;}

  return Hero(
    tag: param.tag,
    child: ElevatedButton(
      // Within the `FirstScreen` widget
      onPressed: () {
        // Navigate to the second screen using a named route.
        // Navigator.pushNamed(context, '/');
        // Navigator.pop(context);
        if (nav == "/") {Navigator.popUntil(context, ModalRoute.withName("/"));}
        else {
          Navigator.pushNamed(
            context, 
            nav,
            arguments: param);}
      },
      style: buttonStyle(size),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: const Color.fromARGB(255, 83, 31, 226), width:5),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent,
              // offset: Offset(5.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: radius,
            )
          ]
        ),
      ),
    ),
  );
}

buttonStyle([double size = 125.0]){
  return ElevatedButton.styleFrom(
    fixedSize: Size(size, size),
    shape: const CircleBorder(),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
    // shape: const StadiumBorder(),
    // backgroundColor: Colors.orange,
  );
}

Widget myText(String text, [double size = 14.0]){
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color:const Color.fromARGB(248, 214, 236, 245),
    )
  );
}

buildRow (BuildContext context, param, [int color = 10]){
  Color area = Colors.red;
  if (color == 1){area =const Color.fromARGB(255, 138, 23, 184);}
  else if (color == 2){area =const Color.fromARGB(255, 81, 14, 107);}
  else {area =const Color.fromARGB(255, 41, 7, 54);}

  return Container (
    color: area,
    height: 195,
    child: Row(children: <Widget> [
      Expanded(child:
        buttonImage(context, param, "/second", 1)
      ),
      const Padding(padding: EdgeInsets.all(15.0)),
      Expanded(child: myText(param.name, 25.0)),
      // const Padding(padding: EdgeInsets.all(15.0)),
      // Expanded(child: myText(description),),
    ])
  );
}

buildCol (BuildContext context, param, int whichScreen){
  final String descr;
  if (whichScreen == 2){descr = param.description2;}
  else{descr = param.description1;}

  int color = int.parse(param.tag[5]);
  Color area = Colors.red;
  if (color%3 == 1){area =const Color.fromARGB(255, 138, 23, 184);}
  else if (color%3 == 2){area =const Color.fromARGB(255, 81, 14, 107);}
  else {area =const Color.fromARGB(255, 41, 7, 54);}

  return Container(
    color: area,
    child: Column(
      children: <Widget>[
      const Padding(padding: EdgeInsets.all(20.0)),
      buttonImage(context, param, "/", whichScreen, 350),
      const Padding(padding: EdgeInsets.all(20.0)),
      myText(param.name, 25),
      // const Padding(padding: EdgeInsets.all(15.0)),
      Container(
        margin: const EdgeInsets.all(15.0),
        child: myText(descr, 18),
      )
    ])
  );
}

class Parameters {
  final String tag;
  // final String nav;
  final String image1;
  final String image2;
  final String name;
  final String description1;
  final String description2;
  Parameters(this.tag, this.image1, this.image2, this.name, this.description1, this.description2);
}

Color background =const Color.fromARGB(255, 138, 23, 184);

/*
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(onPressed: (){Navigator.pushNamed(context, '/third');}, icon: const Icon(Icons.arrow_right)),
            IconButton(onPressed: (){Navigator.popUntil(context, ModalRoute.withName('/'));}, icon: const Icon(Icons.arrow_left)),

          ]
      ),
      body: Center(
        child: Column(children: <Widget>[
          const Padding(padding: EdgeInsets.all(70.0)),
          ElevatedButton(
            // Within the SecondScreen widget
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.
              Navigator.popUntil(context, ModalRoute.withName('/') );
            },
            child: const Text('Go to one!'),
          ),
          ElevatedButton(
            // Within the SecondScreen widget
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.
              Navigator.pushNamed(context,'/third');
            },
            child: const Text('Go to three!'),
          ),
          Hero(tag: "herobutton", child: ElevatedButton(
            // Within the SecondScreen widget
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.
              Navigator.pushNamed(context,'/third');
            },
            child: const Text('Hero button about to fly!'),
          ),)
        ],)
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
          backgroundColor: Colors.redAccent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:  AssetImage('images/Chicken-Little-CHIBI.jpg'),
                fit: BoxFit.fill)
            ),
          ),
          actions: <Widget>[
            IconButton(onPressed: (){Navigator.popUntil(context, ModalRoute.withName('/') );}, icon: const Icon(Icons.arrow_left_outlined)),
            IconButton(onPressed: (){Navigator.pushNamed(context, '/second');}, icon: const Icon(Icons.arrow_left_rounded)),

          ]
      ),
      body: Center(
        child: Column(children: <Widget>[
          const Padding(padding: EdgeInsets.all(78.0)),
          ElevatedButton(
            // Within the `FirstScreen` widget
            onPressed: () {
              // Navigate to the second screen using a named route.
              Navigator.pushNamed(context,'/second');
            },
            child: const Text('Go to two!'),
          ),
          Hero(tag: "herobutton", child: ElevatedButton(
            // Within the SecondScreen widget
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.

            },
            child: const Text('Hero Button Flying in!'),
          ),)
        ],)
      ),
    );
  }
}
*/