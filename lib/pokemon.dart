class PokeHub {
  List<Pokemon> pokemon = [];

  void fromJson(Map<String, dynamic> json) {
    for (dynamic pokemonData in json['pokemon']) {
      pokemon.add(Pokemon.fromJson(pokemonData));
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['pokemon'] = pokemon.map((e) => e.toJson()).toList();
    return json;
  }
}

class Pokemon {
  int? id;
  String? n;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  String? candy;
  int? candyCount;
  String? egg;
  double? spawnChance;
  int? avgSpawns;
  String? spawnTime;
  List<double>? multipliers;
  List<String>? weaknesses;
  List<NextEvolution>? nextEvolution;

  Pokemon({
    this.id,
    this.n,
    this.name,
    this.img,
    this.type,
    this.height,
    this.weight,
    this.candy,
    this.candyCount,
    this.egg,
    this.spawnChance,
    this.avgSpawns,
    this.spawnTime,
    this.multipliers,
    this.weaknesses,
    this.nextEvolution,
  });

  static Pokemon fromJson(dynamic json) {
    int? id = json['id'];
    String? n = json['num'];
    String? name = json['name'];
    String? img = json['img'];
    List<String>? type = List<String>.from(json['type']);
    String? height = json['height'];
    String? weight = json['weight'];
    String? candy = json['candy'];
    int? candyCount = json['candy_count'];
    String? egg = json['egg'];
    double? spawnChance = json['spawn_chance'];
    int? avgSpawns = json['avg_spawns'];
    String? spawnTime = json['spawn_time'];
    List<double>? multipliers = List<double>.from(json['multipliers']);
    List<String>? weaknesses = List<String>.from(json['weaknesses']);
    List<NextEvolution>? nextEvolution = List<NextEvolution>.from(
      json['next_evolution']?.map(
        (evolution) => NextEvolution.fromJson(evolution),
      ),
    );
    return Pokemon(
      id: id,
      n: n,
      name: name,
      img: img,
      type: type,
      height: height,
      weight: weight,
      candy: candy,
      candyCount: candyCount,
      egg: egg,
      spawnChance: spawnChance,
      avgSpawns: avgSpawns,
      spawnTime: spawnTime,
      multipliers: multipliers,
      weaknesses: weaknesses,
      nextEvolution: nextEvolution,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['num'] = n;
    json['name'] = name;
    json['img'] = img;
    json['type'] = type;
    json['height'] = height;
    json['weight'] = weight;
    json['candy'] = candy;
    json['candy_count'] = candyCount;
    json['egg'] = egg;
    json['spawn_chance'] = spawnChance;
    json['avg_spawns'] = avgSpawns;
    json['spawn_time'] = spawnTime;
    json['multipliers'] = multipliers;
    json['weaknesses'] = weaknesses;
    json['next_evolution'] = nextEvolution?.map((e) => e.toJson()).toList();
    return json;
  }
}

class NextEvolution {
  String? num;
  String? name;

  NextEvolution({
    this.num,
    this.name,
  });

  static NextEvolution fromJson(Map<String, dynamic> json) {
    String? numb = json['num'];
    String? name = json['name'];
    return NextEvolution(num: numb, name: name);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['num'] = num;
    json['name'] = name;
    return json;
  }
}
