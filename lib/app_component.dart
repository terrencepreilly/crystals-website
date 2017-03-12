// Component with basic navigation at the top, with a main display.

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'about_component/about_component.dart';
import 'contact_component/contact_component.dart';
import 'splash_component/splash_component.dart';
import 'videos_component/videos_component.dart';
import 'writing_component/writing_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
  providers: const [ROUTER_PROVIDERS],
)
@RouteConfig(const [
  const Route(
    path: '/about',
    name: 'About',
    component: AboutComponent),
  const Route(
    path: '/contact',
    name: 'Contact',
    component: ContactComponent),
  const Route(
    path: '/',
    name: 'Splash',
    component: SplashComponent,
    useAsDefault: true),
  const Route(
    path: '/videos',
    name: 'Videos',
    component: VideosComponent),
  const Route(
    path: '/writing',
    name: 'Writing',
    component: WritingComponent),
])
class AppComponent {
  String banner = 'assets/banner.jpg';
}
