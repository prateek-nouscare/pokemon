class PokemonListResponse {
  final List<DataPokemon>? data;
  final int? page;
  final int? pageSize;
  final int? count;
  final int? totalCount;

  PokemonListResponse({
    this.data,
    this.page,
    this.pageSize,
    this.count,
    this.totalCount,
  });

  PokemonListResponse.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List?)?.map((dynamic e) => DataPokemon.fromJson(e as Map<String,dynamic>)).toList(),
        page = json['page'] as int?,
        pageSize = json['pageSize'] as int?,
        count = json['count'] as int?,
        totalCount = json['totalCount'] as int?;

  Map<String, dynamic> toJson() => {
    'data' : data?.map((e) => e.toJson()).toList(),
    'page' : page,
    'pageSize' : pageSize,
    'count' : count,
    'totalCount' : totalCount
  };
}

class DataPokemon {
  final String? id;
  final String? name;
  final String? supertype;
  final List<String>? subtypes;
  final String? hp;
  final List<String>? types;
  final String? evolvesFrom;
  final List<Attacks>? attacks;
  final List<Weaknesses>? weaknesses;
  final List<Resistances>? resistances;
  final List<String>? retreatCost;
  final int? convertedRetreatCost;
  final Set? set;
  final String? number;
  final String? artist;
  final String? rarity;
  final String? flavorText;
  final List<int>? nationalPokedexNumbers;
  final Legalities? legalities;
  final ImagesMain? images;
  final Tcgplayer? tcgplayer;
  final Cardmarket? cardmarket;

  DataPokemon({
    this.id,
    this.name,
    this.supertype,
    this.subtypes,
    this.hp,
    this.types,
    this.evolvesFrom,
    this.attacks,
    this.weaknesses,
    this.resistances,
    this.retreatCost,
    this.convertedRetreatCost,
    this.set,
    this.number,
    this.artist,
    this.rarity,
    this.flavorText,
    this.nationalPokedexNumbers,
    this.legalities,
    this.images,
    this.tcgplayer,
    this.cardmarket,
  });

  DataPokemon.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        supertype = json['supertype'] as String?,
        subtypes = (json['subtypes'] as List?)?.map((dynamic e) => e as String).toList(),
        hp = json['hp'] as String?,
        images = (json['images'] as Map<String,dynamic>?) != null ? ImagesMain.fromJson(json['images'] as Map<String,dynamic>) : null,
        types = (json['types'] as List?)?.map((dynamic e) => e as String).toList(),
        evolvesFrom = json['evolvesFrom'] as String?,
        attacks = (json['attacks'] as List?)?.map((dynamic e) => Attacks.fromJson(e as Map<String,dynamic>)).toList(),
        weaknesses = (json['weaknesses'] as List?)?.map((dynamic e) => Weaknesses.fromJson(e as Map<String,dynamic>)).toList(),
        resistances = (json['resistances'] as List?)?.map((dynamic e) => Resistances.fromJson(e as Map<String,dynamic>)).toList(),
        retreatCost = (json['retreatCost'] as List?)?.map((dynamic e) => e as String).toList(),
        convertedRetreatCost = json['convertedRetreatCost'] as int?,
        set = (json['set'] as Map<String,dynamic>?) != null ? Set.fromJson(json['set'] as Map<String,dynamic>) : null,
        number = json['number'] as String?,
        artist = json['artist'] as String?,
        rarity = json['rarity'] as String?,
        flavorText = json['flavorText'] as String?,
        nationalPokedexNumbers = (json['nationalPokedexNumbers'] as List?)?.map((dynamic e) => e as int).toList(),
        legalities = (json['legalities'] as Map<String,dynamic>?) != null ? Legalities.fromJson(json['legalities'] as Map<String,dynamic>) : null,
        tcgplayer = (json['tcgplayer'] as Map<String,dynamic>?) != null ? Tcgplayer.fromJson(json['tcgplayer'] as Map<String,dynamic>) : null,
        cardmarket = (json['cardmarket'] as Map<String,dynamic>?) != null ? Cardmarket.fromJson(json['cardmarket'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'supertype' : supertype,
    'subtypes' : subtypes,
    'hp' : hp,
    'types' : types,
    'evolvesFrom' : evolvesFrom,
    'attacks' : attacks?.map((e) => e.toJson()).toList(),
    'weaknesses' : weaknesses?.map((e) => e.toJson()).toList(),
    'resistances' : resistances?.map((e) => e.toJson()).toList(),
    'retreatCost' : retreatCost,
    'convertedRetreatCost' : convertedRetreatCost,
    'set' : set?.toJson(),
    'number' : number,
    'artist' : artist,
    'rarity' : rarity,
    'flavorText' : flavorText,
    'nationalPokedexNumbers' : nationalPokedexNumbers,
    'legalities' : legalities?.toJson(),
    'images' : images?.toJson(),
    'tcgplayer' : tcgplayer?.toJson(),
    'cardmarket' : cardmarket?.toJson()
  };
}

class Attacks {
  final String? name;
  final List<String>? cost;
  final int? convertedEnergyCost;
  final String? damage;
  final String? text;

  Attacks({
    this.name,
    this.cost,
    this.convertedEnergyCost,
    this.damage,
    this.text,
  });

  Attacks.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        cost = (json['cost'] as List?)?.map((dynamic e) => e as String).toList(),
        convertedEnergyCost = json['convertedEnergyCost'] as int?,
        damage = json['damage'] as String?,
        text = json['text'] as String?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'cost' : cost,
    'convertedEnergyCost' : convertedEnergyCost,
    'damage' : damage,
    'text' : text
  };
}

class Weaknesses {
  final String? type;
  final String? value;

  Weaknesses({
    this.type,
    this.value,
  });

  Weaknesses.fromJson(Map<String, dynamic> json)
      : type = json['type'] as String?,
        value = json['value'] as String?;

  Map<String, dynamic> toJson() => {
    'type' : type,
    'value' : value
  };
}

class Resistances {
  final String? type;
  final String? value;

  Resistances({
    this.type,
    this.value,
  });

  Resistances.fromJson(Map<String, dynamic> json)
      : type = json['type'] as String?,
        value = json['value'] as String?;

  Map<String, dynamic> toJson() => {
    'type' : type,
    'value' : value
  };
}

class Set {
  final String? id;
  final String? name;
  final String? series;
  final int? printedTotal;
  final int? total;
  final Legalities? legalities;
  final String? ptcgoCode;
  final String? releaseDate;
  final String? updatedAt;
  final Images? images;

  Set({
    this.id,
    this.name,
    this.series,
    this.printedTotal,
    this.total,
    this.legalities,
    this.ptcgoCode,
    this.releaseDate,
    this.updatedAt,
    this.images,
  });

  Set.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        series = json['series'] as String?,
        printedTotal = json['printedTotal'] as int?,
        total = json['total'] as int?,
        legalities = (json['legalities'] as Map<String,dynamic>?) != null ? Legalities.fromJson(json['legalities'] as Map<String,dynamic>) : null,
        ptcgoCode = json['ptcgoCode'] as String?,
        releaseDate = json['releaseDate'] as String?,
        updatedAt = json['updatedAt'] as String?,
        images = (json['images'] as Map<String,dynamic>?) != null ? Images.fromJson(json['images'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'series' : series,
    'printedTotal' : printedTotal,
    'total' : total,
    'legalities' : legalities?.toJson(),
    'ptcgoCode' : ptcgoCode,
    'releaseDate' : releaseDate,
    'updatedAt' : updatedAt,
    'images' : images?.toJson()
  };
}

class Legalities {
  final String? unlimited;

  Legalities({
    this.unlimited,
  });

  Legalities.fromJson(Map<String, dynamic> json)
      : unlimited = json['unlimited'] as String?;

  Map<String, dynamic> toJson() => {
    'unlimited' : unlimited
  };
}

class Images {
  final String? symbol;
  final String? logo;

  Images({
    this.symbol,
    this.logo,
  });

  Images.fromJson(Map<String, dynamic> json)
      : symbol = json['symbol'] as String?,
        logo = json['logo'] as String?;

  Map<String, dynamic> toJson() => {
    'symbol' : symbol,
    'logo' : logo
  };
}
class ImagesMain {
  final String? small;
  final String? large;

  ImagesMain({
    this.small,
    this.large,
  });

  ImagesMain.fromJson(Map<String, dynamic> json)
      : small = json['small'] as String?,
        large = json['large'] as String?;

  Map<String, dynamic> toJson() => {
    'small' : small,
    'large' : large
  };
}

class Tcgplayer {
  final String? url;
  final String? updatedAt;
  final Prices? prices;

  Tcgplayer({
    this.url,
    this.updatedAt,
    this.prices,
  });

  Tcgplayer.fromJson(Map<String, dynamic> json)
      : url = json['url'] as String?,
        updatedAt = json['updatedAt'] as String?,
        prices = (json['prices'] as Map<String,dynamic>?) != null ? Prices.fromJson(json['prices'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'url' : url,
    'updatedAt' : updatedAt,
    'prices' : prices?.toJson()
  };
}

class Prices {
  final Holofoil? holofoil;
  final ReverseHolofoil? reverseHolofoil;

  Prices({
    this.holofoil,
    this.reverseHolofoil,
  });

  Prices.fromJson(Map<String, dynamic> json)
      : holofoil = (json['holofoil'] as Map<String,dynamic>?) != null ? Holofoil.fromJson(json['holofoil'] as Map<String,dynamic>) : null,
        reverseHolofoil = (json['reverseHolofoil'] as Map<String,dynamic>?) != null ? ReverseHolofoil.fromJson(json['reverseHolofoil'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'holofoil' : holofoil?.toJson(),
    'reverseHolofoil' : reverseHolofoil?.toJson()
  };
}

class Holofoil {
  final double? low;
  final double? mid;
  final double? high;
  final double? market;
  final dynamic directLow;

  Holofoil({
    this.low,
    this.mid,
    this.high,
    this.market,
    this.directLow,
  });

  Holofoil.fromJson(Map<String, dynamic> json)
      : low = json['low'] as double?,
        mid = json['mid'] as double?,
        high = json['high'] as double?,
        market = json['market'] as double?,
        directLow = json['directLow'];

  Map<String, dynamic> toJson() => {
    'low' : low,
    'mid' : mid,
    'high' : high,
    'market' : market,
    'directLow' : directLow
  };
}

class ReverseHolofoil {
  final double? low;
  final double? mid;
  final double? high;
  final double? market;
  final double? directLow;

  ReverseHolofoil({
    this.low,
    this.mid,
    this.high,
    this.market,
    this.directLow,
  });

  ReverseHolofoil.fromJson(Map<String, dynamic> json)
      : low = json['low'] as double?,
        mid = json['mid'] as double?,
        high = json['high'] as double?,
        market = json['market'] as double?,
        directLow = json['directLow'] as double?;

  Map<String, dynamic> toJson() => {
    'low' : low,
    'mid' : mid,
    'high' : high,
    'market' : market,
    'directLow' : directLow
  };
}

class Cardmarket {
  final String? url;
  final String? updatedAt;
  final Prices? prices;

  Cardmarket({
    this.url,
    this.updatedAt,
    this.prices,
  });

  Cardmarket.fromJson(Map<String, dynamic> json)
      : url = json['url'] as String?,
        updatedAt = json['updatedAt'] as String?,
        prices = (json['prices'] as Map<String,dynamic>?) != null ? Prices.fromJson(json['prices'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'url' : url,
    'updatedAt' : updatedAt,
    'prices' : prices?.toJson()
  };
}

