class FixturesModel {
  FixturesModel({
    required this.parameters,
    required this.response,
  });

  final Parameters? parameters;
  final List<Response> response;

  factory FixturesModel.fromJson(Map<String, dynamic> json) {
    return FixturesModel(
      parameters: json["parameters"] == null
          ? null
          : Parameters.fromJson(json["parameters"]),
      response: json["response"] == null
          ? []
          : (json["response"] as List)
              .map((element) => (Response.fromJson(element)))
              .toList(),
    );
  }
}

class Parameters {
  Parameters({
    required this.date,
  });

  final DateTime? date;

  factory Parameters.fromJson(Map<String, dynamic> json) {
    return Parameters(
      date: DateTime.tryParse(json["date"] ?? ""),
    );
  }
}

class Response {
  Response({
    required this.fixture,
    required this.league,
    required this.teams,
    required this.goals,
    required this.score,
  });

  final Fixture? fixture;
  final League? league;
  final Teams? teams;
  final Goals? goals;
  final Score? score;

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      fixture:
          json["fixture"] == null ? null : Fixture.fromJson(json["fixture"]),
      league: json["league"] == null ? null : League.fromJson(json["league"]),
      teams: json["teams"] == null ? null : Teams.fromJson(json["teams"]),
      goals: json["goals"] == null ? null : Goals.fromJson(json["goals"]),
      score: json["score"] == null ? null : Score.fromJson(json["score"]),
    );
  }
}

class Fixture {
  Fixture({
    required this.timezone,
    required this.date,
    required this.status,
  });

  final String? timezone;
  final DateTime? date;

  final Status? status;

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(
      timezone: json["timezone"],
      date: DateTime.tryParse(json["date"] ?? ""),
      status: json["status"] == null ? null : Status.fromJson(json["status"]),
    );
  }
}

class Status {
  Status({
    required this.long,
    required this.short,
    required this.elapsed,
    required this.extra,
  });

  final String? long;
  final String? short;
  final int? elapsed;
  final int? extra;

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(
      long: json["long"],
      short: json["short"],
      elapsed: json["elapsed"],
      extra: json["extra"],
    );
  }
}

class Goals {
  Goals({
    required this.home,
    required this.away,
  });

  final int? home;
  final int? away;

  factory Goals.fromJson(Map<String, dynamic> json) {
    return Goals(
      home: json["home"],
      away: json["away"],
    );
  }
}

class League {
  League({
    required this.id,
    required this.name,
    required this.country,
    required this.logo,
    required this.flag,
  });

  final int? id;
  final String? name;
  final String? country;
  final String? logo;
  final String? flag;

  factory League.fromJson(Map<String, dynamic> json) {
    return League(
      id: json["id"],
      name: json["name"],
      country: json["country"],
      logo: json["logo"],
      flag: json["flag"],
    );
  }
}

class Score {
  Score({
    required this.halftime,
    required this.fulltime,
    required this.extratime,
    required this.penalty,
  });

  final Goals? halftime;
  final Goals? fulltime;
  final Goals? extratime;
  final Goals? penalty;

  factory Score.fromJson(Map<String, dynamic> json) {
    return Score(
      halftime:
          json["halftime"] == null ? null : Goals.fromJson(json["halftime"]),
      fulltime:
          json["fulltime"] == null ? null : Goals.fromJson(json["fulltime"]),
      extratime:
          json["extratime"] == null ? null : Goals.fromJson(json["extratime"]),
      penalty: json["penalty"] == null ? null : Goals.fromJson(json["penalty"]),
    );
  }
}

class Teams {
  Teams({
    required this.home,
    required this.away,
  });

  final Home? home;
  final Home? away;

  factory Teams.fromJson(Map<String, dynamic> json) {
    return Teams(
      home: json["home"] == null ? null : Home.fromJson(json["home"]),
      away: json["away"] == null ? null : Home.fromJson(json["away"]),
    );
  }
}

class Home {
  Home({
    required this.name,
    required this.logo,
  });

  final String? name;
  final String? logo;

  factory Home.fromJson(Map<String, dynamic> json) {
    return Home(
      name: json["name"],
      logo: json["logo"],
    );
  }
}
