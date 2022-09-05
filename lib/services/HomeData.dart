class HomeData{

  late String name;
  late int activity_id;
  late String email;
  late int sex;
  late String birth_date;
  late double height;
  late double current_weight;
  late double goal_weight;

  HomeData(
      {
        required this.name,
        required this.activity_id,
        required this.email,
        required this.sex,
        required this.birth_date,
        required this.height,
        required this.current_weight,
        required this.goal_weight,
      });

  HomeData.fromJson(Map<String,dynamic>json):
        name=json['name'],
        activity_id=json['activity_id'],
        email=json['email'],
        sex=json['sex'],
        birth_date=json['birth_date'],
        height=json['height'],
        current_weight=json['current_weight'],
        goal_weight=json['goal_weight'];

}