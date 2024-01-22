
import '../../data/models/detail_model.dart';
import '../../data/models/simillar_model.dart';

abstract class DetailStates {}

class DetailInitial extends DetailStates {}
class DetailLoadingState extends DetailStates {}
class DetailSuccessesState extends DetailStates {
  DetailSuccessesState(this.detailModel);
  DetailModel detailModel ;
}
class DetailFailureState extends DetailStates {
  final String errorMessage;
  DetailFailureState(this.errorMessage);
}
//////////////////////////////////////
/////////////////////////////////////
class SimilarLoadingState extends DetailStates {}
class SimilarSuccessesState extends DetailStates {
  SimilarSuccessesState(this.similarModel);
  SimilarModel similarModel ;
}
class SimilarFailureState extends DetailStates {
  final String errorMessage;
  SimilarFailureState(this.errorMessage);
}