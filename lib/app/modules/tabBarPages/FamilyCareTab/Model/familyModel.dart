import 'dart:convert';

List<AlarmModel> alarmModelFromJson(String str) => List<AlarmModel>.from(json.decode(str).map((x) => AlarmModel.fromJson(x)));

String alarmModelToJson(List<AlarmModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AlarmModel {
  AlarmModel({
    this.title,
    this.time,
    this.status,
  });

  String ? title;
  String ? time;
  bool ? status;

  factory AlarmModel.fromJson(Map<String, dynamic> json) => AlarmModel(
    title: json["title"],
    time: json["time"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "time": time,
    "status": status,
  };
}
