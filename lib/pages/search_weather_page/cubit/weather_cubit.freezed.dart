// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Weather> weather) loaded,
    required TResult Function(Weather weather) goToResultPage,
    required TResult Function() errorGetWeather,
    required TResult Function() errorMyLocationWeather,
    required TResult Function() errorDefaultWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Weather> weather)? loaded,
    TResult? Function(Weather weather)? goToResultPage,
    TResult? Function()? errorGetWeather,
    TResult? Function()? errorMyLocationWeather,
    TResult? Function()? errorDefaultWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Weather> weather)? loaded,
    TResult Function(Weather weather)? goToResultPage,
    TResult Function()? errorGetWeather,
    TResult Function()? errorMyLocationWeather,
    TResult Function()? errorDefaultWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherGoToResultPageState value) goToResultPage,
    required TResult Function(ErrorGetWeather value) errorGetWeather,
    required TResult Function(ErrorMyLocationWeather value)
        errorMyLocationWeather,
    required TResult Function(ErrorDefaultWeather value) errorDefaultWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult? Function(ErrorGetWeather value)? errorGetWeather,
    TResult? Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult? Function(ErrorDefaultWeather value)? errorDefaultWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult Function(ErrorGetWeather value)? errorGetWeather,
    TResult Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult Function(ErrorDefaultWeather value)? errorDefaultWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Weather> weather) loaded,
    required TResult Function(Weather weather) goToResultPage,
    required TResult Function() errorGetWeather,
    required TResult Function() errorMyLocationWeather,
    required TResult Function() errorDefaultWeather,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Weather> weather)? loaded,
    TResult? Function(Weather weather)? goToResultPage,
    TResult? Function()? errorGetWeather,
    TResult? Function()? errorMyLocationWeather,
    TResult? Function()? errorDefaultWeather,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Weather> weather)? loaded,
    TResult Function(Weather weather)? goToResultPage,
    TResult Function()? errorGetWeather,
    TResult Function()? errorMyLocationWeather,
    TResult Function()? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherGoToResultPageState value) goToResultPage,
    required TResult Function(ErrorGetWeather value) errorGetWeather,
    required TResult Function(ErrorMyLocationWeather value)
        errorMyLocationWeather,
    required TResult Function(ErrorDefaultWeather value) errorDefaultWeather,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult? Function(ErrorGetWeather value)? errorGetWeather,
    TResult? Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult? Function(ErrorDefaultWeather value)? errorDefaultWeather,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult Function(ErrorGetWeather value)? errorGetWeather,
    TResult Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult Function(ErrorDefaultWeather value)? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$WeatherLoadedStateCopyWith<$Res> {
  factory _$$WeatherLoadedStateCopyWith(_$WeatherLoadedState value,
          $Res Function(_$WeatherLoadedState) then) =
      __$$WeatherLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Weather> weather});
}

/// @nodoc
class __$$WeatherLoadedStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoadedState>
    implements _$$WeatherLoadedStateCopyWith<$Res> {
  __$$WeatherLoadedStateCopyWithImpl(
      _$WeatherLoadedState _value, $Res Function(_$WeatherLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$WeatherLoadedState(
      null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc

class _$WeatherLoadedState implements WeatherLoadedState {
  const _$WeatherLoadedState(final List<Weather> weather) : _weather = weather;

  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'WeatherState.loaded(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoadedState &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLoadedStateCopyWith<_$WeatherLoadedState> get copyWith =>
      __$$WeatherLoadedStateCopyWithImpl<_$WeatherLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Weather> weather) loaded,
    required TResult Function(Weather weather) goToResultPage,
    required TResult Function() errorGetWeather,
    required TResult Function() errorMyLocationWeather,
    required TResult Function() errorDefaultWeather,
  }) {
    return loaded(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Weather> weather)? loaded,
    TResult? Function(Weather weather)? goToResultPage,
    TResult? Function()? errorGetWeather,
    TResult? Function()? errorMyLocationWeather,
    TResult? Function()? errorDefaultWeather,
  }) {
    return loaded?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Weather> weather)? loaded,
    TResult Function(Weather weather)? goToResultPage,
    TResult Function()? errorGetWeather,
    TResult Function()? errorMyLocationWeather,
    TResult Function()? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherGoToResultPageState value) goToResultPage,
    required TResult Function(ErrorGetWeather value) errorGetWeather,
    required TResult Function(ErrorMyLocationWeather value)
        errorMyLocationWeather,
    required TResult Function(ErrorDefaultWeather value) errorDefaultWeather,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult? Function(ErrorGetWeather value)? errorGetWeather,
    TResult? Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult? Function(ErrorDefaultWeather value)? errorDefaultWeather,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult Function(ErrorGetWeather value)? errorGetWeather,
    TResult Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult Function(ErrorDefaultWeather value)? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherLoadedState implements WeatherState {
  const factory WeatherLoadedState(final List<Weather> weather) =
      _$WeatherLoadedState;

  List<Weather> get weather;
  @JsonKey(ignore: true)
  _$$WeatherLoadedStateCopyWith<_$WeatherLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherGoToResultPageStateCopyWith<$Res> {
  factory _$$WeatherGoToResultPageStateCopyWith(
          _$WeatherGoToResultPageState value,
          $Res Function(_$WeatherGoToResultPageState) then) =
      __$$WeatherGoToResultPageStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather weather});
}

/// @nodoc
class __$$WeatherGoToResultPageStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherGoToResultPageState>
    implements _$$WeatherGoToResultPageStateCopyWith<$Res> {
  __$$WeatherGoToResultPageStateCopyWithImpl(
      _$WeatherGoToResultPageState _value,
      $Res Function(_$WeatherGoToResultPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$WeatherGoToResultPageState(
      null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$WeatherGoToResultPageState implements WeatherGoToResultPageState {
  const _$WeatherGoToResultPageState(this.weather);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.goToResultPage(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherGoToResultPageState &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherGoToResultPageStateCopyWith<_$WeatherGoToResultPageState>
      get copyWith => __$$WeatherGoToResultPageStateCopyWithImpl<
          _$WeatherGoToResultPageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Weather> weather) loaded,
    required TResult Function(Weather weather) goToResultPage,
    required TResult Function() errorGetWeather,
    required TResult Function() errorMyLocationWeather,
    required TResult Function() errorDefaultWeather,
  }) {
    return goToResultPage(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Weather> weather)? loaded,
    TResult? Function(Weather weather)? goToResultPage,
    TResult? Function()? errorGetWeather,
    TResult? Function()? errorMyLocationWeather,
    TResult? Function()? errorDefaultWeather,
  }) {
    return goToResultPage?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Weather> weather)? loaded,
    TResult Function(Weather weather)? goToResultPage,
    TResult Function()? errorGetWeather,
    TResult Function()? errorMyLocationWeather,
    TResult Function()? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (goToResultPage != null) {
      return goToResultPage(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherGoToResultPageState value) goToResultPage,
    required TResult Function(ErrorGetWeather value) errorGetWeather,
    required TResult Function(ErrorMyLocationWeather value)
        errorMyLocationWeather,
    required TResult Function(ErrorDefaultWeather value) errorDefaultWeather,
  }) {
    return goToResultPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult? Function(ErrorGetWeather value)? errorGetWeather,
    TResult? Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult? Function(ErrorDefaultWeather value)? errorDefaultWeather,
  }) {
    return goToResultPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult Function(ErrorGetWeather value)? errorGetWeather,
    TResult Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult Function(ErrorDefaultWeather value)? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (goToResultPage != null) {
      return goToResultPage(this);
    }
    return orElse();
  }
}

abstract class WeatherGoToResultPageState implements WeatherState {
  const factory WeatherGoToResultPageState(final Weather weather) =
      _$WeatherGoToResultPageState;

  Weather get weather;
  @JsonKey(ignore: true)
  _$$WeatherGoToResultPageStateCopyWith<_$WeatherGoToResultPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorGetWeatherCopyWith<$Res> {
  factory _$$ErrorGetWeatherCopyWith(
          _$ErrorGetWeather value, $Res Function(_$ErrorGetWeather) then) =
      __$$ErrorGetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorGetWeatherCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$ErrorGetWeather>
    implements _$$ErrorGetWeatherCopyWith<$Res> {
  __$$ErrorGetWeatherCopyWithImpl(
      _$ErrorGetWeather _value, $Res Function(_$ErrorGetWeather) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorGetWeather implements ErrorGetWeather {
  const _$ErrorGetWeather();

  @override
  String toString() {
    return 'WeatherState.errorGetWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorGetWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Weather> weather) loaded,
    required TResult Function(Weather weather) goToResultPage,
    required TResult Function() errorGetWeather,
    required TResult Function() errorMyLocationWeather,
    required TResult Function() errorDefaultWeather,
  }) {
    return errorGetWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Weather> weather)? loaded,
    TResult? Function(Weather weather)? goToResultPage,
    TResult? Function()? errorGetWeather,
    TResult? Function()? errorMyLocationWeather,
    TResult? Function()? errorDefaultWeather,
  }) {
    return errorGetWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Weather> weather)? loaded,
    TResult Function(Weather weather)? goToResultPage,
    TResult Function()? errorGetWeather,
    TResult Function()? errorMyLocationWeather,
    TResult Function()? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (errorGetWeather != null) {
      return errorGetWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherGoToResultPageState value) goToResultPage,
    required TResult Function(ErrorGetWeather value) errorGetWeather,
    required TResult Function(ErrorMyLocationWeather value)
        errorMyLocationWeather,
    required TResult Function(ErrorDefaultWeather value) errorDefaultWeather,
  }) {
    return errorGetWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult? Function(ErrorGetWeather value)? errorGetWeather,
    TResult? Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult? Function(ErrorDefaultWeather value)? errorDefaultWeather,
  }) {
    return errorGetWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult Function(ErrorGetWeather value)? errorGetWeather,
    TResult Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult Function(ErrorDefaultWeather value)? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (errorGetWeather != null) {
      return errorGetWeather(this);
    }
    return orElse();
  }
}

abstract class ErrorGetWeather implements WeatherState {
  const factory ErrorGetWeather() = _$ErrorGetWeather;
}

/// @nodoc
abstract class _$$ErrorMyLocationWeatherCopyWith<$Res> {
  factory _$$ErrorMyLocationWeatherCopyWith(_$ErrorMyLocationWeather value,
          $Res Function(_$ErrorMyLocationWeather) then) =
      __$$ErrorMyLocationWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorMyLocationWeatherCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$ErrorMyLocationWeather>
    implements _$$ErrorMyLocationWeatherCopyWith<$Res> {
  __$$ErrorMyLocationWeatherCopyWithImpl(_$ErrorMyLocationWeather _value,
      $Res Function(_$ErrorMyLocationWeather) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorMyLocationWeather implements ErrorMyLocationWeather {
  const _$ErrorMyLocationWeather();

  @override
  String toString() {
    return 'WeatherState.errorMyLocationWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorMyLocationWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Weather> weather) loaded,
    required TResult Function(Weather weather) goToResultPage,
    required TResult Function() errorGetWeather,
    required TResult Function() errorMyLocationWeather,
    required TResult Function() errorDefaultWeather,
  }) {
    return errorMyLocationWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Weather> weather)? loaded,
    TResult? Function(Weather weather)? goToResultPage,
    TResult? Function()? errorGetWeather,
    TResult? Function()? errorMyLocationWeather,
    TResult? Function()? errorDefaultWeather,
  }) {
    return errorMyLocationWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Weather> weather)? loaded,
    TResult Function(Weather weather)? goToResultPage,
    TResult Function()? errorGetWeather,
    TResult Function()? errorMyLocationWeather,
    TResult Function()? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (errorMyLocationWeather != null) {
      return errorMyLocationWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherGoToResultPageState value) goToResultPage,
    required TResult Function(ErrorGetWeather value) errorGetWeather,
    required TResult Function(ErrorMyLocationWeather value)
        errorMyLocationWeather,
    required TResult Function(ErrorDefaultWeather value) errorDefaultWeather,
  }) {
    return errorMyLocationWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult? Function(ErrorGetWeather value)? errorGetWeather,
    TResult? Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult? Function(ErrorDefaultWeather value)? errorDefaultWeather,
  }) {
    return errorMyLocationWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult Function(ErrorGetWeather value)? errorGetWeather,
    TResult Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult Function(ErrorDefaultWeather value)? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (errorMyLocationWeather != null) {
      return errorMyLocationWeather(this);
    }
    return orElse();
  }
}

abstract class ErrorMyLocationWeather implements WeatherState {
  const factory ErrorMyLocationWeather() = _$ErrorMyLocationWeather;
}

/// @nodoc
abstract class _$$ErrorDefaultWeatherCopyWith<$Res> {
  factory _$$ErrorDefaultWeatherCopyWith(_$ErrorDefaultWeather value,
          $Res Function(_$ErrorDefaultWeather) then) =
      __$$ErrorDefaultWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorDefaultWeatherCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$ErrorDefaultWeather>
    implements _$$ErrorDefaultWeatherCopyWith<$Res> {
  __$$ErrorDefaultWeatherCopyWithImpl(
      _$ErrorDefaultWeather _value, $Res Function(_$ErrorDefaultWeather) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorDefaultWeather implements ErrorDefaultWeather {
  const _$ErrorDefaultWeather();

  @override
  String toString() {
    return 'WeatherState.errorDefaultWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorDefaultWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Weather> weather) loaded,
    required TResult Function(Weather weather) goToResultPage,
    required TResult Function() errorGetWeather,
    required TResult Function() errorMyLocationWeather,
    required TResult Function() errorDefaultWeather,
  }) {
    return errorDefaultWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Weather> weather)? loaded,
    TResult? Function(Weather weather)? goToResultPage,
    TResult? Function()? errorGetWeather,
    TResult? Function()? errorMyLocationWeather,
    TResult? Function()? errorDefaultWeather,
  }) {
    return errorDefaultWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Weather> weather)? loaded,
    TResult Function(Weather weather)? goToResultPage,
    TResult Function()? errorGetWeather,
    TResult Function()? errorMyLocationWeather,
    TResult Function()? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (errorDefaultWeather != null) {
      return errorDefaultWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherGoToResultPageState value) goToResultPage,
    required TResult Function(ErrorGetWeather value) errorGetWeather,
    required TResult Function(ErrorMyLocationWeather value)
        errorMyLocationWeather,
    required TResult Function(ErrorDefaultWeather value) errorDefaultWeather,
  }) {
    return errorDefaultWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult? Function(ErrorGetWeather value)? errorGetWeather,
    TResult? Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult? Function(ErrorDefaultWeather value)? errorDefaultWeather,
  }) {
    return errorDefaultWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherGoToResultPageState value)? goToResultPage,
    TResult Function(ErrorGetWeather value)? errorGetWeather,
    TResult Function(ErrorMyLocationWeather value)? errorMyLocationWeather,
    TResult Function(ErrorDefaultWeather value)? errorDefaultWeather,
    required TResult orElse(),
  }) {
    if (errorDefaultWeather != null) {
      return errorDefaultWeather(this);
    }
    return orElse();
  }
}

abstract class ErrorDefaultWeather implements WeatherState {
  const factory ErrorDefaultWeather() = _$ErrorDefaultWeather;
}
