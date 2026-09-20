class JobModel {
  int? count;
  String? next;
  String? previous;
  List<Results>? results;

  JobModel({this.count, this.next, this.previous, this.results});

  JobModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? id;
  String? role;
  String? companyName;
  String? companyNumEmployees;
  String? employmentType;
  String? location;
  bool? remote;
  String? logo;
  String? url;
  String? text;
  String? datePosted;
  List<String>? keywords;
  String? source;

  Results(
      {this.id,
      this.role,
      this.companyName,
      this.companyNumEmployees,
      this.employmentType,
      this.location,
      this.remote,
      this.logo,
      this.url,
      this.text,
      this.datePosted,
      this.keywords,
      this.source});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    role = json['role'];
    companyName = json['company_name'];
    companyNumEmployees = json['company_num_employees'];
    employmentType = json['employment_type'];
    location = json['location'];
    remote = json['remote'];
    logo = json['logo'];
    url = json['url'];
    text = json['text'];
    datePosted = json['date_posted'];
    keywords = json['keywords'].cast<String>();
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['role'] = role;
    data['company_name'] = companyName;
    data['company_num_employees'] = companyNumEmployees;
    data['employment_type'] = employmentType;
    data['location'] = location;
    data['remote'] = remote;
    data['logo'] = logo;
    data['url'] = url;
    data['text'] = text;
    data['date_posted'] = datePosted;
    data['keywords'] = keywords;
    data['source'] = source;
    return data;
  }
}