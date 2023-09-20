class ProfileData {
  String? title = "hello";
  String? supTitle = "khaled";
  String? thirdTitle = "thirdTitle";
  String? body = "thirdTitle";
  String? target = "thirdTitle";
  String? skills = "thirdTitle";
  String? softSkills = "thirdTitle";
  String? activies = "thirdTitle";
  String? interests = "thirdTitle";
  String? c = "thirdTitle";
  String? email = "thirdTitle";
  String? linkedin = "thirdTitle";
  String? github = "thirdTitle";
  String? telegram = "thirdTitle";
  String? phone = "thirdTitle";
 late List<String> images ;
 late List<Projects> projects ;

  ProfileData(
      {this.title,
      this.supTitle,
      this.thirdTitle,
      this.body,
      this.target,
      this.skills,
      this.softSkills,
      this.activies,
      this.interests,
      this.c,
      this.email,
      this.linkedin,
      this.github,
      this.telegram,
      this.phone,
   required   this.images,
     required this.projects});

   ProfileData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    supTitle = json['supTitle'];
    thirdTitle = json['thirdTitle'];
    body = json['body'];
    target = json['target'];
    skills = json['skills'];
    softSkills = json['softSkills'];
    activies = json['activies'];
    interests = json['interests'];
    c = json['c'];
    email = json['email'];
    linkedin = json['linkedin'];
    github = json['github'];
    telegram = json['telegram'];
    phone = json['phone'];
    images = json['images'].cast<String>();
    if (json['projects'] != null) {
      projects = <Projects>[];
      json['projects'].forEach((v) {
        projects.add(Projects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['title'] = title;
    data['supTitle'] = supTitle;
    data['thirdTitle'] = thirdTitle;
    data['body'] = body;
    data['target'] = target;
    data['skills'] = skills;
    data['softSkills'] = softSkills;
    data['activies'] = activies;
    data['interests'] = interests;
    data['c'] = c;
    data['email'] = email;
    data['linkedin'] = linkedin;
    data['github'] = github;
    data['telegram'] = telegram;
    data['phone'] = phone;
    data['images'] = images;
    data['projects'] = projects.map((v) => v.toJson()).toList();
    return data;
  }
}

class Projects {
  String? img;
  String? name;
  String? body;
  String? link;

  Projects({this.img, this.name, this.body, this.link});

  Projects.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    name = json['name'];
    body = json['body'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['img'] = img;
    data['name'] = name;
    data['body'] = body;
    data['link'] = link;
    return data;
  }
}