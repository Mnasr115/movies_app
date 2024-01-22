import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../detail_screen/data/models/detail_model.dart';
import '../models/pop_model.dart';
import '../models/top_rated.dart';
import '../models/upcoming_model.dart';

abstract class HomeRepo{
Future<Either<Failures,PopularModel>> getPop();
Future<Either<Failures,UpComingModel>> getUpComing();
Future<Either<Failures,TopRatedModel>> getTopRated();

}