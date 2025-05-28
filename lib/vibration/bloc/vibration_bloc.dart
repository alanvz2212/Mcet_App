import 'package:flutter_bloc/flutter_bloc.dart';
import 'vibration_event.dart';
import 'vibration_state.dart';

class VibrationBloc extends Bloc<VibrationEvent, VibrationState> {
  VibrationBloc() : super(VibrationState(true)) {
    on<ToggleVibration>((event, emit) {
      emit(VibrationState(!state.isVibrationOn));
    });

    on<SetVibration>((event, emit) {
      emit(VibrationState(event.isOn));
    });
  }
}
