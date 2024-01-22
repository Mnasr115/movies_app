import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../models/detail_model.dart';
import '../models/simillar_model.dart';

abstract class DetailRpo{
  Future<Either<Failures,DetailModel>> getDetail({required int id});
  Future<Either<Failures,SimilarModel>> getSimilar({required int id});
}