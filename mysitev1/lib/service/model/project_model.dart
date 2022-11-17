class ProjectModel {
  late String? title;
  late String? description;
  late String? image;
  late String? url;

  ProjectModel({required this.title,required this.description,required this.image,required this.url});
  ProjectModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    image = json['image'];
    url = json['url'];
  }
}
