import "package:flutter/services.dart";
import "package:gr_zoom/src/zoom_platform_interface.dart";

import "models/models.dart";

class MethodChannelZoom extends ZoomPlatform {
  final MethodChannel channel = const MethodChannel("plugins.webcare/zoom_channel");

  /// The event channel used to interact with the native platform.
  final eventChannel = const EventChannel("plugins.webcare/zoom_event_stream");
  final inMeetingServiceChannel =
      const EventChannel("plugins.webcare/zoom_in_meeting_event_stream");

  @override
  Future<List> initZoom(ZoomOptions options) async {
    final optionMap = <String, String>{};
    if (options.appKey != null) {
      optionMap.putIfAbsent("appKey", () => options.appKey!);
    }
    if (options.appSecret != null) {
      optionMap.putIfAbsent("appSecret", () => options.appSecret!);
    }
    if (options.jwtToken != null) {
      optionMap.putIfAbsent("jwtToken", () => options.jwtToken!);
    }
    optionMap.putIfAbsent("domain", () => options.domain);
    optionMap.putIfAbsent(
      "disableScreenshotAndRecording",
      () => options.disableScreenshotAndRecording.toString(),
    );

    return channel
        .invokeMethod<List>("init", optionMap)
        .then<List>((List? value) => value ?? List.empty());
  }

  @override
  Future<bool> joinMeeting(ZoomMeetingOptions options) async {
    return channel
        .invokeMethod<bool>("join", options.toMap())
        .then<bool>((bool? value) => value ?? false);
  }

  @override
  Future<bool> startMeeting(ZoomMeetingOptions options) async {
    return channel
        .invokeMethod<bool>("start", options.toMap())
        .then<bool>((bool? value) => value ?? false);
  }

  @override
  Future<List> meetingStatus(String meetingId) async {
    final optionMap = <String, String>{};
    optionMap.putIfAbsent("meetingId", () => meetingId);

    return channel
        .invokeMethod<List>("meeting_status", optionMap)
        .then<List>((List? value) => value ?? List.empty());
  }

  @override
  Stream<dynamic> onMeetingStatus() {
    return eventChannel.receiveBroadcastStream();
  }

  @override
  Stream<dynamic> listenToInMeetingService() {
    return inMeetingServiceChannel.receiveBroadcastStream();
  }
}
