import 'package:f_4_fitness/FAB/fab_Intermidiate_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final exerciseListProvider = Provider<List<IntermidiateModel>>((ref)=>IntermidiateModelPage());
final testProvider = StateNotifierProvider.autoDispose<IntermidiateModelPage,List<IntermidiateModel> >((ref) =>;
);
final exerciseList = ChangeNotifierProvider<List<IntermidiateModel>> ((ref) =>IntermidiateModelPage());