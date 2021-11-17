typedef UserId = String;

class User {
  User({
    required this.userId,
    required this.alias,
  });

  final UserId userId;
  final String alias;
}
