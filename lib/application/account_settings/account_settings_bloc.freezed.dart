// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsEventCopyWith<$Res> {
  factory $AccountSettingsEventCopyWith(AccountSettingsEvent value,
          $Res Function(AccountSettingsEvent) then) =
      _$AccountSettingsEventCopyWithImpl<$Res, AccountSettingsEvent>;
}

/// @nodoc
class _$AccountSettingsEventCopyWithImpl<$Res,
        $Val extends AccountSettingsEvent>
    implements $AccountSettingsEventCopyWith<$Res> {
  _$AccountSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AccountSettingsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccountSettingsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeProfilePicStyleCopyWith<$Res> {
  factory _$$_ChangeProfilePicStyleCopyWith(_$_ChangeProfilePicStyle value,
          $Res Function(_$_ChangeProfilePicStyle) then) =
      __$$_ChangeProfilePicStyleCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfilePic profilePic});

  $ProfilePicCopyWith<$Res> get profilePic;
}

/// @nodoc
class __$$_ChangeProfilePicStyleCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_ChangeProfilePicStyle>
    implements _$$_ChangeProfilePicStyleCopyWith<$Res> {
  __$$_ChangeProfilePicStyleCopyWithImpl(_$_ChangeProfilePicStyle _value,
      $Res Function(_$_ChangeProfilePicStyle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePic = null,
  }) {
    return _then(_$_ChangeProfilePicStyle(
      null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as ProfilePic,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfilePicCopyWith<$Res> get profilePic {
    return $ProfilePicCopyWith<$Res>(_value.profilePic, (value) {
      return _then(_value.copyWith(profilePic: value));
    });
  }
}

/// @nodoc

class _$_ChangeProfilePicStyle implements _ChangeProfilePicStyle {
  const _$_ChangeProfilePicStyle(this.profilePic);

  @override
  final ProfilePic profilePic;

  @override
  String toString() {
    return 'AccountSettingsEvent.changeProfilePicStyle(profilePic: $profilePic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeProfilePicStyle &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeProfilePicStyleCopyWith<_$_ChangeProfilePicStyle> get copyWith =>
      __$$_ChangeProfilePicStyleCopyWithImpl<_$_ChangeProfilePicStyle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return changeProfilePicStyle(profilePic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return changeProfilePicStyle?.call(profilePic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (changeProfilePicStyle != null) {
      return changeProfilePicStyle(profilePic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return changeProfilePicStyle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return changeProfilePicStyle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (changeProfilePicStyle != null) {
      return changeProfilePicStyle(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfilePicStyle implements AccountSettingsEvent {
  const factory _ChangeProfilePicStyle(final ProfilePic profilePic) =
      _$_ChangeProfilePicStyle;

  ProfilePic get profilePic;
  @JsonKey(ignore: true)
  _$$_ChangeProfilePicStyleCopyWith<_$_ChangeProfilePicStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddLinkedContactCopyWith<$Res> {
  factory _$$_AddLinkedContactCopyWith(
          _$_AddLinkedContact value, $Res Function(_$_AddLinkedContact) then) =
      __$$_AddLinkedContactCopyWithImpl<$Res>;
  @useResult
  $Res call({LinkedContact linkedContact});

  $LinkedContactCopyWith<$Res> get linkedContact;
}

/// @nodoc
class __$$_AddLinkedContactCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_AddLinkedContact>
    implements _$$_AddLinkedContactCopyWith<$Res> {
  __$$_AddLinkedContactCopyWithImpl(
      _$_AddLinkedContact _value, $Res Function(_$_AddLinkedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedContact = null,
  }) {
    return _then(_$_AddLinkedContact(
      null == linkedContact
          ? _value.linkedContact
          : linkedContact // ignore: cast_nullable_to_non_nullable
              as LinkedContact,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkedContactCopyWith<$Res> get linkedContact {
    return $LinkedContactCopyWith<$Res>(_value.linkedContact, (value) {
      return _then(_value.copyWith(linkedContact: value));
    });
  }
}

/// @nodoc

class _$_AddLinkedContact implements _AddLinkedContact {
  const _$_AddLinkedContact(this.linkedContact);

  @override
  final LinkedContact linkedContact;

  @override
  String toString() {
    return 'AccountSettingsEvent.addLinkedContact(linkedContact: $linkedContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddLinkedContact &&
            (identical(other.linkedContact, linkedContact) ||
                other.linkedContact == linkedContact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, linkedContact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddLinkedContactCopyWith<_$_AddLinkedContact> get copyWith =>
      __$$_AddLinkedContactCopyWithImpl<_$_AddLinkedContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return addLinkedContact(linkedContact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return addLinkedContact?.call(linkedContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (addLinkedContact != null) {
      return addLinkedContact(linkedContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return addLinkedContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return addLinkedContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (addLinkedContact != null) {
      return addLinkedContact(this);
    }
    return orElse();
  }
}

abstract class _AddLinkedContact implements AccountSettingsEvent {
  const factory _AddLinkedContact(final LinkedContact linkedContact) =
      _$_AddLinkedContact;

  LinkedContact get linkedContact;
  @JsonKey(ignore: true)
  _$$_AddLinkedContactCopyWith<_$_AddLinkedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveLinkedContactCopyWith<$Res> {
  factory _$$_RemoveLinkedContactCopyWith(_$_RemoveLinkedContact value,
          $Res Function(_$_RemoveLinkedContact) then) =
      __$$_RemoveLinkedContactCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_RemoveLinkedContactCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_RemoveLinkedContact>
    implements _$$_RemoveLinkedContactCopyWith<$Res> {
  __$$_RemoveLinkedContactCopyWithImpl(_$_RemoveLinkedContact _value,
      $Res Function(_$_RemoveLinkedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_RemoveLinkedContact(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveLinkedContact implements _RemoveLinkedContact {
  const _$_RemoveLinkedContact(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AccountSettingsEvent.removeLinkedContact(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveLinkedContact &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveLinkedContactCopyWith<_$_RemoveLinkedContact> get copyWith =>
      __$$_RemoveLinkedContactCopyWithImpl<_$_RemoveLinkedContact>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return removeLinkedContact(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return removeLinkedContact?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (removeLinkedContact != null) {
      return removeLinkedContact(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return removeLinkedContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return removeLinkedContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (removeLinkedContact != null) {
      return removeLinkedContact(this);
    }
    return orElse();
  }
}

abstract class _RemoveLinkedContact implements AccountSettingsEvent {
  const factory _RemoveLinkedContact(final int index) = _$_RemoveLinkedContact;

  int get index;
  @JsonKey(ignore: true)
  _$$_RemoveLinkedContactCopyWith<_$_RemoveLinkedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeLinkedContactOrderCopyWith<$Res> {
  factory _$$_ChangeLinkedContactOrderCopyWith(
          _$_ChangeLinkedContactOrder value,
          $Res Function(_$_ChangeLinkedContactOrder) then) =
      __$$_ChangeLinkedContactOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$_ChangeLinkedContactOrderCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res,
        _$_ChangeLinkedContactOrder>
    implements _$$_ChangeLinkedContactOrderCopyWith<$Res> {
  __$$_ChangeLinkedContactOrderCopyWithImpl(_$_ChangeLinkedContactOrder _value,
      $Res Function(_$_ChangeLinkedContactOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$_ChangeLinkedContactOrder(
      null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeLinkedContactOrder implements _ChangeLinkedContactOrder {
  const _$_ChangeLinkedContactOrder(this.oldIndex, this.newIndex);

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'AccountSettingsEvent.changeLinkedContactOrder(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLinkedContactOrder &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLinkedContactOrderCopyWith<_$_ChangeLinkedContactOrder>
      get copyWith => __$$_ChangeLinkedContactOrderCopyWithImpl<
          _$_ChangeLinkedContactOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return changeLinkedContactOrder(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return changeLinkedContactOrder?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (changeLinkedContactOrder != null) {
      return changeLinkedContactOrder(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return changeLinkedContactOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return changeLinkedContactOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (changeLinkedContactOrder != null) {
      return changeLinkedContactOrder(this);
    }
    return orElse();
  }
}

abstract class _ChangeLinkedContactOrder implements AccountSettingsEvent {
  const factory _ChangeLinkedContactOrder(
      final int oldIndex, final int newIndex) = _$_ChangeLinkedContactOrder;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$_ChangeLinkedContactOrderCopyWith<_$_ChangeLinkedContactOrder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReplaceLinkedContactCopyWith<$Res> {
  factory _$$_ReplaceLinkedContactCopyWith(_$_ReplaceLinkedContact value,
          $Res Function(_$_ReplaceLinkedContact) then) =
      __$$_ReplaceLinkedContactCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, LinkedContact linkedContact});

  $LinkedContactCopyWith<$Res> get linkedContact;
}

/// @nodoc
class __$$_ReplaceLinkedContactCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_ReplaceLinkedContact>
    implements _$$_ReplaceLinkedContactCopyWith<$Res> {
  __$$_ReplaceLinkedContactCopyWithImpl(_$_ReplaceLinkedContact _value,
      $Res Function(_$_ReplaceLinkedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? linkedContact = null,
  }) {
    return _then(_$_ReplaceLinkedContact(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == linkedContact
          ? _value.linkedContact
          : linkedContact // ignore: cast_nullable_to_non_nullable
              as LinkedContact,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkedContactCopyWith<$Res> get linkedContact {
    return $LinkedContactCopyWith<$Res>(_value.linkedContact, (value) {
      return _then(_value.copyWith(linkedContact: value));
    });
  }
}

/// @nodoc

class _$_ReplaceLinkedContact implements _ReplaceLinkedContact {
  const _$_ReplaceLinkedContact(this.index, this.linkedContact);

  @override
  final int index;
  @override
  final LinkedContact linkedContact;

  @override
  String toString() {
    return 'AccountSettingsEvent.replaceLinkedContact(index: $index, linkedContact: $linkedContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplaceLinkedContact &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.linkedContact, linkedContact) ||
                other.linkedContact == linkedContact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, linkedContact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplaceLinkedContactCopyWith<_$_ReplaceLinkedContact> get copyWith =>
      __$$_ReplaceLinkedContactCopyWithImpl<_$_ReplaceLinkedContact>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return replaceLinkedContact(index, linkedContact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return replaceLinkedContact?.call(index, linkedContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (replaceLinkedContact != null) {
      return replaceLinkedContact(index, linkedContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return replaceLinkedContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return replaceLinkedContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (replaceLinkedContact != null) {
      return replaceLinkedContact(this);
    }
    return orElse();
  }
}

abstract class _ReplaceLinkedContact implements AccountSettingsEvent {
  const factory _ReplaceLinkedContact(
          final int index, final LinkedContact linkedContact) =
      _$_ReplaceLinkedContact;

  int get index;
  LinkedContact get linkedContact;
  @JsonKey(ignore: true)
  _$$_ReplaceLinkedContactCopyWith<_$_ReplaceLinkedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveChangesCopyWith<$Res> {
  factory _$$_SaveChangesCopyWith(
          _$_SaveChanges value, $Res Function(_$_SaveChanges) then) =
      __$$_SaveChangesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveChangesCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_SaveChanges>
    implements _$$_SaveChangesCopyWith<$Res> {
  __$$_SaveChangesCopyWithImpl(
      _$_SaveChanges _value, $Res Function(_$_SaveChanges) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveChanges implements _SaveChanges {
  const _$_SaveChanges();

  @override
  String toString() {
    return 'AccountSettingsEvent.saveChanges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveChanges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return saveChanges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return saveChanges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (saveChanges != null) {
      return saveChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return saveChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return saveChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (saveChanges != null) {
      return saveChanges(this);
    }
    return orElse();
  }
}

abstract class _SaveChanges implements AccountSettingsEvent {
  const factory _SaveChanges() = _$_SaveChanges;
}

/// @nodoc
abstract class _$$_DeletePostsCopyWith<$Res> {
  factory _$$_DeletePostsCopyWith(
          _$_DeletePosts value, $Res Function(_$_DeletePosts) then) =
      __$$_DeletePostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletePostsCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_DeletePosts>
    implements _$$_DeletePostsCopyWith<$Res> {
  __$$_DeletePostsCopyWithImpl(
      _$_DeletePosts _value, $Res Function(_$_DeletePosts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeletePosts implements _DeletePosts {
  const _$_DeletePosts();

  @override
  String toString() {
    return 'AccountSettingsEvent.deletePosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeletePosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return deletePosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return deletePosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deletePosts != null) {
      return deletePosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return deletePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return deletePosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deletePosts != null) {
      return deletePosts(this);
    }
    return orElse();
  }
}

abstract class _DeletePosts implements AccountSettingsEvent {
  const factory _DeletePosts() = _$_DeletePosts;
}

/// @nodoc
abstract class _$$_PauseAccountCopyWith<$Res> {
  factory _$$_PauseAccountCopyWith(
          _$_PauseAccount value, $Res Function(_$_PauseAccount) then) =
      __$$_PauseAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseAccountCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_PauseAccount>
    implements _$$_PauseAccountCopyWith<$Res> {
  __$$_PauseAccountCopyWithImpl(
      _$_PauseAccount _value, $Res Function(_$_PauseAccount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PauseAccount implements _PauseAccount {
  const _$_PauseAccount();

  @override
  String toString() {
    return 'AccountSettingsEvent.pauseAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PauseAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return pauseAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return pauseAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (pauseAccount != null) {
      return pauseAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return pauseAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return pauseAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (pauseAccount != null) {
      return pauseAccount(this);
    }
    return orElse();
  }
}

abstract class _PauseAccount implements AccountSettingsEvent {
  const factory _PauseAccount() = _$_PauseAccount;
}

/// @nodoc
abstract class _$$_RequestAccountVerificationCopyWith<$Res> {
  factory _$$_RequestAccountVerificationCopyWith(
          _$_RequestAccountVerification value,
          $Res Function(_$_RequestAccountVerification) then) =
      __$$_RequestAccountVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestAccountVerificationCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res,
        _$_RequestAccountVerification>
    implements _$$_RequestAccountVerificationCopyWith<$Res> {
  __$$_RequestAccountVerificationCopyWithImpl(
      _$_RequestAccountVerification _value,
      $Res Function(_$_RequestAccountVerification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestAccountVerification implements _RequestAccountVerification {
  const _$_RequestAccountVerification();

  @override
  String toString() {
    return 'AccountSettingsEvent.requestAccountVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestAccountVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return requestAccountVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return requestAccountVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (requestAccountVerification != null) {
      return requestAccountVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return requestAccountVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return requestAccountVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (requestAccountVerification != null) {
      return requestAccountVerification(this);
    }
    return orElse();
  }
}

abstract class _RequestAccountVerification implements AccountSettingsEvent {
  const factory _RequestAccountVerification() = _$_RequestAccountVerification;
}

/// @nodoc
abstract class _$$_DeleteAccountCopyWith<$Res> {
  factory _$$_DeleteAccountCopyWith(
          _$_DeleteAccount value, $Res Function(_$_DeleteAccount) then) =
      __$$_DeleteAccountCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_DeleteAccountCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res, _$_DeleteAccount>
    implements _$$_DeleteAccountCopyWith<$Res> {
  __$$_DeleteAccountCopyWithImpl(
      _$_DeleteAccount _value, $Res Function(_$_DeleteAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_DeleteAccount(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteAccount implements _DeleteAccount {
  const _$_DeleteAccount(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AccountSettingsEvent.deleteAccount(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAccount &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAccountCopyWith<_$_DeleteAccount> get copyWith =>
      __$$_DeleteAccountCopyWithImpl<_$_DeleteAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfilePic profilePic) changeProfilePicStyle,
    required TResult Function(LinkedContact linkedContact) addLinkedContact,
    required TResult Function(int index) removeLinkedContact,
    required TResult Function(int oldIndex, int newIndex)
        changeLinkedContactOrder,
    required TResult Function(int index, LinkedContact linkedContact)
        replaceLinkedContact,
    required TResult Function() saveChanges,
    required TResult Function() deletePosts,
    required TResult Function() pauseAccount,
    required TResult Function() requestAccountVerification,
    required TResult Function(String password) deleteAccount,
  }) {
    return deleteAccount(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult? Function(LinkedContact linkedContact)? addLinkedContact,
    TResult? Function(int index)? removeLinkedContact,
    TResult? Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult? Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult? Function()? saveChanges,
    TResult? Function()? deletePosts,
    TResult? Function()? pauseAccount,
    TResult? Function()? requestAccountVerification,
    TResult? Function(String password)? deleteAccount,
  }) {
    return deleteAccount?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfilePic profilePic)? changeProfilePicStyle,
    TResult Function(LinkedContact linkedContact)? addLinkedContact,
    TResult Function(int index)? removeLinkedContact,
    TResult Function(int oldIndex, int newIndex)? changeLinkedContactOrder,
    TResult Function(int index, LinkedContact linkedContact)?
        replaceLinkedContact,
    TResult Function()? saveChanges,
    TResult Function()? deletePosts,
    TResult Function()? pauseAccount,
    TResult Function()? requestAccountVerification,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeProfilePicStyle value)
        changeProfilePicStyle,
    required TResult Function(_AddLinkedContact value) addLinkedContact,
    required TResult Function(_RemoveLinkedContact value) removeLinkedContact,
    required TResult Function(_ChangeLinkedContactOrder value)
        changeLinkedContactOrder,
    required TResult Function(_ReplaceLinkedContact value) replaceLinkedContact,
    required TResult Function(_SaveChanges value) saveChanges,
    required TResult Function(_DeletePosts value) deletePosts,
    required TResult Function(_PauseAccount value) pauseAccount,
    required TResult Function(_RequestAccountVerification value)
        requestAccountVerification,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult? Function(_AddLinkedContact value)? addLinkedContact,
    TResult? Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult? Function(_ChangeLinkedContactOrder value)?
        changeLinkedContactOrder,
    TResult? Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult? Function(_SaveChanges value)? saveChanges,
    TResult? Function(_DeletePosts value)? deletePosts,
    TResult? Function(_PauseAccount value)? pauseAccount,
    TResult? Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeProfilePicStyle value)? changeProfilePicStyle,
    TResult Function(_AddLinkedContact value)? addLinkedContact,
    TResult Function(_RemoveLinkedContact value)? removeLinkedContact,
    TResult Function(_ChangeLinkedContactOrder value)? changeLinkedContactOrder,
    TResult Function(_ReplaceLinkedContact value)? replaceLinkedContact,
    TResult Function(_SaveChanges value)? saveChanges,
    TResult Function(_DeletePosts value)? deletePosts,
    TResult Function(_PauseAccount value)? pauseAccount,
    TResult Function(_RequestAccountVerification value)?
        requestAccountVerification,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements AccountSettingsEvent {
  const factory _DeleteAccount(final String password) = _$_DeleteAccount;

  String get password;
  @JsonKey(ignore: true)
  _$$_DeleteAccountCopyWith<_$_DeleteAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountSettingsState {
  User get userData => throw _privateConstructorUsedError;
  User get userTempData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountSettingsStateCopyWith<AccountSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsStateCopyWith<$Res> {
  factory $AccountSettingsStateCopyWith(AccountSettingsState value,
          $Res Function(AccountSettingsState) then) =
      _$AccountSettingsStateCopyWithImpl<$Res, AccountSettingsState>;
  @useResult
  $Res call({User userData, User userTempData});

  $UserCopyWith<$Res> get userData;
  $UserCopyWith<$Res> get userTempData;
}

/// @nodoc
class _$AccountSettingsStateCopyWithImpl<$Res,
        $Val extends AccountSettingsState>
    implements $AccountSettingsStateCopyWith<$Res> {
  _$AccountSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? userTempData = null,
  }) {
    return _then(_value.copyWith(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User,
      userTempData: null == userTempData
          ? _value.userTempData
          : userTempData // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userData {
    return $UserCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userTempData {
    return $UserCopyWith<$Res>(_value.userTempData, (value) {
      return _then(_value.copyWith(userTempData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountSettingsStateCopyWith<$Res>
    implements $AccountSettingsStateCopyWith<$Res> {
  factory _$$_AccountSettingsStateCopyWith(_$_AccountSettingsState value,
          $Res Function(_$_AccountSettingsState) then) =
      __$$_AccountSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User userData, User userTempData});

  @override
  $UserCopyWith<$Res> get userData;
  @override
  $UserCopyWith<$Res> get userTempData;
}

/// @nodoc
class __$$_AccountSettingsStateCopyWithImpl<$Res>
    extends _$AccountSettingsStateCopyWithImpl<$Res, _$_AccountSettingsState>
    implements _$$_AccountSettingsStateCopyWith<$Res> {
  __$$_AccountSettingsStateCopyWithImpl(_$_AccountSettingsState _value,
      $Res Function(_$_AccountSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? userTempData = null,
  }) {
    return _then(_$_AccountSettingsState(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User,
      userTempData: null == userTempData
          ? _value.userTempData
          : userTempData // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AccountSettingsState implements _AccountSettingsState {
  const _$_AccountSettingsState(
      {required this.userData, required this.userTempData});

  @override
  final User userData;
  @override
  final User userTempData;

  @override
  String toString() {
    return 'AccountSettingsState(userData: $userData, userTempData: $userTempData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountSettingsState &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.userTempData, userTempData) ||
                other.userTempData == userTempData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData, userTempData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountSettingsStateCopyWith<_$_AccountSettingsState> get copyWith =>
      __$$_AccountSettingsStateCopyWithImpl<_$_AccountSettingsState>(
          this, _$identity);
}

abstract class _AccountSettingsState implements AccountSettingsState {
  const factory _AccountSettingsState(
      {required final User userData,
      required final User userTempData}) = _$_AccountSettingsState;

  @override
  User get userData;
  @override
  User get userTempData;
  @override
  @JsonKey(ignore: true)
  _$$_AccountSettingsStateCopyWith<_$_AccountSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
