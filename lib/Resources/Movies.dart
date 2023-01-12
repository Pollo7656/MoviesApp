import 'package:flutter/material.dart';

/*
 * Class is in charge of holding all movies that are needed for the program
 */
class Movies{

  // final int id;
  final String title;
  final String director;
  final String year;
  final String picture;
  final Uri wiki;
  final Uri imdb;
  final String rtomatoes; // audience score
  final double rimdb;
  final String stars;
  final String duration;

  Movies({required this.title, required this.director, required this.year,
          required this.picture, required this.wiki, required this.imdb,
          required this.rtomatoes, required this.rimdb, required this.stars,
          required this.duration});
}

class Category{
  final String category;
  final List<Movies> movieList;
  final Color bcolor;

  Category({required this.category, required this.movieList, required this.bcolor});
}

final List<Category> genreList = <Category>[
  Category(
    category: "Marvel", 
    movieList: marvel, 
    bcolor: Colors.red,
    ),
  Category(
    category: "Don't Look Down", 
    movieList: flight, 
    bcolor: Colors.blue,
    ),
  Category(
    category: "In the Shadows",
    movieList: spy, 
    bcolor: Colors.grey.shade700,
    ),
  Category(
    category: "Anime", 
    movieList: anime, 
    bcolor: Colors.deepPurple.shade400,
    ),
  Category(
    category: "Take Me Back", 
    movieList: early, 
    bcolor: Colors.greenAccent,
    ),
];

final List<Movies> marvel = <Movies>[
  Movies(
    title: "Iron Man",
    director: "Jon Favreau",
    year: "2008",
    picture: "images/marvel/iron.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Iron_Man_(2008_film)"),
    imdb: Uri.parse("https://www.imdb.com/title/tt0371746/"),
    rtomatoes: "91% 250k+ RottenTomatoes",
    rimdb: 7.9,
    stars: "Robert Downey Jr, Terrence Howard, Jeff Bridges, Shaun Toub, Gwyneth Paltrow",
    duration: "126",
  ),
  Movies(
    title: "CAPTAIN AMERICA: THE FIRST AVENGER",
    director: "Joe Johnson",
    year: "2011",
    picture: "images/marvel/cap.png",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Captain_America:_The_First_Avenger"),
    imdb: Uri.parse("https://www.imdb.com/title/tt0458339/"),
    rtomatoes: "75% 100k+ RottenTomatoes",
    rimdb: 6.9,
    stars: "Chris Evans, Tommy Lee Jones, Hugo Weaving, Hayley Atwell, Sebastian Stan, Dominic Cooper, NealMcDonough, Derek Luke, Stanley Tucci",
    duration: "124",
  ),
  Movies(
    title: "Guardians Of The Galaxy",
    director: "James Gunn",
    year: "2014",
    picture: "images/marvel/groot.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Guardians_of_the_Galaxy_(film)"),
    imdb: Uri.parse("https://www.imdb.com/title/tt2015381/"),
    rtomatoes: "92% 250k+ RottenTomatoes",
    rimdb: 8,
    stars: "Chris Pratt, Zoe Saldaña, Dave Bautista, Vin Diesel, Bradley Cooper, Lee Pace, Michael Rooker, Karen Gillian, Djimon Hounsou, John C. Reilly, Glenn Close, Benicion Del Toro",
    duration: "122",
  ),
];

final List<Movies> flight = <Movies>[
  Movies(
    title: "Top Gun Maverick",
    director: "Joseph Kosinski",
    year: "2022",
    picture: "images/flight/mav.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Top_Gun:_Maverick"),
    imdb: Uri.parse("https://www.imdb.com/title/tt1745960/"),
    rtomatoes: "99% 50k+ RottenTomatoes",
    rimdb: 8.4,
    stars: "Tom Cruise, Val Kilmer, Miles Teller, Jennifer Connelly, Jon Hamm, Glen Powell, Lewis Pullman, Ed Harris, Monica Barbaro, Charles Parnell, Jay Ellis, Danny Ramirez, Greg Tarzan Davis, Bashir Salahuddin, Manny Jacinto, Raymond Lee, Jake Picking, Jack Schumacher, Kara Wang, Lyliana Wray, Jean Louisa Kelly, James Handy, Chido Nwokocha as Mission Controller",
    duration: "130",
  ),
  Movies(
    title: "Interstellar",
    director: "Christopher Nolan",
    year: "2014",
    picture: "images/flight/stellar.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Interstellar_(film)"),
    imdb: Uri.parse("https://www.imdb.com/title/tt0816692/"),
    rtomatoes: "86% 100k+ RottenTomatoes",
    rimdb: 8.6,
    stars: "Matthew McConaughey, Anne Hathaway, Jessica Chastain, Mackenzie Foy,  Ellen Burstyn, John Lithgow, Michael Caine, David Gyasi, Wes Bentley, Casey Affleck, Timothée Chalamet, Matt Damon, Bill Irwin, Josh Stewart,  Topher Grace, Leah Cairns, David Oyelowo, Collette Wolfe, William Devane, Elyes Gabel, Jeff Hephner, Russ Fega",
    duration: "169",
  ),
  Movies(
    title: "First Man",
    director: "Damien Chazelle",
    year: "2018",
    picture: "images/flight/first_man.png",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/First_Man_(film)"),
    imdb: Uri.parse("https://www.imdb.com/title/tt1213641/"),
    rtomatoes: "67% 5k+ RottenTomatoes",
    rimdb: 7.3,
    stars: "Ryan Gosling, Claire Foy, Jason Clarke, Kyle Chandler, Corey Stoll, Patrick Fugit, Christopher Abbott, Ciarán Hinds, Olivia Hamilton, Pablo Schreiber, Shea Whigham, Shawn Eric Jones, Lukas Haas, Ethan Embry, Brian d'Arcy James, Cory Michael Smith, Kris Swanberg, Skyler Bible, Gavin Warren, Leon Bridges",
    duration: "141",
  ),
];

final List<Movies> spy = <Movies>[
  Movies(
    title: "Kingsman: The Secret Service",
    director: "Matthew Vaughn",
    year: "2014",
    picture: "images/spy/km.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Kingsman:_The_Secret_Service"),
    imdb: Uri.parse("https://www.imdb.com/title/tt2802144/"),
    rtomatoes: "84% 100k+ RottenTomatoes",
    rimdb: 7.7,
    stars: "Colin Firth, Samuel L. Jackson, Mark Strong, Taron Egerton, Alex Nikolov, Sophie Cookson, Jack Davenport, Mark Hamill, Sofia Boutella, Edward Holcroft, Jack Cutmore-Scott, Geoff Bell, Samantha Womack, Michael Caine",
    duration: "129",
  ),
  Movies(
    title: "The Bourne Ultimatum",
    director: "Christopher Nolan",
    year: "2014",
    picture: "images/spy/bourne.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/The_Bourne_Ultimatum_(film)"),
    imdb: Uri.parse("https://www.imdb.com/title/tt0440963/"),
    rtomatoes: "91% 250k+ RottenTomatoes",
    rimdb: 8,
    stars: "Matt Damon, Julia Stiles, David Strathairn, Scott Glenn, Paddy Considine, Édgar Ramírez, Albert Finney, Joan Allen, Daniel Brühl",
    duration: "115",
  ),
  Movies(
    title: "The Lives of Others",
    director: "Florian Henckel von Donnersmarck",
    year: "2006",
    picture: "images/spy/tlo.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/The_Lives_of_Others"),
    imdb: Uri.parse("https://www.imdb.com/title/tt0405094/"),
    rtomatoes: "96% 100k+ RottenTomatoes",
    rimdb: 8.4,
    stars: "Ulrich Mühe, Martina Gedeck, Sebastian Koch, Ulrich Tukur, Thomas Thieme, Hans-Uwe Bauer, Volkmar Kleinert, Matthias Brenner, Herbert Knaup, Charly Hübner, Bastian Trost, Marie Gruber, Volker Michalowski [de], Werner Daehn, Hinnerk Schönemann, Gabi Fleming, Ludwig Blochberger",
    duration: "137",
  ),
];

final List<Movies> anime = <Movies>[
  Movies(
    title: "Rascal Does Not Dream of a Dreaming Girl",
    director: "Sōichi Masui",
    year: "2019",
    picture: "images/anime/bunny.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Rascal_Does_Not_Dream_of_a_Dreaming_Girl"),
    imdb: Uri.parse("https://www.imdb.com/title/tt10472884/"),
    rtomatoes: "8.61/10 MyAnimeList",
    rimdb: 8.2,
    stars: "Kaito Ishikawa, Asami Seto, Inori Minase, Nao Tōyama, Atsumi Tanezaki, Maaya Uchida, Yurika Kubo",
    duration: "89",
  ),
  Movies(
    title: "My Hero Academia: World Heroes' Mission",
    director: "Kenji Nagasaki",
    year: "2021",
    picture: "images/anime/mha.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/My_Hero_Academia:_World_Heroes%27_Mission"),
    imdb: Uri.parse("https://www.imdb.com/title/tt13544716/"),
    rtomatoes: "7.8/10 MyAnimeList",
    rimdb: 7.1,
    stars: "Daiki Yamashita, Nobuhiko Okamoto, Yuki Kaji",
    duration: "105",
  ),
  Movies(
    title: "Redline",
    director: "Takeshi Koike",
    year: "2009",
    picture: "images/anime/redline.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Redline_(2009_film)"),
    imdb: Uri.parse("https://www.imdb.com/title/tt1483797/"),
    rtomatoes: "8.28 MyAnimeList",
    rimdb: 7.5,
    stars: "Takuya Kimura, Yû Aoi, Tadanobu Asano, Yoshiyuki Morishita, Kanji Tsuda, Ken'yû Horiuchi, Akemi, Takeshi Aono, Tatsuya Gashûin, Kôji Ishii, Unshô Ishizuka, Kenta Miyake, Chô, Yoshinori Okada, Patrick Seitz, Michelle Ruff, Liam O'Brien, Doug Erholtz",
    duration: "95",
  ),
];

final List<Movies> early = <Movies>[
  Movies(
    title: "Megamind",
    director: "Tom McGrath",
    year: "2010",
    picture: "images/early/megamind.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Megamind"),
    imdb: Uri.parse("https://www.imdb.com/title/tt1001526/"),
    rtomatoes: "72% 100k+ RottenTomatoes",
    rimdb: 7.3,
    stars: "Will Ferrell, Tina Fey, Jonah Hill, David Cross, Brad Pitt, J. K. Simmons, Ben Stiller, Christopher Knights, Tom McGrath, Jack Blessing, Justin Theroux and Jessica Schulte, Rob Corddry",
    duration: "96",
  ),
  Movies(
    title: "How to Train Your Dragon",
    director: "Cressida Cowell",
    year: "2010",
    picture: "images/early/train.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/How_to_Train_Your_Dragon_(film)"),
    imdb: Uri.parse("https://www.imdb.com/title/tt0892769/"),
    rtomatoes: "91% 250k+ RottenTomatoes",
    rimdb: 8.1,
    stars: "Jay Baruchel, America Ferrera, Gerard Butler, Craig Ferguson, Christopher Mintz-Plasse, Jonah Hill, T.J. Miller and Kristen Wiig, David Tennant, Robin Atkin Downes, Philip McGrade, Kieron Elliott, Ashley Jensen, Randy Thom",
    duration: "98",
  ),
  Movies(
    title: "Shrek",
    director: "Andrew Adamson, Vicky Jenson",
    year: "2001",
    picture: "images/early/shrek.jpg",
    wiki: Uri.parse("https://en.wikipedia.org/wiki/Shrek"),
    imdb: Uri.parse("https://www.imdb.com/title/tt0126029/"),
    rtomatoes: "90% 250k+ RottenTomatoes",
    rimdb: 7.9,
    stars: "Mike Myers, Eddie Murphy, Cameron Diaz, John Lithgow",
    duration: "90",
  ),
];