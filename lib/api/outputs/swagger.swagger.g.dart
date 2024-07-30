// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBugDto _$CreateBugDtoFromJson(Map<String, dynamic> json) => CreateBugDto(
      description: json['description'] as String,
    );

Map<String, dynamic> _$CreateBugDtoToJson(CreateBugDto instance) =>
    <String, dynamic>{
      'description': instance.description,
    };

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => AddressDto(
      id: json['id'] as String,
      street: json['street'] as String?,
      city: json['city'] as String?,
      addressAddition: json['addressAddition'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      country: json['country'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AddressDtoToJson(AddressDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'city': instance.city,
      'addressAddition': instance.addressAddition,
      'state': instance.state,
      'zip': instance.zip,
      'country': instance.country,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

TenantLinkDto _$TenantLinkDtoFromJson(Map<String, dynamic> json) =>
    TenantLinkDto(
      id: json['id'] as String,
      label: json['label'] as String,
      displayId: json['displayId'] as String,
    );

Map<String, dynamic> _$TenantLinkDtoToJson(TenantLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'displayId': instance.displayId,
    };

ContactLinkDto _$ContactLinkDtoFromJson(Map<String, dynamic> json) =>
    ContactLinkDto(
      id: json['id'] as String,
      label: json['label'] as String,
      displayId: json['displayId'] as String,
    );

Map<String, dynamic> _$ContactLinkDtoToJson(ContactLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'displayId': instance.displayId,
    };

UnitLinkDto _$UnitLinkDtoFromJson(Map<String, dynamic> json) => UnitLinkDto(
      id: json['id'] as String,
      label: json['label'] as String,
      displayId: json['displayId'] as String,
      type: unitTypeFromJson(json['type']),
    );

Map<String, dynamic> _$UnitLinkDtoToJson(UnitLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'displayId': instance.displayId,
      'type': unitTypeToJson(instance.type),
    };

LeaseDto _$LeaseDtoFromJson(Map<String, dynamic> json) => LeaseDto(
      id: json['id'] as String,
      tenants: (json['tenants'] as List<dynamic>?)
              ?.map((e) => TenantLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      contactLink:
          ContactLinkDto.fromJson(json['contactLink'] as Map<String, dynamic>),
      type: contractTypeFromJson(json['type']),
      unitLink: json['unitLink'] == null
          ? null
          : UnitLinkDto.fromJson(json['unitLink'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LeaseDtoToJson(LeaseDto instance) => <String, dynamic>{
      'id': instance.id,
      'tenants': instance.tenants?.map((e) => e.toJson()).toList(),
      'contactLink': instance.contactLink.toJson(),
      'type': contractTypeToJson(instance.type),
      'unitLink': instance.unitLink?.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

AttachmentDto _$AttachmentDtoFromJson(Map<String, dynamic> json) =>
    AttachmentDto(
      id: json['id'] as String,
      name: json['name'] as String,
      mimeType: json['mimeType'] as String,
      fileKey: json['fileKey'] as String,
      canCustomerView: json['canCustomerView'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AttachmentDtoToJson(AttachmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mimeType': instance.mimeType,
      'fileKey': instance.fileKey,
      'canCustomerView': instance.canCustomerView,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

UnitDto _$UnitDtoFromJson(Map<String, dynamic> json) => UnitDto(
      id: json['id'] as String,
      displayId: json['displayId'] as String,
      name: json['name'] as String,
      complexString: json['complexString'] as String?,
      type: unitTypeFromJson(json['type']),
      buildingString: json['buildingString'] as String?,
      status: statusFromJson(json['status']),
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      leases: (json['leases'] as List<dynamic>?)
              ?.map((e) => LeaseDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      notes: json['notes'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UnitDtoToJson(UnitDto instance) => <String, dynamic>{
      'id': instance.id,
      'displayId': instance.displayId,
      'name': instance.name,
      'complexString': instance.complexString,
      'type': unitTypeToJson(instance.type),
      'buildingString': instance.buildingString,
      'status': statusToJson(instance.status),
      'address': instance.address.toJson(),
      'leases': instance.leases?.map((e) => e.toJson()).toList(),
      'notes': instance.notes,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

QueryDto _$QueryDtoFromJson(Map<String, dynamic> json) => QueryDto(
      queryString: json['queryString'] as String,
    );

Map<String, dynamic> _$QueryDtoToJson(QueryDto instance) => <String, dynamic>{
      'queryString': instance.queryString,
    };

CreateAddressDto _$CreateAddressDtoFromJson(Map<String, dynamic> json) =>
    CreateAddressDto(
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$CreateAddressDtoToJson(CreateAddressDto instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };

CreateUnitDto _$CreateUnitDtoFromJson(Map<String, dynamic> json) =>
    CreateUnitDto(
      buildingId: json['buildingId'] as String,
      name: json['name'] as String?,
      address: json['address'] == null
          ? null
          : CreateAddressDto.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateUnitDtoToJson(CreateUnitDto instance) =>
    <String, dynamic>{
      'buildingId': instance.buildingId,
      'name': instance.name,
      'address': instance.address?.toJson(),
    };

UpdateUnitDto _$UpdateUnitDtoFromJson(Map<String, dynamic> json) =>
    UpdateUnitDto(
      id: json['id'] as String,
      name: json['name'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$UpdateUnitDtoToJson(UpdateUnitDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'notes': instance.notes,
    };

AccountInfoDto _$AccountInfoDtoFromJson(Map<String, dynamic> json) =>
    AccountInfoDto(
      id: json['id'] as String,
    );

Map<String, dynamic> _$AccountInfoDtoToJson(AccountInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateAccountDto _$CreateAccountDtoFromJson(Map<String, dynamic> json) =>
    CreateAccountDto(
      authId: json['authId'] as String,
    );

Map<String, dynamic> _$CreateAccountDtoToJson(CreateAccountDto instance) =>
    <String, dynamic>{
      'authId': instance.authId,
    };

ConnectAccountDto _$ConnectAccountDtoFromJson(Map<String, dynamic> json) =>
    ConnectAccountDto(
      code: json['code'] as String,
    );

Map<String, dynamic> _$ConnectAccountDtoToJson(ConnectAccountDto instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

InquiryLinkDto _$InquiryLinkDtoFromJson(Map<String, dynamic> json) =>
    InquiryLinkDto(
      id: json['id'] as String,
      label: json['label'] as String,
      status: inquiryStatusFromJson(json['status']),
    );

Map<String, dynamic> _$InquiryLinkDtoToJson(InquiryLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'status': inquiryStatusToJson(instance.status),
    };

TenantDto _$TenantDtoFromJson(Map<String, dynamic> json) => TenantDto(
      id: json['id'] as String,
      displayId: json['displayId'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      notes: json['notes'] as String?,
      contactMethod:
          tenantDtoContactMethodNullableFromJson(json['contactMethod']),
      leases: (json['leases'] as List<dynamic>?)
              ?.map((e) => LeaseDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      inquiryLinks: (json['inquiryLinks'] as List<dynamic>?)
              ?.map((e) => InquiryLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
    );

Map<String, dynamic> _$TenantDtoToJson(TenantDto instance) => <String, dynamic>{
      'id': instance.id,
      'displayId': instance.displayId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
      'contactMethod':
          tenantDtoContactMethodNullableToJson(instance.contactMethod),
      'leases': instance.leases?.map((e) => e.toJson()).toList(),
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'inquiryLinks': instance.inquiryLinks?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'lastLogin': instance.lastLogin?.toIso8601String(),
    };

FindTenantDto _$FindTenantDtoFromJson(Map<String, dynamic> json) =>
    FindTenantDto(
      unitIds: (json['unitIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      buildingIds: (json['buildingIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      complexIds: (json['complexIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$FindTenantDtoToJson(FindTenantDto instance) =>
    <String, dynamic>{
      'unitIds': instance.unitIds,
      'buildingIds': instance.buildingIds,
      'complexIds': instance.complexIds,
    };

ResolvedTenantDto _$ResolvedTenantDtoFromJson(Map<String, dynamic> json) =>
    ResolvedTenantDto(
      id: json['id'] as String,
      displayId: json['displayId'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      contactMethod:
          resolvedTenantDtoContactMethodNullableFromJson(json['contactMethod']),
      buildingString: json['buildingString'] as String,
      complexString: json['complexString'] as String,
    );

Map<String, dynamic> _$ResolvedTenantDtoToJson(ResolvedTenantDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayId': instance.displayId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'contactMethod':
          resolvedTenantDtoContactMethodNullableToJson(instance.contactMethod),
      'buildingString': instance.buildingString,
      'complexString': instance.complexString,
    };

CreateTenantDto _$CreateTenantDtoFromJson(Map<String, dynamic> json) =>
    CreateTenantDto(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CreateTenantDtoToJson(CreateTenantDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
    };

ComplexLinkDto _$ComplexLinkDtoFromJson(Map<String, dynamic> json) =>
    ComplexLinkDto(
      id: json['id'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$ComplexLinkDtoToJson(ComplexLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
    };

BuildingDto _$BuildingDtoFromJson(Map<String, dynamic> json) => BuildingDto(
      id: json['id'] as String,
      displayId: json['displayId'] as String,
      complexLink: json['complexLink'] == null
          ? null
          : ComplexLinkDto.fromJson(
              json['complexLink'] as Map<String, dynamic>),
      name: json['name'] as String,
      units: (json['units'] as List<dynamic>?)
              ?.map((e) => UnitDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      notes: json['notes'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$BuildingDtoToJson(BuildingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayId': instance.displayId,
      'complexLink': instance.complexLink?.toJson(),
      'name': instance.name,
      'units': instance.units.map((e) => e.toJson()).toList(),
      'address': instance.address.toJson(),
      'notes': instance.notes,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

ComplexDto _$ComplexDtoFromJson(Map<String, dynamic> json) => ComplexDto(
      id: json['id'] as String,
      displayId: json['displayId'] as String,
      name: json['name'] as String,
      buildings: (json['buildings'] as List<dynamic>?)
              ?.map((e) => BuildingDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      notes: json['notes'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ComplexDtoToJson(ComplexDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayId': instance.displayId,
      'name': instance.name,
      'buildings': instance.buildings.map((e) => e.toJson()).toList(),
      'notes': instance.notes,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

CreateComplexDto _$CreateComplexDtoFromJson(Map<String, dynamic> json) =>
    CreateComplexDto(
      name: json['name'] as String,
    );

Map<String, dynamic> _$CreateComplexDtoToJson(CreateComplexDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

UpdateComplexDto _$UpdateComplexDtoFromJson(Map<String, dynamic> json) =>
    UpdateComplexDto(
      id: json['id'] as String,
      name: json['name'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$UpdateComplexDtoToJson(UpdateComplexDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'notes': instance.notes,
    };

CreateBuildingDto _$CreateBuildingDtoFromJson(Map<String, dynamic> json) =>
    CreateBuildingDto(
      address: json['address'] == null
          ? null
          : CreateAddressDto.fromJson(json['address'] as Map<String, dynamic>),
      complexId: json['complexId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CreateBuildingDtoToJson(CreateBuildingDto instance) =>
    <String, dynamic>{
      'address': instance.address?.toJson(),
      'complexId': instance.complexId,
      'name': instance.name,
    };

UpdateBuildingDto _$UpdateBuildingDtoFromJson(Map<String, dynamic> json) =>
    UpdateBuildingDto(
      id: json['id'] as String,
      name: json['name'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$UpdateBuildingDtoToJson(UpdateBuildingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'notes': instance.notes,
    };

AddUnitBuildingDto _$AddUnitBuildingDtoFromJson(Map<String, dynamic> json) =>
    AddUnitBuildingDto(
      unitId: json['unitId'] as String,
    );

Map<String, dynamic> _$AddUnitBuildingDtoToJson(AddUnitBuildingDto instance) =>
    <String, dynamic>{
      'unitId': instance.unitId,
    };

CreateLeaseDto _$CreateLeaseDtoFromJson(Map<String, dynamic> json) =>
    CreateLeaseDto(
      contactId: json['contactId'] as String,
      type: contractTypeFromJson(json['type']),
      unitId: json['unitId'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CreateLeaseDtoToJson(CreateLeaseDto instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'type': contractTypeToJson(instance.type),
      'unitId': instance.unitId,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'notes': instance.notes,
    };

UpdateLeaseDto _$UpdateLeaseDtoFromJson(Map<String, dynamic> json) =>
    UpdateLeaseDto(
      id: json['id'] as String,
      contactId: json['contactId'] as String,
      type: contractTypeFromJson(json['type']),
      unitId: json['unitId'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$UpdateLeaseDtoToJson(UpdateLeaseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contactId': instance.contactId,
      'type': contractTypeToJson(instance.type),
      'unitId': instance.unitId,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'notes': instance.notes,
    };

PersonDto _$PersonDtoFromJson(Map<String, dynamic> json) => PersonDto(
      id: json['id'] as String,
      salutation: salutationFromJson(json['salutation']),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$PersonDtoToJson(PersonDto instance) => <String, dynamic>{
      'id': instance.id,
      'salutation': salutationToJson(instance.salutation),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) => ContactDto(
      id: json['id'] as String,
      displayId: json['displayId'] as String,
      person: json['person'] == null
          ? null
          : PersonDto.fromJson(json['person'] as Map<String, dynamic>),
      roles: contractTypeListFromJson(json['roles'] as List?),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      preferredChannel: contactMethodFromJson(json['preferredChannel']),
      address: json['address'] == null
          ? null
          : AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      notes: json['notes'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ContactDtoToJson(ContactDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayId': instance.displayId,
      'person': instance.person?.toJson(),
      'roles': contractTypeListToJson(instance.roles),
      'email': instance.email,
      'phone': instance.phone,
      'preferredChannel': contactMethodToJson(instance.preferredChannel),
      'address': instance.address?.toJson(),
      'notes': instance.notes,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

TenantProfileDto _$TenantProfileDtoFromJson(Map<String, dynamic> json) =>
    TenantProfileDto(
      contactId: json['contactId'] as String,
      contactDisplayId: json['contactDisplayId'] as String,
      unitId: json['unitId'] as String?,
      unitDisplayId: json['unitDisplayId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      contactMethod:
          tenantProfileDtoContactMethodNullableFromJson(json['contactMethod']),
      street: json['street'] as String?,
      zip: json['zip'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$TenantProfileDtoToJson(TenantProfileDto instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'contactDisplayId': instance.contactDisplayId,
      'unitId': instance.unitId,
      'unitDisplayId': instance.unitDisplayId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'contactMethod':
          tenantProfileDtoContactMethodNullableToJson(instance.contactMethod),
      'street': instance.street,
      'zip': instance.zip,
      'city': instance.city,
      'country': instance.country,
    };

PersonCreateDto _$PersonCreateDtoFromJson(Map<String, dynamic> json) =>
    PersonCreateDto(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      notes: json['notes'] as String?,
      address:
          CreateAddressDto.fromJson(json['address'] as Map<String, dynamic>),
      preferredChannel: contactMethodFromJson(json['preferredChannel']),
      salutation: salutationFromJson(json['salutation']),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$PersonCreateDtoToJson(PersonCreateDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
      'address': instance.address.toJson(),
      'preferredChannel': contactMethodToJson(instance.preferredChannel),
      'salutation': salutationToJson(instance.salutation),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

PersonUpdateDto _$PersonUpdateDtoFromJson(Map<String, dynamic> json) =>
    PersonUpdateDto(
      id: json['id'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      notes: json['notes'] as String?,
      preferredChannel: contactMethodFromJson(json['preferredChannel']),
      street: json['street'] as String?,
      zip: json['zip'] as String?,
      city: json['city'] as String?,
      salutation: salutationFromJson(json['salutation']),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$PersonUpdateDtoToJson(PersonUpdateDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
      'preferredChannel': contactMethodToJson(instance.preferredChannel),
      'street': instance.street,
      'zip': instance.zip,
      'city': instance.city,
      'salutation': salutationToJson(instance.salutation),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

TaskLinkDto _$TaskLinkDtoFromJson(Map<String, dynamic> json) => TaskLinkDto(
      id: json['id'] as String,
      label: json['label'] as String,
      status: taskStatusFromJson(json['status']),
    );

Map<String, dynamic> _$TaskLinkDtoToJson(TaskLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'status': taskStatusToJson(instance.status),
    };

ContactLogEntryDto _$ContactLogEntryDtoFromJson(Map<String, dynamic> json) =>
    ContactLogEntryDto(
      id: json['id'] as String,
      content: json['content'] as String?,
      taskLink: json['taskLink'] == null
          ? null
          : TaskLinkDto.fromJson(json['taskLink'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ContactLogEntryDtoToJson(ContactLogEntryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'taskLink': instance.taskLink?.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

ContactLogEntryCreateDto _$ContactLogEntryCreateDtoFromJson(
        Map<String, dynamic> json) =>
    ContactLogEntryCreateDto(
      contactId: json['contactId'] as String,
      content: json['content'] as String,
      taskId: json['taskId'] as String?,
      dueDate: DateTime.parse(json['dueDate'] as String),
    );

Map<String, dynamic> _$ContactLogEntryCreateDtoToJson(
        ContactLogEntryCreateDto instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'content': instance.content,
      'taskId': instance.taskId,
      'dueDate': instance.dueDate.toIso8601String(),
    };

UpdateContactDetailsDto _$UpdateContactDetailsDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateContactDetailsDto(
      id: json['id'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      preferredChannel: contactMethodNullableFromJson(json['preferredChannel']),
    );

Map<String, dynamic> _$UpdateContactDetailsDtoToJson(
        UpdateContactDetailsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'preferredChannel':
          contactMethodNullableToJson(instance.preferredChannel),
    };

CreateAttachmentDto _$CreateAttachmentDtoFromJson(Map<String, dynamic> json) =>
    CreateAttachmentDto(
      tenantIds: (json['tenantIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      contactIds: (json['contactIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      taskIds: (json['taskIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      unitIds: (json['unitIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      buildingIds: (json['buildingIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      complexIds: (json['complexIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      inquiryMessageIds: (json['inquiryMessageIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateAttachmentDtoToJson(
        CreateAttachmentDto instance) =>
    <String, dynamic>{
      'tenantIds': instance.tenantIds,
      'contactIds': instance.contactIds,
      'taskIds': instance.taskIds,
      'unitIds': instance.unitIds,
      'buildingIds': instance.buildingIds,
      'complexIds': instance.complexIds,
      'inquiryMessageIds': instance.inquiryMessageIds,
    };

DeleteAttachmentDto _$DeleteAttachmentDtoFromJson(Map<String, dynamic> json) =>
    DeleteAttachmentDto(
      attachmentId: json['attachmentId'] as String,
      tenantId: json['tenantId'] as String?,
      contactId: json['contactId'] as String?,
      leaseId: json['leaseId'] as String?,
      unitId: json['unitId'] as String?,
      complexId: json['complexId'] as String?,
      buildingId: json['buildingId'] as String?,
      taskId: json['taskId'] as String?,
    );

Map<String, dynamic> _$DeleteAttachmentDtoToJson(
        DeleteAttachmentDto instance) =>
    <String, dynamic>{
      'attachmentId': instance.attachmentId,
      'tenantId': instance.tenantId,
      'contactId': instance.contactId,
      'leaseId': instance.leaseId,
      'unitId': instance.unitId,
      'complexId': instance.complexId,
      'buildingId': instance.buildingId,
      'taskId': instance.taskId,
    };

KpiDto _$KpiDtoFromJson(Map<String, dynamic> json) => KpiDto(
      openTasks: (json['openTasks'] as num).toDouble(),
      activeTenants: (json['activeTenants'] as num).toDouble(),
      leasedUnits: (json['leasedUnits'] as num).toDouble(),
      totalUnits: (json['totalUnits'] as num).toDouble(),
    );

Map<String, dynamic> _$KpiDtoToJson(KpiDto instance) => <String, dynamic>{
      'openTasks': instance.openTasks,
      'activeTenants': instance.activeTenants,
      'leasedUnits': instance.leasedUnits,
      'totalUnits': instance.totalUnits,
    };

AddTeamMemberDto _$AddTeamMemberDtoFromJson(Map<String, dynamic> json) =>
    AddTeamMemberDto(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$AddTeamMemberDtoToJson(AddTeamMemberDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
    };

MemberDto _$MemberDtoFromJson(Map<String, dynamic> json) => MemberDto(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      avatarUrl: json['avatarUrl'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: roleFromJson(json['role']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$MemberDtoToJson(MemberDto instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatarUrl': instance.avatarUrl,
      'email': instance.email,
      'phone': instance.phone,
      'role': roleToJson(instance.role),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

TeamDto _$TeamDtoFromJson(Map<String, dynamic> json) => TeamDto(
      id: json['id'] as String,
      name: json['name'] as String,
      lastTaskId: (json['lastTaskId'] as num).toDouble(),
      lastUnitId: (json['lastUnitId'] as num).toDouble(),
      lastBuildingId: (json['lastBuildingId'] as num).toDouble(),
      lastComplexId: (json['lastComplexId'] as num).toDouble(),
      lastTenantId: (json['lastTenantId'] as num).toDouble(),
      lastContactId: (json['lastContactId'] as num).toDouble(),
      members: (json['members'] as List<dynamic>?)
              ?.map((e) => MemberDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TeamDtoToJson(TeamDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastTaskId': instance.lastTaskId,
      'lastUnitId': instance.lastUnitId,
      'lastBuildingId': instance.lastBuildingId,
      'lastComplexId': instance.lastComplexId,
      'lastTenantId': instance.lastTenantId,
      'lastContactId': instance.lastContactId,
      'members': instance.members.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

MemberLinkDto _$MemberLinkDtoFromJson(Map<String, dynamic> json) =>
    MemberLinkDto(
      id: json['id'] as String,
      label: json['label'] as String,
      avatarUrl: json['avatarUrl'] as String,
    );

Map<String, dynamic> _$MemberLinkDtoToJson(MemberLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'avatarUrl': instance.avatarUrl,
    };

BuildingLinkDto _$BuildingLinkDtoFromJson(Map<String, dynamic> json) =>
    BuildingLinkDto(
      id: json['id'] as String,
      label: json['label'] as String,
      displayId: json['displayId'] as String,
    );

Map<String, dynamic> _$BuildingLinkDtoToJson(BuildingLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'displayId': instance.displayId,
    };

MemberProxyDto _$MemberProxyDtoFromJson(Map<String, dynamic> json) =>
    MemberProxyDto(
      entityId: json['entityId'] as String,
      displayAs: json['displayAs'] as String,
      avatarUrl: json['avatarUrl'] as String,
    );

Map<String, dynamic> _$MemberProxyDtoToJson(MemberProxyDto instance) =>
    <String, dynamic>{
      'entityId': instance.entityId,
      'displayAs': instance.displayAs,
      'avatarUrl': instance.avatarUrl,
    };

TaskCommentDto _$TaskCommentDtoFromJson(Map<String, dynamic> json) =>
    TaskCommentDto(
      id: json['id'] as String,
      content: json['content'] as String,
      taskId: json['taskId'] as String,
      author: MemberProxyDto.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TaskCommentDtoToJson(TaskCommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'taskId': instance.taskId,
      'author': instance.author.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) => TaskDto(
      id: json['id'] as String,
      displayId: json['displayId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
      createdBy:
          MemberLinkDto.fromJson(json['createdBy'] as Map<String, dynamic>),
      status: statusFromJson(json['status']),
      priority: taskPriorityFromJson(json['priority']),
      assignees: (json['assignees'] as List<dynamic>?)
              ?.map((e) => MemberLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => ContactLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      units: (json['units'] as List<dynamic>?)
              ?.map((e) => UnitLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      buildings: (json['buildings'] as List<dynamic>?)
              ?.map((e) => BuildingLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      complexes: (json['complexes'] as List<dynamic>?)
              ?.map((e) => ComplexLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      connectedTo: (json['connectedTo'] as List<dynamic>?)
              ?.map((e) => TaskLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => TaskCommentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      inquirys: (json['inquirys'] as List<dynamic>?)
              ?.map((e) => InquiryLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TaskDtoToJson(TaskDto instance) => <String, dynamic>{
      'id': instance.id,
      'displayId': instance.displayId,
      'title': instance.title,
      'description': instance.description,
      'dueDate': instance.dueDate.toIso8601String(),
      'createdBy': instance.createdBy.toJson(),
      'status': statusToJson(instance.status),
      'priority': taskPriorityToJson(instance.priority),
      'assignees': instance.assignees.map((e) => e.toJson()).toList(),
      'contacts': instance.contacts.map((e) => e.toJson()).toList(),
      'units': instance.units.map((e) => e.toJson()).toList(),
      'buildings': instance.buildings.map((e) => e.toJson()).toList(),
      'complexes': instance.complexes.map((e) => e.toJson()).toList(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'connectedTo': instance.connectedTo.map((e) => e.toJson()).toList(),
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'inquirys': instance.inquirys?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

CreateTaskDto _$CreateTaskDtoFromJson(Map<String, dynamic> json) =>
    CreateTaskDto(
      title: json['title'] as String,
      description: json['description'] as String,
      status: createTaskDtoStatusFromJson(json['status']),
      priority: taskPriorityFromJson(json['priority']),
      assigneeId: json['assigneeId'] as String?,
      tenantIds: (json['tenantIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      unitIds: (json['unitIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      complexIds: (json['complexIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateTaskDtoToJson(CreateTaskDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'status': createTaskDtoStatusToJson(instance.status),
      'priority': taskPriorityToJson(instance.priority),
      'assigneeId': instance.assigneeId,
      'tenantIds': instance.tenantIds,
      'unitIds': instance.unitIds,
      'complexIds': instance.complexIds,
    };

CreateTaskCommentDto _$CreateTaskCommentDtoFromJson(
        Map<String, dynamic> json) =>
    CreateTaskCommentDto(
      taskId: json['taskId'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$CreateTaskCommentDtoToJson(
        CreateTaskCommentDto instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'content': instance.content,
    };

UpdateStatusTaskDto _$UpdateStatusTaskDtoFromJson(Map<String, dynamic> json) =>
    UpdateStatusTaskDto(
      id: json['id'] as String,
      status: updateStatusTaskDtoStatusFromJson(json['status']),
    );

Map<String, dynamic> _$UpdateStatusTaskDtoToJson(
        UpdateStatusTaskDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': updateStatusTaskDtoStatusToJson(instance.status),
    };

UpdateTaskDto _$UpdateTaskDtoFromJson(Map<String, dynamic> json) =>
    UpdateTaskDto(
      id: json['id'] as String,
      description: json['description'] as String?,
      status: updateTaskDtoStatusFromJson(json['status']),
      priority: taskPriorityFromJson(json['priority']),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      assigneeIds: (json['assigneeIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      tenantIds: (json['tenantIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      contactIds: (json['contactIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      unitIds: (json['unitIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      buildingIds: (json['buildingIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      complexIds: (json['complexIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      taskIds: (json['taskIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$UpdateTaskDtoToJson(UpdateTaskDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'status': updateTaskDtoStatusToJson(instance.status),
      'priority': taskPriorityToJson(instance.priority),
      'dueDate': instance.dueDate?.toIso8601String(),
      'assigneeIds': instance.assigneeIds,
      'tenantIds': instance.tenantIds,
      'contactIds': instance.contactIds,
      'unitIds': instance.unitIds,
      'buildingIds': instance.buildingIds,
      'complexIds': instance.complexIds,
      'taskIds': instance.taskIds,
    };

DocumentRequestDto _$DocumentRequestDtoFromJson(Map<String, dynamic> json) =>
    DocumentRequestDto(
      documentType: documentTypeFromJson(json['documentType']),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$DocumentRequestDtoToJson(DocumentRequestDto instance) =>
    <String, dynamic>{
      'documentType': documentTypeToJson(instance.documentType),
      'notes': instance.notes,
    };

CreateInquiryDto _$CreateInquiryDtoFromJson(Map<String, dynamic> json) =>
    CreateInquiryDto(
      type: inquiryTypeFromJson(json['type']),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateInquiryDtoToJson(CreateInquiryDto instance) =>
    <String, dynamic>{
      'type': inquiryTypeToJson(instance.type),
      'date': instance.date?.toIso8601String(),
      'description': instance.description,
    };

InquiryMessageDto _$InquiryMessageDtoFromJson(Map<String, dynamic> json) =>
    InquiryMessageDto(
      id: json['id'] as String,
      content: json['content'] as String?,
      authorLabel: json['authorLabel'] as String,
      isAIGenerated: json['isAIGenerated'] as bool?,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$InquiryMessageDtoToJson(InquiryMessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'authorLabel': instance.authorLabel,
      'isAIGenerated': instance.isAIGenerated,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

InquiryDto _$InquiryDtoFromJson(Map<String, dynamic> json) => InquiryDto(
      id: json['id'] as String,
      description: json['description'] as String?,
      type: inquiryTypeFromJson(json['type']),
      status: inquiryDtoStatusFromJson(json['status']),
      createdBy: json['createdBy'] == null
          ? null
          : TenantDto.fromJson(json['createdBy'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>?)
              ?.map(
                  (e) => InquiryMessageDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      taskLinks: (json['taskLinks'] as List<dynamic>?)
              ?.map((e) => TaskLinkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      suggestion: json['suggestion'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$InquiryDtoToJson(InquiryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'type': inquiryTypeToJson(instance.type),
      'status': inquiryDtoStatusToJson(instance.status),
      'createdBy': instance.createdBy?.toJson(),
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'taskLinks': instance.taskLinks.map((e) => e.toJson()).toList(),
      'suggestion': instance.suggestion,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

CreateInquiryMessageDto _$CreateInquiryMessageDtoFromJson(
        Map<String, dynamic> json) =>
    CreateInquiryMessageDto(
      inquiryId: json['inquiryId'] as String,
      authorAccountId: json['authorAccountId'] as String?,
      isAIGenerated: json['isAIGenerated'] as bool?,
      content: json['content'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CreateInquiryMessageDtoToJson(
        CreateInquiryMessageDto instance) =>
    <String, dynamic>{
      'inquiryId': instance.inquiryId,
      'authorAccountId': instance.authorAccountId,
      'isAIGenerated': instance.isAIGenerated,
      'content': instance.content,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      inquiryId: json['inquiryId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'inquiryId': instance.inquiryId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

SendMessageDto _$SendMessageDtoFromJson(Map<String, dynamic> json) =>
    SendMessageDto(
      tenantIds: (json['tenantIds'] as List<dynamic>?)
              ?.map((e) => e as List<dynamic>)
              .toList() ??
          [],
      title: json['title'] as String,
      content: json['content'] as String,
      viaApp: json['viaApp'] as bool,
      viaEmail: json['viaEmail'] as bool,
      viaMail: json['viaMail'] as bool,
    );

Map<String, dynamic> _$SendMessageDtoToJson(SendMessageDto instance) =>
    <String, dynamic>{
      'tenantIds': instance.tenantIds,
      'title': instance.title,
      'content': instance.content,
      'viaApp': instance.viaApp,
      'viaEmail': instance.viaEmail,
      'viaMail': instance.viaMail,
    };

UpdateFCMTokenDto _$UpdateFCMTokenDtoFromJson(Map<String, dynamic> json) =>
    UpdateFCMTokenDto(
      fcmToken: json['fcmToken'] as String,
    );

Map<String, dynamic> _$UpdateFCMTokenDtoToJson(UpdateFCMTokenDto instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
    };
