import 'package:flutter/material.dart';

import '../Resources/Movies.dart';

import "../Widgets/cards.dart";

List<Widget> sliverList(BuildContext context) {
  List<Widget> widgetList = [];
  double headerHeight = 0.0;
  double top = 0.0;

  widgetList.add(SliverAppBar(
    pinned: true,
    snap: false,
    floating: false,
    expandedHeight: 160.0,
    // title: const Text('Movie App', 
    //   style: TextStyle(
    //     color:Color.fromARGB(255, 26, 26, 26),
    //     fontSize: 25,
    //     fontWeight: FontWeight.w700,
    //     letterSpacing: 1.0,
    //   ),),
    flexibleSpace: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
      // print('constraints=' + constraints.toString());
      top = constraints.biggest.height;
      return FlexibleSpaceBar(
        centerTitle: true,
        title:  AnimatedOpacity(
          duration: Duration(milliseconds: 300),
          //opacity: top == MediaQuery.of(context).padding.top + kToolbarHeight ? 1.0 : 0.0,
          opacity: 1.0,
          child: Row(
            children: [
              Container(
                // alignment: Alignment.bottomRight,
                width: MediaQuery.of(context).size.width*0.53,
                child: Text('Movie App', 
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color:Color.fromARGB(255, 26, 26, 26),
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.0,
                  ),),
              ),
              IconButton(
                onPressed: (() {
                  Navigator.pushNamed(context,"/email",);
                }), 
                icon: Icon(Icons.login),
                color: Colors.blueAccent,
              ),
            ],
          ),
          // child: Text(
          //   top.toString(),
          //   style: TextStyle(fontSize: 12.0),
          // )
        ),
        background: Image.asset("images/boo.png", fit: BoxFit.cover,),
        // background: Image.network(
        //   "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
        // fit: BoxFit.cover,
        );
    }),
    // flexibleSpace: FlexibleSpaceBar(
    //   background: Image.asset("images/boo.png"),
    // ),
    backgroundColor: Colors.amber.shade400,

    centerTitle: true,
    elevation: 0.0,
    shape: const ContinuousRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  ));

  for (int i=0; i<genreList.length; i++){
    widgetList
      ..add(SliverAppBar(
        expandedHeight: 25,
        pinned: true,
        floating: false,
        snap: false,
        automaticallyImplyLeading: false,
        primary: true,
        toolbarHeight: headerHeight,
        collapsedHeight: headerHeight,
        elevation: 0.0,
        backgroundColor: genreList.elementAt(i).bcolor,

        centerTitle: true,
        flexibleSpace:  Container(
          alignment: Alignment.center,
          child: Text(genreList.elementAt(i).category,
            style: const TextStyle(
            color:Color.fromARGB(255, 26, 26, 26),
            fontSize: 25,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
          ),),
        ),
        // flexibleSpace: Container(
        //   alignment: Alignment.center,
        //   child: LayoutBuilder(
        //     builder: (BuildContext context, BoxConstraints constraints) {
        //     // print('constraints=' + constraints.toString());
        //     top = constraints.biggest.height;
        //     return  FlexibleSpaceBar(
        //       centerTitle: true,
        //       title: AnimatedOpacity(
        //         duration: Duration(milliseconds: 0),
        //         // opacity: top == MediaQuery.of(context).padding.top + kToolbarHeight ? 1.0 : 0.0,
        //         opacity: 1.0,
        //         child:  Text(genreList.elementAt(i).category, 
        //           style: const TextStyle(
        //             color:Color.fromARGB(255, 26, 26, 26),
        //             fontSize: 25,
        //             fontWeight: FontWeight.w700,
        //             letterSpacing: 1.0,
        //           ),),
        //       ),
        //       );
        //   }),
        // ),
      ))
      ..add(horizontalList(context, genreList.elementAt(i).movieList, genreList.elementAt(i).bcolor));
  }

  return widgetList;
}

horizontalList (BuildContext context, List<Movies> list, Color color){
  return SliverToBoxAdapter(
    child: Container(
      // decoration: ,
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // itemCount: movieList.length,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            // color: index.isOdd ? Colors.white : Colors.black12,
            // height: 150.0,
            width: MediaQuery.of(context).size.width*3/4,
            child: cards(context, index, list, color),
          );
          // return ListTile(
          //   // leading: const  Icon(Icons.list),
          //   // trailing:const  Text("GFG",
          //   //                style: TextStyle(
          //   //                  color: Colors.green,fontSize: 15),),
          //   title:Text("List item $index")
          //   );
        }
      ),
    ),
  );
}