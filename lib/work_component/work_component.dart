import 'package:angular2/core.dart';
import 'package:angular2/security.dart';

import '../video_service.dart';

@Component(
  selector: 'work-page',
  templateUrl: 'work_component.html',
  styleUrls: const ['work_component.css'],
  providers: const [VideoService],
  )
class WorkComponent {
  DomSanitizationService _sanitizer;
  VideoService _video_service;

  WorkComponent(this._sanitizer, this._video_service);

  sanitizeResource(String url) {
    return this._sanitizer.bypassSecurityTrustResourceUrl(url);
  }

  sanitizeUrl(String url) {
    return this._sanitizer.bypassSecurityTrustUrl(url);
  }

  List<Video> get videos => this._video_service.videos;
}
