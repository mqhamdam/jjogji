import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';

part 'profile_pic_styling_event.dart';
part 'profile_pic_styling_state.dart';
part 'profile_pic_styling_bloc.freezed.dart';

class ProfilePicStylingBloc
    extends Bloc<ProfilePicStylingEvent, ProfilePicStylingState> {
  List<Color> mapColors(List<VOColor> colors) {
    return colors.map((e) => Color(e.getOrCrash())).toList();
  }

  bool get isChanged => state.profilePic != state.profilePicOld;
  int get getIndexOfChoosedStyle => state.profilePic.choosedPolygon?.index ?? 0;

  ProfilePicStylingBloc() : super(ProfilePicStylingState.initial()) {
    on<ProfilePicStylingEvent>((event, emit) {
      event.map(
        started: (e) {
          _OnStarted(e, emit);
        },
        changeState: (e) {},
        changeRGRadius: (e) {
          _OnChangeRGRadius(e, emit);
        },
        addRGColor: (e) {
          _OnAddRGColor(e, emit);
        },
        deleteRGColor: (e) {
          _OnDeleteRGColor(e, emit);
        },
        changeRGOrder: (e) {
          _OnChangeRGOrder(e, emit);
        },
        //////////
        changeLGXStartPosition: (e) {
          _OnChangeLGXStartPosition(e, emit);
        },
        changeLGYStartPosition: (e) {
          _OnChangeLGYStartPosition(e, emit);
        },
        changeLGXEndPosition: (e) {
          _OnChangeLGXEndPosition(e, emit);
        },
        changeLGYEndPosition: (e) {
          _OnChangeLGYEndPosition(e, emit);
        },
        addLGColor: (e) {
          _OnAddLGColor(e, emit);
        },
        deleteLGColor: (e) {
          _OnDeleteLGColor(e, emit);
        },
        changeLGOrder: (e) {
          _OnChangeLGOrder(e, emit);
        },
        /////////
        changeSGXEpicenterPosition: (e) {
          _OnChangeSGXEpicenterPosition(e, emit);
        },
        changeSGYEpicenterPosition: (e) {
          _OnChangeSGYEpicenterPosition(e, emit);
        },
        changeSGStartAngle: (e) {
          _OnChangeSGStartAngle(e, emit);
        },
        changeSGSEndAngle: (e) {
          _OnChangeSGEndAngle(e, emit);
        },
        addSGColor: (e) {
          _OnAddSGColor(e, emit);
        },
        deleteSGColor: (e) {
          _OnDeleteSGColor(e, emit);
        },
        changeSGOrder: (e) {
          _OnChangeSGOrder(e, emit);
        },
        ////////
        changeChoosedPolygonStyle: (e) {
          _OnChangeChoosedPolygonStyle(e, emit);
        },
      );
    });
  }

  void _OnStarted(_Started e, Emitter<ProfilePicStylingState> emit) {
    emit(
      state.copyWith(
        profilePic: e.profilePic,
        profilePicOld: e.profilePic,
      ),
    );
  }

  ////
  void _OnChangeRGRadius(
    _ChangeRGRadius e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            trianglePPStyle: state.profilePic.styles.trianglePPStyle.copyWith(
              radius: e.value,
            ),
          ),
        ),
      ),
    );
  }

  void _OnAddRGColor(_AddRGColor e, Emitter<ProfilePicStylingState> emit) {
    final color = VOColor(e.color);

    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            trianglePPStyle: state.profilePic.styles.trianglePPStyle.copyWith(
              colors: List.of(state.profilePic.styles.trianglePPStyle.colors)
                ..add(color),
            ),
          ),
        ),
      ),
    );
  }

  void _OnDeleteRGColor(
    _DeleteRGColor e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            trianglePPStyle: state.profilePic.styles.trianglePPStyle.copyWith(
              colors: List.of(state.profilePic.styles.trianglePPStyle.colors)
                ..removeAt(e.index),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeRGOrder(
    _ChangeRGOrder e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    var newIndex = e.newI;
    final oldIndex = e.oldI;
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = List.of(state.profilePic.styles.trianglePPStyle.colors)
        .removeAt(oldIndex);
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            trianglePPStyle: state.profilePic.styles.trianglePPStyle.copyWith(
              colors: List.of(state.profilePic.styles.trianglePPStyle.colors)
                ..removeAt(oldIndex)
                ..insert(newIndex, item),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeLGXStartPosition(
    _ChangeLGXStartPosition e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            pentagonPPStyle: state.profilePic.styles.pentagonPPStyle.copyWith(
              beginXY: VOAlignment(
                e.x,
                state.profilePic.styles.pentagonPPStyle.beginXY.value2,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeLGYStartPosition(
    _ChangeLGYStartPosition e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    final x = state.profilePic.styles.pentagonPPStyle.beginXY.value;
    final y = e.y;
    final VOAlignment beginXY = VOAlignment(x, y);
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            pentagonPPStyle: state.profilePic.styles.pentagonPPStyle.copyWith(
              beginXY: beginXY,
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeLGXEndPosition(
    _ChangeLGXEndPosition e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            pentagonPPStyle: state.profilePic.styles.pentagonPPStyle.copyWith(
              endXY: VOAlignment(
                e.x,
                state.profilePic.styles.pentagonPPStyle.endXY.value2,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeLGYEndPosition(
    _ChangeLGYEndPosition e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            pentagonPPStyle: state.profilePic.styles.pentagonPPStyle.copyWith(
              endXY: VOAlignment(
                state.profilePic.styles.pentagonPPStyle.endXY.value,
                e.y,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _OnAddLGColor(_AddLGColor e, Emitter<ProfilePicStylingState> emit) {
    final color = VOColor(e.color);

    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            pentagonPPStyle: state.profilePic.styles.pentagonPPStyle.copyWith(
              colors: List.of(state.profilePic.styles.pentagonPPStyle.colors)
                ..add(color),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeLGOrder(
    _ChangeLGOrder e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    var newIndex = e.newI;
    final oldIndex = e.oldI;
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = List.of(state.profilePic.styles.pentagonPPStyle.colors)
        .removeAt(oldIndex);
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            pentagonPPStyle: state.profilePic.styles.pentagonPPStyle.copyWith(
              colors: List.of(state.profilePic.styles.pentagonPPStyle.colors)
                ..removeAt(oldIndex)
                ..insert(newIndex, item),
            ),
          ),
        ),
      ),
    );
  }

  void _OnDeleteLGColor(
    _DeleteLGColor e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            pentagonPPStyle: state.profilePic.styles.pentagonPPStyle.copyWith(
              colors: List.of(state.profilePic.styles.pentagonPPStyle.colors)
                ..removeAt(e.index),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeSGXEpicenterPosition(
    _ChangeSGXEpicenterPosition e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            heptagonPPStyle: state.profilePic.styles.heptagonPPStyle.copyWith(
              epicenter: VOAlignment(
                e.x,
                state.profilePic.styles.heptagonPPStyle.epicenter.value2,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeSGYEpicenterPosition(
    _ChangeSGYEpicenterPosition e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            heptagonPPStyle: state.profilePic.styles.heptagonPPStyle.copyWith(
              epicenter: VOAlignment(
                state.profilePic.styles.heptagonPPStyle.epicenter.value,
                e.y,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeSGStartAngle(
    _ChangeSGStartAngle e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            heptagonPPStyle: state.profilePic.styles.heptagonPPStyle.copyWith(
              startAngle: e.angle,
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeSGEndAngle(
    _ChangeSGEndAngle e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            heptagonPPStyle: state.profilePic.styles.heptagonPPStyle.copyWith(
              endAngle: e.angle,
            ),
          ),
        ),
      ),
    );
  }

  void _OnAddSGColor(_AddSGColor e, Emitter<ProfilePicStylingState> emit) {
    final color = VOColor(e.color);

    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            heptagonPPStyle: state.profilePic.styles.heptagonPPStyle.copyWith(
              colors: List.of(state.profilePic.styles.heptagonPPStyle.colors)
                ..add(color),
            ),
          ),
        ),
      ),
    );
  }

  void _OnChangeSGOrder(
    _ChangeSGOrder e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    var newIndex = e.newI;
    final oldIndex = e.oldI;
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = List.of(state.profilePic.styles.heptagonPPStyle.colors)
        .removeAt(oldIndex);
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            heptagonPPStyle: state.profilePic.styles.heptagonPPStyle.copyWith(
              colors: List.of(state.profilePic.styles.heptagonPPStyle.colors)
                ..removeAt(oldIndex)
                ..insert(newIndex, item),
            ),
          ),
        ),
      ),
    );
  }

  void _OnDeleteSGColor(
    _DeleteSGColor e,
    Emitter<ProfilePicStylingState> emit,
  ) {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          styles: state.profilePic.styles.copyWith(
            heptagonPPStyle: state.profilePic.styles.heptagonPPStyle.copyWith(
              colors: List.of(state.profilePic.styles.heptagonPPStyle.colors)
                ..removeAt(e.index),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _OnChangeChoosedPolygonStyle(
    _ChangeChoosedPolygonStyle e,
    Emitter<ProfilePicStylingState> emit,
  ) async {
    emit(
      state.copyWith(
        profilePic: state.profilePic.copyWith(
          choosedPolygon: Polygons.values[e.index],
        ),
      ),
    );
  }
}
