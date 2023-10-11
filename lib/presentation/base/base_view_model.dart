import 'dart:async';

import 'package:rxdart/rxdart.dart';

import '../common/state_renderer/state_renderer_imp.dart';

abstract class BaseViewModel extends BaseViewModelInput implements BaseViewModelOutput {
  final StreamController _inputStreamController = BehaviorSubject<StateFlow>();

  @override
  Sink get inputState => _inputStreamController.sink;

  @override
  // TODO: implement getOutputState
  Stream<StateFlow> get getOutputState =>
      _inputStreamController.stream.map((flowState) => flowState);

  @override
  void dispose() {
    _inputStreamController.close();
  }
}

abstract class BaseViewModelInput {
  void start();

  void dispose();

  Sink get inputState;
}

abstract class BaseViewModelOutput {
  Stream<StateFlow> get getOutputState;
}
