// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

OverviewModel overviewModelFromJson(String str) =>
    OverviewModel.fromJson(json.decode(str));

String overviewModelToJson(OverviewModel data) => json.encode(data.toJson());

class OverviewModel {
  OverviewModel({
    required this.id,
    required this.security,
    required this.industryId,
    required this.industry,
    required this.sectorId,
    required this.sector,
    required this.mcap,
    this.ev,
    this.evDateEnd,
    required this.bookNavPerShare,
    required this.ttmpe,
    required this.ttmYearEnd,
    required this.overviewModelYield,
    required this.yearEnd,
    required this.sectorSlug,
    required this.industrySlug,
    required this.securitySlug,
    required this.pegRatio,
  });

  final int id;
  final String security;
  final int industryId;
  final String industry;
  final int sectorId;
  final String sector;
  final double mcap;
  final dynamic ev;
  final dynamic evDateEnd;
  final double bookNavPerShare;
  final double ttmpe;
  final int ttmYearEnd;
  final double overviewModelYield;
  final int yearEnd;
  final String sectorSlug;
  final String industrySlug;
  final String securitySlug;
  final double pegRatio;

  factory OverviewModel.fromJson(Map<String, dynamic> json) => OverviewModel(
        id: json["ID"],
        security: json["Security"],
        industryId: json["IndustryID"],
        industry: json["Industry"],
        sectorId: json["SectorID"],
        sector: json["Sector"],
        mcap: json["MCAP"].toDouble(),
        ev: json["EV"] ?? '-',
        evDateEnd: json["EVDateEnd"],
        bookNavPerShare: json["BookNavPerShare"].toDouble(),
        ttmpe: json["TTMPE"].toDouble(),
        ttmYearEnd: json["TTMYearEnd"],
        overviewModelYield: json["Yield"].toDouble(),
        yearEnd: json["YearEnd"],
        sectorSlug: json["SectorSlug"],
        industrySlug: json["IndustrySlug"],
        securitySlug: json["SecuritySlug"],
        pegRatio: json["PEGRatio"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Security": security,
        "IndustryID": industryId,
        "Industry": industry,
        "SectorID": sectorId,
        "Sector": sector,
        "MCAP": mcap,
        "EV": ev,
        "EVDateEnd": evDateEnd,
        "BookNavPerShare": bookNavPerShare,
        "TTMPE": ttmpe,
        "TTMYearEnd": ttmYearEnd,
        "Yield": overviewModelYield,
        "YearEnd": yearEnd,
        "SectorSlug": sectorSlug,
        "IndustrySlug": industrySlug,
        "SecuritySlug": securitySlug,
        "PEGRatio": pegRatio,
      };

  int getLength() => 12;

  @override
  String toString() {
    return 'OverviewModel(id: $id, security: $security, industryId: $industryId, industry: $industry, sectorId: $sectorId, sector: $sector, mcap: $mcap, ev: $ev, evDateEnd: $evDateEnd, bookNavPerShare: $bookNavPerShare, ttmpe: $ttmpe, ttmYearEnd: $ttmYearEnd, overviewModelYield: $overviewModelYield, yearEnd: $yearEnd, sectorSlug: $sectorSlug, industrySlug: $industrySlug, securitySlug: $securitySlug, pegRatio: $pegRatio)';
  }
}
