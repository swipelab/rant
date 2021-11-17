// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {required String messageId,
      required User sender,
      required Content body,
      required Receipt receipt}) {
    return _Message(
      messageId: messageId,
      sender: sender,
      body: body,
      receipt: receipt,
    );
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  String get messageId => throw _privateConstructorUsedError;
  User get sender => throw _privateConstructorUsedError;
  Content get body => throw _privateConstructorUsedError;
  Receipt get receipt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call({String messageId, User sender, Content body, Receipt receipt});

  $ContentCopyWith<$Res> get body;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? sender = freezed,
    Object? body = freezed,
    Object? receipt = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Content,
      receipt: receipt == freezed
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as Receipt,
    ));
  }

  @override
  $ContentCopyWith<$Res> get body {
    return $ContentCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call({String messageId, User sender, Content body, Receipt receipt});

  @override
  $ContentCopyWith<$Res> get body;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? sender = freezed,
    Object? body = freezed,
    Object? receipt = freezed,
  }) {
    return _then(_Message(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Content,
      receipt: receipt == freezed
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as Receipt,
    ));
  }
}

/// @nodoc

class _$_Message implements _Message {
  _$_Message(
      {required this.messageId,
      required this.sender,
      required this.body,
      required this.receipt});

  @override
  final String messageId;
  @override
  final User sender;
  @override
  final Content body;
  @override
  final Receipt receipt;

  @override
  String toString() {
    return 'Message(messageId: $messageId, sender: $sender, body: $body, receipt: $receipt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.receipt, receipt) || other.receipt == receipt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messageId, sender, body, receipt);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message implements Message {
  factory _Message(
      {required String messageId,
      required User sender,
      required Content body,
      required Receipt receipt}) = _$_Message;

  @override
  String get messageId;
  @override
  User get sender;
  @override
  Content get body;
  @override
  Receipt get receipt;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
