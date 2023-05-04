class PokeHub {
  List<Pokemon>? pokemon;

  PokeHub({
    this.pokemon,
  });

  PokeHub.fromJson(Map<String, dynamic> json) {
    pokemon = (json['pokemon'] as List?)?.map((dynamic e) => Pokemon.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['pokemon'] = pokemon?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Pokemon {
  String? id;
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  String? candy;
  String? candyCount;
  String? egg;
  String? spawnChance;
  String? avgSpawns;
  String? spawnTime;
  List<double>? multipliers;
  List<String>? weaknesses;
  List<NextEvolution>? nextEvolution;

  Pokemon({
    this.id,
    this.num,
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

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    num = json['num'] as String?;
    name = json['name'] as String?;
    img = json['img'] as String?;
    type = (json['type'] as List?)?.map((dynamic e) => e as String).toList();
    height = json['height'] as String?;
    weight = json['weight'] as String?;
    candy = json['candy'] as String?;
    candyCount = json['candy_count'] as String?;
    egg = json['egg'] as String?;
    spawnChance = json['spawn_chance'] as String?;
    avgSpawns = json['avg_spawns'] as String?;
    spawnTime = json['spawn_time'] as String?;
    multipliers = (json['multipliers'] as List?)?.map((dynamic e) => e as double).toList();
    weaknesses = (json['weaknesses'] as List?)?.map((dynamic e) => e as String).toList();
    nextEvolution = (json['next_evolution'] as List?)?.map((dynamic e) => NextEvolution.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['num'] = num;
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

  NextEvolution.fromJson(Map<String, dynamic> json) {
    num = json['num'] as String?;
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['num'] = num;
    json['name'] = name;
    return json;
  }
}