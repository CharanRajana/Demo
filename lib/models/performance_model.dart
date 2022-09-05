// ignore_for_file: public_member_api_docs, sort_constructors_first

class PerformanceModel {
  PerformanceModel({
    required this.id,
    required this.label,
    required this.chartPeriodCode,
    required this.changePercent,
  });

  final int id;
  final String label;
  final String chartPeriodCode;
  final double changePercent;

  factory PerformanceModel.fromJson(Map<String, dynamic> json) =>
      PerformanceModel(
        id: json["ID"],
        label: json["Label"],
        chartPeriodCode: json["ChartPeriodCode"],
        changePercent: json["ChangePercent"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Label": label,
        "ChartPeriodCode": chartPeriodCode,
        "ChangePercent": changePercent,
      };

  @override
  String toString() {
    return 'PerformanceModel(id: $id, label: $label, chartPeriodCode: $chartPeriodCode, changePercent: $changePercent)';
  }
}
