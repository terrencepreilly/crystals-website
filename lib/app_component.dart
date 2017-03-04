// Component with basic navigation at the top, with a main display.

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'about_component/about_component.dart';
import 'work_component/work_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
  providers: const [ROUTER_PROVIDERS],
)
@RouteConfig(const [
  const Route(
    path: '/work',
    name: 'Work',
    component: WorkComponent,
    useAsDefault: true),
  const Route(
    path: '/about',
    name: 'About',
    component: AboutComponent),
])
class AppComponent {}
