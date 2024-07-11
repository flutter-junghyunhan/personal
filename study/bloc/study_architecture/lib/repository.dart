import 'package:study_architecture/data_provider.dart';

class Repository {
  late final DataProvider dataProviderA;
  late final DataProvider dataProviderB;

  Future<Data> getAllDataThatMeetsRequirements() async {
    final RawDataA datasetA = await dataProviderA.readData();
    final RawDataA datasetB = await dataProviderB.readData();

    final Data filteredData = _filterData(datasetA, datasetB);
    return filteredData;
  }
}
