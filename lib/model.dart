import 'dart:convert';

AllGenderData allDataFromJson(String str) =>
    AllGenderData.fromJson(json.decode(str));

String allDataToJson(AllGenderData data) => json.encode(data.toJson());

class AllGenderData {
  AllGenderData({
    this.results,
  });

  List<Result>? results;

  factory AllGenderData.fromJson(Map<String, dynamic> json) => AllGenderData(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.cell,
  });

  String? gender;
  Name? name;
  Location? location;
  String? email;
  String? cell;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        name: Name.fromJson(json["name"]),
        location: Location.fromJson(json["location"]),
        email: json["email"],
        cell: json["cell"],
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "name": name?.toJson(),
        "location": location?.toJson(),
        "email": email,
        "cell": cell,
      };
}

class Location {
  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.coordinates,
  });

  Street? street;
  String? city;
  String? state;
  String? country;

  Coordinates? coordinates;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        street: Street.fromJson(json["street"]),
        city: json["city"],
        state: json["state"],
        country: json["country"],
        coordinates: Coordinates.fromJson(json["coordinates"]),
      );

  Map<String, dynamic> toJson() => {
        "street": street?.toJson(),
        "city": city,
        "state": state,
        "country": country,
        "coordinates": coordinates?.toJson(),
      };
}

class Coordinates {
  Coordinates({
    this.latitude,
    this.longitude,
  });

  String? latitude;
  String? longitude;

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}

class Street {
  Street({
    this.number,
    this.name,
  });

  int? number;
  String? name;

  factory Street.fromJson(Map<String, dynamic> json) => Street(
        number: json["number"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "name": name,
      };
}

class Name {
  Name({
    this.title,
    this.first,
    this.last,
  });

  String? title;
  String? first;
  String? last;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "first": first,
        "last": last,
      };
}
