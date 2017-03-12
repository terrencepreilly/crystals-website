import 'package:angular2/core.dart';
import 'writing_service.dart';

@Component(
  selector: 'writing-page',
  templateUrl: 'writing_component.html',
  styleUrls: const ['writing_component.css'],
  providers: const [WritingService],
  )
class WritingComponent {
  final WritingService _writing_service;

  WritingComponent(this._writing_service);

  List<Writing> get writings => _writing_service.writings;
}
