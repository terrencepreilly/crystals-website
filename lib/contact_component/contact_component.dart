import 'package:angular2/core.dart';

@Component(
  selector: 'contact-page',
  templateUrl: 'contact_component.html',
  styleUrls: const ['contact_component.css'],
  )
class ContactComponent {
  final String _email = 'crystallreilly@gmail.com';
  // TODO: change to objects with images
  final String _facebook = 'Some facebook link';
  final String _twitter = 'Some twitter link';

  String get email => _email;
  String get facebook => _facebook;
  String get twitter => _twitter;
}
