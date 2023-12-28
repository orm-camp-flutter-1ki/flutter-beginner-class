import 'package:flutter_beginner_class/23_12_28/model/time.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('현재 시간이 모델로 잘 들어가야 한다', () async {
    // final api = TimeApi();

    Map<String, dynamic> mockJson = {
      "abbreviation": "KST",
      "client_ip": "121.135.3.190",
      "datetime": "2023-12-28T10:10:59.790442+09:00",
      "day_of_week": 4,
      "day_of_year": 362,
      "dst": false,
      "dst_from": null,
      "dst_offset": 0,
      "dst_until": null,
      "raw_offset": 32400,
      "timezone": "Asia/Seoul",
      "unixtime": 1703725859,
      "utc_datetime": "2023-12-28T01:10:59.790442+00:00",
      "utc_offset": "+09:00",
      "week_number": 52
    };

    Time time = Time.fromJson(mockJson);

    expect(time.time, '2023-12-28T10:10:59.790442+09:00');
    expect(time.utcTime, '2023-12-28T01:10:59.790442+00:00');
  });
}
