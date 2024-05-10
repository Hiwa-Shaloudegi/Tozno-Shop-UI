import 'package:flutter_bloc/flutter_bloc.dart';

part 'view_mode_state.dart';

class ViewModeCubit extends Cubit<ViewModeState> {
  ViewModeCubit() : super(ViewModeState(viewMode: ViewMode.list));

  void changeViewMode(ViewMode viewMode) {
    emit(ViewModeState(viewMode: viewMode));
  }
}
