import "dart:async";
import "package:plugin_platform_interface/plugin_platform_interface.dart";

import "models/models.dart";
import "zoom_method_channel.dart";

abstract class ZoomPlatform extends PlatformInterface {
  ZoomPlatform() : super(token: _token);
  static final Object _token = Object();
  static ZoomPlatform _instance = MethodChannelZoom();
  static ZoomPlatform get instance => _instance;
  static set instance(ZoomPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<List> initZoom(ZoomOptions options) async {
    throw UnimplementedError("initZoom() has not been implemented.");
  }

  Future<bool> startMeeting(ZoomMeetingOptions options) async {
    throw UnimplementedError("startMeeting() has not been implemented.");
  }

  Future<bool> joinMeeting(ZoomMeetingOptions options) async {
    throw UnimplementedError("joinMeeting() has not been implemented.");
  }

  Future<List> meetingStatus(String meetingId) async {
    throw UnimplementedError("meetingStatus() has not been implemented.");
  }

  Stream<dynamic> onMeetingStatus() {
    throw UnimplementedError("onMeetingStatus() has not been implemented.");
  }

  Stream<dynamic> listenToInMeetingService() {
    throw UnimplementedError(
        "listenToInMeetingService() has not been implemented.",);
  }
}
