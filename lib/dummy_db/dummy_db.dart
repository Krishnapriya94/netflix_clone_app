import 'package:netflix_clone_app/utils/constants/image_constants.dart';

class DummyDb {
  static List userList = [
    {"imagePath": ImageConstants.USER1_PNG, "name": "Emenalo"},
    {"imagePath": ImageConstants.USER2_PNG, "name": "Ronald"},
    {"imagePath": ImageConstants.USER3_PNG, "name": "George"},
    {"imagePath": ImageConstants.USER4_PNG, "name": "Paul"},
  ];

  //coming soon screen

  static const List<String> moviePosterList = [
    "https://img.freepik.com/premium-psd/movie-poster-design-template_841014-16997.jpg",
    "https://th.bing.com/th/id/R.805fbe5d1f82c05ccd982fb37ec243d5?rik=jzE1UR2ah%2b8zpA&riu=http%3a%2f%2fimages2.fanpop.com%2fimages%2fphotos%2f8400000%2fMovie-Posters-movies-8405245-1224-1773.jpg&ehk=k87cjy7XpNwrPb49EzeBjqw44Wxff4qiNh8iim3NcRI%3d&risl=&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/OIP.XdkkzpmTVLhnlXEsCWjKMAHaFj?rs=1&pid=ImgDetMain",
    "https://cdn.wallpapersafari.com/92/56/O3IDWP.jpg",
    "https://th.bing.com/th/id/R.8ec89a6654b8b35dafadc0d6d47b8380?rik=WmyYTrhwfHtZKQ&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fRCVFSiJ.jpg&ehk=BNAA9pzYYJYVHkwXGE1pfwfA%2fdbU%2fMAvaiFB7Ip3uGA%3d&risl=&pid=ImgRaw&r=0",
    "https://upload.wikimedia.org/wikipedia/en/4/47/The_Railway_Man_--_movie_poster.jpg",
    "https://cdn1-production-images-kly.akamaized.net/W7hUhBxoSyBxVKVRjPFHtwPw6MU=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3647563/original/076103700_1638185040-Jumanji_-_Welcome_to_the_Jungle_-_ALT_1_-_Poster_-_Landscape.jpg"
  ];
  static const List<String> moviePosterList2 = [
    "https://www.femalefirst.co.uk/image-library/land/1000/t/the-lord-of-the-rings-feature-poster.jpg",
    "https://th.bing.com/th/id/OIP.IAVIEn-dImbA4uK0lVrNPAHaES?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.EW7AgHNzSEkS4RwSOu6nwwHaEN?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.XFQnZcB0J9tyklhg9aYeJQHaDt?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.y5yDgmt_J_mTcPH0Cui5lAHaFj?rs=1&pid=ImgDetMain"
  ];

  static List<Map> newArrivalDb = [
    {
      "imagePath":
          "https://th.bing.com/th/id/R.7d2eddad77a50335d2708f00642a56d1?rik=XyfrmbxRIatpfA&riu=http%3a%2f%2fgraphicdesignjunction.com%2fwp-content%2fuploads%2f2012%2f05%2flarge%2fmovie-poster-20.jpg&ehk=L0vMiRR8cSqB4qAyA1wUB4gxnEZh4rQAl5CvUb6K6%2bo%3d&risl=&pid=ImgRaw&r=0",
      "title": "Battleship",
      "date": "Nov 6"
    },
    {
      "imagePath":
          "https://th.bing.com/th/id/OIP.alNbe-yDGIFfbn1yKK9pawHaKe?rs=1&pid=ImgDetMain",
      "title": "Dead Pool",
      "date": "Nov 26"
    },
  ];

  static List searchScreenItems = [
    {
      "searchImages":
          "https://th.bing.com/th/id/OIP.b4v7cmaxzVMrCyMm8koRCgHaEK?rs=1&pid=ImgDetMain",
      "title": "Land of Mine",
    },
    {
      "searchImages":
          "https://i.pinimg.com/474x/20/05/48/200548127f9d2266c0e2e2b4955acd3c.jpg",
      "title": "The Cabin Woods",
    },
    {
      "searchImages": "https://i.ytimg.com/vi/BmbpHzonLOs/maxresdefault.jpg",
      "title": "Silent Road",
    },
    {
      "searchImages":
          "https://th.bing.com/th/id/OIP.tbGoU7t4sQuqbQMgD6tLBAFgCx?rs=1&pid=ImgDetMain",
      "title": "Rescue Me",
    },
    {
      "searchImages":
          "https://gunksclimbers.org/wp-content/uploads/2016/04/Citadel_landscape_poster_lr.jpg",
      "title": "Citadel",
    },
    {
      "searchImages":
          "https://th.bing.com/th/id/OIP.3tPDulb9DQ0WknsIMO7aqAAAAA?rs=1&pid=ImgDetMain",
      "title": "1917",
    },
    {
      "searchImages":
          "https://th.bing.com/th/id/OIP.ad6JEAJoAPjL1DeHuRW27gHaE7?rs=1&pid=ImgDetMain",
      "title": "Jurassic Park",
    },
    {
      "searchImages":
          "https://th.bing.com/th/id/OIP.PZjGPSEvuNflCb2pgOozywHaEK?rs=1&pid=ImgDetMain",
      "title": "The Forest",
    },
    {
      "searchImages":
          "https://th.bing.com/th/id/OIP.22_j_RgWJCQ9f8T2nStdQwHaDZ?rs=1&pid=ImgDetMain",
      "title": "Inception",
    },
    {
      "searchImages":
          "https://th.bing.com/th/id/R.17623936c04d413160ee8ff49f72c622?rik=3CiZMW41oBmoKw&riu=http%3a%2f%2fwww.impawards.com%2f2016%2fposters%2fdeepwater_horizon_ver9_xxlg.jpg&ehk=nMnXnEFEA3FqgeMWvYY67QAjmpGEGyRXJ2epW0o5L2o%3d&risl=&pid=ImgRaw&r=0",
      "title": "DeepWater Horizon",
    },
    {
      "searchImages":
          "https://th.bing.com/th/id/OIP.f32FyrieRGB1BpbEfUMqfQHaEA?rs=1&pid=ImgDetMain",
      "title": "CONTROL",
    },
    {
      "searchImages":
          "https://images.squarespace-cdn.com/content/v1/51b3dc8ee4b051b96ceb10de/1600041290961-QV53ZKSZMYB9IEIVJRMT/image-asset.jpeg",
      "title": "BATMAN",
    },
  ];

  static List comingsoonScreenItems = [
    {
      "comingsoonImages":
          "https://th.bing.com/th/id/OIP.b4v7cmaxzVMrCyMm8koRCgHaEK?rs=1&pid=ImgDetMain",
      "title": "Land of Mine",
    },
    {
      "comingsoonImages":
          "https://i.pinimg.com/474x/20/05/48/200548127f9d2266c0e2e2b4955acd3c.jpg",
      "title": "The Cabin Woods",
    },
    {
      "comingsoonImages":
          "https://i.ytimg.com/vi/BmbpHzonLOs/maxresdefault.jpg",
      "title": "Silent Road",
    },
    {
      "comingsoonImages":
          "https://th.bing.com/th/id/OIP.tbGoU7t4sQuqbQMgD6tLBAFgCx?rs=1&pid=ImgDetMain",
      "title": "Rescue Me",
    },
    {
      "comingsoonImages":
          "https://gunksclimbers.org/wp-content/uploads/2016/04/Citadel_landscape_poster_lr.jpg",
      "title": "Citadel",
    },
    {
      "comingsoonImages":
          "https://th.bing.com/th/id/OIP.3tPDulb9DQ0WknsIMO7aqAAAAA?rs=1&pid=ImgDetMain",
      "title": "1917",
    },
    {
      "comingsoonImages":
          "https://th.bing.com/th/id/OIP.ad6JEAJoAPjL1DeHuRW27gHaE7?rs=1&pid=ImgDetMain",
      "title": "Jurassic Park",
    },
    {
      "comingsoonImages":
          "https://th.bing.com/th/id/OIP.PZjGPSEvuNflCb2pgOozywHaEK?rs=1&pid=ImgDetMain",
      "title": "The Forest",
    },
    {
      "comingsoonImages":
          "https://th.bing.com/th/id/OIP.22_j_RgWJCQ9f8T2nStdQwHaDZ?rs=1&pid=ImgDetMain",
      "title": "Inception",
    },
    {
      "comingsoonImages":
          "https://th.bing.com/th/id/R.17623936c04d413160ee8ff49f72c622?rik=3CiZMW41oBmoKw&riu=http%3a%2f%2fwww.impawards.com%2f2016%2fposters%2fdeepwater_horizon_ver9_xxlg.jpg&ehk=nMnXnEFEA3FqgeMWvYY67QAjmpGEGyRXJ2epW0o5L2o%3d&risl=&pid=ImgRaw&r=0",
      "title": "DeepWater Horizon",
    },
    {
      "comingsoonImages":
          "https://th.bing.com/th/id/OIP.f32FyrieRGB1BpbEfUMqfQHaEA?rs=1&pid=ImgDetMain",
      "title": "CONTROL",
    },
    {
      "comingsoonImages":
          "https://images.squarespace-cdn.com/content/v1/51b3dc8ee4b051b96ceb10de/1600041290961-QV53ZKSZMYB9IEIVJRMT/image-asset.jpeg",
      "title": "BATMAN",
    },
  ];
}
