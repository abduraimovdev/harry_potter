
class Attributes {
  String? slug;
  String? title;
  String? summary;
  List<String>? directors;
  List<String>? screenwriters;
  List<String>? producers;
  List<String>? cinematographers;
  List<String>? editors;
  List<String>? distributors;
  List<String>? musicComposers;
  String? releaseDate;
  String? runningTime;
  String? budget;
  String? boxOffice;
  String? rating;
  int? order;
  String? trailer;
  String? poster;
  String? wiki;

  Attributes(
      {this.slug,
        this.title,
        this.summary,
        this.directors,
        this.screenwriters,
        this.producers,
        this.cinematographers,
        this.editors,
        this.distributors,
        this.musicComposers,
        this.releaseDate,
        this.runningTime,
        this.budget,
        this.boxOffice,
        this.rating,
        this.order,
        this.trailer,
        this.poster,
        this.wiki});

  Attributes.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    title = json['title'];
    summary = json['summary'];
    directors = json['directors'].cast<String>();
    screenwriters = json['screenwriters'].cast<String>();
    producers = json['producers'].cast<String>();
    cinematographers = json['cinematographers'].cast<String>();
    editors = json['editors'].cast<String>();
    distributors = json['distributors'].cast<String>();
    musicComposers = json['music_composers'].cast<String>();
    releaseDate = json['release_date'];
    runningTime = json['running_time'];
    budget = json['budget'];
    boxOffice = json['box_office'];
    rating = json['rating'];
    order = json['order'];
    trailer = json['trailer'];
    poster = json['poster'];
    wiki = json['wiki'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  {};
    data['slug'] = slug;
    data['title'] = title;
    data['summary'] = summary;
    data['directors'] = directors;
    data['screenwriters'] = screenwriters;
    data['producers'] = producers;
    data['cinematographers'] = cinematographers;
    data['editors'] = editors;
    data['distributors'] = distributors;
    data['music_composers'] = musicComposers;
    data['release_date'] = releaseDate;
    data['running_time'] = runningTime;
    data['budget'] = budget;
    data['box_office'] = boxOffice;
    data['rating'] = rating;
    data['order'] = order;
    data['trailer'] = trailer;
    data['poster'] = poster;
    data['wiki'] = wiki;
    return data;
  }

  @override
  String toString() {
    return 'Attributes{slug: $slug, title: $title, summary: $summary, directors: $directors, screenwriters: $screenwriters, producers: $producers, cinematographers: $cinematographers, editors: $editors, distributors: $distributors, musicComposers: $musicComposers, releaseDate: $releaseDate, runningTime: $runningTime, budget: $budget, boxOffice: $boxOffice, rating: $rating, order: $order, trailer: $trailer, poster: $poster, wiki: $wiki}';
  }
}
