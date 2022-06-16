// class Weather {
//   Coord? coord;
//   List<Weather>? weather;
//   String? base;
//   Main? main;
//   int? visibility;
//   Wind? wind;
//   Clouds? clouds;
//   int? dt;
//   Sys? sys;
//   int? timezone;
//   int? id;
//   String? name;
//   int? cod;

//   Weather({
//     this.coord,
//     this.weather,
//     this.base,
//     this.main,
//     this.visibility,
//     this.wind,
//     this.clouds,
//     this.dt,
//     this.sys,
//     this.timezone,
//     this.id,
//     this.name,
//     this.cod,
//   });

//   Weather.fromJson(Map<String, dynamic> json) {
//     coord = (json['coord'] as Map<String, dynamic>?) != null
//         ? Coord.fromJson(json['coord'] as Map<String, dynamic>)
//         : null;
//     weather = (json['weather'] as List?)
//         ?.map((dynamic e) => Weather.fromJson(e as Map<String, dynamic>))
//         .toList();
//     base = json['base'] as String?;
//     main = (json['main'] as Map<String, dynamic>?) != null
//         ? Main.fromJson(json['main'] as Map<String, dynamic>)
//         : null;
//     visibility = json['visibility'] as int?;
//     wind = (json['wind'] as Map<String, dynamic>?) != null
//         ? Wind.fromJson(json['wind'] as Map<String, dynamic>)
//         : null;
//     clouds = (json['clouds'] as Map<String, dynamic>?) != null
//         ? Clouds.fromJson(json['clouds'] as Map<String, dynamic>)
//         : null;
//     dt = json['dt'] as int?;
//     sys = (json['sys'] as Map<String, dynamic>?) != null
//         ? Sys.fromJson(json['sys'] as Map<String, dynamic>)
//         : null;
//     timezone = json['timezone'] as int?;
//     id = json['id'] as int?;
//     name = json['name'] as String?;
//     cod = json['cod'] as int?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['coord'] = coord?.toJson();
//     json['weather'] = weather?.map((e) => e.toJson()).toList();
//     json['base'] = base;
//     json['main'] = main?.toJson();
//     json['visibility'] = visibility;
//     json['wind'] = wind?.toJson();
//     json['clouds'] = clouds?.toJson();
//     json['dt'] = dt;
//     json['sys'] = sys?.toJson();
//     json['timezone'] = timezone;
//     json['id'] = id;
//     json['name'] = name;
//     json['cod'] = cod;
//     return json;
//   }
// }

// class Coord {
//   double? lon;
//   double? lat;

//   Coord({
//     this.lon,
//     this.lat,
//   });

//   Coord.fromJson(Map<String, dynamic> json) {
//     lon = json['lon'] as double?;
//     lat = json['lat'] as double?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['lon'] = lon;
//     json['lat'] = lat;
//     return json;
//   }
// }

// class Weather2 {
//   int? id;
//   String? main;
//   String? description;
//   String? icon;

//   Weather2({
//     this.id,
//     this.main,
//     this.description,
//     this.icon,
//   });

//   Weather2.fromJson(Map<String, dynamic> json) {
//     id = json['id'] as int?;
//     main = json['main'] as String?;
//     description = json['description'] as String?;
//     icon = json['icon'] as String?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['id'] = id;
//     json['main'] = main;
//     json['description'] = description;
//     json['icon'] = icon;
//     return json;
//   }
// }

// class Main {
//   double? temp;
//   double? feelsLike;
//   double? tempMin;
//   double? tempMax;
//   int? pressure;
//   int? humidity;
//   int? seaLevel;
//   int? grndLevel;

//   Main({
//     this.temp,
//     this.feelsLike,
//     this.tempMin,
//     this.tempMax,
//     this.pressure,
//     this.humidity,
//     this.seaLevel,
//     this.grndLevel,
//   });

//   Main.fromJson(Map<String, dynamic> json) {
//     temp = json['temp'] as double?;
//     feelsLike = json['feels_like'] as double?;
//     tempMin = json['temp_min'] as double?;
//     tempMax = json['temp_max'] as double?;
//     pressure = json['pressure'] as int?;
//     humidity = json['humidity'] as int?;
//     seaLevel = json['sea_level'] as int?;
//     grndLevel = json['grnd_level'] as int?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['temp'] = temp;
//     json['feels_like'] = feelsLike;
//     json['temp_min'] = tempMin;
//     json['temp_max'] = tempMax;
//     json['pressure'] = pressure;
//     json['humidity'] = humidity;
//     json['sea_level'] = seaLevel;
//     json['grnd_level'] = grndLevel;
//     return json;
//   }
// }

// class Wind {
//   double? speed;
//   int? deg;
//   double? gust;

//   Wind({
//     this.speed,
//     this.deg,
//     this.gust,
//   });

//   Wind.fromJson(Map<String, dynamic> json) {
//     speed = json['speed'] as double?;
//     deg = json['deg'] as int?;
//     gust = json['gust'] as double?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['speed'] = speed;
//     json['deg'] = deg;
//     json['gust'] = gust;
//     return json;
//   }
// }

// class Clouds {
//   int? all;

//   Clouds({
//     this.all,
//   });

//   Clouds.fromJson(Map<String, dynamic> json) {
//     all = json['all'] as int?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['all'] = all;
//     return json;
//   }
// }

// class Sys {
//   String? country;
//   int? sunrise;
//   int? sunset;

//   Sys({
//     this.country,
//     this.sunrise,
//     this.sunset,
//   });

//   Sys.fromJson(Map<String, dynamic> json) {
//     country = json['country'] as String?;
//     sunrise = json['sunrise'] as int?;
//     sunset = json['sunset'] as int?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['country'] = country;
//     json['sunrise'] = sunrise;
//     json['sunset'] = sunset;
//     return json;
//   }
// }

///

class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;

  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure});

  // now let's buildafunction to parse the 150N file into the model

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels like"];
  }
}
