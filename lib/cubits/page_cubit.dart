import 'package:bloc/bloc.dart';

part 'page_state.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setPage(int newPage) {
    print('PageCubit new page $newPage');
    emit(newPage);
  }
}
