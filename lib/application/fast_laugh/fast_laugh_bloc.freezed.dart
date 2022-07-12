// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FastLaughEventTearOff {
  const _$FastLaughEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  LikeVideo likeVideo({required int id}) {
    return LikeVideo(
      id: id,
    );
  }

  UnlikeVideo unlikeVideo({required int id}) {
    return UnlikeVideo(
      id: id,
    );
  }
}

/// @nodoc
const $FastLaughEvent = _$FastLaughEventTearOff();

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int id) likeVideo,
    required TResult Function(int id) unlikeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unlikeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unlikeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(LikeVideo value) likeVideo,
    required TResult Function(UnlikeVideo value) unlikeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnlikeVideo value)? unlikeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnlikeVideo value)? unlikeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
          FastLaughEvent value, $Res Function(FastLaughEvent) then) =
      _$FastLaughEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

  final FastLaughEvent _value;
  // ignore: unused_field
  final $Res Function(FastLaughEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$FastLaughEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'FastLaughEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int id) likeVideo,
    required TResult Function(int id) unlikeVideo,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unlikeVideo,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unlikeVideo,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(LikeVideo value) likeVideo,
    required TResult Function(UnlikeVideo value) unlikeVideo,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnlikeVideo value)? unlikeVideo,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnlikeVideo value)? unlikeVideo,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements FastLaughEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $LikeVideoCopyWith<$Res> {
  factory $LikeVideoCopyWith(LikeVideo value, $Res Function(LikeVideo) then) =
      _$LikeVideoCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$LikeVideoCopyWithImpl<$Res> extends _$FastLaughEventCopyWithImpl<$Res>
    implements $LikeVideoCopyWith<$Res> {
  _$LikeVideoCopyWithImpl(LikeVideo _value, $Res Function(LikeVideo) _then)
      : super(_value, (v) => _then(v as LikeVideo));

  @override
  LikeVideo get _value => super._value as LikeVideo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(LikeVideo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikeVideo implements LikeVideo {
  const _$LikeVideo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastLaughEvent.likeVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikeVideo &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $LikeVideoCopyWith<LikeVideo> get copyWith =>
      _$LikeVideoCopyWithImpl<LikeVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int id) likeVideo,
    required TResult Function(int id) unlikeVideo,
  }) {
    return likeVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unlikeVideo,
  }) {
    return likeVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unlikeVideo,
    required TResult orElse(),
  }) {
    if (likeVideo != null) {
      return likeVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(LikeVideo value) likeVideo,
    required TResult Function(UnlikeVideo value) unlikeVideo,
  }) {
    return likeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnlikeVideo value)? unlikeVideo,
  }) {
    return likeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnlikeVideo value)? unlikeVideo,
    required TResult orElse(),
  }) {
    if (likeVideo != null) {
      return likeVideo(this);
    }
    return orElse();
  }
}

abstract class LikeVideo implements FastLaughEvent {
  const factory LikeVideo({required int id}) = _$LikeVideo;

  int get id;
  @JsonKey(ignore: true)
  $LikeVideoCopyWith<LikeVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnlikeVideoCopyWith<$Res> {
  factory $UnlikeVideoCopyWith(
          UnlikeVideo value, $Res Function(UnlikeVideo) then) =
      _$UnlikeVideoCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$UnlikeVideoCopyWithImpl<$Res> extends _$FastLaughEventCopyWithImpl<$Res>
    implements $UnlikeVideoCopyWith<$Res> {
  _$UnlikeVideoCopyWithImpl(
      UnlikeVideo _value, $Res Function(UnlikeVideo) _then)
      : super(_value, (v) => _then(v as UnlikeVideo));

  @override
  UnlikeVideo get _value => super._value as UnlikeVideo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(UnlikeVideo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnlikeVideo implements UnlikeVideo {
  const _$UnlikeVideo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastLaughEvent.unlikeVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnlikeVideo &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $UnlikeVideoCopyWith<UnlikeVideo> get copyWith =>
      _$UnlikeVideoCopyWithImpl<UnlikeVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int id) likeVideo,
    required TResult Function(int id) unlikeVideo,
  }) {
    return unlikeVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unlikeVideo,
  }) {
    return unlikeVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? likeVideo,
    TResult Function(int id)? unlikeVideo,
    required TResult orElse(),
  }) {
    if (unlikeVideo != null) {
      return unlikeVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(LikeVideo value) likeVideo,
    required TResult Function(UnlikeVideo value) unlikeVideo,
  }) {
    return unlikeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnlikeVideo value)? unlikeVideo,
  }) {
    return unlikeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LikeVideo value)? likeVideo,
    TResult Function(UnlikeVideo value)? unlikeVideo,
    required TResult orElse(),
  }) {
    if (unlikeVideo != null) {
      return unlikeVideo(this);
    }
    return orElse();
  }
}

abstract class UnlikeVideo implements FastLaughEvent {
  const factory UnlikeVideo({required int id}) = _$UnlikeVideo;

  int get id;
  @JsonKey(ignore: true)
  $UnlikeVideoCopyWith<UnlikeVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FastLaughStateTearOff {
  const _$FastLaughStateTearOff();

  _Initial call(
      {required List<Downloads> videoList,
      required bool isLoading,
      required bool isError}) {
    return _Initial(
      videoList: videoList,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $FastLaughState = _$FastLaughStateTearOff();

/// @nodoc
mixin _$FastLaughState {
  List<Downloads> get videoList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
          FastLaughState value, $Res Function(FastLaughState) then) =
      _$FastLaughStateCopyWithImpl<$Res>;
  $Res call({List<Downloads> videoList, bool isLoading, bool isError});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  final FastLaughState _value;
  // ignore: unused_field
  final $Res Function(FastLaughState) _then;

  @override
  $Res call({
    Object? videoList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      videoList: videoList == freezed
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Downloads> videoList, bool isLoading, bool isError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FastLaughStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? videoList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_Initial(
      videoList: videoList == freezed
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.videoList,
      required this.isLoading,
      required this.isError});

  @override
  final List<Downloads> videoList;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FastLaughState(videoList: $videoList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.videoList, videoList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videoList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements FastLaughState {
  const factory _Initial(
      {required List<Downloads> videoList,
      required bool isLoading,
      required bool isError}) = _$_Initial;

  @override
  List<Downloads> get videoList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
