class MeetingViewsOptions {
  MeetingViewsOptions._();
  // NO_BUTTON_VIDEO
  static const noButtonVideo = 1;
  // NO_BUTTON_AUDIO
  static const noButtonAudio = 2;
  // NO_BUTTON_SHARE
  static const noButtonShare = 4;
  // NO_BUTTON_PARTICIPANTS
  static const noButtonParticipants = 8;
  // NO_BUTTON_MORE
  static const noButtonMore = 16;
  // NO_TEXT_MEETING_ID
  static const noTextMeetingId = 32;
  // NO_TEXT_PASSWORD
  static const noTextPassword = 64;
  // NO_BUTTON_LEAVE
  static const noButtonLeave = 128;
  // NO_BUTTON_SWITCH_CAMERA
  static const noButtonSwitchCamera = 256;
  // NO_BUTTON_SWITCH_AUDIO_SOURCE
  static const noButtonSwitchAudioSource = 512;
}

class InviteOptions {
  InviteOptions._();
  // INVITE_ENABLE_ALL
  static const inviteEnableAll = 255;
  // INVITE_VIA_SMS
  static const inviteViaSms = 1;
  // INVITE_VIA_EMAIL
  static const inviteViaEmail = 2;
  // INVITE_COPY_URL
  static const inviteCopyUrl = 4;
  // INVITE_DISABLE_ALL
  static const inviteDisableAll = 0;
}
