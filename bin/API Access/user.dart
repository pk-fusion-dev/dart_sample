class User {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Registered? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;

  User({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      gender: json["gender"],
      name: json["name"] == null ? null : Name.fromJson(json["name"]),
      location:
          json["location"] == null ? null : Location.fromJson(json["location"]),
      email: json["email"],
      login: json["login"] == null ? null : Login.fromJson(json["login"]),
      dob: json["dob"] == null ? null : Dob.fromJson(json["dob"]),
      registered: json["registered"] == null
          ? null
          : Registered.fromJson(json["registered"]),
      phone: json["phone"],
      cell: json["cell"],
      id: json["id"] == null ? null : Id.fromJson(json["id"]),
      picture:
          json["picture"] == null ? null : Picture.fromJson(json["picture"]),
      nat: json["nat"],
    );
  }
}

class Dob {
  DateTime? date;
  int? age;

  Dob({
    this.date,
    this.age,
  });

  factory Dob.fromJson(Map<String, dynamic> json) {
    return Dob(
      date: DateTime.tryParse(json["date"] ?? ""),
      age: json["age"],
    );
  }
}

class Registered {
  DateTime? date;
  int? age;

  Registered({
    this.date,
    this.age,
  });

  factory Registered.fromJson(Map<String, dynamic> json) {
    return Registered(
      date: DateTime.tryParse(json["date"] ?? ""),
      age: json["age"],
    );
  }
}

class Id {
  String? name;
  String? value;

  Id({
    this.name,
    this.value,
  });

  factory Id.fromJson(Map<String, dynamic> json) {
    return Id(
      name: json["name"],
      value: json["value"],
    );
  }
}

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  String? postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    var postData = '-';
    if (json["postcode"] is int) {
      postData = json["postcode"].toString();
    } else {
      postData = json["postcode"];
    }
    return Location(
      street: json["street"] == null ? null : Street.fromJson(json["street"]),
      city: json["city"],
      state: json["state"],
      country: json["country"],
      postcode: postData,
      coordinates: json["coordinates"] == null
          ? null
          : Coordinates.fromJson(json["coordinates"]),
      timezone:
          json["timezone"] == null ? null : Timezone.fromJson(json["timezone"]),
    );
  }
}

class Coordinates {
  String? latitude;
  String? longitude;

  Coordinates({
    this.latitude,
    this.longitude,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      latitude: json["latitude"],
      longitude: json["longitude"],
    );
  }
}

class Street {
  int? number;
  String? name;

  Street({
    this.number,
    this.name,
  });

  factory Street.fromJson(Map<String, dynamic> json) {
    return Street(
      number: json["number"],
      name: json["name"],
    );
  }
}

class Timezone {
  String? offset;
  String? description;

  Timezone({
    this.offset,
    this.description,
  });

  factory Timezone.fromJson(Map<String, dynamic> json) {
    return Timezone(
      offset: json["offset"],
      description: json["description"],
    );
  }
}

class Login {
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;

  Login({
    this.uuid,
    this.username,
    this.password,
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      uuid: json["uuid"],
      username: json["username"],
      password: json["password"],
      salt: json["salt"],
      md5: json["md5"],
      sha1: json["sha1"],
      sha256: json["sha256"],
    );
  }
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({
    this.title,
    this.first,
    this.last,
  });

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      title: json["title"],
      first: json["first"],
      last: json["last"],
    );
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json["large"],
      medium: json["medium"],
      thumbnail: json["thumbnail"],
    );
  }
}


/*

{
	"gender": "male",
	"name": {
		"title": "Mr",
		"first": "Bernd",
		"last": "Fetzer"
	},
	"location": {
		"street": {
			"number": 3668,
			"name": "Poststraße"
		},
		"city": "Kirn",
		"state": "Schleswig-Holstein",
		"country": "Germany",
		"postcode": 85606,
		"coordinates": {
			"latitude": "-52.7940",
			"longitude": "-41.4141"
		},
		"timezone": {
			"offset": "-12:00",
			"description": "Eniwetok, Kwajalein"
		}
	},
	"email": "bernd.fetzer@example.com",
	"login": {
		"uuid": "1305c7ed-a5d0-4672-be44-2e45e2c03c5d",
		"username": "goldenfish230",
		"password": "tara",
		"salt": "MuYaADh8",
		"md5": "807070bc8a683aeaab5240eaff621ca2",
		"sha1": "68b0103edc886603b66d0aa02b17806a6a5c612a",
		"sha256": "07fa8c360c4466e2cfa5ab8821a00ae2c04c081a267c6408d70ca2af547268de"
	},
	"dob": {
		"date": "1996-05-06T01:55:36.244Z",
		"age": 27
	},
	"registered": {
		"date": "2007-07-25T06:14:21.647Z",
		"age": 16
	},
	"phone": "0817-0273801",
	"cell": "0176-0060098",
	"id": {
		"name": "SVNR",
		"value": "50 050596 F 329"
	},
	"picture": {
		"large": "https://randomuser.me/api/portraits/men/34.jpg",
		"medium": "https://randomuser.me/api/portraits/med/men/34.jpg",
		"thumbnail": "https://randomuser.me/api/portraits/thumb/men/34.jpg"
	},
	"nat": "DE"
}

*/