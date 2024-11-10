import 'dart:developer';

import 'package:bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('📢 Event in ${bloc.runtimeType}: $event');
    log('📢 Event in ${bloc.runtimeType}: $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('🔄 State Change in ${bloc.runtimeType}: $change');
    log('🔄 State Change in ${bloc.runtimeType}: $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('🔀 Transition in ${bloc.runtimeType}: $transition');
    log('🔀 Transition in ${bloc.runtimeType}: $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('❗ Error in ${bloc.runtimeType}: $error\n$stackTrace');
    log('❗ Error in ${bloc.runtimeType}: $error\n$stackTrace');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('❌ ${bloc.runtimeType} is closed');
    log('❌ ${bloc.runtimeType} is closed');
  }
}
