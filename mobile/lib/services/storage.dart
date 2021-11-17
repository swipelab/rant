import 'package:shared_preferences/shared_preferences.dart';
import 'package:stated/stated.dart';

abstract class Storage with Disposer, Notifier {
  T? get<T>(String path);

  void set<T>(String path, T? value);
}

/// Local Storage using [SharedPreferences]
class LocalStorage extends Observable with AsyncInit implements Storage {
  Map<String, String?> _store = {};
  SharedPreferences? _sharedPreferences;

  static Future<LocalStorage> create(Resolver resolver) async => LocalStorage();

  Future<void> init() async {
    final instance = await SharedPreferences.getInstance();
    for (final key in instance.getKeys()) {
      _store[key] = instance.getString(key);
    }
    _sharedPreferences = instance;
  }

  @override
  T? get<T>(String path) => Serializer.decode(_store[path]);

  @override
  void set<T>(String path, T? value) {
    final serial = Serializer.encode(value);
    _store[path] = serial;
    if (serial == null) {
      _sharedPreferences?.remove(path);
    } else {
      _sharedPreferences?.setString(path, serial);
    }
    notifyListeners();
  }
}
