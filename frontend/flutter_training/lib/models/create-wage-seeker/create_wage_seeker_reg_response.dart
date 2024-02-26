import 'package:dart_mappable/dart_mappable.dart';

part 'create_wage_seeker_reg_response.mapper.dart';

@MappableClass()
class CreateWageSeekerRegResponse with CreateWageSeekerRegResponseMappable{
  final StatsMap? statsMap;

  CreateWageSeekerRegResponse({this.statsMap});
}

@MappableClass()
class StatsMap with StatsMapMappable {
  @MappableField(key: 'Successful Records')
  final int? successfulRecords;
  @MappableField(key: 'Total Records')
  final int? totalRecords;
  @MappableField(key: 'Failed Records')
  final int? failedRecords;

  StatsMap({
    this.failedRecords,
    this.successfulRecords,
    this.totalRecords,
  });
}
