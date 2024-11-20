import 'package:filmaiada/models/movie.dart';

const List<Movie> dummyMovies = [
  Movie(
    id: 1,
    title: "A Origem",
    releaseYear: "2010",
    posterUrl: "assets/img/a_origem.jpg",
    duration: 148,
    director: "Christopher Nolan",
    movieStars: ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Elliot Page"],
    averageRating: 8.8,
  ),
  Movie(
    id: 2,
    title: "Vingadores: Ultimato",
    releaseYear: "2019",
    posterUrl: "https://example.com/endgame.jpg",
    duration: 181,
    director: "Anthony e Joe Russo",
    movieStars: ["Robert Downey Jr.", "Chris Evans", "Mark Ruffalo"],
    averageRating: 8.4,
  ),
  Movie(
    id: 3,
    title: "Parasita",
    releaseYear: "2019",
    posterUrl: "https://example.com/parasite.jpg",
    duration: 132,
    director: "Bong Joon-ho",
    movieStars: ["Song Kang-ho", "Lee Sun-kyun", "Cho Yeo-jeong"],
    averageRating: 8.6,
  ),
  Movie(
    id: 4,
    title: "O Senhor dos Anéis: O Retorno do Rei",
    releaseYear: "2003",
    posterUrl: "https://example.com/lotr.jpg",
    duration: 201,
    director: "Peter Jackson",
    movieStars: ["Elijah Wood", "Ian McKellen", "Viggo Mortensen"],
    averageRating: 9.0,
  ),
  // Movie(
  //   id: 5,
  //   title: "Matrix",
  //   releaseYear: "1999",
  //   posterUrl: "https://example.com/matrix.jpg",
  //   duration: 136,
  //   director: "Lana e Lilly Wachowski",
  //   movieStars: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"],
  //   averageRating: 8.7,
  // ),
  // Movie(
  //   id: 6,
  //   title: "Coringa",
  //   releaseYear: "2019",
  //   posterUrl: "https://example.com/joker.jpg",
  //   duration: 122,
  //   director: "Todd Phillips",
  //   movieStars: ["Joaquin Phoenix", "Robert De Niro", "Zazie Beetz"],
  //   averageRating: 8.4,
  // ),
  // Movie(
  //   id: 7,
  //   title: "Titanic",
  //   releaseYear: "1997",
  //   posterUrl: "https://example.com/titanic.jpg",
  //   duration: 195,
  //   director: "James Cameron",
  //   movieStars: ["Leonardo DiCaprio", "Kate Winslet"],
  //   averageRating: 7.8,
  // ),
  // Movie(
  //   id: 8,
  //   title: "O Cavaleiro das Trevas",
  //   releaseYear: "2008",
  //   posterUrl: "https://example.com/darkknight.jpg",
  //   duration: 152,
  //   director: "Christopher Nolan",
  //   movieStars: ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
  //   averageRating: 9.0,
  // ),
  // Movie(
  //   id: 9,
  //   title: "Pulp Fiction",
  //   releaseYear: "1994",
  //   posterUrl: "https://example.com/pulpfiction.jpg",
  //   duration: 154,
  //   director: "Quentin Tarantino",
  //   movieStars: ["John Travolta", "Uma Thurman", "Samuel L. Jackson"],
  //   averageRating: 8.9,
  // ),
  // Movie(
  //   id: 10,
  //   title: "Gladiador",
  //   releaseYear: "2000",
  //   posterUrl: "https://example.com/gladiator.jpg",
  //   duration: 155,
  //   director: "Ridley Scott",
  //   movieStars: ["Russell Crowe", "Joaquin Phoenix", "Connie Nielsen"],
  //   averageRating: 8.5,
  // ),
  // Movie(
  //   id: 11,
  //   title: "V de Vingança",
  //   releaseYear: "2005",
  //   posterUrl: "https://example.com/vforvendetta.jpg",
  //   duration: 132,
  //   director: "James McTeigue",
  //   movieStars: ["Natalie Portman", "Hugo Weaving"],
  //   averageRating: 8.2,
  // ),
  // Movie(
  //   id: 12,
  //   title: "Homem de Ferro",
  //   releaseYear: "2008",
  //   posterUrl: "https://example.com/ironman.jpg",
  //   duration: 126,
  //   director: "Jon Favreau",
  //   movieStars: ["Robert Downey Jr.", "Gwyneth Paltrow"],
  //   averageRating: 7.9,
  // ),
  // Movie(
  //   id: 13,
  //   title: "O Resgate do Soldado Ryan",
  //   releaseYear: "1998",
  //   posterUrl: "https://example.com/savingprivateryan.jpg",
  //   duration: 169,
  //   director: "Steven Spielberg",
  //   movieStars: ["Tom Hanks", "Matt Damon"],
  //   averageRating: 8.6,
  // ),
  // Movie(
  //   id: 14,
  //   title: "Os Incríveis",
  //   releaseYear: "2004",
  //   posterUrl: "https://example.com/incredibles.jpg",
  //   duration: 115,
  //   director: "Brad Bird",
  //   movieStars: ["Craig T. Nelson", "Holly Hunter"],
  //   averageRating: 8.0,
  // ),
  // Movie(
  //   id: 15,
  //   title: "Toy Story",
  //   releaseYear: "1995",
  //   posterUrl: "https://example.com/toystory.jpg",
  //   duration: 81,
  //   director: "John Lasseter",
  //   movieStars: ["Tom Hanks", "Tim Allen"],
  //   averageRating: 8.3,
  // ),
  // Movie(
  //   id: 16,
  //   title: "Avatar",
  //   releaseYear: "2009",
  //   posterUrl: "https://example.com/avatar.jpg",
  //   duration: 162,
  //   director: "James Cameron",
  //   movieStars: ["Sam Worthington", "Zoe Saldana"],
  //   averageRating: 7.8,
  // ),
  // Movie(
  //   id: 17,
  //   title: "Interestelar",
  //   releaseYear: "2014",
  //   posterUrl: "https://example.com/interstellar.jpg",
  //   duration: 169,
  //   director: "Christopher Nolan",
  //   movieStars: ["Matthew McConaughey", "Anne Hathaway"],
  //   averageRating: 8.6,
  // ),
  // Movie(
  //   id: 18,
  //   title: "Clube da Luta",
  //   releaseYear: "1999",
  //   posterUrl: "https://example.com/fightclub.jpg",
  //   duration: 139,
  //   director: "David Fincher",
  //   movieStars: ["Brad Pitt", "Edward Norton"],
  //   averageRating: 8.8,
  // ),
  // Movie(
  //   id: 19,
  //   title: "Cisne Negro",
  //   releaseYear: "2010",
  //   posterUrl: "https://example.com/blackswans.jpg",
  //   duration: 108,
  //   director: "Darren Aronofsky",
  //   movieStars: ["Natalie Portman", "Mila Kunis"],
  //   averageRating: 8.0,
  // ),
  // Movie(
  //   id: 20,
  //   title: "Forrest Gump",
  //   releaseYear: "1994",
  //   posterUrl: "https://example.com/forrestgump.jpg",
  //   duration: 142,
  //   director: "Robert Zemeckis",
  //   movieStars: ["Tom Hanks", "Robin Wright"],
  //   averageRating: 8.8,
  // ),
];
