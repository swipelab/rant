// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContentTearOff {
  const _$ContentTearOff();

  TextContent text({required String value}) {
    return TextContent(
      value: value,
    );
  }

  PictureContent picture({required Uri url}) {
    return PictureContent(
      url: url,
    );
  }
}

/// @nodoc
const $Content = _$ContentTearOff();

/// @nodoc
mixin _$Content {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) text,
    required TResult Function(Uri url) picture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(Uri url)? picture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(Uri url)? picture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContent value) text,
    required TResult Function(PictureContent value) picture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(PictureContent value)? picture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(PictureContent value)? picture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;
}

/// @nodoc
abstract class $TextContentCopyWith<$Res> {
  factory $TextContentCopyWith(
          TextContent value, $Res Function(TextContent) then) =
      _$TextContentCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$TextContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements $TextContentCopyWith<$Res> {
  _$TextContentCopyWithImpl(
      TextContent _value, $Res Function(TextContent) _then)
      : super(_value, (v) => _then(v as TextContent));

  @override
  TextContent get _value => super._value as TextContent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(TextContent(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextContent implements TextContent {
  _$TextContent({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'Content.text(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextContent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $TextContentCopyWith<TextContent> get copyWith =>
      _$TextContentCopyWithImpl<TextContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) text,
    required TResult Function(Uri url) picture,
  }) {
    return text(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(Uri url)? picture,
  }) {
    return text?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(Uri url)? picture,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContent value) text,
    required TResult Function(PictureContent value) picture,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(PictureContent value)? picture,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(PictureContent value)? picture,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextContent implements Content {
  factory TextContent({required String value}) = _$TextContent;

  String get value;
  @JsonKey(ignore: true)
  $TextContentCopyWith<TextContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureContentCopyWith<$Res> {
  factory $PictureContentCopyWith(
          PictureContent value, $Res Function(PictureContent) then) =
      _$PictureContentCopyWithImpl<$Res>;
  $Res call({Uri url});
}

/// @nodoc
class _$PictureContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements $PictureContentCopyWith<$Res> {
  _$PictureContentCopyWithImpl(
      PictureContent _value, $Res Function(PictureContent) _then)
      : super(_value, (v) => _then(v as PictureContent));

  @override
  PictureContent get _value => super._value as PictureContent;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(PictureContent(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$PictureContent implements PictureContent {
  _$PictureContent({required this.url});

  @override
  final Uri url;

  @override
  String toString() {
    return 'Content.picture(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PictureContent &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  $PictureContentCopyWith<PictureContent> get copyWith =>
      _$PictureContentCopyWithImpl<PictureContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) text,
    required TResult Function(Uri url) picture,
  }) {
    return picture(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(Uri url)? picture,
  }) {
    return picture?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(Uri url)? picture,
    required TResult orElse(),
  }) {
    if (picture != null) {
      return picture(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContent value) text,
    required TResult Function(PictureContent value) picture,
  }) {
    return picture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(PictureContent value)? picture,
  }) {
    return picture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(PictureContent value)? picture,
    required TResult orElse(),
  }) {
    if (picture != null) {
      return picture(this);
    }
    return orElse();
  }
}

abstract class PictureContent implements Content {
  factory PictureContent({required Uri url}) = _$PictureContent;

  Uri get url;
  @JsonKey(ignore: true)
  $PictureContentCopyWith<PictureContent> get copyWith =>
      throw _privateConstructorUsedError;
}
