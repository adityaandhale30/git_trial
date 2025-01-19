// // To parse this JSON data, do
// //
// //     final jobsApi = jobsApiFromJson(jsonString);

// import 'dart:convert';

// List<JobsApi> jobsApiFromJson(String str) => List<JobsApi>.from(json.decode(str).map((x) => JobsApi.fromJson(x)));

// String jobsApiToJson(List<JobsApi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class JobsApi {
//     final String id;
//     final DateTime datePosted;
//     final DateTime dateCreated;
//     final String title;
//     final String organization;
//     final String organizationUrl;
//     final DateTime dateValidthrough;
//     final List<LocationsRaw> locationsRaw;
//     final LocationType? locationType;
//     final List<LocationRequirementsRaw>? locationRequirementsRaw;
//     final SalaryRaw? salaryRaw;
//     final List<EmploymentType> employmentType;
//     final String url;
//     final SourceType sourceType;
//     final Source source;
//     final SourceDomain sourceDomain;
//     final String organizationLogo;
//     final List<String>? citiesDerived;
//     final List<String>? regionsDerived;
//     final List<CountriesDerived> countriesDerived;
//     final List<String> locationsDerived;
//     final List<TimezonesDerived> timezonesDerived;
//     final List<double> latsDerived;
//     final List<double> lngsDerived;
//     final bool remoteDerived;
//     final String? recruiterName;
//     final String? recruiterTitle;
//     final String? recruiterUrl;
//     final int linkedinOrgEmployees;
//     final String linkedinOrgUrl;
//     final LinkedinOrgSize linkedinOrgSize;
//     final String? linkedinOrgSlogan;
//     final String linkedinOrgIndustry;
//     final int? linkedinOrgFollowers;
//     final String linkedinOrgHeadquarters;
//     final LinkedinOrgType linkedinOrgType;
//     final String linkedinOrgFoundeddate;
//     final List<String> linkedinOrgSpecialties;
//     final List<String> linkedinOrgLocations;
//     final String linkedinOrgDescription;
//     final bool linkedinOrgRecruitmentAgencyDerived;
//     final Seniority seniority;

//     JobsApi({
//         required this.id,
//         required this.datePosted,
//         required this.dateCreated,
//         required this.title,
//         required this.organization,
//         required this.organizationUrl,
//         required this.dateValidthrough,
//         required this.locationsRaw,
//         required this.locationType,
//         required this.locationRequirementsRaw,
//         required this.salaryRaw,
//         required this.employmentType,
//         required this.url,
//         required this.sourceType,
//         required this.source,
//         required this.sourceDomain,
//         required this.organizationLogo,
//         required this.citiesDerived,
//         required this.regionsDerived,
//         required this.countriesDerived,
//         required this.locationsDerived,
//         required this.timezonesDerived,
//         required this.latsDerived,
//         required this.lngsDerived,
//         required this.remoteDerived,
//         required this.recruiterName,
//         required this.recruiterTitle,
//         required this.recruiterUrl,
//         required this.linkedinOrgEmployees,
//         required this.linkedinOrgUrl,
//         required this.linkedinOrgSize,
//         required this.linkedinOrgSlogan,
//         required this.linkedinOrgIndustry,
//         required this.linkedinOrgFollowers,
//         required this.linkedinOrgHeadquarters,
//         required this.linkedinOrgType,
//         required this.linkedinOrgFoundeddate,
//         required this.linkedinOrgSpecialties,
//         required this.linkedinOrgLocations,
//         required this.linkedinOrgDescription,
//         required this.linkedinOrgRecruitmentAgencyDerived,
//         required this.seniority,
//     });

//     factory JobsApi.fromJson(Map<String, dynamic> json) => JobsApi(
//         id: json["id"],
//         datePosted: DateTime.parse(json["date_posted"]),
//         dateCreated: DateTime.parse(json["date_created"]),
//         title: json["title"],
//         organization: json["organization"],
//         organizationUrl: json["organization_url"],
//         dateValidthrough: DateTime.parse(json["date_validthrough"]),
//         locationsRaw: List<LocationsRaw>.from(json["locations_raw"].map((x) => LocationsRaw.fromJson(x))),
//         locationType: locationTypeValues.map[json["location_type"]]!,
//         locationRequirementsRaw: json["location_requirements_raw"] == null ? [] : List<LocationRequirementsRaw>.from(json["location_requirements_raw"]!.map((x) => LocationRequirementsRaw.fromJson(x))),
//         salaryRaw: json["salary_raw"] == null ? null : SalaryRaw.fromJson(json["salary_raw"]),
//         employmentType: List<EmploymentType>.from(json["employment_type"].map((x) => employmentTypeValues.map[x]!)),
//         url: json["url"],
//         sourceType: sourceTypeValues.map[json["source_type"]]!,
//         source: sourceValues.map[json["source"]]!,
//         sourceDomain: sourceDomainValues.map[json["source_domain"]]!,
//         organizationLogo: json["organization_logo"],
//         citiesDerived: json["cities_derived"] == null ? [] : List<String>.from(json["cities_derived"]!.map((x) => x)),
//         regionsDerived: json["regions_derived"] == null ? [] : List<String>.from(json["regions_derived"]!.map((x) => x)),
//         countriesDerived: List<CountriesDerived>.from(json["countries_derived"].map((x) => countriesDerivedValues.map[x]!)),
//         locationsDerived: List<String>.from(json["locations_derived"].map((x) => x)),
//         timezonesDerived: List<TimezonesDerived>.from(json["timezones_derived"].map((x) => timezonesDerivedValues.map[x]!)),
//         latsDerived: List<double>.from(json["lats_derived"].map((x) => x?.toDouble())),
//         lngsDerived: List<double>.from(json["lngs_derived"].map((x) => x?.toDouble())),
//         remoteDerived: json["remote_derived"],
//         recruiterName: json["recruiter_name"],
//         recruiterTitle: json["recruiter_title"],
//         recruiterUrl: json["recruiter_url"],
//         linkedinOrgEmployees: json["linkedin_org_employees"],
//         linkedinOrgUrl: json["linkedin_org_url"],
//         linkedinOrgSize: linkedinOrgSizeValues.map[json["linkedin_org_size"]]!,
//         linkedinOrgSlogan: json["linkedin_org_slogan"],
//         linkedinOrgIndustry: json["linkedin_org_industry"],
//         linkedinOrgFollowers: json["linkedin_org_followers"],
//         linkedinOrgHeadquarters: json["linkedin_org_headquarters"],
//         linkedinOrgType: linkedinOrgTypeValues.map[json["linkedin_org_type"]]!,
//         linkedinOrgFoundeddate: json["linkedin_org_foundeddate"],
//         linkedinOrgSpecialties: List<String>.from(json["linkedin_org_specialties"].map((x) => x)),
//         linkedinOrgLocations: List<String>.from(json["linkedin_org_locations"].map((x) => x)),
//         linkedinOrgDescription: json["linkedin_org_description"],
//         linkedinOrgRecruitmentAgencyDerived: json["linkedin_org_recruitment_agency_derived"],
//         seniority: seniorityValues.map[json["seniority"]]!,
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "date_posted": datePosted.toIso8601String(),
//         "date_created": dateCreated.toIso8601String(),
//         "title": title,
//         "organization": organization,
//         "organization_url": organizationUrl,
//         "date_validthrough": dateValidthrough.toIso8601String(),
//         "locations_raw": List<dynamic>.from(locationsRaw.map((x) => x.toJson())),
//         "location_type": locationTypeValues.reverse[locationType],
//         "location_requirements_raw": locationRequirementsRaw == null ? [] : List<dynamic>.from(locationRequirementsRaw!.map((x) => x.toJson())),
//         "salary_raw": salaryRaw?.toJson(),
//         "employment_type": List<dynamic>.from(employmentType.map((x) => employmentTypeValues.reverse[x])),
//         "url": url,
//         "source_type": sourceTypeValues.reverse[sourceType],
//         "source": sourceValues.reverse[source],
//         "source_domain": sourceDomainValues.reverse[sourceDomain],
//         "organization_logo": organizationLogo,
//         "cities_derived": citiesDerived == null ? [] : List<dynamic>.from(citiesDerived!.map((x) => x)),
//         "regions_derived": regionsDerived == null ? [] : List<dynamic>.from(regionsDerived!.map((x) => x)),
//         "countries_derived": List<dynamic>.from(countriesDerived.map((x) => countriesDerivedValues.reverse[x])),
//         "locations_derived": List<dynamic>.from(locationsDerived.map((x) => x)),
//         "timezones_derived": List<dynamic>.from(timezonesDerived.map((x) => timezonesDerivedValues.reverse[x])),
//         "lats_derived": List<dynamic>.from(latsDerived.map((x) => x)),
//         "lngs_derived": List<dynamic>.from(lngsDerived.map((x) => x)),
//         "remote_derived": remoteDerived,
//         "recruiter_name": recruiterName,
//         "recruiter_title": recruiterTitle,
//         "recruiter_url": recruiterUrl,
//         "linkedin_org_employees": linkedinOrgEmployees,
//         "linkedin_org_url": linkedinOrgUrl,
//         "linkedin_org_size": linkedinOrgSizeValues.reverse[linkedinOrgSize],
//         "linkedin_org_slogan": linkedinOrgSlogan,
//         "linkedin_org_industry": linkedinOrgIndustry,
//         "linkedin_org_followers": linkedinOrgFollowers,
//         "linkedin_org_headquarters": linkedinOrgHeadquarters,
//         "linkedin_org_type": linkedinOrgTypeValues.reverse[linkedinOrgType],
//         "linkedin_org_foundeddate": linkedinOrgFoundeddate,
//         "linkedin_org_specialties": List<dynamic>.from(linkedinOrgSpecialties.map((x) => x)),
//         "linkedin_org_locations": List<dynamic>.from(linkedinOrgLocations.map((x) => x)),
//         "linkedin_org_description": linkedinOrgDescription,
//         "linkedin_org_recruitment_agency_derived": linkedinOrgRecruitmentAgencyDerived,
//         "seniority": seniorityValues.reverse[seniority],
//     };
// }

// enum CountriesDerived {
//     UNITED_STATES
// }

// final countriesDerivedValues = EnumValues({
//     "United States": CountriesDerived.UNITED_STATES
// });

// enum EmploymentType {
//     CONTRACTOR,
//     FULL_TIME,
//     INTERN
// }

// final employmentTypeValues = EnumValues({
//     "CONTRACTOR": EmploymentType.CONTRACTOR,
//     "FULL_TIME": EmploymentType.FULL_TIME,
//     "INTERN": EmploymentType.INTERN
// });

// enum LinkedinOrgSize {
//     THE_10001_EMPLOYEES,
//     THE_10015000_EMPLOYEES,
//     THE_1150_EMPLOYEES,
//     THE_1_EMPLOYEE,
//     THE_201500_EMPLOYEES,
//     THE_210_EMPLOYEES,
//     THE_500110000_EMPLOYEES,
//     THE_5011000_EMPLOYEES,
//     THE_51200_EMPLOYEES
// }

// final linkedinOrgSizeValues = EnumValues({
//     "10,001+ employees": LinkedinOrgSize.THE_10001_EMPLOYEES,
//     "1,001-5,000 employees": LinkedinOrgSize.THE_10015000_EMPLOYEES,
//     "11-50 employees": LinkedinOrgSize.THE_1150_EMPLOYEES,
//     "1 employee": LinkedinOrgSize.THE_1_EMPLOYEE,
//     "201-500 employees": LinkedinOrgSize.THE_201500_EMPLOYEES,
//     "2-10 employees": LinkedinOrgSize.THE_210_EMPLOYEES,
//     "5,001-10,000 employees": LinkedinOrgSize.THE_500110000_EMPLOYEES,
//     "501-1,000 employees": LinkedinOrgSize.THE_5011000_EMPLOYEES,
//     "51-200 employees": LinkedinOrgSize.THE_51200_EMPLOYEES
// });

// enum LinkedinOrgType {
//     NONPROFIT,
//     PARTNERSHIP,
//     PRIVATELY_HELD,
//     PUBLIC_COMPANY,
//     SELF_OWNED
// }

// final linkedinOrgTypeValues = EnumValues({
//     "Nonprofit": LinkedinOrgType.NONPROFIT,
//     "Partnership": LinkedinOrgType.PARTNERSHIP,
//     "Privately Held": LinkedinOrgType.PRIVATELY_HELD,
//     "Public Company": LinkedinOrgType.PUBLIC_COMPANY,
//     "Self-Owned": LinkedinOrgType.SELF_OWNED
// });

// class LocationRequirementsRaw {
//     final LocationRequirementsRawType type;
//     final String name;

//     LocationRequirementsRaw({
//         required this.type,
//         required this.name,
//     });

//     factory LocationRequirementsRaw.fromJson(Map<String, dynamic> json) => LocationRequirementsRaw(
//         type: locationRequirementsRawTypeValues.map[json["@type"]]!,
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "@type": locationRequirementsRawTypeValues.reverse[type],
//         "name": name,
//     };
// }

// enum LocationRequirementsRawType {
//     COUNTRY
// }

// final locationRequirementsRawTypeValues = EnumValues({
//     "Country": LocationRequirementsRawType.COUNTRY
// });

// enum LocationType {
//     TELECOMMUTE
// }

// final locationTypeValues = EnumValues({
//     "TELECOMMUTE": LocationType.TELECOMMUTE
// });

// class LocationsRaw {
//     final LocationsRawType type;
//     final Address address;
//     final double latitude;
//     final double longitude;

//     LocationsRaw({
//         required this.type,
//         required this.address,
//         required this.latitude,
//         required this.longitude,
//     });

//     factory LocationsRaw.fromJson(Map<String, dynamic> json) => LocationsRaw(
//         type: locationsRawTypeValues.map[json["@type"]]!,
//         address: Address.fromJson(json["address"]),
//         latitude: json["latitude"]?.toDouble(),
//         longitude: json["longitude"]?.toDouble(),
//     );

//     Map<String, dynamic> toJson() => {
//         "@type": locationsRawTypeValues.reverse[type],
//         "address": address.toJson(),
//         "latitude": latitude,
//         "longitude": longitude,
//     };
// }

// class Address {
//     final AddressType type;
//     final AddressCountry addressCountry;
//     final String addressLocality;
//     final String? addressRegion;
//     final dynamic streetAddress;

//     Address({
//         required this.type,
//         required this.addressCountry,
//         required this.addressLocality,
//         required this.addressRegion,
//         required this.streetAddress,
//     });

//     factory Address.fromJson(Map<String, dynamic> json) => Address(
//         type: addressTypeValues.map[json["@type"]]!,
//         addressCountry: addressCountryValues.map[json["addressCountry"]]!,
//         addressLocality: json["addressLocality"],
//         addressRegion: json["addressRegion"],
//         streetAddress: json["streetAddress"],
//     );

//     Map<String, dynamic> toJson() => {
//         "@type": addressTypeValues.reverse[type],
//         "addressCountry": addressCountryValues.reverse[addressCountry],
//         "addressLocality": addressLocality,
//         "addressRegion": addressRegion,
//         "streetAddress": streetAddress,
//     };
// }

// enum AddressCountry {
//     US
// }

// final addressCountryValues = EnumValues({
//     "US": AddressCountry.US
// });

// enum AddressType {
//     POSTAL_ADDRESS
// }

// final addressTypeValues = EnumValues({
//     "PostalAddress": AddressType.POSTAL_ADDRESS
// });

// enum LocationsRawType {
//     PLACE
// }

// final locationsRawTypeValues = EnumValues({
//     "Place": LocationsRawType.PLACE
// });

// class SalaryRaw {
//     final SalaryRawType type;
//     final Currency currency;
//     final Value value;

//     SalaryRaw({
//         required this.type,
//         required this.currency,
//         required this.value,
//     });

//     factory SalaryRaw.fromJson(Map<String, dynamic> json) => SalaryRaw(
//         type: salaryRawTypeValues.map[json["@type"]]!,
//         currency: currencyValues.map[json["currency"]]!,
//         value: Value.fromJson(json["value"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "@type": salaryRawTypeValues.reverse[type],
//         "currency": currencyValues.reverse[currency],
//         "value": value.toJson(),
//     };
// }

// enum Currency {
//     USD
// }

// final currencyValues = EnumValues({
//     "USD": Currency.USD
// });

// enum SalaryRawType {
//     MONETARY_AMOUNT
// }

// final salaryRawTypeValues = EnumValues({
//     "MonetaryAmount": SalaryRawType.MONETARY_AMOUNT
// });

// class Value {
//     final ValueType type;
//     final double minValue;
//     final double maxValue;
//     final UnitText unitText;

//     Value({
//         required this.type,
//         required this.minValue,
//         required this.maxValue,
//         required this.unitText,
//     });

//     factory Value.fromJson(Map<String, dynamic> json) => Value(
//         type: valueTypeValues.map[json["@type"]]!,
//         minValue: json["minValue"]?.toDouble(),
//         maxValue: json["maxValue"]?.toDouble(),
//         unitText: unitTextValues.map[json["unitText"]]!,
//     );

//     Map<String, dynamic> toJson() => {
//         "@type": valueTypeValues.reverse[type],
//         "minValue": minValue,
//         "maxValue": maxValue,
//         "unitText": unitTextValues.reverse[unitText],
//     };
// }

// enum ValueType {
//     QUANTITATIVE_VALUE
// }

// final valueTypeValues = EnumValues({
//     "QuantitativeValue": ValueType.QUANTITATIVE_VALUE
// });

// enum UnitText {
//     HOUR,
//     YEAR
// }

// final unitTextValues = EnumValues({
//     "HOUR": UnitText.HOUR,
//     "YEAR": UnitText.YEAR
// });

// enum Seniority {
//     ASSOCIATE,
//     DIRECTOR,
//     ENTRY_LEVEL,
//     MID_SENIOR_LEVEL,
//     NOT_APPLICABLE
// }

// final seniorityValues = EnumValues({
//     "Associate": Seniority.ASSOCIATE,
//     "Director": Seniority.DIRECTOR,
//     "Entry level": Seniority.ENTRY_LEVEL,
//     "Mid-Senior level": Seniority.MID_SENIOR_LEVEL,
//     "Not Applicable": Seniority.NOT_APPLICABLE
// });

// enum Source {
//     LINKEDIN
// }

// final sourceValues = EnumValues({
//     "linkedin": Source.LINKEDIN
// });

// enum SourceDomain {
//     LINKEDIN_COM
// }

// final sourceDomainValues = EnumValues({
//     "linkedin.com": SourceDomain.LINKEDIN_COM
// });

// enum SourceType {
//     JOBBOARD
// }

// final sourceTypeValues = EnumValues({
//     "jobboard": SourceType.JOBBOARD
// });

// enum TimezonesDerived {
//     AMERICA_CHICAGO,
//     AMERICA_DENVER,
//     AMERICA_DETROIT,
//     AMERICA_LOS_ANGELES,
//     AMERICA_MENOMINEE,
//     AMERICA_NEW_YORK
// }

// final timezonesDerivedValues = EnumValues({
//     "America/Chicago": TimezonesDerived.AMERICA_CHICAGO,
//     "America/Denver": TimezonesDerived.AMERICA_DENVER,
//     "America/Detroit": TimezonesDerived.AMERICA_DETROIT,
//     "America/Los_Angeles": TimezonesDerived.AMERICA_LOS_ANGELES,
//     "America/Menominee": TimezonesDerived.AMERICA_MENOMINEE,
//     "America/New_York": TimezonesDerived.AMERICA_NEW_YORK
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     late Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//             reverseMap = map.map((k, v) => MapEntry(v, k));
//             return reverseMap;
//     }
// }
