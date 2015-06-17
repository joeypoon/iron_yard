// Day 33 - jQuery and remote forms
// -----
//
// Today
// ----
//
// * jQuery
// * Rails remote delete
// * Rails remove render
//
// Links
// ----
//
// * [JavaScript JSBin on events](http://jsbin.com/mukebamobu/edit?html,css,js,output)
//
// Assignment
// -----
//
// *  Make an array of your favorite movies or books or bands. Have at least 4 values.

var animals = ["dogs", "cats", "bunnies", "goats"];
console.log(animals);

// *  Make a object of information about yourself. Have at least 4 keys+values

var joey = {
  "firstName": "Joey",
  "lastName": "Poon",
  "age": 25,
  "city": "Houston"
}
console.log(joey);

//
// Use Underscore for below

var movies = [
  {
   "title": "Forest Gump",
   "budget": 55,
   "stars": ["Tom Hanks"]
  },
  {
   "title": "Star Wars",
   "budget": 11,
   "stars": ["Mark Hamill", "Harrison Ford"]
  },
  {
   "title": "Batman Begins",
   "budget": 150,
   "stars": ["Christian Bale", "Liam Neeson", "Michael Caine"]
  },
  {
   "title": "Titanic",
   "budget": 200,
   "stars": ["Kate Winslet", "Leonardo DiCaprio"]
  },
  {
   "title": "Inception",
   "budget": 160,
   "stars": ["Leonardo DiCaprio", "JGL"]
  },
  {
   "title": "Shrek the Third",
   "budget": 160,
   "stars": ["Mike Myers", "Cameron Diaz"]
  }
]

//
// *  Use `_.each` to loop through the array of objects and log only one property of the hash. For example { title: "Gone with the Wind" } loop through and print only the .title

_.each(movies, function(movie) {
  console.log(movie.title);
});

// * Create an array of movies with budgets equal to 55 (where)

var cheapMovies = _.where(movies, { "budget": 55 });

_.each(cheapMovies, function(movie) {
  console.log(movie);
});

// * Create an array of movies that have Leonardo DiCaprio as a star (filter)

var hasLeonardo = _.filter(movies, function(movie) {
  if (_.contains(movie.stars, "Leonardo DiCaprio")) {
    return movie;
  }
});

_.each(hasLeonardo, function(movie) {
  console.log(movie);
});
