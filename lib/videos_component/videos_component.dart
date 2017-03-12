import 'package:angular2/core.dart';
import 'package:angular2/security.dart';

import 'videos_service.dart';

@Component(
  selector: 'videos-page',
  templateUrl: 'videos_component.html',
  styleUrls: const ['videos_component.css'],
  providers: const [VideosService],
  )
class VideosComponent {
  DomSanitizationService _sanitizer;
  VideosService _videos_service;

  VideosComponent(this._sanitizer, this._videos_service);

  sanitizeResource(String url) {
    return this._sanitizer.bypassSecurityTrustResourceUrl(url);
  }

  sanitizeUrl(String url) {
    return this._sanitizer.bypassSecurityTrustUrl(url);
  }

  List<Video> get videos => this._videos_service.videos;
}
