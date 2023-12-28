import 'package:json_annotation/json_annotation.dart';

part 'time.g.dart';

@JsonSerializable(explicitToJson: true)
class Time {
  @JsonKey(name: 'datetime')
  String time;

  @JsonKey(name: 'utc_datetime')
  String utcTime;

  Time({
    required this.time,
    required this.utcTime,
  });

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);

  Map<String, dynamic> toJson() => _$TimeToJson(this);
}