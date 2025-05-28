abstract class VibrationEvent {}

class ToggleVibration extends VibrationEvent {}

class SetVibration extends VibrationEvent {
  final bool isOn;
  SetVibration(this.isOn);
}
