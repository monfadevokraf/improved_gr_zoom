import "dart:async";

import "package:gr_zoom/src/zoom_platform_interface.dart";

import "models/models.dart";

class Zoom {
  Zoom._();

  static Future<List> init(ZoomOptions options) async =>
      ZoomPlatform.instance.initZoom(options);

  static Future<bool> startMeeting(ZoomMeetingOptions options) async =>
      ZoomPlatform.instance.startMeeting(options);

  static Future<bool> joinMeeting(ZoomMeetingOptions options) async =>
      ZoomPlatform.instance.joinMeeting(options);

  static Future<List> meetingStatus(String meetingId) =>
      ZoomPlatform.instance.meetingStatus(meetingId);

  static Stream<dynamic> get onMeetingStateChanged =>
      ZoomPlatform.instance.onMeetingStatus();

  static Stream<dynamic> get inMeetingService =>
      ZoomPlatform.instance.listenToInMeetingService();
}
