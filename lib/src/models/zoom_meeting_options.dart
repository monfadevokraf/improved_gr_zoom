class ZoomMeetingOptions {
  final String displayName;
  final String meetingId;
  final String meetingPassword;
  final String? zoomToken;
  final String? zoomAccessToken;
  final String? jwtAPIKey; //--for web
  final String? jwtSignature; //--for web
  final int meetingViewOptions;
  final int inviteOptions;
  final bool disableDialIn;
  final bool disableDrive;
  final bool disableShare;
  final bool noDisconnectAudio;
  final bool noAudio;
  final bool disableInvite;
  // only for Android
  final bool noMeetingEndMessage;
  // only for Android
  final bool noMeetingErrorMessage;
  final bool noTitlebar;
  final bool noBottomToolbar;
  // available for android, and using MeetingViewsOptions.NO_BUTTON_VIDEO on iOS
  final bool noVideo;
  final bool disableInviteUrl;

  const ZoomMeetingOptions({
    required this.displayName,
    required this.meetingId,
    required this.meetingPassword,
    this.zoomToken,
    this.zoomAccessToken,
    this.jwtAPIKey,
    this.jwtSignature,
    this.meetingViewOptions = 0,
    this.inviteOptions = 0,
    this.disableDialIn = false,
    this.disableDrive = false,
    this.disableShare = false,
    this.noDisconnectAudio = false,
    this.noAudio = false,
    this.disableInvite = false,
    this.noMeetingEndMessage = false,
    this.noMeetingErrorMessage = false,
    this.noTitlebar = false,
    this.noBottomToolbar = false,
    this.noVideo = false,
    this.disableInviteUrl = false,
  });

  Map<String, String> toMap() {
    return {
      "displayName": displayName,
      "meetingId": meetingId,
      "meetingPassword": meetingPassword,
      "meetingViewOptions": meetingViewOptions.toString(),
      "inviteOptions": inviteOptions.toString(),
      "disableDialIn": disableDialIn.toString(),
      "disableDrive": disableDrive.toString(),
      "disableShare": disableShare.toString(),
      "noDisconnectAudio": noDisconnectAudio.toString(),
      "noAudio": noAudio.toString(),
      "disableInvite": disableInvite.toString(),
      "noMeetingEndMessage": noMeetingEndMessage.toString(),
      "noMeetingErrorMessage": noMeetingErrorMessage.toString(),
      "noTitlebar": noTitlebar.toString(),
      "noBottomToolbar": noBottomToolbar.toString(),
      "noVideo": noVideo.toString(),
      "disableInviteUrl": disableInviteUrl.toString(),
      "zoomAccessToken": zoomToken ?? "",
    };
  }
}
