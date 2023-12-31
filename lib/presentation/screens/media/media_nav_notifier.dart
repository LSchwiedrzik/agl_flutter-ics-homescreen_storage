import 'package:flutter_ics_homescreen/export.dart';

enum MediaNavState { media, fm, am, xm }

class MediaNavStateNotifier extends Notifier<MediaNavState> {
  @override
  MediaNavState build() {
    return MediaNavState.media;
  }

  set(MediaNavState value) {
    state = value;
  }
}

final mediaNavStateProvider =
    NotifierProvider<MediaNavStateNotifier, MediaNavState>(
        MediaNavStateNotifier.new);
