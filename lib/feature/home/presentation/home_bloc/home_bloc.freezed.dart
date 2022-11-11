// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDetails,
    required TResult Function(UserModel userList) addDetails,
    required TResult Function(String id) deleteDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDetails,
    TResult? Function(UserModel userList)? addDetails,
    TResult? Function(String id)? deleteDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDetails,
    TResult Function(UserModel userList)? addDetails,
    TResult Function(String id)? deleteDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDetails value) fetchDetails,
    required TResult Function(_AddDetails value) addDetails,
    required TResult Function(_DeleteDetails value) deleteDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDetails value)? fetchDetails,
    TResult? Function(_AddDetails value)? addDetails,
    TResult? Function(_DeleteDetails value)? deleteDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDetails value)? fetchDetails,
    TResult Function(_AddDetails value)? addDetails,
    TResult Function(_DeleteDetails value)? deleteDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchDetailsCopyWith<$Res> {
  factory _$$_FetchDetailsCopyWith(
          _$_FetchDetails value, $Res Function(_$_FetchDetails) then) =
      __$$_FetchDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchDetailsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_FetchDetails>
    implements _$$_FetchDetailsCopyWith<$Res> {
  __$$_FetchDetailsCopyWithImpl(
      _$_FetchDetails _value, $Res Function(_$_FetchDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchDetails implements _FetchDetails {
  const _$_FetchDetails();

  @override
  String toString() {
    return 'HomeEvent.fetchDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDetails,
    required TResult Function(UserModel userList) addDetails,
    required TResult Function(String id) deleteDetails,
  }) {
    return fetchDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDetails,
    TResult? Function(UserModel userList)? addDetails,
    TResult? Function(String id)? deleteDetails,
  }) {
    return fetchDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDetails,
    TResult Function(UserModel userList)? addDetails,
    TResult Function(String id)? deleteDetails,
    required TResult orElse(),
  }) {
    if (fetchDetails != null) {
      return fetchDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDetails value) fetchDetails,
    required TResult Function(_AddDetails value) addDetails,
    required TResult Function(_DeleteDetails value) deleteDetails,
  }) {
    return fetchDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDetails value)? fetchDetails,
    TResult? Function(_AddDetails value)? addDetails,
    TResult? Function(_DeleteDetails value)? deleteDetails,
  }) {
    return fetchDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDetails value)? fetchDetails,
    TResult Function(_AddDetails value)? addDetails,
    TResult Function(_DeleteDetails value)? deleteDetails,
    required TResult orElse(),
  }) {
    if (fetchDetails != null) {
      return fetchDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchDetails implements HomeEvent {
  const factory _FetchDetails() = _$_FetchDetails;
}

/// @nodoc
abstract class _$$_AddDetailsCopyWith<$Res> {
  factory _$$_AddDetailsCopyWith(
          _$_AddDetails value, $Res Function(_$_AddDetails) then) =
      __$$_AddDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userList});
}

/// @nodoc
class __$$_AddDetailsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_AddDetails>
    implements _$$_AddDetailsCopyWith<$Res> {
  __$$_AddDetailsCopyWithImpl(
      _$_AddDetails _value, $Res Function(_$_AddDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
  }) {
    return _then(_$_AddDetails(
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_AddDetails implements _AddDetails {
  const _$_AddDetails({required this.userList});

  @override
  final UserModel userList;

  @override
  String toString() {
    return 'HomeEvent.addDetails(userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDetails &&
            (identical(other.userList, userList) ||
                other.userList == userList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDetailsCopyWith<_$_AddDetails> get copyWith =>
      __$$_AddDetailsCopyWithImpl<_$_AddDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDetails,
    required TResult Function(UserModel userList) addDetails,
    required TResult Function(String id) deleteDetails,
  }) {
    return addDetails(userList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDetails,
    TResult? Function(UserModel userList)? addDetails,
    TResult? Function(String id)? deleteDetails,
  }) {
    return addDetails?.call(userList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDetails,
    TResult Function(UserModel userList)? addDetails,
    TResult Function(String id)? deleteDetails,
    required TResult orElse(),
  }) {
    if (addDetails != null) {
      return addDetails(userList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDetails value) fetchDetails,
    required TResult Function(_AddDetails value) addDetails,
    required TResult Function(_DeleteDetails value) deleteDetails,
  }) {
    return addDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDetails value)? fetchDetails,
    TResult? Function(_AddDetails value)? addDetails,
    TResult? Function(_DeleteDetails value)? deleteDetails,
  }) {
    return addDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDetails value)? fetchDetails,
    TResult Function(_AddDetails value)? addDetails,
    TResult Function(_DeleteDetails value)? deleteDetails,
    required TResult orElse(),
  }) {
    if (addDetails != null) {
      return addDetails(this);
    }
    return orElse();
  }
}

abstract class _AddDetails implements HomeEvent {
  const factory _AddDetails({required final UserModel userList}) =
      _$_AddDetails;

  UserModel get userList;
  @JsonKey(ignore: true)
  _$$_AddDetailsCopyWith<_$_AddDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteDetailsCopyWith<$Res> {
  factory _$$_DeleteDetailsCopyWith(
          _$_DeleteDetails value, $Res Function(_$_DeleteDetails) then) =
      __$$_DeleteDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeleteDetailsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_DeleteDetails>
    implements _$$_DeleteDetailsCopyWith<$Res> {
  __$$_DeleteDetailsCopyWithImpl(
      _$_DeleteDetails _value, $Res Function(_$_DeleteDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteDetails(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteDetails implements _DeleteDetails {
  const _$_DeleteDetails({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.deleteDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteDetails &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteDetailsCopyWith<_$_DeleteDetails> get copyWith =>
      __$$_DeleteDetailsCopyWithImpl<_$_DeleteDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDetails,
    required TResult Function(UserModel userList) addDetails,
    required TResult Function(String id) deleteDetails,
  }) {
    return deleteDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDetails,
    TResult? Function(UserModel userList)? addDetails,
    TResult? Function(String id)? deleteDetails,
  }) {
    return deleteDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDetails,
    TResult Function(UserModel userList)? addDetails,
    TResult Function(String id)? deleteDetails,
    required TResult orElse(),
  }) {
    if (deleteDetails != null) {
      return deleteDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDetails value) fetchDetails,
    required TResult Function(_AddDetails value) addDetails,
    required TResult Function(_DeleteDetails value) deleteDetails,
  }) {
    return deleteDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDetails value)? fetchDetails,
    TResult? Function(_AddDetails value)? addDetails,
    TResult? Function(_DeleteDetails value)? deleteDetails,
  }) {
    return deleteDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDetails value)? fetchDetails,
    TResult Function(_AddDetails value)? addDetails,
    TResult Function(_DeleteDetails value)? deleteDetails,
    required TResult orElse(),
  }) {
    if (deleteDetails != null) {
      return deleteDetails(this);
    }
    return orElse();
  }
}

abstract class _DeleteDetails implements HomeEvent {
  const factory _DeleteDetails({required final String id}) = _$_DeleteDetails;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeleteDetailsCopyWith<_$_DeleteDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<UserModel> get userList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<UserModel> userList, bool isLoading});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel> userList, bool isLoading});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
    Object? isLoading = null,
  }) {
    return _then(_$_HomeState(
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required final List<UserModel> userList, required this.isLoading})
      : _userList = userList;

  final List<UserModel> _userList;
  @override
  List<UserModel> get userList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HomeState(userList: $userList, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other._userList, _userList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userList), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<UserModel> userList,
      required final bool isLoading}) = _$_HomeState;

  @override
  List<UserModel> get userList;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
