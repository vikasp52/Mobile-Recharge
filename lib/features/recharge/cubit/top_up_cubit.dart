import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'top_up_state.dart';

class TopUpCubit extends Cubit<TopUpState> {
  TopUpCubit() : super(TopUpInitial());
}
