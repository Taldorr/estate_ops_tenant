// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'swagger.enums.swagger.dart' as enums;
export 'swagger.enums.swagger.dart';

part 'swagger.swagger.chopper.dart';
part 'swagger.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Swagger(newClient);
  }

  ///
  Future<chopper.Response> get() {
    return _get();
  }

  ///
  @Get(path: '/')
  Future<chopper.Response> _get();

  ///
  Future<chopper.Response> bugPost({required CreateBugDto? body}) {
    return _bugPost(body: body);
  }

  ///
  @Post(
    path: '/bug',
    optionalBody: true,
  )
  Future<chopper.Response> _bugPost({@Body() required CreateBugDto? body});

  ///
  Future<chopper.Response<List<UnitDto>>> unitsGet() {
    generatedMapping.putIfAbsent(UnitDto, () => UnitDto.fromJsonFactory);

    return _unitsGet();
  }

  ///
  @Get(path: '/units')
  Future<chopper.Response<List<UnitDto>>> _unitsGet();

  ///
  Future<chopper.Response<UnitDto>> unitsPost({required CreateUnitDto? body}) {
    generatedMapping.putIfAbsent(UnitDto, () => UnitDto.fromJsonFactory);

    return _unitsPost(body: body);
  }

  ///
  @Post(
    path: '/units',
    optionalBody: true,
  )
  Future<chopper.Response<UnitDto>> _unitsPost(
      {@Body() required CreateUnitDto? body});

  ///
  Future<chopper.Response<UpdateUnitDto>> unitsPut(
      {required UpdateUnitDto? body}) {
    generatedMapping.putIfAbsent(
        UpdateUnitDto, () => UpdateUnitDto.fromJsonFactory);

    return _unitsPut(body: body);
  }

  ///
  @Put(
    path: '/units',
    optionalBody: true,
  )
  Future<chopper.Response<UpdateUnitDto>> _unitsPut(
      {@Body() required UpdateUnitDto? body});

  ///
  ///@param id
  Future<chopper.Response> unitsIdGet({required String? id}) {
    return _unitsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/units/{id}')
  Future<chopper.Response> _unitsIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> unitsIdDelete({required String? id}) {
    return _unitsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/units/{id}')
  Future<chopper.Response> _unitsIdDelete({@Path('id') required String? id});

  ///
  Future<chopper.Response> unitsQueryPost({required QueryDto? body}) {
    return _unitsQueryPost(body: body);
  }

  ///
  @Post(
    path: '/units/query',
    optionalBody: true,
  )
  Future<chopper.Response> _unitsQueryPost({@Body() required QueryDto? body});

  ///
  Future<chopper.Response<AccountInfoDto>> authGet() {
    generatedMapping.putIfAbsent(
        AccountInfoDto, () => AccountInfoDto.fromJsonFactory);

    return _authGet();
  }

  ///
  @Get(path: '/auth')
  Future<chopper.Response<AccountInfoDto>> _authGet();

  ///
  Future<chopper.Response<List<TenantDto>>> tenantsGet() {
    generatedMapping.putIfAbsent(TenantDto, () => TenantDto.fromJsonFactory);

    return _tenantsGet();
  }

  ///
  @Get(path: '/tenants')
  Future<chopper.Response<List<TenantDto>>> _tenantsGet();

  ///
  Future<chopper.Response<TenantDto>> tenantsPost(
      {required CreateTenantDto? body}) {
    generatedMapping.putIfAbsent(TenantDto, () => TenantDto.fromJsonFactory);

    return _tenantsPost(body: body);
  }

  ///
  @Post(
    path: '/tenants',
    optionalBody: true,
  )
  Future<chopper.Response<TenantDto>> _tenantsPost(
      {@Body() required CreateTenantDto? body});

  ///
  Future<chopper.Response<UpdateTenantDto>> tenantsPut(
      {required UpdateTenantDto? body}) {
    generatedMapping.putIfAbsent(
        UpdateTenantDto, () => UpdateTenantDto.fromJsonFactory);

    return _tenantsPut(body: body);
  }

  ///
  @Put(
    path: '/tenants',
    optionalBody: true,
  )
  Future<chopper.Response<UpdateTenantDto>> _tenantsPut(
      {@Body() required UpdateTenantDto? body});

  ///
  Future<chopper.Response<List<TenantDto>>> tenantsFindPost(
      {required FindTenantDto? body}) {
    generatedMapping.putIfAbsent(TenantDto, () => TenantDto.fromJsonFactory);

    return _tenantsFindPost(body: body);
  }

  ///
  @Post(
    path: '/tenants/find',
    optionalBody: true,
  )
  Future<chopper.Response<List<TenantDto>>> _tenantsFindPost(
      {@Body() required FindTenantDto? body});

  ///
  ///@param id
  Future<chopper.Response> tenantsIdGet({required String? id}) {
    return _tenantsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/tenants/{id}')
  Future<chopper.Response> _tenantsIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> tenantsIdDelete({required String? id}) {
    return _tenantsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/tenants/{id}')
  Future<chopper.Response> _tenantsIdDelete({@Path('id') required String? id});

  ///
  Future<chopper.Response> tenantsQueryPost({required QueryDto? body}) {
    return _tenantsQueryPost(body: body);
  }

  ///
  @Post(
    path: '/tenants/query',
    optionalBody: true,
  )
  Future<chopper.Response> _tenantsQueryPost({@Body() required QueryDto? body});

  ///
  Future<chopper.Response<List<ComplexDto>>> complexGet() {
    generatedMapping.putIfAbsent(ComplexDto, () => ComplexDto.fromJsonFactory);

    return _complexGet();
  }

  ///
  @Get(path: '/complex')
  Future<chopper.Response<List<ComplexDto>>> _complexGet();

  ///
  Future<chopper.Response<ComplexDto>> complexPost(
      {required CreateComplexDto? body}) {
    generatedMapping.putIfAbsent(ComplexDto, () => ComplexDto.fromJsonFactory);

    return _complexPost(body: body);
  }

  ///
  @Post(
    path: '/complex',
    optionalBody: true,
  )
  Future<chopper.Response<ComplexDto>> _complexPost(
      {@Body() required CreateComplexDto? body});

  ///
  Future<chopper.Response<UpdateComplexDto>> complexPut(
      {required UpdateComplexDto? body}) {
    generatedMapping.putIfAbsent(
        UpdateComplexDto, () => UpdateComplexDto.fromJsonFactory);

    return _complexPut(body: body);
  }

  ///
  @Put(
    path: '/complex',
    optionalBody: true,
  )
  Future<chopper.Response<UpdateComplexDto>> _complexPut(
      {@Body() required UpdateComplexDto? body});

  ///
  ///@param id
  Future<chopper.Response> complexIdGet({required String? id}) {
    return _complexIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/complex/{id}')
  Future<chopper.Response> _complexIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> complexIdDelete({required String? id}) {
    return _complexIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/complex/{id}')
  Future<chopper.Response> _complexIdDelete({@Path('id') required String? id});

  ///
  Future<chopper.Response> complexQueryPost({required QueryDto? body}) {
    return _complexQueryPost(body: body);
  }

  ///
  @Post(
    path: '/complex/query',
    optionalBody: true,
  )
  Future<chopper.Response> _complexQueryPost({@Body() required QueryDto? body});

  ///
  Future<chopper.Response<List<BuildingDto>>> buildingGet() {
    generatedMapping.putIfAbsent(
        BuildingDto, () => BuildingDto.fromJsonFactory);

    return _buildingGet();
  }

  ///
  @Get(path: '/building')
  Future<chopper.Response<List<BuildingDto>>> _buildingGet();

  ///
  Future<chopper.Response<BuildingDto>> buildingPost(
      {required CreateBuildingDto? body}) {
    generatedMapping.putIfAbsent(
        BuildingDto, () => BuildingDto.fromJsonFactory);

    return _buildingPost(body: body);
  }

  ///
  @Post(
    path: '/building',
    optionalBody: true,
  )
  Future<chopper.Response<BuildingDto>> _buildingPost(
      {@Body() required CreateBuildingDto? body});

  ///
  Future<chopper.Response<UpdateBuildingDto>> buildingPut(
      {required UpdateBuildingDto? body}) {
    generatedMapping.putIfAbsent(
        UpdateBuildingDto, () => UpdateBuildingDto.fromJsonFactory);

    return _buildingPut(body: body);
  }

  ///
  @Put(
    path: '/building',
    optionalBody: true,
  )
  Future<chopper.Response<UpdateBuildingDto>> _buildingPut(
      {@Body() required UpdateBuildingDto? body});

  ///
  ///@param id
  Future<chopper.Response> buildingIdGet({required String? id}) {
    return _buildingIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/building/{id}')
  Future<chopper.Response> _buildingIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> buildingIdDelete({required String? id}) {
    return _buildingIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/building/{id}')
  Future<chopper.Response> _buildingIdDelete({@Path('id') required String? id});

  ///
  Future<chopper.Response> buildingQueryPost({required QueryDto? body}) {
    return _buildingQueryPost(body: body);
  }

  ///
  @Post(
    path: '/building/query',
    optionalBody: true,
  )
  Future<chopper.Response> _buildingQueryPost(
      {@Body() required QueryDto? body});

  ///
  ///@param id
  Future<chopper.Response> buildingAddUnitIdPut({
    required String? id,
    required AddUnitBuildingDto? body,
  }) {
    return _buildingAddUnitIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/building/add-unit/{id}',
    optionalBody: true,
  )
  Future<chopper.Response> _buildingAddUnitIdPut({
    @Path('id') required String? id,
    @Body() required AddUnitBuildingDto? body,
  });

  ///
  Future<chopper.Response<List<LeaseDto>>> leaseGet() {
    generatedMapping.putIfAbsent(LeaseDto, () => LeaseDto.fromJsonFactory);

    return _leaseGet();
  }

  ///
  @Get(path: '/lease')
  Future<chopper.Response<List<LeaseDto>>> _leaseGet();

  ///
  Future<chopper.Response<LeaseDto>> leasePost(
      {required CreateLeaseDto? body}) {
    generatedMapping.putIfAbsent(LeaseDto, () => LeaseDto.fromJsonFactory);

    return _leasePost(body: body);
  }

  ///
  @Post(
    path: '/lease',
    optionalBody: true,
  )
  Future<chopper.Response<LeaseDto>> _leasePost(
      {@Body() required CreateLeaseDto? body});

  ///
  ///@param id
  Future<chopper.Response> leaseIdGet({required String? id}) {
    return _leaseIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/lease/{id}')
  Future<chopper.Response> _leaseIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> leaseIdPut({
    required String? id,
    required UpdateLeaseDto? body,
  }) {
    return _leaseIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/lease/{id}',
    optionalBody: true,
  )
  Future<chopper.Response> _leaseIdPut({
    @Path('id') required String? id,
    @Body() required UpdateLeaseDto? body,
  });

  ///
  ///@param id
  Future<chopper.Response> leaseIdDelete({required String? id}) {
    return _leaseIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/lease/{id}')
  Future<chopper.Response> _leaseIdDelete({@Path('id') required String? id});

  ///
  Future<chopper.Response<AttachmentDto>> attachmentPost(
      {required CreateAttachmentDto? body}) {
    generatedMapping.putIfAbsent(
        AttachmentDto, () => AttachmentDto.fromJsonFactory);

    return _attachmentPost(body: body);
  }

  ///
  @Post(
    path: '/attachment',
    optionalBody: true,
  )
  Future<chopper.Response<AttachmentDto>> _attachmentPost(
      {@Body() required CreateAttachmentDto? body});

  ///
  Future<chopper.Response<List<AttachmentDto>>> attachmentGet() {
    generatedMapping.putIfAbsent(
        AttachmentDto, () => AttachmentDto.fromJsonFactory);

    return _attachmentGet();
  }

  ///
  @Get(path: '/attachment')
  Future<chopper.Response<List<AttachmentDto>>> _attachmentGet();

  ///
  Future<chopper.Response<AttachmentDto>> attachmentDelete(
      {required DeleteAttachmentDto? body}) {
    generatedMapping.putIfAbsent(
        AttachmentDto, () => AttachmentDto.fromJsonFactory);

    return _attachmentDelete(body: body);
  }

  ///
  @Delete(path: '/attachment')
  Future<chopper.Response<AttachmentDto>> _attachmentDelete(
      {@Body() required DeleteAttachmentDto? body});

  ///
  Future<chopper.Response> attachmentAvatarGet() {
    return _attachmentAvatarGet();
  }

  ///
  @Get(path: '/attachment/avatar')
  Future<chopper.Response> _attachmentAvatarGet();

  ///
  ///@param id
  Future<chopper.Response> attachmentIdGet({required String? id}) {
    return _attachmentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/attachment/{id}')
  Future<chopper.Response> _attachmentIdGet({@Path('id') required String? id});

  ///
  Future<chopper.Response> teamGet() {
    return _teamGet();
  }

  ///
  @Get(path: '/team')
  Future<chopper.Response> _teamGet();

  ///
  Future<chopper.Response<KpiDto>> teamKpiGet() {
    generatedMapping.putIfAbsent(KpiDto, () => KpiDto.fromJsonFactory);

    return _teamKpiGet();
  }

  ///
  @Get(path: '/team/kpi')
  Future<chopper.Response<KpiDto>> _teamKpiGet();

  ///
  ///@param teamId
  Future<chopper.Response<TeamDto>> teamTeamIdMemberPost({
    required String? teamId,
    required AddTeamMemberDto? body,
  }) {
    generatedMapping.putIfAbsent(TeamDto, () => TeamDto.fromJsonFactory);

    return _teamTeamIdMemberPost(teamId: teamId, body: body);
  }

  ///
  ///@param teamId
  @Post(
    path: '/team/{teamId}/member',
    optionalBody: true,
  )
  Future<chopper.Response<TeamDto>> _teamTeamIdMemberPost({
    @Path('teamId') required String? teamId,
    @Body() required AddTeamMemberDto? body,
  });

  ///
  ///@param teamId
  ///@param memberId
  Future<chopper.Response> teamTeamIdMemberMemberIdDelete({
    required String? teamId,
    required String? memberId,
  }) {
    return _teamTeamIdMemberMemberIdDelete(teamId: teamId, memberId: memberId);
  }

  ///
  ///@param teamId
  ///@param memberId
  @Delete(path: '/team/{teamId}/member/{memberId}')
  Future<chopper.Response> _teamTeamIdMemberMemberIdDelete({
    @Path('teamId') required String? teamId,
    @Path('memberId') required String? memberId,
  });

  ///
  Future<chopper.Response<List<TaskDto>>> taskGet() {
    generatedMapping.putIfAbsent(TaskDto, () => TaskDto.fromJsonFactory);

    return _taskGet();
  }

  ///
  @Get(path: '/task')
  Future<chopper.Response<List<TaskDto>>> _taskGet();

  ///
  Future<chopper.Response<TaskDto>> taskPost({required CreateTaskDto? body}) {
    generatedMapping.putIfAbsent(TaskDto, () => TaskDto.fromJsonFactory);

    return _taskPost(body: body);
  }

  ///
  @Post(
    path: '/task',
    optionalBody: true,
  )
  Future<chopper.Response<TaskDto>> _taskPost(
      {@Body() required CreateTaskDto? body});

  ///
  Future<chopper.Response<UpdateTaskDto>> taskPut(
      {required UpdateTaskDto? body}) {
    generatedMapping.putIfAbsent(
        UpdateTaskDto, () => UpdateTaskDto.fromJsonFactory);

    return _taskPut(body: body);
  }

  ///
  @Put(
    path: '/task',
    optionalBody: true,
  )
  Future<chopper.Response<UpdateTaskDto>> _taskPut(
      {@Body() required UpdateTaskDto? body});

  ///
  Future<chopper.Response<List<TaskDto>>> taskOwnGet() {
    generatedMapping.putIfAbsent(TaskDto, () => TaskDto.fromJsonFactory);

    return _taskOwnGet();
  }

  ///
  @Get(path: '/task/own')
  Future<chopper.Response<List<TaskDto>>> _taskOwnGet();

  ///
  ///@param id
  Future<chopper.Response> taskIdGet({required String? id}) {
    return _taskIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/task/{id}')
  Future<chopper.Response> _taskIdGet({@Path('id') required String? id});

  ///
  Future<chopper.Response> taskQueryPost({required QueryDto? body}) {
    return _taskQueryPost(body: body);
  }

  ///
  @Post(
    path: '/task/query',
    optionalBody: true,
  )
  Future<chopper.Response> _taskQueryPost({@Body() required QueryDto? body});

  ///
  Future<chopper.Response<TaskCommentDto>> taskCommentPost(
      {required CreateTaskCommentDto? body}) {
    generatedMapping.putIfAbsent(
        TaskCommentDto, () => TaskCommentDto.fromJsonFactory);

    return _taskCommentPost(body: body);
  }

  ///
  @Post(
    path: '/task/comment',
    optionalBody: true,
  )
  Future<chopper.Response<TaskCommentDto>> _taskCommentPost(
      {@Body() required CreateTaskCommentDto? body});

  ///
  Future<chopper.Response<TaskDto>> taskStatusPut(
      {required UpdateStatusTaskDto? body}) {
    generatedMapping.putIfAbsent(TaskDto, () => TaskDto.fromJsonFactory);

    return _taskStatusPut(body: body);
  }

  ///
  @Put(
    path: '/task/status',
    optionalBody: true,
  )
  Future<chopper.Response<TaskDto>> _taskStatusPut(
      {@Body() required UpdateStatusTaskDto? body});

  ///
  Future<chopper.Response<InquiryDto>> inquiryPost(
      {required CreateInquiryDto? body}) {
    generatedMapping.putIfAbsent(InquiryDto, () => InquiryDto.fromJsonFactory);

    return _inquiryPost(body: body);
  }

  ///
  @Post(
    path: '/inquiry',
    optionalBody: true,
  )
  Future<chopper.Response<InquiryDto>> _inquiryPost(
      {@Body() required CreateInquiryDto? body});

  ///
  Future<chopper.Response<List<InquiryDto>>> inquiryGet() {
    generatedMapping.putIfAbsent(InquiryDto, () => InquiryDto.fromJsonFactory);

    return _inquiryGet();
  }

  ///
  @Get(path: '/inquiry')
  Future<chopper.Response<List<InquiryDto>>> _inquiryGet();

  ///
  Future<chopper.Response<InquiryMessageDto>> inquiryMessagePost(
      {required CreateInquiryMessageDto? body}) {
    generatedMapping.putIfAbsent(
        InquiryMessageDto, () => InquiryMessageDto.fromJsonFactory);

    return _inquiryMessagePost(body: body);
  }

  ///
  @Post(
    path: '/inquiry/message',
    optionalBody: true,
  )
  Future<chopper.Response<InquiryMessageDto>> _inquiryMessagePost(
      {@Body() required CreateInquiryMessageDto? body});

  ///
  Future<chopper.Response> chatbotTestPost() {
    return _chatbotTestPost();
  }

  ///
  @Post(
    path: '/chatbot/test',
    optionalBody: true,
  )
  Future<chopper.Response> _chatbotTestPost();

  ///
  Future<chopper.Response> chatbotQueryPost() {
    return _chatbotQueryPost();
  }

  ///
  @Post(
    path: '/chatbot/query',
    optionalBody: true,
  )
  Future<chopper.Response> _chatbotQueryPost();

  ///
  Future<chopper.Response> messagesSendPost({required SendMessageDto? body}) {
    return _messagesSendPost(body: body);
  }

  ///
  @Post(
    path: '/messages/send',
    optionalBody: true,
  )
  Future<chopper.Response> _messagesSendPost(
      {@Body() required SendMessageDto? body});

  ///
  Future<chopper.Response> messagesFcmTokenPut(
      {required UpdateFCMTokenDto? body}) {
    return _messagesFcmTokenPut(body: body);
  }

  ///
  @Put(
    path: '/messages/fcm-token',
    optionalBody: true,
  )
  Future<chopper.Response> _messagesFcmTokenPut(
      {@Body() required UpdateFCMTokenDto? body});
}

@JsonSerializable(explicitToJson: true)
class CreateBugDto {
  const CreateBugDto({
    required this.description,
  });

  factory CreateBugDto.fromJson(Map<String, dynamic> json) =>
      _$CreateBugDtoFromJson(json);

  static const toJsonFactory = _$CreateBugDtoToJson;
  Map<String, dynamic> toJson() => _$CreateBugDtoToJson(this);

  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$CreateBugDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateBugDto &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^ runtimeType.hashCode;
}

extension $CreateBugDtoExtension on CreateBugDto {
  CreateBugDto copyWith({String? description}) {
    return CreateBugDto(description: description ?? this.description);
  }

  CreateBugDto copyWithWrapped({Wrapped<String>? description}) {
    return CreateBugDto(
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class AddressDto {
  const AddressDto({
    required this.id,
    required this.street,
    required this.city,
    required this.state,
    required this.zip,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);

  static const toJsonFactory = _$AddressDtoToJson;
  Map<String, dynamic> toJson() => _$AddressDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'zip')
  final String zip;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$AddressDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AddressDtoExtension on AddressDto {
  AddressDto copyWith(
      {String? id,
      String? street,
      String? city,
      String? state,
      String? zip,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return AddressDto(
        id: id ?? this.id,
        street: street ?? this.street,
        city: city ?? this.city,
        state: state ?? this.state,
        zip: zip ?? this.zip,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  AddressDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? street,
      Wrapped<String>? city,
      Wrapped<String>? state,
      Wrapped<String>? zip,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return AddressDto(
        id: (id != null ? id.value : this.id),
        street: (street != null ? street.value : this.street),
        city: (city != null ? city.value : this.city),
        state: (state != null ? state.value : this.state),
        zip: (zip != null ? zip.value : this.zip),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class AttachmentDto {
  const AttachmentDto({
    required this.id,
    required this.name,
    required this.mimeType,
    required this.fileKey,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$AttachmentDtoFromJson(json);

  static const toJsonFactory = _$AttachmentDtoToJson;
  Map<String, dynamic> toJson() => _$AttachmentDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'mimeType')
  final String mimeType;
  @JsonKey(name: 'fileKey')
  final String fileKey;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$AttachmentDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AttachmentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality()
                    .equals(other.mimeType, mimeType)) &&
            (identical(other.fileKey, fileKey) ||
                const DeepCollectionEquality()
                    .equals(other.fileKey, fileKey)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(fileKey) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AttachmentDtoExtension on AttachmentDto {
  AttachmentDto copyWith(
      {String? id,
      String? name,
      String? mimeType,
      String? fileKey,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return AttachmentDto(
        id: id ?? this.id,
        name: name ?? this.name,
        mimeType: mimeType ?? this.mimeType,
        fileKey: fileKey ?? this.fileKey,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  AttachmentDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? mimeType,
      Wrapped<String>? fileKey,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return AttachmentDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        mimeType: (mimeType != null ? mimeType.value : this.mimeType),
        fileKey: (fileKey != null ? fileKey.value : this.fileKey),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class InquiryMessageDto {
  const InquiryMessageDto({
    required this.id,
    this.content,
    required this.authorLabel,
    this.isAIGenerated,
    this.attachments,
    required this.createdAt,
    required this.updatedAt,
  });

  factory InquiryMessageDto.fromJson(Map<String, dynamic> json) =>
      _$InquiryMessageDtoFromJson(json);

  static const toJsonFactory = _$InquiryMessageDtoToJson;
  Map<String, dynamic> toJson() => _$InquiryMessageDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'authorLabel')
  final String authorLabel;
  @JsonKey(name: 'isAIGenerated')
  final bool? isAIGenerated;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto>? attachments;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$InquiryMessageDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InquiryMessageDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.authorLabel, authorLabel) ||
                const DeepCollectionEquality()
                    .equals(other.authorLabel, authorLabel)) &&
            (identical(other.isAIGenerated, isAIGenerated) ||
                const DeepCollectionEquality()
                    .equals(other.isAIGenerated, isAIGenerated)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(authorLabel) ^
      const DeepCollectionEquality().hash(isAIGenerated) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $InquiryMessageDtoExtension on InquiryMessageDto {
  InquiryMessageDto copyWith(
      {String? id,
      String? content,
      String? authorLabel,
      bool? isAIGenerated,
      List<AttachmentDto>? attachments,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return InquiryMessageDto(
        id: id ?? this.id,
        content: content ?? this.content,
        authorLabel: authorLabel ?? this.authorLabel,
        isAIGenerated: isAIGenerated ?? this.isAIGenerated,
        attachments: attachments ?? this.attachments,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  InquiryMessageDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? content,
      Wrapped<String>? authorLabel,
      Wrapped<bool?>? isAIGenerated,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return InquiryMessageDto(
        id: (id != null ? id.value : this.id),
        content: (content != null ? content.value : this.content),
        authorLabel:
            (authorLabel != null ? authorLabel.value : this.authorLabel),
        isAIGenerated:
            (isAIGenerated != null ? isAIGenerated.value : this.isAIGenerated),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class InquiryDto {
  const InquiryDto({
    required this.id,
    this.description,
    required this.type,
    required this.status,
    this.createdBy,
    required this.messages,
    required this.createdAt,
    required this.updatedAt,
  });

  factory InquiryDto.fromJson(Map<String, dynamic> json) =>
      _$InquiryDtoFromJson(json);

  static const toJsonFactory = _$InquiryDtoToJson;
  Map<String, dynamic> toJson() => _$InquiryDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(
    name: 'type',
    toJson: inquiryDtoTypeToJson,
    fromJson: inquiryDtoTypeFromJson,
  )
  final enums.InquiryDtoType type;
  @JsonKey(
    name: 'status',
    toJson: inquiryDtoStatusToJson,
    fromJson: inquiryDtoStatusFromJson,
  )
  final enums.InquiryDtoStatus status;
  @JsonKey(name: 'createdBy')
  final TenantDto? createdBy;
  @JsonKey(name: 'messages', defaultValue: <InquiryMessageDto>[])
  final List<InquiryMessageDto> messages;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$InquiryDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InquiryDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $InquiryDtoExtension on InquiryDto {
  InquiryDto copyWith(
      {String? id,
      String? description,
      enums.InquiryDtoType? type,
      enums.InquiryDtoStatus? status,
      TenantDto? createdBy,
      List<InquiryMessageDto>? messages,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return InquiryDto(
        id: id ?? this.id,
        description: description ?? this.description,
        type: type ?? this.type,
        status: status ?? this.status,
        createdBy: createdBy ?? this.createdBy,
        messages: messages ?? this.messages,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  InquiryDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? description,
      Wrapped<enums.InquiryDtoType>? type,
      Wrapped<enums.InquiryDtoStatus>? status,
      Wrapped<TenantDto?>? createdBy,
      Wrapped<List<InquiryMessageDto>>? messages,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return InquiryDto(
        id: (id != null ? id.value : this.id),
        description:
            (description != null ? description.value : this.description),
        type: (type != null ? type.value : this.type),
        status: (status != null ? status.value : this.status),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        messages: (messages != null ? messages.value : this.messages),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class TenantDto {
  const TenantDto({
    required this.id,
    required this.displayId,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.notes,
    this.leases,
    this.attachments,
    this.inquirys,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TenantDto.fromJson(Map<String, dynamic> json) =>
      _$TenantDtoFromJson(json);

  static const toJsonFactory = _$TenantDtoToJson;
  Map<String, dynamic> toJson() => _$TenantDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'displayId')
  final String displayId;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'leases', defaultValue: <LeaseDto>[])
  final List<LeaseDto>? leases;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto>? attachments;
  @JsonKey(name: 'inquirys', defaultValue: <InquiryDto>[])
  final List<InquiryDto>? inquirys;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$TenantDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TenantDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.leases, leases) ||
                const DeepCollectionEquality().equals(other.leases, leases)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.inquirys, inquirys) ||
                const DeepCollectionEquality()
                    .equals(other.inquirys, inquirys)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayId) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(leases) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(inquirys) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $TenantDtoExtension on TenantDto {
  TenantDto copyWith(
      {String? id,
      String? displayId,
      String? firstName,
      String? lastName,
      String? email,
      String? phone,
      String? notes,
      List<LeaseDto>? leases,
      List<AttachmentDto>? attachments,
      List<InquiryDto>? inquirys,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return TenantDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        notes: notes ?? this.notes,
        leases: leases ?? this.leases,
        attachments: attachments ?? this.attachments,
        inquirys: inquirys ?? this.inquirys,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  TenantDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? notes,
      Wrapped<List<LeaseDto>?>? leases,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<List<InquiryDto>?>? inquirys,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return TenantDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        notes: (notes != null ? notes.value : this.notes),
        leases: (leases != null ? leases.value : this.leases),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        inquirys: (inquirys != null ? inquirys.value : this.inquirys),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UnitDto {
  const UnitDto({
    required this.id,
    required this.displayId,
    required this.name,
    this.complexString,
    this.buildingString,
    required this.status,
    required this.address,
    this.leases,
    required this.notes,
    this.attachments,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UnitDto.fromJson(Map<String, dynamic> json) =>
      _$UnitDtoFromJson(json);

  static const toJsonFactory = _$UnitDtoToJson;
  Map<String, dynamic> toJson() => _$UnitDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'displayId')
  final String displayId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'complexString')
  final String? complexString;
  @JsonKey(name: 'buildingString')
  final String? buildingString;
  @JsonKey(
    name: 'status',
    toJson: statusToJson,
    fromJson: statusFromJson,
  )
  final enums.Status status;
  @JsonKey(name: 'address')
  final AddressDto address;
  @JsonKey(name: 'leases', defaultValue: <LeaseDto>[])
  final List<LeaseDto>? leases;
  @JsonKey(name: 'notes')
  final String notes;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto>? attachments;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$UnitDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.complexString, complexString) ||
                const DeepCollectionEquality()
                    .equals(other.complexString, complexString)) &&
            (identical(other.buildingString, buildingString) ||
                const DeepCollectionEquality()
                    .equals(other.buildingString, buildingString)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.leases, leases) ||
                const DeepCollectionEquality().equals(other.leases, leases)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(complexString) ^
      const DeepCollectionEquality().hash(buildingString) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(leases) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UnitDtoExtension on UnitDto {
  UnitDto copyWith(
      {String? id,
      String? displayId,
      String? name,
      String? complexString,
      String? buildingString,
      enums.Status? status,
      AddressDto? address,
      List<LeaseDto>? leases,
      String? notes,
      List<AttachmentDto>? attachments,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UnitDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        name: name ?? this.name,
        complexString: complexString ?? this.complexString,
        buildingString: buildingString ?? this.buildingString,
        status: status ?? this.status,
        address: address ?? this.address,
        leases: leases ?? this.leases,
        notes: notes ?? this.notes,
        attachments: attachments ?? this.attachments,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  UnitDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<String>? name,
      Wrapped<String?>? complexString,
      Wrapped<String?>? buildingString,
      Wrapped<enums.Status>? status,
      Wrapped<AddressDto>? address,
      Wrapped<List<LeaseDto>?>? leases,
      Wrapped<String>? notes,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return UnitDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        name: (name != null ? name.value : this.name),
        complexString:
            (complexString != null ? complexString.value : this.complexString),
        buildingString: (buildingString != null
            ? buildingString.value
            : this.buildingString),
        status: (status != null ? status.value : this.status),
        address: (address != null ? address.value : this.address),
        leases: (leases != null ? leases.value : this.leases),
        notes: (notes != null ? notes.value : this.notes),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class LeaseDto {
  const LeaseDto({
    required this.id,
    this.tenants,
    this.unit,
    required this.startDate,
    required this.endDate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LeaseDto.fromJson(Map<String, dynamic> json) =>
      _$LeaseDtoFromJson(json);

  static const toJsonFactory = _$LeaseDtoToJson;
  Map<String, dynamic> toJson() => _$LeaseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'tenants', defaultValue: <TenantDto>[])
  final List<TenantDto>? tenants;
  @JsonKey(name: 'unit')
  final UnitDto? unit;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(name: 'endDate')
  final DateTime endDate;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$LeaseDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LeaseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tenants, tenants) ||
                const DeepCollectionEquality()
                    .equals(other.tenants, tenants)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(tenants) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $LeaseDtoExtension on LeaseDto {
  LeaseDto copyWith(
      {String? id,
      List<TenantDto>? tenants,
      UnitDto? unit,
      DateTime? startDate,
      DateTime? endDate,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return LeaseDto(
        id: id ?? this.id,
        tenants: tenants ?? this.tenants,
        unit: unit ?? this.unit,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  LeaseDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<List<TenantDto>?>? tenants,
      Wrapped<UnitDto?>? unit,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime>? endDate,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return LeaseDto(
        id: (id != null ? id.value : this.id),
        tenants: (tenants != null ? tenants.value : this.tenants),
        unit: (unit != null ? unit.value : this.unit),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class QueryDto {
  const QueryDto({
    required this.queryString,
  });

  factory QueryDto.fromJson(Map<String, dynamic> json) =>
      _$QueryDtoFromJson(json);

  static const toJsonFactory = _$QueryDtoToJson;
  Map<String, dynamic> toJson() => _$QueryDtoToJson(this);

  @JsonKey(name: 'queryString')
  final String queryString;
  static const fromJsonFactory = _$QueryDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QueryDto &&
            (identical(other.queryString, queryString) ||
                const DeepCollectionEquality()
                    .equals(other.queryString, queryString)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(queryString) ^ runtimeType.hashCode;
}

extension $QueryDtoExtension on QueryDto {
  QueryDto copyWith({String? queryString}) {
    return QueryDto(queryString: queryString ?? this.queryString);
  }

  QueryDto copyWithWrapped({Wrapped<String>? queryString}) {
    return QueryDto(
        queryString:
            (queryString != null ? queryString.value : this.queryString));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAddressDto {
  const CreateAddressDto({
    this.street,
    this.city,
    this.state,
    this.zip,
  });

  factory CreateAddressDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressDtoFromJson(json);

  static const toJsonFactory = _$CreateAddressDtoToJson;
  Map<String, dynamic> toJson() => _$CreateAddressDtoToJson(this);

  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'zip')
  final String? zip;
  static const fromJsonFactory = _$CreateAddressDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateAddressDto &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(zip) ^
      runtimeType.hashCode;
}

extension $CreateAddressDtoExtension on CreateAddressDto {
  CreateAddressDto copyWith(
      {String? street, String? city, String? state, String? zip}) {
    return CreateAddressDto(
        street: street ?? this.street,
        city: city ?? this.city,
        state: state ?? this.state,
        zip: zip ?? this.zip);
  }

  CreateAddressDto copyWithWrapped(
      {Wrapped<String?>? street,
      Wrapped<String?>? city,
      Wrapped<String?>? state,
      Wrapped<String?>? zip}) {
    return CreateAddressDto(
        street: (street != null ? street.value : this.street),
        city: (city != null ? city.value : this.city),
        state: (state != null ? state.value : this.state),
        zip: (zip != null ? zip.value : this.zip));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUnitDto {
  const CreateUnitDto({
    required this.buildingId,
    this.name,
    this.address,
  });

  factory CreateUnitDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUnitDtoFromJson(json);

  static const toJsonFactory = _$CreateUnitDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUnitDtoToJson(this);

  @JsonKey(name: 'buildingId')
  final String buildingId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'address')
  final CreateAddressDto? address;
  static const fromJsonFactory = _$CreateUnitDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateUnitDto &&
            (identical(other.buildingId, buildingId) ||
                const DeepCollectionEquality()
                    .equals(other.buildingId, buildingId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(buildingId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      runtimeType.hashCode;
}

extension $CreateUnitDtoExtension on CreateUnitDto {
  CreateUnitDto copyWith(
      {String? buildingId, String? name, CreateAddressDto? address}) {
    return CreateUnitDto(
        buildingId: buildingId ?? this.buildingId,
        name: name ?? this.name,
        address: address ?? this.address);
  }

  CreateUnitDto copyWithWrapped(
      {Wrapped<String>? buildingId,
      Wrapped<String?>? name,
      Wrapped<CreateAddressDto?>? address}) {
    return CreateUnitDto(
        buildingId: (buildingId != null ? buildingId.value : this.buildingId),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUnitDto {
  const UpdateUnitDto({
    required this.id,
    required this.name,
    required this.notes,
  });

  factory UpdateUnitDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUnitDtoFromJson(json);

  static const toJsonFactory = _$UpdateUnitDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateUnitDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'notes')
  final String notes;
  static const fromJsonFactory = _$UpdateUnitDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUnitDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UpdateUnitDtoExtension on UpdateUnitDto {
  UpdateUnitDto copyWith({String? id, String? name, String? notes}) {
    return UpdateUnitDto(
        id: id ?? this.id, name: name ?? this.name, notes: notes ?? this.notes);
  }

  UpdateUnitDto copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? name, Wrapped<String>? notes}) {
    return UpdateUnitDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountInfoDto {
  const AccountInfoDto({
    required this.id,
  });

  factory AccountInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoDtoFromJson(json);

  static const toJsonFactory = _$AccountInfoDtoToJson;
  Map<String, dynamic> toJson() => _$AccountInfoDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$AccountInfoDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountInfoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $AccountInfoDtoExtension on AccountInfoDto {
  AccountInfoDto copyWith({String? id}) {
    return AccountInfoDto(id: id ?? this.id);
  }

  AccountInfoDto copyWithWrapped({Wrapped<String>? id}) {
    return AccountInfoDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class FindTenantDto {
  const FindTenantDto({
    this.unitIds,
    this.buildingIds,
    this.complexIds,
  });

  factory FindTenantDto.fromJson(Map<String, dynamic> json) =>
      _$FindTenantDtoFromJson(json);

  static const toJsonFactory = _$FindTenantDtoToJson;
  Map<String, dynamic> toJson() => _$FindTenantDtoToJson(this);

  @JsonKey(name: 'unitIds', defaultValue: <String>[])
  final List<String>? unitIds;
  @JsonKey(name: 'buildingIds', defaultValue: <String>[])
  final List<String>? buildingIds;
  @JsonKey(name: 'complexIds', defaultValue: <String>[])
  final List<String>? complexIds;
  static const fromJsonFactory = _$FindTenantDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FindTenantDto &&
            (identical(other.unitIds, unitIds) ||
                const DeepCollectionEquality()
                    .equals(other.unitIds, unitIds)) &&
            (identical(other.buildingIds, buildingIds) ||
                const DeepCollectionEquality()
                    .equals(other.buildingIds, buildingIds)) &&
            (identical(other.complexIds, complexIds) ||
                const DeepCollectionEquality()
                    .equals(other.complexIds, complexIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(unitIds) ^
      const DeepCollectionEquality().hash(buildingIds) ^
      const DeepCollectionEquality().hash(complexIds) ^
      runtimeType.hashCode;
}

extension $FindTenantDtoExtension on FindTenantDto {
  FindTenantDto copyWith(
      {List<String>? unitIds,
      List<String>? buildingIds,
      List<String>? complexIds}) {
    return FindTenantDto(
        unitIds: unitIds ?? this.unitIds,
        buildingIds: buildingIds ?? this.buildingIds,
        complexIds: complexIds ?? this.complexIds);
  }

  FindTenantDto copyWithWrapped(
      {Wrapped<List<String>?>? unitIds,
      Wrapped<List<String>?>? buildingIds,
      Wrapped<List<String>?>? complexIds}) {
    return FindTenantDto(
        unitIds: (unitIds != null ? unitIds.value : this.unitIds),
        buildingIds:
            (buildingIds != null ? buildingIds.value : this.buildingIds),
        complexIds: (complexIds != null ? complexIds.value : this.complexIds));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateTenantDto {
  const CreateTenantDto({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.notes,
  });

  factory CreateTenantDto.fromJson(Map<String, dynamic> json) =>
      _$CreateTenantDtoFromJson(json);

  static const toJsonFactory = _$CreateTenantDtoToJson;
  Map<String, dynamic> toJson() => _$CreateTenantDtoToJson(this);

  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$CreateTenantDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTenantDto &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $CreateTenantDtoExtension on CreateTenantDto {
  CreateTenantDto copyWith(
      {String? firstName,
      String? lastName,
      String? email,
      String? phone,
      String? notes}) {
    return CreateTenantDto(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        notes: notes ?? this.notes);
  }

  CreateTenantDto copyWithWrapped(
      {Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? notes}) {
    return CreateTenantDto(
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateTenantDto {
  const UpdateTenantDto({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    this.notes,
  });

  factory UpdateTenantDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateTenantDtoFromJson(json);

  static const toJsonFactory = _$UpdateTenantDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateTenantDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$UpdateTenantDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTenantDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UpdateTenantDtoExtension on UpdateTenantDto {
  UpdateTenantDto copyWith(
      {String? id,
      String? firstName,
      String? lastName,
      String? email,
      String? phone,
      String? notes}) {
    return UpdateTenantDto(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        notes: notes ?? this.notes);
  }

  UpdateTenantDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String>? email,
      Wrapped<String>? phone,
      Wrapped<String?>? notes}) {
    return UpdateTenantDto(
        id: (id != null ? id.value : this.id),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class BuildingDto {
  const BuildingDto({
    required this.id,
    required this.displayId,
    this.complexString,
    required this.name,
    required this.units,
    required this.address,
    required this.notes,
    this.attachments,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BuildingDto.fromJson(Map<String, dynamic> json) =>
      _$BuildingDtoFromJson(json);

  static const toJsonFactory = _$BuildingDtoToJson;
  Map<String, dynamic> toJson() => _$BuildingDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'displayId')
  final String displayId;
  @JsonKey(name: 'complexString')
  final String? complexString;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'units', defaultValue: <UnitDto>[])
  final List<UnitDto> units;
  @JsonKey(name: 'address')
  final AddressDto address;
  @JsonKey(name: 'notes')
  final String notes;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto>? attachments;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$BuildingDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BuildingDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)) &&
            (identical(other.complexString, complexString) ||
                const DeepCollectionEquality()
                    .equals(other.complexString, complexString)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.units, units) ||
                const DeepCollectionEquality().equals(other.units, units)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayId) ^
      const DeepCollectionEquality().hash(complexString) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(units) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $BuildingDtoExtension on BuildingDto {
  BuildingDto copyWith(
      {String? id,
      String? displayId,
      String? complexString,
      String? name,
      List<UnitDto>? units,
      AddressDto? address,
      String? notes,
      List<AttachmentDto>? attachments,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return BuildingDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        complexString: complexString ?? this.complexString,
        name: name ?? this.name,
        units: units ?? this.units,
        address: address ?? this.address,
        notes: notes ?? this.notes,
        attachments: attachments ?? this.attachments,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  BuildingDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<String?>? complexString,
      Wrapped<String>? name,
      Wrapped<List<UnitDto>>? units,
      Wrapped<AddressDto>? address,
      Wrapped<String>? notes,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return BuildingDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        complexString:
            (complexString != null ? complexString.value : this.complexString),
        name: (name != null ? name.value : this.name),
        units: (units != null ? units.value : this.units),
        address: (address != null ? address.value : this.address),
        notes: (notes != null ? notes.value : this.notes),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ComplexDto {
  const ComplexDto({
    required this.id,
    required this.displayId,
    required this.name,
    required this.buildings,
    required this.address,
    required this.notes,
    this.attachments,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ComplexDto.fromJson(Map<String, dynamic> json) =>
      _$ComplexDtoFromJson(json);

  static const toJsonFactory = _$ComplexDtoToJson;
  Map<String, dynamic> toJson() => _$ComplexDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'displayId')
  final String displayId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'buildings', defaultValue: <BuildingDto>[])
  final List<BuildingDto> buildings;
  @JsonKey(name: 'address')
  final AddressDto address;
  @JsonKey(name: 'notes')
  final String notes;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto>? attachments;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$ComplexDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ComplexDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.buildings, buildings) ||
                const DeepCollectionEquality()
                    .equals(other.buildings, buildings)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(buildings) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ComplexDtoExtension on ComplexDto {
  ComplexDto copyWith(
      {String? id,
      String? displayId,
      String? name,
      List<BuildingDto>? buildings,
      AddressDto? address,
      String? notes,
      List<AttachmentDto>? attachments,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return ComplexDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        name: name ?? this.name,
        buildings: buildings ?? this.buildings,
        address: address ?? this.address,
        notes: notes ?? this.notes,
        attachments: attachments ?? this.attachments,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ComplexDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<String>? name,
      Wrapped<List<BuildingDto>>? buildings,
      Wrapped<AddressDto>? address,
      Wrapped<String>? notes,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return ComplexDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        name: (name != null ? name.value : this.name),
        buildings: (buildings != null ? buildings.value : this.buildings),
        address: (address != null ? address.value : this.address),
        notes: (notes != null ? notes.value : this.notes),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateComplexDto {
  const CreateComplexDto({
    required this.name,
  });

  factory CreateComplexDto.fromJson(Map<String, dynamic> json) =>
      _$CreateComplexDtoFromJson(json);

  static const toJsonFactory = _$CreateComplexDtoToJson;
  Map<String, dynamic> toJson() => _$CreateComplexDtoToJson(this);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$CreateComplexDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateComplexDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $CreateComplexDtoExtension on CreateComplexDto {
  CreateComplexDto copyWith({String? name}) {
    return CreateComplexDto(name: name ?? this.name);
  }

  CreateComplexDto copyWithWrapped({Wrapped<String>? name}) {
    return CreateComplexDto(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateComplexDto {
  const UpdateComplexDto({
    required this.id,
    required this.name,
    required this.notes,
  });

  factory UpdateComplexDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateComplexDtoFromJson(json);

  static const toJsonFactory = _$UpdateComplexDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateComplexDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'notes')
  final String notes;
  static const fromJsonFactory = _$UpdateComplexDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateComplexDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UpdateComplexDtoExtension on UpdateComplexDto {
  UpdateComplexDto copyWith({String? id, String? name, String? notes}) {
    return UpdateComplexDto(
        id: id ?? this.id, name: name ?? this.name, notes: notes ?? this.notes);
  }

  UpdateComplexDto copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? name, Wrapped<String>? notes}) {
    return UpdateComplexDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateBuildingDto {
  const CreateBuildingDto({
    this.address,
    required this.complexId,
    required this.name,
  });

  factory CreateBuildingDto.fromJson(Map<String, dynamic> json) =>
      _$CreateBuildingDtoFromJson(json);

  static const toJsonFactory = _$CreateBuildingDtoToJson;
  Map<String, dynamic> toJson() => _$CreateBuildingDtoToJson(this);

  @JsonKey(name: 'address')
  final CreateAddressDto? address;
  @JsonKey(name: 'complexId')
  final String complexId;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$CreateBuildingDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateBuildingDto &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.complexId, complexId) ||
                const DeepCollectionEquality()
                    .equals(other.complexId, complexId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(complexId) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CreateBuildingDtoExtension on CreateBuildingDto {
  CreateBuildingDto copyWith(
      {CreateAddressDto? address, String? complexId, String? name}) {
    return CreateBuildingDto(
        address: address ?? this.address,
        complexId: complexId ?? this.complexId,
        name: name ?? this.name);
  }

  CreateBuildingDto copyWithWrapped(
      {Wrapped<CreateAddressDto?>? address,
      Wrapped<String>? complexId,
      Wrapped<String>? name}) {
    return CreateBuildingDto(
        address: (address != null ? address.value : this.address),
        complexId: (complexId != null ? complexId.value : this.complexId),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateBuildingDto {
  const UpdateBuildingDto({
    required this.id,
    required this.name,
    required this.notes,
  });

  factory UpdateBuildingDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateBuildingDtoFromJson(json);

  static const toJsonFactory = _$UpdateBuildingDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateBuildingDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'notes')
  final String notes;
  static const fromJsonFactory = _$UpdateBuildingDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateBuildingDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UpdateBuildingDtoExtension on UpdateBuildingDto {
  UpdateBuildingDto copyWith({String? id, String? name, String? notes}) {
    return UpdateBuildingDto(
        id: id ?? this.id, name: name ?? this.name, notes: notes ?? this.notes);
  }

  UpdateBuildingDto copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? name, Wrapped<String>? notes}) {
    return UpdateBuildingDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class AddUnitBuildingDto {
  const AddUnitBuildingDto({
    required this.unitId,
  });

  factory AddUnitBuildingDto.fromJson(Map<String, dynamic> json) =>
      _$AddUnitBuildingDtoFromJson(json);

  static const toJsonFactory = _$AddUnitBuildingDtoToJson;
  Map<String, dynamic> toJson() => _$AddUnitBuildingDtoToJson(this);

  @JsonKey(name: 'unitId')
  final String unitId;
  static const fromJsonFactory = _$AddUnitBuildingDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddUnitBuildingDto &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(unitId) ^ runtimeType.hashCode;
}

extension $AddUnitBuildingDtoExtension on AddUnitBuildingDto {
  AddUnitBuildingDto copyWith({String? unitId}) {
    return AddUnitBuildingDto(unitId: unitId ?? this.unitId);
  }

  AddUnitBuildingDto copyWithWrapped({Wrapped<String>? unitId}) {
    return AddUnitBuildingDto(
        unitId: (unitId != null ? unitId.value : this.unitId));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateLeaseDto {
  const CreateLeaseDto({
    required this.tenantId,
    required this.unitId,
    required this.startDate,
    required this.endDate,
  });

  factory CreateLeaseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateLeaseDtoFromJson(json);

  static const toJsonFactory = _$CreateLeaseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateLeaseDtoToJson(this);

  @JsonKey(name: 'tenantId')
  final String tenantId;
  @JsonKey(name: 'unitId')
  final String unitId;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(name: 'endDate')
  final DateTime endDate;
  static const fromJsonFactory = _$CreateLeaseDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateLeaseDto &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(unitId) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      runtimeType.hashCode;
}

extension $CreateLeaseDtoExtension on CreateLeaseDto {
  CreateLeaseDto copyWith(
      {String? tenantId,
      String? unitId,
      DateTime? startDate,
      DateTime? endDate}) {
    return CreateLeaseDto(
        tenantId: tenantId ?? this.tenantId,
        unitId: unitId ?? this.unitId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate);
  }

  CreateLeaseDto copyWithWrapped(
      {Wrapped<String>? tenantId,
      Wrapped<String>? unitId,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime>? endDate}) {
    return CreateLeaseDto(
        tenantId: (tenantId != null ? tenantId.value : this.tenantId),
        unitId: (unitId != null ? unitId.value : this.unitId),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateLeaseDto {
  const UpdateLeaseDto({
    required this.id,
    required this.tenantId,
    required this.unitId,
    required this.startDate,
    required this.endDate,
  });

  factory UpdateLeaseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateLeaseDtoFromJson(json);

  static const toJsonFactory = _$UpdateLeaseDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateLeaseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'tenantId')
  final String tenantId;
  @JsonKey(name: 'unitId')
  final String unitId;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(name: 'endDate')
  final DateTime endDate;
  static const fromJsonFactory = _$UpdateLeaseDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLeaseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(unitId) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      runtimeType.hashCode;
}

extension $UpdateLeaseDtoExtension on UpdateLeaseDto {
  UpdateLeaseDto copyWith(
      {String? id,
      String? tenantId,
      String? unitId,
      DateTime? startDate,
      DateTime? endDate}) {
    return UpdateLeaseDto(
        id: id ?? this.id,
        tenantId: tenantId ?? this.tenantId,
        unitId: unitId ?? this.unitId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate);
  }

  UpdateLeaseDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? tenantId,
      Wrapped<String>? unitId,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime>? endDate}) {
    return UpdateLeaseDto(
        id: (id != null ? id.value : this.id),
        tenantId: (tenantId != null ? tenantId.value : this.tenantId),
        unitId: (unitId != null ? unitId.value : this.unitId),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAttachmentDto {
  const CreateAttachmentDto({
    this.tenantIds,
    this.taskIds,
    this.unitIds,
    this.buildingIds,
    this.complexIds,
    this.inquiryMessageIds,
  });

  factory CreateAttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAttachmentDtoFromJson(json);

  static const toJsonFactory = _$CreateAttachmentDtoToJson;
  Map<String, dynamic> toJson() => _$CreateAttachmentDtoToJson(this);

  @JsonKey(name: 'tenantIds', defaultValue: <String>[])
  final List<String>? tenantIds;
  @JsonKey(name: 'taskIds', defaultValue: <String>[])
  final List<String>? taskIds;
  @JsonKey(name: 'unitIds', defaultValue: <String>[])
  final List<String>? unitIds;
  @JsonKey(name: 'buildingIds', defaultValue: <String>[])
  final List<String>? buildingIds;
  @JsonKey(name: 'complexIds', defaultValue: <String>[])
  final List<String>? complexIds;
  @JsonKey(name: 'inquiryMessageIds', defaultValue: <String>[])
  final List<String>? inquiryMessageIds;
  static const fromJsonFactory = _$CreateAttachmentDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateAttachmentDto &&
            (identical(other.tenantIds, tenantIds) ||
                const DeepCollectionEquality()
                    .equals(other.tenantIds, tenantIds)) &&
            (identical(other.taskIds, taskIds) ||
                const DeepCollectionEquality()
                    .equals(other.taskIds, taskIds)) &&
            (identical(other.unitIds, unitIds) ||
                const DeepCollectionEquality()
                    .equals(other.unitIds, unitIds)) &&
            (identical(other.buildingIds, buildingIds) ||
                const DeepCollectionEquality()
                    .equals(other.buildingIds, buildingIds)) &&
            (identical(other.complexIds, complexIds) ||
                const DeepCollectionEquality()
                    .equals(other.complexIds, complexIds)) &&
            (identical(other.inquiryMessageIds, inquiryMessageIds) ||
                const DeepCollectionEquality()
                    .equals(other.inquiryMessageIds, inquiryMessageIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tenantIds) ^
      const DeepCollectionEquality().hash(taskIds) ^
      const DeepCollectionEquality().hash(unitIds) ^
      const DeepCollectionEquality().hash(buildingIds) ^
      const DeepCollectionEquality().hash(complexIds) ^
      const DeepCollectionEquality().hash(inquiryMessageIds) ^
      runtimeType.hashCode;
}

extension $CreateAttachmentDtoExtension on CreateAttachmentDto {
  CreateAttachmentDto copyWith(
      {List<String>? tenantIds,
      List<String>? taskIds,
      List<String>? unitIds,
      List<String>? buildingIds,
      List<String>? complexIds,
      List<String>? inquiryMessageIds}) {
    return CreateAttachmentDto(
        tenantIds: tenantIds ?? this.tenantIds,
        taskIds: taskIds ?? this.taskIds,
        unitIds: unitIds ?? this.unitIds,
        buildingIds: buildingIds ?? this.buildingIds,
        complexIds: complexIds ?? this.complexIds,
        inquiryMessageIds: inquiryMessageIds ?? this.inquiryMessageIds);
  }

  CreateAttachmentDto copyWithWrapped(
      {Wrapped<List<String>?>? tenantIds,
      Wrapped<List<String>?>? taskIds,
      Wrapped<List<String>?>? unitIds,
      Wrapped<List<String>?>? buildingIds,
      Wrapped<List<String>?>? complexIds,
      Wrapped<List<String>?>? inquiryMessageIds}) {
    return CreateAttachmentDto(
        tenantIds: (tenantIds != null ? tenantIds.value : this.tenantIds),
        taskIds: (taskIds != null ? taskIds.value : this.taskIds),
        unitIds: (unitIds != null ? unitIds.value : this.unitIds),
        buildingIds:
            (buildingIds != null ? buildingIds.value : this.buildingIds),
        complexIds: (complexIds != null ? complexIds.value : this.complexIds),
        inquiryMessageIds: (inquiryMessageIds != null
            ? inquiryMessageIds.value
            : this.inquiryMessageIds));
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteAttachmentDto {
  const DeleteAttachmentDto({
    required this.attachmentId,
    this.tenantId,
    this.leaseId,
    this.unitId,
    this.complexId,
    this.buildingId,
    this.taskId,
  });

  factory DeleteAttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteAttachmentDtoFromJson(json);

  static const toJsonFactory = _$DeleteAttachmentDtoToJson;
  Map<String, dynamic> toJson() => _$DeleteAttachmentDtoToJson(this);

  @JsonKey(name: 'attachmentId')
  final String attachmentId;
  @JsonKey(name: 'tenantId')
  final String? tenantId;
  @JsonKey(name: 'leaseId')
  final String? leaseId;
  @JsonKey(name: 'unitId')
  final String? unitId;
  @JsonKey(name: 'complexId')
  final String? complexId;
  @JsonKey(name: 'buildingId')
  final String? buildingId;
  @JsonKey(name: 'taskId')
  final String? taskId;
  static const fromJsonFactory = _$DeleteAttachmentDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteAttachmentDto &&
            (identical(other.attachmentId, attachmentId) ||
                const DeepCollectionEquality()
                    .equals(other.attachmentId, attachmentId)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.leaseId, leaseId) ||
                const DeepCollectionEquality()
                    .equals(other.leaseId, leaseId)) &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)) &&
            (identical(other.complexId, complexId) ||
                const DeepCollectionEquality()
                    .equals(other.complexId, complexId)) &&
            (identical(other.buildingId, buildingId) ||
                const DeepCollectionEquality()
                    .equals(other.buildingId, buildingId)) &&
            (identical(other.taskId, taskId) ||
                const DeepCollectionEquality().equals(other.taskId, taskId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(attachmentId) ^
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(leaseId) ^
      const DeepCollectionEquality().hash(unitId) ^
      const DeepCollectionEquality().hash(complexId) ^
      const DeepCollectionEquality().hash(buildingId) ^
      const DeepCollectionEquality().hash(taskId) ^
      runtimeType.hashCode;
}

extension $DeleteAttachmentDtoExtension on DeleteAttachmentDto {
  DeleteAttachmentDto copyWith(
      {String? attachmentId,
      String? tenantId,
      String? leaseId,
      String? unitId,
      String? complexId,
      String? buildingId,
      String? taskId}) {
    return DeleteAttachmentDto(
        attachmentId: attachmentId ?? this.attachmentId,
        tenantId: tenantId ?? this.tenantId,
        leaseId: leaseId ?? this.leaseId,
        unitId: unitId ?? this.unitId,
        complexId: complexId ?? this.complexId,
        buildingId: buildingId ?? this.buildingId,
        taskId: taskId ?? this.taskId);
  }

  DeleteAttachmentDto copyWithWrapped(
      {Wrapped<String>? attachmentId,
      Wrapped<String?>? tenantId,
      Wrapped<String?>? leaseId,
      Wrapped<String?>? unitId,
      Wrapped<String?>? complexId,
      Wrapped<String?>? buildingId,
      Wrapped<String?>? taskId}) {
    return DeleteAttachmentDto(
        attachmentId:
            (attachmentId != null ? attachmentId.value : this.attachmentId),
        tenantId: (tenantId != null ? tenantId.value : this.tenantId),
        leaseId: (leaseId != null ? leaseId.value : this.leaseId),
        unitId: (unitId != null ? unitId.value : this.unitId),
        complexId: (complexId != null ? complexId.value : this.complexId),
        buildingId: (buildingId != null ? buildingId.value : this.buildingId),
        taskId: (taskId != null ? taskId.value : this.taskId));
  }
}

@JsonSerializable(explicitToJson: true)
class KpiDto {
  const KpiDto({
    required this.openTasks,
    required this.activeTenants,
    required this.leasedUnits,
    required this.totalUnits,
  });

  factory KpiDto.fromJson(Map<String, dynamic> json) => _$KpiDtoFromJson(json);

  static const toJsonFactory = _$KpiDtoToJson;
  Map<String, dynamic> toJson() => _$KpiDtoToJson(this);

  @JsonKey(name: 'openTasks')
  final double openTasks;
  @JsonKey(name: 'activeTenants')
  final double activeTenants;
  @JsonKey(name: 'leasedUnits')
  final double leasedUnits;
  @JsonKey(name: 'totalUnits')
  final double totalUnits;
  static const fromJsonFactory = _$KpiDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is KpiDto &&
            (identical(other.openTasks, openTasks) ||
                const DeepCollectionEquality()
                    .equals(other.openTasks, openTasks)) &&
            (identical(other.activeTenants, activeTenants) ||
                const DeepCollectionEquality()
                    .equals(other.activeTenants, activeTenants)) &&
            (identical(other.leasedUnits, leasedUnits) ||
                const DeepCollectionEquality()
                    .equals(other.leasedUnits, leasedUnits)) &&
            (identical(other.totalUnits, totalUnits) ||
                const DeepCollectionEquality()
                    .equals(other.totalUnits, totalUnits)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(openTasks) ^
      const DeepCollectionEquality().hash(activeTenants) ^
      const DeepCollectionEquality().hash(leasedUnits) ^
      const DeepCollectionEquality().hash(totalUnits) ^
      runtimeType.hashCode;
}

extension $KpiDtoExtension on KpiDto {
  KpiDto copyWith(
      {double? openTasks,
      double? activeTenants,
      double? leasedUnits,
      double? totalUnits}) {
    return KpiDto(
        openTasks: openTasks ?? this.openTasks,
        activeTenants: activeTenants ?? this.activeTenants,
        leasedUnits: leasedUnits ?? this.leasedUnits,
        totalUnits: totalUnits ?? this.totalUnits);
  }

  KpiDto copyWithWrapped(
      {Wrapped<double>? openTasks,
      Wrapped<double>? activeTenants,
      Wrapped<double>? leasedUnits,
      Wrapped<double>? totalUnits}) {
    return KpiDto(
        openTasks: (openTasks != null ? openTasks.value : this.openTasks),
        activeTenants:
            (activeTenants != null ? activeTenants.value : this.activeTenants),
        leasedUnits:
            (leasedUnits != null ? leasedUnits.value : this.leasedUnits),
        totalUnits: (totalUnits != null ? totalUnits.value : this.totalUnits));
  }
}

@JsonSerializable(explicitToJson: true)
class AddTeamMemberDto {
  const AddTeamMemberDto({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
  });

  factory AddTeamMemberDto.fromJson(Map<String, dynamic> json) =>
      _$AddTeamMemberDtoFromJson(json);

  static const toJsonFactory = _$AddTeamMemberDtoToJson;
  Map<String, dynamic> toJson() => _$AddTeamMemberDtoToJson(this);

  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  static const fromJsonFactory = _$AddTeamMemberDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddTeamMemberDto &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      runtimeType.hashCode;
}

extension $AddTeamMemberDtoExtension on AddTeamMemberDto {
  AddTeamMemberDto copyWith(
      {String? firstName, String? lastName, String? email, String? phone}) {
    return AddTeamMemberDto(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        phone: phone ?? this.phone);
  }

  AddTeamMemberDto copyWithWrapped(
      {Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? email,
      Wrapped<String?>? phone}) {
    return AddTeamMemberDto(
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone));
  }
}

@JsonSerializable(explicitToJson: true)
class MemberDto {
  const MemberDto({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.avatarUrl,
    required this.email,
    required this.phone,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MemberDto.fromJson(Map<String, dynamic> json) =>
      _$MemberDtoFromJson(json);

  static const toJsonFactory = _$MemberDtoToJson;
  Map<String, dynamic> toJson() => _$MemberDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'avatarUrl')
  final String avatarUrl;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(
    name: 'role',
    toJson: roleToJson,
    fromJson: roleFromJson,
  )
  final enums.Role role;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$MemberDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MemberDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $MemberDtoExtension on MemberDto {
  MemberDto copyWith(
      {String? id,
      String? firstName,
      String? lastName,
      String? avatarUrl,
      String? email,
      String? phone,
      enums.Role? role,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return MemberDto(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        role: role ?? this.role,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  MemberDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String>? avatarUrl,
      Wrapped<String>? email,
      Wrapped<String>? phone,
      Wrapped<enums.Role>? role,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return MemberDto(
        id: (id != null ? id.value : this.id),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        role: (role != null ? role.value : this.role),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamDto {
  const TeamDto({
    required this.id,
    required this.name,
    required this.lastTaskId,
    required this.lastUnitId,
    required this.lastBuildingId,
    required this.lastComplexId,
    required this.lastTenantId,
    required this.members,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TeamDto.fromJson(Map<String, dynamic> json) =>
      _$TeamDtoFromJson(json);

  static const toJsonFactory = _$TeamDtoToJson;
  Map<String, dynamic> toJson() => _$TeamDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'lastTaskId')
  final double lastTaskId;
  @JsonKey(name: 'lastUnitId')
  final double lastUnitId;
  @JsonKey(name: 'lastBuildingId')
  final double lastBuildingId;
  @JsonKey(name: 'lastComplexId')
  final double lastComplexId;
  @JsonKey(name: 'lastTenantId')
  final double lastTenantId;
  @JsonKey(name: 'members', defaultValue: <MemberDto>[])
  final List<MemberDto> members;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$TeamDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeamDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastTaskId, lastTaskId) ||
                const DeepCollectionEquality()
                    .equals(other.lastTaskId, lastTaskId)) &&
            (identical(other.lastUnitId, lastUnitId) ||
                const DeepCollectionEquality()
                    .equals(other.lastUnitId, lastUnitId)) &&
            (identical(other.lastBuildingId, lastBuildingId) ||
                const DeepCollectionEquality()
                    .equals(other.lastBuildingId, lastBuildingId)) &&
            (identical(other.lastComplexId, lastComplexId) ||
                const DeepCollectionEquality()
                    .equals(other.lastComplexId, lastComplexId)) &&
            (identical(other.lastTenantId, lastTenantId) ||
                const DeepCollectionEquality()
                    .equals(other.lastTenantId, lastTenantId)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastTaskId) ^
      const DeepCollectionEquality().hash(lastUnitId) ^
      const DeepCollectionEquality().hash(lastBuildingId) ^
      const DeepCollectionEquality().hash(lastComplexId) ^
      const DeepCollectionEquality().hash(lastTenantId) ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $TeamDtoExtension on TeamDto {
  TeamDto copyWith(
      {String? id,
      String? name,
      double? lastTaskId,
      double? lastUnitId,
      double? lastBuildingId,
      double? lastComplexId,
      double? lastTenantId,
      List<MemberDto>? members,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return TeamDto(
        id: id ?? this.id,
        name: name ?? this.name,
        lastTaskId: lastTaskId ?? this.lastTaskId,
        lastUnitId: lastUnitId ?? this.lastUnitId,
        lastBuildingId: lastBuildingId ?? this.lastBuildingId,
        lastComplexId: lastComplexId ?? this.lastComplexId,
        lastTenantId: lastTenantId ?? this.lastTenantId,
        members: members ?? this.members,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  TeamDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<double>? lastTaskId,
      Wrapped<double>? lastUnitId,
      Wrapped<double>? lastBuildingId,
      Wrapped<double>? lastComplexId,
      Wrapped<double>? lastTenantId,
      Wrapped<List<MemberDto>>? members,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return TeamDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        lastTaskId: (lastTaskId != null ? lastTaskId.value : this.lastTaskId),
        lastUnitId: (lastUnitId != null ? lastUnitId.value : this.lastUnitId),
        lastBuildingId: (lastBuildingId != null
            ? lastBuildingId.value
            : this.lastBuildingId),
        lastComplexId:
            (lastComplexId != null ? lastComplexId.value : this.lastComplexId),
        lastTenantId:
            (lastTenantId != null ? lastTenantId.value : this.lastTenantId),
        members: (members != null ? members.value : this.members),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class MemberProxyDto {
  const MemberProxyDto({
    required this.entityId,
    required this.displayAs,
    required this.avatarUrl,
  });

  factory MemberProxyDto.fromJson(Map<String, dynamic> json) =>
      _$MemberProxyDtoFromJson(json);

  static const toJsonFactory = _$MemberProxyDtoToJson;
  Map<String, dynamic> toJson() => _$MemberProxyDtoToJson(this);

  @JsonKey(name: 'entityId')
  final String entityId;
  @JsonKey(name: 'displayAs')
  final String displayAs;
  @JsonKey(name: 'avatarUrl')
  final String avatarUrl;
  static const fromJsonFactory = _$MemberProxyDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MemberProxyDto &&
            (identical(other.entityId, entityId) ||
                const DeepCollectionEquality()
                    .equals(other.entityId, entityId)) &&
            (identical(other.displayAs, displayAs) ||
                const DeepCollectionEquality()
                    .equals(other.displayAs, displayAs)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entityId) ^
      const DeepCollectionEquality().hash(displayAs) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      runtimeType.hashCode;
}

extension $MemberProxyDtoExtension on MemberProxyDto {
  MemberProxyDto copyWith(
      {String? entityId, String? displayAs, String? avatarUrl}) {
    return MemberProxyDto(
        entityId: entityId ?? this.entityId,
        displayAs: displayAs ?? this.displayAs,
        avatarUrl: avatarUrl ?? this.avatarUrl);
  }

  MemberProxyDto copyWithWrapped(
      {Wrapped<String>? entityId,
      Wrapped<String>? displayAs,
      Wrapped<String>? avatarUrl}) {
    return MemberProxyDto(
        entityId: (entityId != null ? entityId.value : this.entityId),
        displayAs: (displayAs != null ? displayAs.value : this.displayAs),
        avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class GenericProxyDto {
  const GenericProxyDto({
    required this.entityId,
    required this.displayAs,
  });

  factory GenericProxyDto.fromJson(Map<String, dynamic> json) =>
      _$GenericProxyDtoFromJson(json);

  static const toJsonFactory = _$GenericProxyDtoToJson;
  Map<String, dynamic> toJson() => _$GenericProxyDtoToJson(this);

  @JsonKey(name: 'entityId')
  final String entityId;
  @JsonKey(name: 'displayAs')
  final String displayAs;
  static const fromJsonFactory = _$GenericProxyDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenericProxyDto &&
            (identical(other.entityId, entityId) ||
                const DeepCollectionEquality()
                    .equals(other.entityId, entityId)) &&
            (identical(other.displayAs, displayAs) ||
                const DeepCollectionEquality()
                    .equals(other.displayAs, displayAs)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entityId) ^
      const DeepCollectionEquality().hash(displayAs) ^
      runtimeType.hashCode;
}

extension $GenericProxyDtoExtension on GenericProxyDto {
  GenericProxyDto copyWith({String? entityId, String? displayAs}) {
    return GenericProxyDto(
        entityId: entityId ?? this.entityId,
        displayAs: displayAs ?? this.displayAs);
  }

  GenericProxyDto copyWithWrapped(
      {Wrapped<String>? entityId, Wrapped<String>? displayAs}) {
    return GenericProxyDto(
        entityId: (entityId != null ? entityId.value : this.entityId),
        displayAs: (displayAs != null ? displayAs.value : this.displayAs));
  }
}

@JsonSerializable(explicitToJson: true)
class TaskCommentDto {
  const TaskCommentDto({
    required this.id,
    required this.content,
    required this.taskId,
    required this.author,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TaskCommentDto.fromJson(Map<String, dynamic> json) =>
      _$TaskCommentDtoFromJson(json);

  static const toJsonFactory = _$TaskCommentDtoToJson;
  Map<String, dynamic> toJson() => _$TaskCommentDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'taskId')
  final String taskId;
  @JsonKey(name: 'author')
  final MemberProxyDto author;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$TaskCommentDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskCommentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.taskId, taskId) ||
                const DeepCollectionEquality().equals(other.taskId, taskId)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $TaskCommentDtoExtension on TaskCommentDto {
  TaskCommentDto copyWith(
      {String? id,
      String? content,
      String? taskId,
      MemberProxyDto? author,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return TaskCommentDto(
        id: id ?? this.id,
        content: content ?? this.content,
        taskId: taskId ?? this.taskId,
        author: author ?? this.author,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  TaskCommentDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? content,
      Wrapped<String>? taskId,
      Wrapped<MemberProxyDto>? author,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return TaskCommentDto(
        id: (id != null ? id.value : this.id),
        content: (content != null ? content.value : this.content),
        taskId: (taskId != null ? taskId.value : this.taskId),
        author: (author != null ? author.value : this.author),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class TaskDto {
  const TaskDto({
    required this.id,
    required this.displayId,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.createdBy,
    required this.status,
    required this.assignees,
    required this.tenants,
    required this.units,
    required this.buildings,
    required this.complexes,
    required this.attachments,
    required this.connectedTo,
    required this.comments,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);

  static const toJsonFactory = _$TaskDtoToJson;
  Map<String, dynamic> toJson() => _$TaskDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'displayId')
  final String displayId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'dueDate')
  final DateTime dueDate;
  @JsonKey(name: 'createdBy')
  final MemberDto createdBy;
  @JsonKey(
    name: 'status',
    toJson: statusToJson,
    fromJson: statusFromJson,
  )
  final enums.Status status;
  @JsonKey(name: 'assignees', defaultValue: <MemberProxyDto>[])
  final List<MemberProxyDto> assignees;
  @JsonKey(name: 'tenants', defaultValue: <GenericProxyDto>[])
  final List<GenericProxyDto> tenants;
  @JsonKey(name: 'units', defaultValue: <GenericProxyDto>[])
  final List<GenericProxyDto> units;
  @JsonKey(name: 'buildings', defaultValue: <GenericProxyDto>[])
  final List<GenericProxyDto> buildings;
  @JsonKey(name: 'complexes', defaultValue: <GenericProxyDto>[])
  final List<GenericProxyDto> complexes;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto> attachments;
  @JsonKey(name: 'connectedTo', defaultValue: <TaskDto>[])
  final List<TaskDto> connectedTo;
  @JsonKey(name: 'comments', defaultValue: <TaskCommentDto>[])
  final List<TaskCommentDto> comments;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$TaskDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.assignees, assignees) ||
                const DeepCollectionEquality()
                    .equals(other.assignees, assignees)) &&
            (identical(other.tenants, tenants) ||
                const DeepCollectionEquality()
                    .equals(other.tenants, tenants)) &&
            (identical(other.units, units) ||
                const DeepCollectionEquality().equals(other.units, units)) &&
            (identical(other.buildings, buildings) ||
                const DeepCollectionEquality()
                    .equals(other.buildings, buildings)) &&
            (identical(other.complexes, complexes) ||
                const DeepCollectionEquality()
                    .equals(other.complexes, complexes)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.connectedTo, connectedTo) ||
                const DeepCollectionEquality()
                    .equals(other.connectedTo, connectedTo)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(assignees) ^
      const DeepCollectionEquality().hash(tenants) ^
      const DeepCollectionEquality().hash(units) ^
      const DeepCollectionEquality().hash(buildings) ^
      const DeepCollectionEquality().hash(complexes) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(connectedTo) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $TaskDtoExtension on TaskDto {
  TaskDto copyWith(
      {String? id,
      String? displayId,
      String? title,
      String? description,
      DateTime? dueDate,
      MemberDto? createdBy,
      enums.Status? status,
      List<MemberProxyDto>? assignees,
      List<GenericProxyDto>? tenants,
      List<GenericProxyDto>? units,
      List<GenericProxyDto>? buildings,
      List<GenericProxyDto>? complexes,
      List<AttachmentDto>? attachments,
      List<TaskDto>? connectedTo,
      List<TaskCommentDto>? comments,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return TaskDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        title: title ?? this.title,
        description: description ?? this.description,
        dueDate: dueDate ?? this.dueDate,
        createdBy: createdBy ?? this.createdBy,
        status: status ?? this.status,
        assignees: assignees ?? this.assignees,
        tenants: tenants ?? this.tenants,
        units: units ?? this.units,
        buildings: buildings ?? this.buildings,
        complexes: complexes ?? this.complexes,
        attachments: attachments ?? this.attachments,
        connectedTo: connectedTo ?? this.connectedTo,
        comments: comments ?? this.comments,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  TaskDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<String>? title,
      Wrapped<String>? description,
      Wrapped<DateTime>? dueDate,
      Wrapped<MemberDto>? createdBy,
      Wrapped<enums.Status>? status,
      Wrapped<List<MemberProxyDto>>? assignees,
      Wrapped<List<GenericProxyDto>>? tenants,
      Wrapped<List<GenericProxyDto>>? units,
      Wrapped<List<GenericProxyDto>>? buildings,
      Wrapped<List<GenericProxyDto>>? complexes,
      Wrapped<List<AttachmentDto>>? attachments,
      Wrapped<List<TaskDto>>? connectedTo,
      Wrapped<List<TaskCommentDto>>? comments,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return TaskDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        dueDate: (dueDate != null ? dueDate.value : this.dueDate),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        status: (status != null ? status.value : this.status),
        assignees: (assignees != null ? assignees.value : this.assignees),
        tenants: (tenants != null ? tenants.value : this.tenants),
        units: (units != null ? units.value : this.units),
        buildings: (buildings != null ? buildings.value : this.buildings),
        complexes: (complexes != null ? complexes.value : this.complexes),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        connectedTo:
            (connectedTo != null ? connectedTo.value : this.connectedTo),
        comments: (comments != null ? comments.value : this.comments),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateTaskDto {
  const CreateTaskDto({
    required this.title,
    required this.description,
    required this.status,
    this.assigneeId,
    required this.tenantIds,
    required this.unitIds,
    required this.complexIds,
  });

  factory CreateTaskDto.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskDtoFromJson(json);

  static const toJsonFactory = _$CreateTaskDtoToJson;
  Map<String, dynamic> toJson() => _$CreateTaskDtoToJson(this);

  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(
    name: 'status',
    toJson: createTaskDtoStatusToJson,
    fromJson: createTaskDtoStatusFromJson,
  )
  final enums.CreateTaskDtoStatus status;
  @JsonKey(name: 'assigneeId')
  final String? assigneeId;
  @JsonKey(name: 'tenantIds', defaultValue: <String>[])
  final List<String> tenantIds;
  @JsonKey(name: 'unitIds', defaultValue: <String>[])
  final List<String> unitIds;
  @JsonKey(name: 'complexIds', defaultValue: <String>[])
  final List<String> complexIds;
  static const fromJsonFactory = _$CreateTaskDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTaskDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.assigneeId, assigneeId) ||
                const DeepCollectionEquality()
                    .equals(other.assigneeId, assigneeId)) &&
            (identical(other.tenantIds, tenantIds) ||
                const DeepCollectionEquality()
                    .equals(other.tenantIds, tenantIds)) &&
            (identical(other.unitIds, unitIds) ||
                const DeepCollectionEquality()
                    .equals(other.unitIds, unitIds)) &&
            (identical(other.complexIds, complexIds) ||
                const DeepCollectionEquality()
                    .equals(other.complexIds, complexIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(assigneeId) ^
      const DeepCollectionEquality().hash(tenantIds) ^
      const DeepCollectionEquality().hash(unitIds) ^
      const DeepCollectionEquality().hash(complexIds) ^
      runtimeType.hashCode;
}

extension $CreateTaskDtoExtension on CreateTaskDto {
  CreateTaskDto copyWith(
      {String? title,
      String? description,
      enums.CreateTaskDtoStatus? status,
      String? assigneeId,
      List<String>? tenantIds,
      List<String>? unitIds,
      List<String>? complexIds}) {
    return CreateTaskDto(
        title: title ?? this.title,
        description: description ?? this.description,
        status: status ?? this.status,
        assigneeId: assigneeId ?? this.assigneeId,
        tenantIds: tenantIds ?? this.tenantIds,
        unitIds: unitIds ?? this.unitIds,
        complexIds: complexIds ?? this.complexIds);
  }

  CreateTaskDto copyWithWrapped(
      {Wrapped<String>? title,
      Wrapped<String>? description,
      Wrapped<enums.CreateTaskDtoStatus>? status,
      Wrapped<String?>? assigneeId,
      Wrapped<List<String>>? tenantIds,
      Wrapped<List<String>>? unitIds,
      Wrapped<List<String>>? complexIds}) {
    return CreateTaskDto(
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        status: (status != null ? status.value : this.status),
        assigneeId: (assigneeId != null ? assigneeId.value : this.assigneeId),
        tenantIds: (tenantIds != null ? tenantIds.value : this.tenantIds),
        unitIds: (unitIds != null ? unitIds.value : this.unitIds),
        complexIds: (complexIds != null ? complexIds.value : this.complexIds));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateTaskCommentDto {
  const CreateTaskCommentDto({
    required this.taskId,
    required this.content,
  });

  factory CreateTaskCommentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskCommentDtoFromJson(json);

  static const toJsonFactory = _$CreateTaskCommentDtoToJson;
  Map<String, dynamic> toJson() => _$CreateTaskCommentDtoToJson(this);

  @JsonKey(name: 'taskId')
  final String taskId;
  @JsonKey(name: 'content')
  final String content;
  static const fromJsonFactory = _$CreateTaskCommentDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTaskCommentDto &&
            (identical(other.taskId, taskId) ||
                const DeepCollectionEquality().equals(other.taskId, taskId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $CreateTaskCommentDtoExtension on CreateTaskCommentDto {
  CreateTaskCommentDto copyWith({String? taskId, String? content}) {
    return CreateTaskCommentDto(
        taskId: taskId ?? this.taskId, content: content ?? this.content);
  }

  CreateTaskCommentDto copyWithWrapped(
      {Wrapped<String>? taskId, Wrapped<String>? content}) {
    return CreateTaskCommentDto(
        taskId: (taskId != null ? taskId.value : this.taskId),
        content: (content != null ? content.value : this.content));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateStatusTaskDto {
  const UpdateStatusTaskDto({
    required this.id,
    required this.status,
  });

  factory UpdateStatusTaskDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateStatusTaskDtoFromJson(json);

  static const toJsonFactory = _$UpdateStatusTaskDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateStatusTaskDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(
    name: 'status',
    toJson: updateStatusTaskDtoStatusToJson,
    fromJson: updateStatusTaskDtoStatusFromJson,
  )
  final enums.UpdateStatusTaskDtoStatus status;
  static const fromJsonFactory = _$UpdateStatusTaskDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateStatusTaskDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $UpdateStatusTaskDtoExtension on UpdateStatusTaskDto {
  UpdateStatusTaskDto copyWith(
      {String? id, enums.UpdateStatusTaskDtoStatus? status}) {
    return UpdateStatusTaskDto(
        id: id ?? this.id, status: status ?? this.status);
  }

  UpdateStatusTaskDto copyWithWrapped(
      {Wrapped<String>? id, Wrapped<enums.UpdateStatusTaskDtoStatus>? status}) {
    return UpdateStatusTaskDto(
        id: (id != null ? id.value : this.id),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateTaskDto {
  const UpdateTaskDto({
    required this.id,
    required this.description,
    required this.status,
    required this.dueDate,
    required this.assigneeIds,
    required this.tenantIds,
    required this.unitIds,
    required this.buildingIds,
    required this.complexIds,
    required this.taskIds,
  });

  factory UpdateTaskDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskDtoFromJson(json);

  static const toJsonFactory = _$UpdateTaskDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateTaskDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(
    name: 'status',
    toJson: updateTaskDtoStatusToJson,
    fromJson: updateTaskDtoStatusFromJson,
  )
  final enums.UpdateTaskDtoStatus status;
  @JsonKey(name: 'dueDate')
  final DateTime dueDate;
  @JsonKey(name: 'assigneeIds', defaultValue: <String>[])
  final List<String> assigneeIds;
  @JsonKey(name: 'tenantIds', defaultValue: <String>[])
  final List<String> tenantIds;
  @JsonKey(name: 'unitIds', defaultValue: <String>[])
  final List<String> unitIds;
  @JsonKey(name: 'buildingIds', defaultValue: <String>[])
  final List<String> buildingIds;
  @JsonKey(name: 'complexIds', defaultValue: <String>[])
  final List<String> complexIds;
  @JsonKey(name: 'taskIds', defaultValue: <String>[])
  final List<String> taskIds;
  static const fromJsonFactory = _$UpdateTaskDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTaskDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.assigneeIds, assigneeIds) ||
                const DeepCollectionEquality()
                    .equals(other.assigneeIds, assigneeIds)) &&
            (identical(other.tenantIds, tenantIds) ||
                const DeepCollectionEquality()
                    .equals(other.tenantIds, tenantIds)) &&
            (identical(other.unitIds, unitIds) ||
                const DeepCollectionEquality()
                    .equals(other.unitIds, unitIds)) &&
            (identical(other.buildingIds, buildingIds) ||
                const DeepCollectionEquality()
                    .equals(other.buildingIds, buildingIds)) &&
            (identical(other.complexIds, complexIds) ||
                const DeepCollectionEquality()
                    .equals(other.complexIds, complexIds)) &&
            (identical(other.taskIds, taskIds) ||
                const DeepCollectionEquality().equals(other.taskIds, taskIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(assigneeIds) ^
      const DeepCollectionEquality().hash(tenantIds) ^
      const DeepCollectionEquality().hash(unitIds) ^
      const DeepCollectionEquality().hash(buildingIds) ^
      const DeepCollectionEquality().hash(complexIds) ^
      const DeepCollectionEquality().hash(taskIds) ^
      runtimeType.hashCode;
}

extension $UpdateTaskDtoExtension on UpdateTaskDto {
  UpdateTaskDto copyWith(
      {String? id,
      String? description,
      enums.UpdateTaskDtoStatus? status,
      DateTime? dueDate,
      List<String>? assigneeIds,
      List<String>? tenantIds,
      List<String>? unitIds,
      List<String>? buildingIds,
      List<String>? complexIds,
      List<String>? taskIds}) {
    return UpdateTaskDto(
        id: id ?? this.id,
        description: description ?? this.description,
        status: status ?? this.status,
        dueDate: dueDate ?? this.dueDate,
        assigneeIds: assigneeIds ?? this.assigneeIds,
        tenantIds: tenantIds ?? this.tenantIds,
        unitIds: unitIds ?? this.unitIds,
        buildingIds: buildingIds ?? this.buildingIds,
        complexIds: complexIds ?? this.complexIds,
        taskIds: taskIds ?? this.taskIds);
  }

  UpdateTaskDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? description,
      Wrapped<enums.UpdateTaskDtoStatus>? status,
      Wrapped<DateTime>? dueDate,
      Wrapped<List<String>>? assigneeIds,
      Wrapped<List<String>>? tenantIds,
      Wrapped<List<String>>? unitIds,
      Wrapped<List<String>>? buildingIds,
      Wrapped<List<String>>? complexIds,
      Wrapped<List<String>>? taskIds}) {
    return UpdateTaskDto(
        id: (id != null ? id.value : this.id),
        description:
            (description != null ? description.value : this.description),
        status: (status != null ? status.value : this.status),
        dueDate: (dueDate != null ? dueDate.value : this.dueDate),
        assigneeIds:
            (assigneeIds != null ? assigneeIds.value : this.assigneeIds),
        tenantIds: (tenantIds != null ? tenantIds.value : this.tenantIds),
        unitIds: (unitIds != null ? unitIds.value : this.unitIds),
        buildingIds:
            (buildingIds != null ? buildingIds.value : this.buildingIds),
        complexIds: (complexIds != null ? complexIds.value : this.complexIds),
        taskIds: (taskIds != null ? taskIds.value : this.taskIds));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateInquiryMessageDto {
  const CreateInquiryMessageDto({
    required this.inquiryId,
    this.authorAccountId,
    this.isAIGenerated,
    required this.content,
    this.attachments,
    this.createdAt,
  });

  factory CreateInquiryMessageDto.fromJson(Map<String, dynamic> json) =>
      _$CreateInquiryMessageDtoFromJson(json);

  static const toJsonFactory = _$CreateInquiryMessageDtoToJson;
  Map<String, dynamic> toJson() => _$CreateInquiryMessageDtoToJson(this);

  @JsonKey(name: 'inquiryId')
  final String inquiryId;
  @JsonKey(name: 'authorAccountId')
  final String? authorAccountId;
  @JsonKey(name: 'isAIGenerated')
  final bool? isAIGenerated;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto>? attachments;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  static const fromJsonFactory = _$CreateInquiryMessageDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateInquiryMessageDto &&
            (identical(other.inquiryId, inquiryId) ||
                const DeepCollectionEquality()
                    .equals(other.inquiryId, inquiryId)) &&
            (identical(other.authorAccountId, authorAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.authorAccountId, authorAccountId)) &&
            (identical(other.isAIGenerated, isAIGenerated) ||
                const DeepCollectionEquality()
                    .equals(other.isAIGenerated, isAIGenerated)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(inquiryId) ^
      const DeepCollectionEquality().hash(authorAccountId) ^
      const DeepCollectionEquality().hash(isAIGenerated) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(createdAt) ^
      runtimeType.hashCode;
}

extension $CreateInquiryMessageDtoExtension on CreateInquiryMessageDto {
  CreateInquiryMessageDto copyWith(
      {String? inquiryId,
      String? authorAccountId,
      bool? isAIGenerated,
      String? content,
      List<AttachmentDto>? attachments,
      DateTime? createdAt}) {
    return CreateInquiryMessageDto(
        inquiryId: inquiryId ?? this.inquiryId,
        authorAccountId: authorAccountId ?? this.authorAccountId,
        isAIGenerated: isAIGenerated ?? this.isAIGenerated,
        content: content ?? this.content,
        attachments: attachments ?? this.attachments,
        createdAt: createdAt ?? this.createdAt);
  }

  CreateInquiryMessageDto copyWithWrapped(
      {Wrapped<String>? inquiryId,
      Wrapped<String?>? authorAccountId,
      Wrapped<bool?>? isAIGenerated,
      Wrapped<String>? content,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<DateTime?>? createdAt}) {
    return CreateInquiryMessageDto(
        inquiryId: (inquiryId != null ? inquiryId.value : this.inquiryId),
        authorAccountId: (authorAccountId != null
            ? authorAccountId.value
            : this.authorAccountId),
        isAIGenerated:
            (isAIGenerated != null ? isAIGenerated.value : this.isAIGenerated),
        content: (content != null ? content.value : this.content),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateInquiryDto {
  const CreateInquiryDto({
    required this.messages,
    required this.type,
  });

  factory CreateInquiryDto.fromJson(Map<String, dynamic> json) =>
      _$CreateInquiryDtoFromJson(json);

  static const toJsonFactory = _$CreateInquiryDtoToJson;
  Map<String, dynamic> toJson() => _$CreateInquiryDtoToJson(this);

  @JsonKey(name: 'messages', defaultValue: <CreateInquiryMessageDto>[])
  final List<CreateInquiryMessageDto> messages;
  @JsonKey(
    name: 'type',
    toJson: createInquiryDtoTypeToJson,
    fromJson: createInquiryDtoTypeFromJson,
  )
  final enums.CreateInquiryDtoType type;
  static const fromJsonFactory = _$CreateInquiryDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateInquiryDto &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CreateInquiryDtoExtension on CreateInquiryDto {
  CreateInquiryDto copyWith(
      {List<CreateInquiryMessageDto>? messages,
      enums.CreateInquiryDtoType? type}) {
    return CreateInquiryDto(
        messages: messages ?? this.messages, type: type ?? this.type);
  }

  CreateInquiryDto copyWithWrapped(
      {Wrapped<List<CreateInquiryMessageDto>>? messages,
      Wrapped<enums.CreateInquiryDtoType>? type}) {
    return CreateInquiryDto(
        messages: (messages != null ? messages.value : this.messages),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class SendMessageDto {
  const SendMessageDto({
    required this.tenantIds,
    required this.title,
    required this.content,
    required this.viaApp,
    required this.viaEmail,
    required this.viaMail,
  });

  factory SendMessageDto.fromJson(Map<String, dynamic> json) =>
      _$SendMessageDtoFromJson(json);

  static const toJsonFactory = _$SendMessageDtoToJson;
  Map<String, dynamic> toJson() => _$SendMessageDtoToJson(this);

  @JsonKey(name: 'tenantIds', defaultValue: <List<Object?>>[])
  final List<List<Object?>> tenantIds;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'viaApp')
  final bool viaApp;
  @JsonKey(name: 'viaEmail')
  final bool viaEmail;
  @JsonKey(name: 'viaMail')
  final bool viaMail;
  static const fromJsonFactory = _$SendMessageDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendMessageDto &&
            (identical(other.tenantIds, tenantIds) ||
                const DeepCollectionEquality()
                    .equals(other.tenantIds, tenantIds)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.viaApp, viaApp) ||
                const DeepCollectionEquality().equals(other.viaApp, viaApp)) &&
            (identical(other.viaEmail, viaEmail) ||
                const DeepCollectionEquality()
                    .equals(other.viaEmail, viaEmail)) &&
            (identical(other.viaMail, viaMail) ||
                const DeepCollectionEquality().equals(other.viaMail, viaMail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tenantIds) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(viaApp) ^
      const DeepCollectionEquality().hash(viaEmail) ^
      const DeepCollectionEquality().hash(viaMail) ^
      runtimeType.hashCode;
}

extension $SendMessageDtoExtension on SendMessageDto {
  SendMessageDto copyWith(
      {List<List<Object?>>? tenantIds,
      String? title,
      String? content,
      bool? viaApp,
      bool? viaEmail,
      bool? viaMail}) {
    return SendMessageDto(
        tenantIds: tenantIds ?? this.tenantIds,
        title: title ?? this.title,
        content: content ?? this.content,
        viaApp: viaApp ?? this.viaApp,
        viaEmail: viaEmail ?? this.viaEmail,
        viaMail: viaMail ?? this.viaMail);
  }

  SendMessageDto copyWithWrapped(
      {Wrapped<List<List<Object?>>>? tenantIds,
      Wrapped<String>? title,
      Wrapped<String>? content,
      Wrapped<bool>? viaApp,
      Wrapped<bool>? viaEmail,
      Wrapped<bool>? viaMail}) {
    return SendMessageDto(
        tenantIds: (tenantIds != null ? tenantIds.value : this.tenantIds),
        title: (title != null ? title.value : this.title),
        content: (content != null ? content.value : this.content),
        viaApp: (viaApp != null ? viaApp.value : this.viaApp),
        viaEmail: (viaEmail != null ? viaEmail.value : this.viaEmail),
        viaMail: (viaMail != null ? viaMail.value : this.viaMail));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateFCMTokenDto {
  const UpdateFCMTokenDto({
    required this.fcmToken,
  });

  factory UpdateFCMTokenDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateFCMTokenDtoFromJson(json);

  static const toJsonFactory = _$UpdateFCMTokenDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateFCMTokenDtoToJson(this);

  @JsonKey(name: 'fcmToken')
  final String fcmToken;
  static const fromJsonFactory = _$UpdateFCMTokenDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFCMTokenDto &&
            (identical(other.fcmToken, fcmToken) ||
                const DeepCollectionEquality()
                    .equals(other.fcmToken, fcmToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fcmToken) ^ runtimeType.hashCode;
}

extension $UpdateFCMTokenDtoExtension on UpdateFCMTokenDto {
  UpdateFCMTokenDto copyWith({String? fcmToken}) {
    return UpdateFCMTokenDto(fcmToken: fcmToken ?? this.fcmToken);
  }

  UpdateFCMTokenDto copyWithWrapped({Wrapped<String>? fcmToken}) {
    return UpdateFCMTokenDto(
        fcmToken: (fcmToken != null ? fcmToken.value : this.fcmToken));
  }
}

String? statusNullableToJson(enums.Status? status) {
  return status?.value;
}

String? statusToJson(enums.Status status) {
  return status.value;
}

enums.Status statusFromJson(
  Object? status, [
  enums.Status? defaultValue,
]) {
  return enums.Status.values.firstWhereOrNull((e) => e.value == status) ??
      defaultValue ??
      enums.Status.swaggerGeneratedUnknown;
}

enums.Status? statusNullableFromJson(
  Object? status, [
  enums.Status? defaultValue,
]) {
  if (status == null) {
    return null;
  }
  return enums.Status.values.firstWhereOrNull((e) => e.value == status) ??
      defaultValue;
}

String statusExplodedListToJson(List<enums.Status>? status) {
  return status?.map((e) => e.value!).join(',') ?? '';
}

List<String> statusListToJson(List<enums.Status>? status) {
  if (status == null) {
    return [];
  }

  return status.map((e) => e.value!).toList();
}

List<enums.Status> statusListFromJson(
  List? status, [
  List<enums.Status>? defaultValue,
]) {
  if (status == null) {
    return defaultValue ?? [];
  }

  return status.map((e) => statusFromJson(e.toString())).toList();
}

List<enums.Status>? statusNullableListFromJson(
  List? status, [
  List<enums.Status>? defaultValue,
]) {
  if (status == null) {
    return defaultValue;
  }

  return status.map((e) => statusFromJson(e.toString())).toList();
}

String? inquiryDtoTypeNullableToJson(enums.InquiryDtoType? inquiryDtoType) {
  return inquiryDtoType?.value;
}

String? inquiryDtoTypeToJson(enums.InquiryDtoType inquiryDtoType) {
  return inquiryDtoType.value;
}

enums.InquiryDtoType inquiryDtoTypeFromJson(
  Object? inquiryDtoType, [
  enums.InquiryDtoType? defaultValue,
]) {
  return enums.InquiryDtoType.values
          .firstWhereOrNull((e) => e.value == inquiryDtoType) ??
      defaultValue ??
      enums.InquiryDtoType.swaggerGeneratedUnknown;
}

enums.InquiryDtoType? inquiryDtoTypeNullableFromJson(
  Object? inquiryDtoType, [
  enums.InquiryDtoType? defaultValue,
]) {
  if (inquiryDtoType == null) {
    return null;
  }
  return enums.InquiryDtoType.values
          .firstWhereOrNull((e) => e.value == inquiryDtoType) ??
      defaultValue;
}

String inquiryDtoTypeExplodedListToJson(
    List<enums.InquiryDtoType>? inquiryDtoType) {
  return inquiryDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> inquiryDtoTypeListToJson(
    List<enums.InquiryDtoType>? inquiryDtoType) {
  if (inquiryDtoType == null) {
    return [];
  }

  return inquiryDtoType.map((e) => e.value!).toList();
}

List<enums.InquiryDtoType> inquiryDtoTypeListFromJson(
  List? inquiryDtoType, [
  List<enums.InquiryDtoType>? defaultValue,
]) {
  if (inquiryDtoType == null) {
    return defaultValue ?? [];
  }

  return inquiryDtoType
      .map((e) => inquiryDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.InquiryDtoType>? inquiryDtoTypeNullableListFromJson(
  List? inquiryDtoType, [
  List<enums.InquiryDtoType>? defaultValue,
]) {
  if (inquiryDtoType == null) {
    return defaultValue;
  }

  return inquiryDtoType
      .map((e) => inquiryDtoTypeFromJson(e.toString()))
      .toList();
}

String? inquiryDtoStatusNullableToJson(
    enums.InquiryDtoStatus? inquiryDtoStatus) {
  return inquiryDtoStatus?.value;
}

String? inquiryDtoStatusToJson(enums.InquiryDtoStatus inquiryDtoStatus) {
  return inquiryDtoStatus.value;
}

enums.InquiryDtoStatus inquiryDtoStatusFromJson(
  Object? inquiryDtoStatus, [
  enums.InquiryDtoStatus? defaultValue,
]) {
  return enums.InquiryDtoStatus.values
          .firstWhereOrNull((e) => e.value == inquiryDtoStatus) ??
      defaultValue ??
      enums.InquiryDtoStatus.swaggerGeneratedUnknown;
}

enums.InquiryDtoStatus? inquiryDtoStatusNullableFromJson(
  Object? inquiryDtoStatus, [
  enums.InquiryDtoStatus? defaultValue,
]) {
  if (inquiryDtoStatus == null) {
    return null;
  }
  return enums.InquiryDtoStatus.values
          .firstWhereOrNull((e) => e.value == inquiryDtoStatus) ??
      defaultValue;
}

String inquiryDtoStatusExplodedListToJson(
    List<enums.InquiryDtoStatus>? inquiryDtoStatus) {
  return inquiryDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> inquiryDtoStatusListToJson(
    List<enums.InquiryDtoStatus>? inquiryDtoStatus) {
  if (inquiryDtoStatus == null) {
    return [];
  }

  return inquiryDtoStatus.map((e) => e.value!).toList();
}

List<enums.InquiryDtoStatus> inquiryDtoStatusListFromJson(
  List? inquiryDtoStatus, [
  List<enums.InquiryDtoStatus>? defaultValue,
]) {
  if (inquiryDtoStatus == null) {
    return defaultValue ?? [];
  }

  return inquiryDtoStatus
      .map((e) => inquiryDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.InquiryDtoStatus>? inquiryDtoStatusNullableListFromJson(
  List? inquiryDtoStatus, [
  List<enums.InquiryDtoStatus>? defaultValue,
]) {
  if (inquiryDtoStatus == null) {
    return defaultValue;
  }

  return inquiryDtoStatus
      .map((e) => inquiryDtoStatusFromJson(e.toString()))
      .toList();
}

String? roleNullableToJson(enums.Role? role) {
  return role?.value;
}

String? roleToJson(enums.Role role) {
  return role.value;
}

enums.Role roleFromJson(
  Object? role, [
  enums.Role? defaultValue,
]) {
  return enums.Role.values.firstWhereOrNull((e) => e.value == role) ??
      defaultValue ??
      enums.Role.swaggerGeneratedUnknown;
}

enums.Role? roleNullableFromJson(
  Object? role, [
  enums.Role? defaultValue,
]) {
  if (role == null) {
    return null;
  }
  return enums.Role.values.firstWhereOrNull((e) => e.value == role) ??
      defaultValue;
}

String roleExplodedListToJson(List<enums.Role>? role) {
  return role?.map((e) => e.value!).join(',') ?? '';
}

List<String> roleListToJson(List<enums.Role>? role) {
  if (role == null) {
    return [];
  }

  return role.map((e) => e.value!).toList();
}

List<enums.Role> roleListFromJson(
  List? role, [
  List<enums.Role>? defaultValue,
]) {
  if (role == null) {
    return defaultValue ?? [];
  }

  return role.map((e) => roleFromJson(e.toString())).toList();
}

List<enums.Role>? roleNullableListFromJson(
  List? role, [
  List<enums.Role>? defaultValue,
]) {
  if (role == null) {
    return defaultValue;
  }

  return role.map((e) => roleFromJson(e.toString())).toList();
}

String? createTaskDtoStatusNullableToJson(
    enums.CreateTaskDtoStatus? createTaskDtoStatus) {
  return createTaskDtoStatus?.value;
}

String? createTaskDtoStatusToJson(
    enums.CreateTaskDtoStatus createTaskDtoStatus) {
  return createTaskDtoStatus.value;
}

enums.CreateTaskDtoStatus createTaskDtoStatusFromJson(
  Object? createTaskDtoStatus, [
  enums.CreateTaskDtoStatus? defaultValue,
]) {
  return enums.CreateTaskDtoStatus.values
          .firstWhereOrNull((e) => e.value == createTaskDtoStatus) ??
      defaultValue ??
      enums.CreateTaskDtoStatus.swaggerGeneratedUnknown;
}

enums.CreateTaskDtoStatus? createTaskDtoStatusNullableFromJson(
  Object? createTaskDtoStatus, [
  enums.CreateTaskDtoStatus? defaultValue,
]) {
  if (createTaskDtoStatus == null) {
    return null;
  }
  return enums.CreateTaskDtoStatus.values
          .firstWhereOrNull((e) => e.value == createTaskDtoStatus) ??
      defaultValue;
}

String createTaskDtoStatusExplodedListToJson(
    List<enums.CreateTaskDtoStatus>? createTaskDtoStatus) {
  return createTaskDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> createTaskDtoStatusListToJson(
    List<enums.CreateTaskDtoStatus>? createTaskDtoStatus) {
  if (createTaskDtoStatus == null) {
    return [];
  }

  return createTaskDtoStatus.map((e) => e.value!).toList();
}

List<enums.CreateTaskDtoStatus> createTaskDtoStatusListFromJson(
  List? createTaskDtoStatus, [
  List<enums.CreateTaskDtoStatus>? defaultValue,
]) {
  if (createTaskDtoStatus == null) {
    return defaultValue ?? [];
  }

  return createTaskDtoStatus
      .map((e) => createTaskDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.CreateTaskDtoStatus>? createTaskDtoStatusNullableListFromJson(
  List? createTaskDtoStatus, [
  List<enums.CreateTaskDtoStatus>? defaultValue,
]) {
  if (createTaskDtoStatus == null) {
    return defaultValue;
  }

  return createTaskDtoStatus
      .map((e) => createTaskDtoStatusFromJson(e.toString()))
      .toList();
}

String? updateStatusTaskDtoStatusNullableToJson(
    enums.UpdateStatusTaskDtoStatus? updateStatusTaskDtoStatus) {
  return updateStatusTaskDtoStatus?.value;
}

String? updateStatusTaskDtoStatusToJson(
    enums.UpdateStatusTaskDtoStatus updateStatusTaskDtoStatus) {
  return updateStatusTaskDtoStatus.value;
}

enums.UpdateStatusTaskDtoStatus updateStatusTaskDtoStatusFromJson(
  Object? updateStatusTaskDtoStatus, [
  enums.UpdateStatusTaskDtoStatus? defaultValue,
]) {
  return enums.UpdateStatusTaskDtoStatus.values
          .firstWhereOrNull((e) => e.value == updateStatusTaskDtoStatus) ??
      defaultValue ??
      enums.UpdateStatusTaskDtoStatus.swaggerGeneratedUnknown;
}

enums.UpdateStatusTaskDtoStatus? updateStatusTaskDtoStatusNullableFromJson(
  Object? updateStatusTaskDtoStatus, [
  enums.UpdateStatusTaskDtoStatus? defaultValue,
]) {
  if (updateStatusTaskDtoStatus == null) {
    return null;
  }
  return enums.UpdateStatusTaskDtoStatus.values
          .firstWhereOrNull((e) => e.value == updateStatusTaskDtoStatus) ??
      defaultValue;
}

String updateStatusTaskDtoStatusExplodedListToJson(
    List<enums.UpdateStatusTaskDtoStatus>? updateStatusTaskDtoStatus) {
  return updateStatusTaskDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateStatusTaskDtoStatusListToJson(
    List<enums.UpdateStatusTaskDtoStatus>? updateStatusTaskDtoStatus) {
  if (updateStatusTaskDtoStatus == null) {
    return [];
  }

  return updateStatusTaskDtoStatus.map((e) => e.value!).toList();
}

List<enums.UpdateStatusTaskDtoStatus> updateStatusTaskDtoStatusListFromJson(
  List? updateStatusTaskDtoStatus, [
  List<enums.UpdateStatusTaskDtoStatus>? defaultValue,
]) {
  if (updateStatusTaskDtoStatus == null) {
    return defaultValue ?? [];
  }

  return updateStatusTaskDtoStatus
      .map((e) => updateStatusTaskDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.UpdateStatusTaskDtoStatus>?
    updateStatusTaskDtoStatusNullableListFromJson(
  List? updateStatusTaskDtoStatus, [
  List<enums.UpdateStatusTaskDtoStatus>? defaultValue,
]) {
  if (updateStatusTaskDtoStatus == null) {
    return defaultValue;
  }

  return updateStatusTaskDtoStatus
      .map((e) => updateStatusTaskDtoStatusFromJson(e.toString()))
      .toList();
}

String? updateTaskDtoStatusNullableToJson(
    enums.UpdateTaskDtoStatus? updateTaskDtoStatus) {
  return updateTaskDtoStatus?.value;
}

String? updateTaskDtoStatusToJson(
    enums.UpdateTaskDtoStatus updateTaskDtoStatus) {
  return updateTaskDtoStatus.value;
}

enums.UpdateTaskDtoStatus updateTaskDtoStatusFromJson(
  Object? updateTaskDtoStatus, [
  enums.UpdateTaskDtoStatus? defaultValue,
]) {
  return enums.UpdateTaskDtoStatus.values
          .firstWhereOrNull((e) => e.value == updateTaskDtoStatus) ??
      defaultValue ??
      enums.UpdateTaskDtoStatus.swaggerGeneratedUnknown;
}

enums.UpdateTaskDtoStatus? updateTaskDtoStatusNullableFromJson(
  Object? updateTaskDtoStatus, [
  enums.UpdateTaskDtoStatus? defaultValue,
]) {
  if (updateTaskDtoStatus == null) {
    return null;
  }
  return enums.UpdateTaskDtoStatus.values
          .firstWhereOrNull((e) => e.value == updateTaskDtoStatus) ??
      defaultValue;
}

String updateTaskDtoStatusExplodedListToJson(
    List<enums.UpdateTaskDtoStatus>? updateTaskDtoStatus) {
  return updateTaskDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateTaskDtoStatusListToJson(
    List<enums.UpdateTaskDtoStatus>? updateTaskDtoStatus) {
  if (updateTaskDtoStatus == null) {
    return [];
  }

  return updateTaskDtoStatus.map((e) => e.value!).toList();
}

List<enums.UpdateTaskDtoStatus> updateTaskDtoStatusListFromJson(
  List? updateTaskDtoStatus, [
  List<enums.UpdateTaskDtoStatus>? defaultValue,
]) {
  if (updateTaskDtoStatus == null) {
    return defaultValue ?? [];
  }

  return updateTaskDtoStatus
      .map((e) => updateTaskDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.UpdateTaskDtoStatus>? updateTaskDtoStatusNullableListFromJson(
  List? updateTaskDtoStatus, [
  List<enums.UpdateTaskDtoStatus>? defaultValue,
]) {
  if (updateTaskDtoStatus == null) {
    return defaultValue;
  }

  return updateTaskDtoStatus
      .map((e) => updateTaskDtoStatusFromJson(e.toString()))
      .toList();
}

String? createInquiryDtoTypeNullableToJson(
    enums.CreateInquiryDtoType? createInquiryDtoType) {
  return createInquiryDtoType?.value;
}

String? createInquiryDtoTypeToJson(
    enums.CreateInquiryDtoType createInquiryDtoType) {
  return createInquiryDtoType.value;
}

enums.CreateInquiryDtoType createInquiryDtoTypeFromJson(
  Object? createInquiryDtoType, [
  enums.CreateInquiryDtoType? defaultValue,
]) {
  return enums.CreateInquiryDtoType.values
          .firstWhereOrNull((e) => e.value == createInquiryDtoType) ??
      defaultValue ??
      enums.CreateInquiryDtoType.swaggerGeneratedUnknown;
}

enums.CreateInquiryDtoType? createInquiryDtoTypeNullableFromJson(
  Object? createInquiryDtoType, [
  enums.CreateInquiryDtoType? defaultValue,
]) {
  if (createInquiryDtoType == null) {
    return null;
  }
  return enums.CreateInquiryDtoType.values
          .firstWhereOrNull((e) => e.value == createInquiryDtoType) ??
      defaultValue;
}

String createInquiryDtoTypeExplodedListToJson(
    List<enums.CreateInquiryDtoType>? createInquiryDtoType) {
  return createInquiryDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> createInquiryDtoTypeListToJson(
    List<enums.CreateInquiryDtoType>? createInquiryDtoType) {
  if (createInquiryDtoType == null) {
    return [];
  }

  return createInquiryDtoType.map((e) => e.value!).toList();
}

List<enums.CreateInquiryDtoType> createInquiryDtoTypeListFromJson(
  List? createInquiryDtoType, [
  List<enums.CreateInquiryDtoType>? defaultValue,
]) {
  if (createInquiryDtoType == null) {
    return defaultValue ?? [];
  }

  return createInquiryDtoType
      .map((e) => createInquiryDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.CreateInquiryDtoType>? createInquiryDtoTypeNullableListFromJson(
  List? createInquiryDtoType, [
  List<enums.CreateInquiryDtoType>? defaultValue,
]) {
  if (createInquiryDtoType == null) {
    return defaultValue;
  }

  return createInquiryDtoType
      .map((e) => createInquiryDtoTypeFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
