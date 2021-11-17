import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:stated/stated.dart';

import 'services/services.dart';

Store production() {
  return Store()
    ..addLazy<Storage>(LocalStorage.create)
    ..addLazy(Config.create)
    ..addLazy(ThemeService.create)
    ..addLazy(History.create);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final store = production();

  runApp(FutureBuilder<Config>(
      future: store.resolve<Config>(),
      builder: (context, c) {
        if (c.hasData) {
          return FutureBuilder(
            /// activates all the other services
            future: store.init(),
            builder: (context, init) => init.connectionState ==
                    ConnectionState.done
                ? LegacyProvider(store: store, builder: (context) => MyApp())
                : Splash((c.data!.theme ?? 'no theme') + ' .... still loading'),
          );
        } else {
          return Splash('system loading');
        }
      }));
}

class LegacyProvider extends StatelessWidget {
  const LegacyProvider({
    required this.store,
    required this.builder,
  });

  final Store store;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    SingleChildWidget buildListenable<T extends Listenable>(T value) {
      return ListenableProvider<T>.value(value: value);
    }

    SingleChildWidget buildProvider<T>(T value) {
      if (<T>[] is List<Listenable>) {
        return (buildListenable as dynamic)<T>(value);
      } else {
        return Provider.value(value: value);
      }
    }

    return MultiProvider(
      providers: [
        ...store.registry.values.map((e) => e.pipeInstance(buildProvider)),
        Provider<Resolver>.value(value: store),
      ],
      builder: (context, _) => builder(context),
    );
  }
}

class Splash extends StatelessWidget {
  Splash(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(label),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final history = context.watch<History>();
    return MaterialApp(
      home: Router(
        routerDelegate: history,
        backButtonDispatcher: RootBackButtonDispatcher(),
      ),
    );
  }
}
