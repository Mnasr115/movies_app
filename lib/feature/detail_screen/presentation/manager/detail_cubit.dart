import 'package:flutter_bloc/flutter_bloc.dart';


import '../../data/models/detail_model.dart';
import '../../data/models/simillar_model.dart';
import '../../data/repositories/detail_rpo_imp.dart';
import 'detail_state.dart';

class DetailCubit extends Cubit<DetailStates> {
  DetailCubit(this.detailRpoImp) : super(DetailInitial());
  DetailRpoImp detailRpoImp;
  static DetailCubit get(context) => BlocProvider.of(context);
  DetailModel? detailModel;
  List<ResultsSimilar>similarList=[];
  void getDetail({required int id}) async {
    emit(DetailLoadingState());
    var result = await detailRpoImp.getDetail(id: id);
    result.fold((l) => emit(DetailFailureState(l.message)),
        (r) {
      detailModel=r;
          emit(DetailSuccessesState(r));
        });
  }
  void getSimilar({required int id}) async {
    emit(SimilarLoadingState());
    var result = await detailRpoImp.getSimilar(id: id);
    result.fold((l) => emit(SimilarFailureState(l.message)),
        (r) {
      similarList=r.results??[];
          emit(SimilarSuccessesState(r));
        });
  }
}
