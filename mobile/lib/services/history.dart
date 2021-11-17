import 'package:app/pages/chat/chat_page.dart';
import 'package:app/pages/dashboard/dashboard_page.dart';
import 'package:flutter/widgets.dart';
import 'package:stated/stated.dart';
import 'package:app/models/models.dart';

class History extends RouterDelegate
    with Disposer, Notifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey;

  History()
      : _navigatorKey = GlobalKey<NavigatorState>(),
        _pages = [];

  static Future<History> create(Resolver resolver) async => History();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        DashboardPage(),
        ..._pages,
      ],
      onPopPage: _handlePop,
    );
  }

  final List<Page> _pages;

  void openChat(ChatId chatId) => openPage(ChatPage(chatId: chatId));

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(configuration) async {
    // skip
  }

  bool _handlePop(Route<dynamic> route, result) {
    if (!route.didPop(result)) return false;
    return _pages.remove(route.settings);
  }

  void openPage(Page page) {
    _pages.add(page);
    notifyListeners();
  }
}
