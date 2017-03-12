import 'package:angular2/core.dart';

import '../videos_component/videos_component.dart';
import '../writing_component/writing_component.dart';

@Component(
  selector: 'splash-page',
  templateUrl: 'splash_component.html',
  styleUrls: const ['splash_component.css'],
  directives: const [
      VideosComponent,
      WritingComponent,
      ],
  )
class SplashComponent { }
