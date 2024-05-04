

class Randomuser {
  String gender, email, phone, cell, nat;
  Name name;
  Location location;
  Login login;
  Dob dob;
  Registered registered;
  Id id;
  Picture picture;

  Randomuser(
      {required this.gender,
      required this.email,
      required this.phone,
      required this.cell,
      required this.nat,
      required this.name,
      required this.location,
      required this.login,
      required this.dob,
      required this.registered,
      required this.id,
      required this.picture});

  factory Randomuser.from(dynamic data) {
    Name name = Name.from(data['name']);
    Location location = Location.from(data['location']);
    Login login = Login.from(data['login']);
    Dob dob = Dob.from(data['dob']);
    Registered registered = Registered.from(data['registered']);
    Id id = Id.from(data['id']);
    Picture picture = Picture.from(data['picture']);
    return Randomuser(
        gender: data['gender'],
        email: data['email'],
        phone: data['phone'],
        cell: data['cell'],
        nat: data['nat'],
        name: name,
        location: location,
        login: login,
        dob: dob,
        registered: registered,
        id: id,
        picture: picture);
  }
}

class Name {
  String title, first, last;

  Name({required this.title, required this.first, required this.last});

  factory Name.from(dynamic data) {
    return Name(title: data['title'], first: data['first'], last: data['last']);
  }
}

class Location {
  String city, state, country, postcode;
  Street street;
  Coordinates coordinates;
  Timezone timezone;

  

  Location(
      {required this.city,
      required this.state,
      required this.country,
      required this.postcode,
      required this.street,
      required this.coordinates,
      required this.timezone});

  factory Location.from(dynamic data) {
    Street street = Street.from(data['street']);
    Coordinates coordinates = Coordinates.from(data['coordinates']);
    Timezone timezone = Timezone.from(data['timezone']);
    String postCode = '';
    if(data['postcode'] is String){
      postCode = data['postcode'];
    }else{
      postCode = data['postcode'].toString();
    }
    return Location(
        city: data['city'],
        state: data['state'],
        country: data['country'],
        postcode: postCode,
        street: street,
        coordinates: coordinates,
        timezone: timezone);
  }
}

class Street {
  int number;
  String name;

  Street({required this.number, required this.name});

  factory Street.from(dynamic data) {
    return Street(number: data['number'], name: data['name']);
  }
}

class Coordinates {
  String latitude, longitude;

  Coordinates({required this.latitude, required this.longitude});

  factory Coordinates.from(dynamic data) {
    return Coordinates(
        latitude: data['latitude'], longitude: data['longitude']);
  }
}

class Timezone {
  String offset, description;

  Timezone({required this.offset, required this.description});

  factory Timezone.from(dynamic data) {
    return Timezone(offset: data['offset'], description: data['description']);
  }
}

class Login {
  String uuid, username, password, salt, md5, sha1, sha256;

  Login(
      {required this.uuid,
      required this.username,
      required this.password,
      required this.salt,
      required this.md5,
      required this.sha1,
      required this.sha256});

  factory Login.from(dynamic data) {
    return Login(
        uuid: data['uuid'],
        username: data['username'],
        password: data['password'],
        salt: data['salt'],
        md5: data['md5'],
        sha1: data['sha1'],
        sha256: data['sha256']);
  }
}

class Dob {
  String? date;
  int age;

  Dob({required this.date, required this.age});

  factory Dob.from(dynamic data) {
    return Dob(date: data['data'], age: data['age']);
  }
}

class Registered {
  String? date;
  int age;

  Registered({required this.date, required this.age});

  factory Registered.from(dynamic data) {
    return Registered(date: data['data'], age: data['age']);
  }
}

class Id {
  String? name, value;

  Id({required this.name, required this.value});

  factory Id.from(dynamic data) {
    return Id(name: data['name'], value: data['value']);
  }
}

class Picture {
  String large, medium, thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.from(dynamic data) {
    return Picture(
        large: data['large'],
        medium: data['medium'],
        thumbnail: data['thumbnail']);
  }
}


//             gender": "female",
//             "name": {
//                 "title": "Ms",
//                 "first": "Adelgunde",
//                 "last": "Karger"
//             },
//             "location": {
//                 "street": {
//                     "number": 3454,
//                     "name": "Danziger Straße"
//                 },
//                 "city": "Herbrechtingen",
//                 "state": "Nordrhein-Westfalen",
//                 "country": "Germany",
//                 "postcode": 75764,
//                 "coordinates": {
//                     "latitude": "-48.3470",
//                     "longitude": "115.1349"
//                 },
//                 "timezone": {
//                     "offset": "+10:00",
//                     "description": "Eastern Australia, Guam, Vladivostok"
//                 }
//             },
//             "email": "adelgunde.karger@example.com",
//             "login": {
//                 "uuid": "06de5359-bf71-47e5-8c5f-430264f27beb",
//                 "username": "yellowfish299",
//                 "password": "emily1",
//                 "salt": "7EhE5vbX",
//                 "md5": "d26472c0110511f9ec91dfb2ee826988",
//                 "sha1": "53b97cdc02d6df0bcf5b8fe6f22f65a87a64b4fc",
//                 "sha256": "aa3eff8b8dd88df2d226035e44d0b27b7be794c2acb99236f5f047d51de7d100"
//             },
//             "dob": {
//                 "date": "1948-01-14T19:15:46.634Z",
//                 "age": 76
//             },
//             "registered": {
//                 "date": "2005-09-15T02:27:28.020Z",
//                 "age": 18
//             },
//             "phone": "0291-4797607",
//             "cell": "0176-5013525",
//             "id": {
//                 "name": "SVNR",
//                 "value": "43 140148 K 653"
//             },
//             "picture": {
//                 "large": "https://randomuser.me/api/portraits/women/40.jpg",
//                 "medium": "https://randomuser.me/api/portraits/med/women/40.jpg",
//                 "thumbnail": "https://randomuser.me/api/portraits/thumb/women/40.jpg"
//             },
//             "nat": "DE"
