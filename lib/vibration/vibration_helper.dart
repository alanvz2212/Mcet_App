import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musaliarapp/vibration/bloc/vibration_bloc.dart';
import 'package:vibration/vibration.dart';
import 'package:flutter/material.dart';

Future<void> vibrateIfEnabled(BuildContext context) async {
  final isOn = context.read<VibrationBloc>().state.isVibrationOn;
  if (isOn && await Vibration.hasVibrator()) {
    Vibration.vibrate(duration: 50);
  }
}
