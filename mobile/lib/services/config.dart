
import 'package:app/services/storage.dart';
import 'package:stated/stated.dart';

class Config extends Observable {
  Config({
    required Storage storage,
  }) : _storage = storage {
    _storage.subscribe(notifyListeners);
  }

  static Future<Config> create(Resolver resolver) async =>
      Config(storage: await resolver.resolve());

  String? get theme => _storage.get<String>('app.theme');

  set theme(String? value) => _storage.set('app.theme', value);

  final Storage _storage;
}
