import 'package:angular2/core.dart';

class Video {
  final String _playerUrl;
  final String _url;
  final String _title;

  Video(this._playerUrl, this._url, this._title);

  String get playerUrl => _playerUrl;
  String get url => _url;
  String get title => _title;
}


@Injectable()
class VideosService {
  final List<Video> _videos = [
    new Video(
      "https://player.vimeo.com/video/196432229",
      "https://vimeo.com/196432229",
      "LGBTQ Community on CMU's Campus",
      ),
    ];

  List<Video> get videos => _videos;
}
