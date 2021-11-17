import 'package:app/services/services.dart';
import 'package:stated/stated.dart';

class ThemeService extends Observable with AsyncInit {
  ThemeService({
    required this.config,
  }) {
    changeTheme(config.theme);
  }

  final Config config;

  static Future<ThemeService> create(Resolver resolver) async => ThemeService(
        config: await resolver.resolve(),
      );

  RantTheme current = RantTheme.dark();

  void changeTheme(String? name) {
    switch (name) {
      case 'light':
        current = RantTheme.light();
        break;
      case 'dark':
      default:
        current = RantTheme.dark();
        break;
    }
    notifyListeners();
  }

  @override
  Future<void> init() async {
    await Future.delayed(Duration(seconds: 1));
  }
}

class RantTheme {
  RantTheme({
    required this.name,
  });

  factory RantTheme.light() {
    return RantTheme(name: 'light');
  }

  factory RantTheme.dark() {
    return RantTheme(name: 'dark');
  }

  final String name;
}
