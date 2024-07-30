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
  Future<chopper.Response> authAccountPost({required CreateAccountDto? body}) {
    return _authAccountPost(body: body);
  }

  ///
  @Post(
    path: '/auth/account',
    optionalBody: true,
  )
  Future<chopper.Response> _authAccountPost(
      {@Body() required CreateAccountDto? body});

  ///
  Future<chopper.Response> authConnectPost({required ConnectAccountDto? body}) {
    return _authConnectPost(body: body);
  }

  ///
  @Post(
    path: '/auth/connect',
    optionalBody: true,
  )
  Future<chopper.Response> _authConnectPost(
      {@Body() required ConnectAccountDto? body});

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
  Future<chopper.Response<List<ResolvedTenantDto>>> tenantsFindPost(
      {required FindTenantDto? body}) {
    generatedMapping.putIfAbsent(
        ResolvedTenantDto, () => ResolvedTenantDto.fromJsonFactory);

    return _tenantsFindPost(body: body);
  }

  ///
  @Post(
    path: '/tenants/find',
    optionalBody: true,
  )
  Future<chopper.Response<List<ResolvedTenantDto>>> _tenantsFindPost(
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
  Future<chopper.Response> leasePut({required UpdateLeaseDto? body}) {
    return _leasePut(body: body);
  }

  ///
  @Put(
    path: '/lease',
    optionalBody: true,
  )
  Future<chopper.Response> _leasePut({@Body() required UpdateLeaseDto? body});

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
  Future<chopper.Response> leaseIdDelete({required String? id}) {
    return _leaseIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/lease/{id}')
  Future<chopper.Response> _leaseIdDelete({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<List<LeaseDto>>> leaseContactIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(LeaseDto, () => LeaseDto.fromJsonFactory);

    return _leaseContactIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/lease/contact/{id}')
  Future<chopper.Response<List<LeaseDto>>> _leaseContactIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ContactDto>>> contactsGet() {
    generatedMapping.putIfAbsent(ContactDto, () => ContactDto.fromJsonFactory);

    return _contactsGet();
  }

  ///
  @Get(path: '/contacts')
  Future<chopper.Response<List<ContactDto>>> _contactsGet();

  ///
  Future<chopper.Response<TenantProfileDto>> contactsProfileGet() {
    generatedMapping.putIfAbsent(
        TenantProfileDto, () => TenantProfileDto.fromJsonFactory);

    return _contactsProfileGet();
  }

  ///
  @Get(path: '/contacts/profile')
  Future<chopper.Response<TenantProfileDto>> _contactsProfileGet();

  ///
  ///@param id
  Future<chopper.Response<ContactDto>> contactsIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ContactDto, () => ContactDto.fromJsonFactory);

    return _contactsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/contacts/{id}')
  Future<chopper.Response<ContactDto>> _contactsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> contactsIdDelete({required String? id}) {
    return _contactsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/contacts/{id}')
  Future<chopper.Response> _contactsIdDelete({@Path('id') required String? id});

  ///
  Future<chopper.Response<ContactDto>> contactsPersonPost(
      {required PersonCreateDto? body}) {
    generatedMapping.putIfAbsent(ContactDto, () => ContactDto.fromJsonFactory);

    return _contactsPersonPost(body: body);
  }

  ///
  @Post(
    path: '/contacts/person',
    optionalBody: true,
  )
  Future<chopper.Response<ContactDto>> _contactsPersonPost(
      {@Body() required PersonCreateDto? body});

  ///
  Future<chopper.Response<ContactDto>> contactsPersonPut(
      {required PersonUpdateDto? body}) {
    generatedMapping.putIfAbsent(ContactDto, () => ContactDto.fromJsonFactory);

    return _contactsPersonPut(body: body);
  }

  ///
  @Put(
    path: '/contacts/person',
    optionalBody: true,
  )
  Future<chopper.Response<ContactDto>> _contactsPersonPut(
      {@Body() required PersonUpdateDto? body});

  ///
  ///@param id
  Future<chopper.Response<List<ContactLogEntryDto>>> contactsLogIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ContactLogEntryDto, () => ContactLogEntryDto.fromJsonFactory);

    return _contactsLogIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/contacts/log/{id}')
  Future<chopper.Response<List<ContactLogEntryDto>>> _contactsLogIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<ContactLogEntryDto>> contactsLogPost(
      {required ContactLogEntryCreateDto? body}) {
    generatedMapping.putIfAbsent(
        ContactLogEntryDto, () => ContactLogEntryDto.fromJsonFactory);

    return _contactsLogPost(body: body);
  }

  ///
  @Post(
    path: '/contacts/log',
    optionalBody: true,
  )
  Future<chopper.Response<ContactLogEntryDto>> _contactsLogPost(
      {@Body() required ContactLogEntryCreateDto? body});

  ///
  Future<chopper.Response<List<ContactLinkDto>>> contactsQueryPost(
      {required QueryDto? body}) {
    generatedMapping.putIfAbsent(
        ContactLinkDto, () => ContactLinkDto.fromJsonFactory);

    return _contactsQueryPost(body: body);
  }

  ///
  @Post(
    path: '/contacts/query',
    optionalBody: true,
  )
  Future<chopper.Response<List<ContactLinkDto>>> _contactsQueryPost(
      {@Body() required QueryDto? body});

  ///
  Future<chopper.Response<UpdateContactDetailsDto>> contactsContactDetailsPut(
      {required UpdateContactDetailsDto? body}) {
    generatedMapping.putIfAbsent(
        UpdateContactDetailsDto, () => UpdateContactDetailsDto.fromJsonFactory);

    return _contactsContactDetailsPut(body: body);
  }

  ///
  @Put(
    path: '/contacts/contact-details',
    optionalBody: true,
  )
  Future<chopper.Response<UpdateContactDetailsDto>> _contactsContactDetailsPut(
      {@Body() required UpdateContactDetailsDto? body});

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
  ///@param id
  Future<chopper.Response<AttachmentDto>> attachmentIdVisibilityPut(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AttachmentDto, () => AttachmentDto.fromJsonFactory);

    return _attachmentIdVisibilityPut(id: id);
  }

  ///
  ///@param id
  @Put(
    path: '/attachment/{id}/visibility',
    optionalBody: true,
  )
  Future<chopper.Response<AttachmentDto>> _attachmentIdVisibilityPut(
      {@Path('id') required String? id});

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
  Future<chopper.Response> inquiryDocumentPost(
      {required DocumentRequestDto? body}) {
    return _inquiryDocumentPost(body: body);
  }

  ///
  @Post(
    path: '/inquiry/document',
    optionalBody: true,
  )
  Future<chopper.Response> _inquiryDocumentPost(
      {@Body() required DocumentRequestDto? body});

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
  ///@param id
  Future<chopper.Response<InquiryDto>> inquiryIdGet({required String? id}) {
    generatedMapping.putIfAbsent(InquiryDto, () => InquiryDto.fromJsonFactory);

    return _inquiryIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/inquiry/{id}')
  Future<chopper.Response<InquiryDto>> _inquiryIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<InquiryDto>> inquiryIdStatusPut(
      {required String? id}) {
    generatedMapping.putIfAbsent(InquiryDto, () => InquiryDto.fromJsonFactory);

    return _inquiryIdStatusPut(id: id);
  }

  ///
  ///@param id
  @Put(
    path: '/inquiry/{id}/status',
    optionalBody: true,
  )
  Future<chopper.Response<InquiryDto>> _inquiryIdStatusPut(
      {@Path('id') required String? id});

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
  Future<chopper.Response<List<MessageDto>>> messagesGet() {
    generatedMapping.putIfAbsent(MessageDto, () => MessageDto.fromJsonFactory);

    return _messagesGet();
  }

  ///
  @Get(path: '/messages')
  Future<chopper.Response<List<MessageDto>>> _messagesGet();

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
  bool operator ==(Object other) {
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
    this.street,
    this.city,
    this.addressAddition,
    this.state,
    this.zip,
    this.country,
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
  final String? street;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'addressAddition')
  final String? addressAddition;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'zip')
  final String? zip;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$AddressDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.addressAddition, addressAddition) ||
                const DeepCollectionEquality()
                    .equals(other.addressAddition, addressAddition)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
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
      const DeepCollectionEquality().hash(addressAddition) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AddressDtoExtension on AddressDto {
  AddressDto copyWith(
      {String? id,
      String? street,
      String? city,
      String? addressAddition,
      String? state,
      String? zip,
      String? country,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return AddressDto(
        id: id ?? this.id,
        street: street ?? this.street,
        city: city ?? this.city,
        addressAddition: addressAddition ?? this.addressAddition,
        state: state ?? this.state,
        zip: zip ?? this.zip,
        country: country ?? this.country,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  AddressDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? street,
      Wrapped<String?>? city,
      Wrapped<String?>? addressAddition,
      Wrapped<String?>? state,
      Wrapped<String?>? zip,
      Wrapped<String?>? country,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return AddressDto(
        id: (id != null ? id.value : this.id),
        street: (street != null ? street.value : this.street),
        city: (city != null ? city.value : this.city),
        addressAddition: (addressAddition != null
            ? addressAddition.value
            : this.addressAddition),
        state: (state != null ? state.value : this.state),
        zip: (zip != null ? zip.value : this.zip),
        country: (country != null ? country.value : this.country),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class TenantLinkDto {
  const TenantLinkDto({
    required this.id,
    required this.label,
    required this.displayId,
  });

  factory TenantLinkDto.fromJson(Map<String, dynamic> json) =>
      _$TenantLinkDtoFromJson(json);

  static const toJsonFactory = _$TenantLinkDtoToJson;
  Map<String, dynamic> toJson() => _$TenantLinkDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'displayId')
  final String displayId;
  static const fromJsonFactory = _$TenantLinkDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TenantLinkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(displayId) ^
      runtimeType.hashCode;
}

extension $TenantLinkDtoExtension on TenantLinkDto {
  TenantLinkDto copyWith({String? id, String? label, String? displayId}) {
    return TenantLinkDto(
        id: id ?? this.id,
        label: label ?? this.label,
        displayId: displayId ?? this.displayId);
  }

  TenantLinkDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? label,
      Wrapped<String>? displayId}) {
    return TenantLinkDto(
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        displayId: (displayId != null ? displayId.value : this.displayId));
  }
}

@JsonSerializable(explicitToJson: true)
class ContactLinkDto {
  const ContactLinkDto({
    required this.id,
    required this.label,
    required this.displayId,
  });

  factory ContactLinkDto.fromJson(Map<String, dynamic> json) =>
      _$ContactLinkDtoFromJson(json);

  static const toJsonFactory = _$ContactLinkDtoToJson;
  Map<String, dynamic> toJson() => _$ContactLinkDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'displayId')
  final String displayId;
  static const fromJsonFactory = _$ContactLinkDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContactLinkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(displayId) ^
      runtimeType.hashCode;
}

extension $ContactLinkDtoExtension on ContactLinkDto {
  ContactLinkDto copyWith({String? id, String? label, String? displayId}) {
    return ContactLinkDto(
        id: id ?? this.id,
        label: label ?? this.label,
        displayId: displayId ?? this.displayId);
  }

  ContactLinkDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? label,
      Wrapped<String>? displayId}) {
    return ContactLinkDto(
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        displayId: (displayId != null ? displayId.value : this.displayId));
  }
}

@JsonSerializable(explicitToJson: true)
class UnitLinkDto {
  const UnitLinkDto({
    required this.id,
    required this.label,
    required this.displayId,
    required this.type,
  });

  factory UnitLinkDto.fromJson(Map<String, dynamic> json) =>
      _$UnitLinkDtoFromJson(json);

  static const toJsonFactory = _$UnitLinkDtoToJson;
  Map<String, dynamic> toJson() => _$UnitLinkDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'displayId')
  final String displayId;
  @JsonKey(
    name: 'type',
    toJson: unitTypeToJson,
    fromJson: unitTypeFromJson,
  )
  final enums.UnitType type;
  static const fromJsonFactory = _$UnitLinkDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UnitLinkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(displayId) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $UnitLinkDtoExtension on UnitLinkDto {
  UnitLinkDto copyWith(
      {String? id, String? label, String? displayId, enums.UnitType? type}) {
    return UnitLinkDto(
        id: id ?? this.id,
        label: label ?? this.label,
        displayId: displayId ?? this.displayId,
        type: type ?? this.type);
  }

  UnitLinkDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? label,
      Wrapped<String>? displayId,
      Wrapped<enums.UnitType>? type}) {
    return UnitLinkDto(
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        displayId: (displayId != null ? displayId.value : this.displayId),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class LeaseDto {
  const LeaseDto({
    required this.id,
    this.tenants,
    required this.contactLink,
    required this.type,
    this.unitLink,
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
  @JsonKey(name: 'tenants', defaultValue: <TenantLinkDto>[])
  final List<TenantLinkDto>? tenants;
  @JsonKey(name: 'contactLink')
  final ContactLinkDto contactLink;
  @JsonKey(
    name: 'type',
    toJson: contractTypeToJson,
    fromJson: contractTypeFromJson,
  )
  final enums.ContractType type;
  @JsonKey(name: 'unitLink')
  final UnitLinkDto? unitLink;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tenants, tenants) ||
                const DeepCollectionEquality()
                    .equals(other.tenants, tenants)) &&
            (identical(other.contactLink, contactLink) ||
                const DeepCollectionEquality()
                    .equals(other.contactLink, contactLink)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.unitLink, unitLink) ||
                const DeepCollectionEquality()
                    .equals(other.unitLink, unitLink)) &&
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
      const DeepCollectionEquality().hash(contactLink) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(unitLink) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $LeaseDtoExtension on LeaseDto {
  LeaseDto copyWith(
      {String? id,
      List<TenantLinkDto>? tenants,
      ContactLinkDto? contactLink,
      enums.ContractType? type,
      UnitLinkDto? unitLink,
      DateTime? startDate,
      DateTime? endDate,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return LeaseDto(
        id: id ?? this.id,
        tenants: tenants ?? this.tenants,
        contactLink: contactLink ?? this.contactLink,
        type: type ?? this.type,
        unitLink: unitLink ?? this.unitLink,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  LeaseDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<List<TenantLinkDto>?>? tenants,
      Wrapped<ContactLinkDto>? contactLink,
      Wrapped<enums.ContractType>? type,
      Wrapped<UnitLinkDto?>? unitLink,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime>? endDate,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return LeaseDto(
        id: (id != null ? id.value : this.id),
        tenants: (tenants != null ? tenants.value : this.tenants),
        contactLink:
            (contactLink != null ? contactLink.value : this.contactLink),
        type: (type != null ? type.value : this.type),
        unitLink: (unitLink != null ? unitLink.value : this.unitLink),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
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
    required this.canCustomerView,
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
  @JsonKey(name: 'canCustomerView')
  final bool canCustomerView;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$AttachmentDtoFromJson;

  @override
  bool operator ==(Object other) {
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
            (identical(other.canCustomerView, canCustomerView) ||
                const DeepCollectionEquality()
                    .equals(other.canCustomerView, canCustomerView)) &&
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
      const DeepCollectionEquality().hash(canCustomerView) ^
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
      bool? canCustomerView,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return AttachmentDto(
        id: id ?? this.id,
        name: name ?? this.name,
        mimeType: mimeType ?? this.mimeType,
        fileKey: fileKey ?? this.fileKey,
        canCustomerView: canCustomerView ?? this.canCustomerView,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  AttachmentDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? mimeType,
      Wrapped<String>? fileKey,
      Wrapped<bool>? canCustomerView,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return AttachmentDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        mimeType: (mimeType != null ? mimeType.value : this.mimeType),
        fileKey: (fileKey != null ? fileKey.value : this.fileKey),
        canCustomerView: (canCustomerView != null
            ? canCustomerView.value
            : this.canCustomerView),
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
    required this.type,
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
  @JsonKey(
    name: 'type',
    toJson: unitTypeToJson,
    fromJson: unitTypeFromJson,
  )
  final enums.UnitType type;
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
  bool operator ==(Object other) {
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
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
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
      const DeepCollectionEquality().hash(type) ^
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
      enums.UnitType? type,
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
        type: type ?? this.type,
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
      Wrapped<enums.UnitType>? type,
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
        type: (type != null ? type.value : this.type),
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
class CreateAccountDto {
  const CreateAccountDto({
    required this.authId,
  });

  factory CreateAccountDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountDtoFromJson(json);

  static const toJsonFactory = _$CreateAccountDtoToJson;
  Map<String, dynamic> toJson() => _$CreateAccountDtoToJson(this);

  @JsonKey(name: 'authId')
  final String authId;
  static const fromJsonFactory = _$CreateAccountDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateAccountDto &&
            (identical(other.authId, authId) ||
                const DeepCollectionEquality().equals(other.authId, authId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authId) ^ runtimeType.hashCode;
}

extension $CreateAccountDtoExtension on CreateAccountDto {
  CreateAccountDto copyWith({String? authId}) {
    return CreateAccountDto(authId: authId ?? this.authId);
  }

  CreateAccountDto copyWithWrapped({Wrapped<String>? authId}) {
    return CreateAccountDto(
        authId: (authId != null ? authId.value : this.authId));
  }
}

@JsonSerializable(explicitToJson: true)
class ConnectAccountDto {
  const ConnectAccountDto({
    required this.code,
  });

  factory ConnectAccountDto.fromJson(Map<String, dynamic> json) =>
      _$ConnectAccountDtoFromJson(json);

  static const toJsonFactory = _$ConnectAccountDtoToJson;
  Map<String, dynamic> toJson() => _$ConnectAccountDtoToJson(this);

  @JsonKey(name: 'code')
  final String code;
  static const fromJsonFactory = _$ConnectAccountDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ConnectAccountDto &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^ runtimeType.hashCode;
}

extension $ConnectAccountDtoExtension on ConnectAccountDto {
  ConnectAccountDto copyWith({String? code}) {
    return ConnectAccountDto(code: code ?? this.code);
  }

  ConnectAccountDto copyWithWrapped({Wrapped<String>? code}) {
    return ConnectAccountDto(code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class InquiryLinkDto {
  const InquiryLinkDto({
    required this.id,
    required this.label,
    required this.status,
  });

  factory InquiryLinkDto.fromJson(Map<String, dynamic> json) =>
      _$InquiryLinkDtoFromJson(json);

  static const toJsonFactory = _$InquiryLinkDtoToJson;
  Map<String, dynamic> toJson() => _$InquiryLinkDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(
    name: 'status',
    toJson: inquiryStatusToJson,
    fromJson: inquiryStatusFromJson,
  )
  final enums.InquiryStatus status;
  static const fromJsonFactory = _$InquiryLinkDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InquiryLinkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $InquiryLinkDtoExtension on InquiryLinkDto {
  InquiryLinkDto copyWith(
      {String? id, String? label, enums.InquiryStatus? status}) {
    return InquiryLinkDto(
        id: id ?? this.id,
        label: label ?? this.label,
        status: status ?? this.status);
  }

  InquiryLinkDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? label,
      Wrapped<enums.InquiryStatus>? status}) {
    return InquiryLinkDto(
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        status: (status != null ? status.value : this.status));
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
    this.contactMethod,
    this.leases,
    this.attachments,
    this.inquiryLinks,
    required this.createdAt,
    required this.updatedAt,
    this.lastLogin,
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
  @JsonKey(
    name: 'contactMethod',
    toJson: tenantDtoContactMethodNullableToJson,
    fromJson: tenantDtoContactMethodNullableFromJson,
  )
  final enums.TenantDtoContactMethod? contactMethod;
  @JsonKey(name: 'leases', defaultValue: <LeaseDto>[])
  final List<LeaseDto>? leases;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto>? attachments;
  @JsonKey(name: 'inquiryLinks', defaultValue: <InquiryLinkDto>[])
  final List<InquiryLinkDto>? inquiryLinks;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @JsonKey(name: 'lastLogin')
  final DateTime? lastLogin;
  static const fromJsonFactory = _$TenantDtoFromJson;

  @override
  bool operator ==(Object other) {
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
            (identical(other.contactMethod, contactMethod) ||
                const DeepCollectionEquality()
                    .equals(other.contactMethod, contactMethod)) &&
            (identical(other.leases, leases) ||
                const DeepCollectionEquality().equals(other.leases, leases)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.inquiryLinks, inquiryLinks) ||
                const DeepCollectionEquality()
                    .equals(other.inquiryLinks, inquiryLinks)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.lastLogin, lastLogin) ||
                const DeepCollectionEquality()
                    .equals(other.lastLogin, lastLogin)));
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
      const DeepCollectionEquality().hash(contactMethod) ^
      const DeepCollectionEquality().hash(leases) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(inquiryLinks) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(lastLogin) ^
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
      enums.TenantDtoContactMethod? contactMethod,
      List<LeaseDto>? leases,
      List<AttachmentDto>? attachments,
      List<InquiryLinkDto>? inquiryLinks,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? lastLogin}) {
    return TenantDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        notes: notes ?? this.notes,
        contactMethod: contactMethod ?? this.contactMethod,
        leases: leases ?? this.leases,
        attachments: attachments ?? this.attachments,
        inquiryLinks: inquiryLinks ?? this.inquiryLinks,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        lastLogin: lastLogin ?? this.lastLogin);
  }

  TenantDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? notes,
      Wrapped<enums.TenantDtoContactMethod?>? contactMethod,
      Wrapped<List<LeaseDto>?>? leases,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<List<InquiryLinkDto>?>? inquiryLinks,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt,
      Wrapped<DateTime?>? lastLogin}) {
    return TenantDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        notes: (notes != null ? notes.value : this.notes),
        contactMethod:
            (contactMethod != null ? contactMethod.value : this.contactMethod),
        leases: (leases != null ? leases.value : this.leases),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        inquiryLinks:
            (inquiryLinks != null ? inquiryLinks.value : this.inquiryLinks),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        lastLogin: (lastLogin != null ? lastLogin.value : this.lastLogin));
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
  bool operator ==(Object other) {
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
class ResolvedTenantDto {
  const ResolvedTenantDto({
    required this.id,
    required this.displayId,
    this.firstName,
    this.lastName,
    this.contactMethod,
    required this.buildingString,
    required this.complexString,
  });

  factory ResolvedTenantDto.fromJson(Map<String, dynamic> json) =>
      _$ResolvedTenantDtoFromJson(json);

  static const toJsonFactory = _$ResolvedTenantDtoToJson;
  Map<String, dynamic> toJson() => _$ResolvedTenantDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'displayId')
  final String displayId;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(
    name: 'contactMethod',
    toJson: resolvedTenantDtoContactMethodNullableToJson,
    fromJson: resolvedTenantDtoContactMethodNullableFromJson,
  )
  final enums.ResolvedTenantDtoContactMethod? contactMethod;
  @JsonKey(name: 'buildingString')
  final String buildingString;
  @JsonKey(name: 'complexString')
  final String complexString;
  static const fromJsonFactory = _$ResolvedTenantDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ResolvedTenantDto &&
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
            (identical(other.contactMethod, contactMethod) ||
                const DeepCollectionEquality()
                    .equals(other.contactMethod, contactMethod)) &&
            (identical(other.buildingString, buildingString) ||
                const DeepCollectionEquality()
                    .equals(other.buildingString, buildingString)) &&
            (identical(other.complexString, complexString) ||
                const DeepCollectionEquality()
                    .equals(other.complexString, complexString)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayId) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(contactMethod) ^
      const DeepCollectionEquality().hash(buildingString) ^
      const DeepCollectionEquality().hash(complexString) ^
      runtimeType.hashCode;
}

extension $ResolvedTenantDtoExtension on ResolvedTenantDto {
  ResolvedTenantDto copyWith(
      {String? id,
      String? displayId,
      String? firstName,
      String? lastName,
      enums.ResolvedTenantDtoContactMethod? contactMethod,
      String? buildingString,
      String? complexString}) {
    return ResolvedTenantDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        contactMethod: contactMethod ?? this.contactMethod,
        buildingString: buildingString ?? this.buildingString,
        complexString: complexString ?? this.complexString);
  }

  ResolvedTenantDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<enums.ResolvedTenantDtoContactMethod?>? contactMethod,
      Wrapped<String>? buildingString,
      Wrapped<String>? complexString}) {
    return ResolvedTenantDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        contactMethod:
            (contactMethod != null ? contactMethod.value : this.contactMethod),
        buildingString: (buildingString != null
            ? buildingString.value
            : this.buildingString),
        complexString:
            (complexString != null ? complexString.value : this.complexString));
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
  bool operator ==(Object other) {
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
class ComplexLinkDto {
  const ComplexLinkDto({
    required this.id,
    required this.label,
  });

  factory ComplexLinkDto.fromJson(Map<String, dynamic> json) =>
      _$ComplexLinkDtoFromJson(json);

  static const toJsonFactory = _$ComplexLinkDtoToJson;
  Map<String, dynamic> toJson() => _$ComplexLinkDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'label')
  final String label;
  static const fromJsonFactory = _$ComplexLinkDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ComplexLinkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $ComplexLinkDtoExtension on ComplexLinkDto {
  ComplexLinkDto copyWith({String? id, String? label}) {
    return ComplexLinkDto(id: id ?? this.id, label: label ?? this.label);
  }

  ComplexLinkDto copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? label}) {
    return ComplexLinkDto(
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class BuildingDto {
  const BuildingDto({
    required this.id,
    required this.displayId,
    this.complexLink,
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
  @JsonKey(name: 'complexLink')
  final ComplexLinkDto? complexLink;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BuildingDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)) &&
            (identical(other.complexLink, complexLink) ||
                const DeepCollectionEquality()
                    .equals(other.complexLink, complexLink)) &&
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
      const DeepCollectionEquality().hash(complexLink) ^
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
      ComplexLinkDto? complexLink,
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
        complexLink: complexLink ?? this.complexLink,
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
      Wrapped<ComplexLinkDto?>? complexLink,
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
        complexLink:
            (complexLink != null ? complexLink.value : this.complexLink),
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
  bool operator ==(Object other) {
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
      String? notes,
      List<AttachmentDto>? attachments,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return ComplexDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        name: name ?? this.name,
        buildings: buildings ?? this.buildings,
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
      Wrapped<String>? notes,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return ComplexDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        name: (name != null ? name.value : this.name),
        buildings: (buildings != null ? buildings.value : this.buildings),
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
    required this.contactId,
    required this.type,
    this.unitId,
    required this.startDate,
    this.endDate,
    this.notes,
  });

  factory CreateLeaseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateLeaseDtoFromJson(json);

  static const toJsonFactory = _$CreateLeaseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateLeaseDtoToJson(this);

  @JsonKey(name: 'contactId')
  final String contactId;
  @JsonKey(
    name: 'type',
    toJson: contractTypeToJson,
    fromJson: contractTypeFromJson,
  )
  final enums.ContractType type;
  @JsonKey(name: 'unitId')
  final String? unitId;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$CreateLeaseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateLeaseDto &&
            (identical(other.contactId, contactId) ||
                const DeepCollectionEquality()
                    .equals(other.contactId, contactId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contactId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(unitId) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $CreateLeaseDtoExtension on CreateLeaseDto {
  CreateLeaseDto copyWith(
      {String? contactId,
      enums.ContractType? type,
      String? unitId,
      DateTime? startDate,
      DateTime? endDate,
      String? notes}) {
    return CreateLeaseDto(
        contactId: contactId ?? this.contactId,
        type: type ?? this.type,
        unitId: unitId ?? this.unitId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        notes: notes ?? this.notes);
  }

  CreateLeaseDto copyWithWrapped(
      {Wrapped<String>? contactId,
      Wrapped<enums.ContractType>? type,
      Wrapped<String?>? unitId,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime?>? endDate,
      Wrapped<String?>? notes}) {
    return CreateLeaseDto(
        contactId: (contactId != null ? contactId.value : this.contactId),
        type: (type != null ? type.value : this.type),
        unitId: (unitId != null ? unitId.value : this.unitId),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateLeaseDto {
  const UpdateLeaseDto({
    required this.id,
    required this.contactId,
    required this.type,
    this.unitId,
    required this.startDate,
    this.endDate,
    this.notes,
  });

  factory UpdateLeaseDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateLeaseDtoFromJson(json);

  static const toJsonFactory = _$UpdateLeaseDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateLeaseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'contactId')
  final String contactId;
  @JsonKey(
    name: 'type',
    toJson: contractTypeToJson,
    fromJson: contractTypeFromJson,
  )
  final enums.ContractType type;
  @JsonKey(name: 'unitId')
  final String? unitId;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$UpdateLeaseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateLeaseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contactId, contactId) ||
                const DeepCollectionEquality()
                    .equals(other.contactId, contactId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contactId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(unitId) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UpdateLeaseDtoExtension on UpdateLeaseDto {
  UpdateLeaseDto copyWith(
      {String? id,
      String? contactId,
      enums.ContractType? type,
      String? unitId,
      DateTime? startDate,
      DateTime? endDate,
      String? notes}) {
    return UpdateLeaseDto(
        id: id ?? this.id,
        contactId: contactId ?? this.contactId,
        type: type ?? this.type,
        unitId: unitId ?? this.unitId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        notes: notes ?? this.notes);
  }

  UpdateLeaseDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? contactId,
      Wrapped<enums.ContractType>? type,
      Wrapped<String?>? unitId,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime?>? endDate,
      Wrapped<String?>? notes}) {
    return UpdateLeaseDto(
        id: (id != null ? id.value : this.id),
        contactId: (contactId != null ? contactId.value : this.contactId),
        type: (type != null ? type.value : this.type),
        unitId: (unitId != null ? unitId.value : this.unitId),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonDto {
  const PersonDto({
    required this.id,
    required this.salutation,
    required this.firstName,
    required this.lastName,
  });

  factory PersonDto.fromJson(Map<String, dynamic> json) =>
      _$PersonDtoFromJson(json);

  static const toJsonFactory = _$PersonDtoToJson;
  Map<String, dynamic> toJson() => _$PersonDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(
    name: 'salutation',
    toJson: salutationToJson,
    fromJson: salutationFromJson,
  )
  final enums.Salutation salutation;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  static const fromJsonFactory = _$PersonDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PersonDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.salutation, salutation) ||
                const DeepCollectionEquality()
                    .equals(other.salutation, salutation)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(salutation) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      runtimeType.hashCode;
}

extension $PersonDtoExtension on PersonDto {
  PersonDto copyWith(
      {String? id,
      enums.Salutation? salutation,
      String? firstName,
      String? lastName}) {
    return PersonDto(
        id: id ?? this.id,
        salutation: salutation ?? this.salutation,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }

  PersonDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<enums.Salutation>? salutation,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName}) {
    return PersonDto(
        id: (id != null ? id.value : this.id),
        salutation: (salutation != null ? salutation.value : this.salutation),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName));
  }
}

@JsonSerializable(explicitToJson: true)
class ContactDto {
  const ContactDto({
    required this.id,
    required this.displayId,
    this.person,
    this.roles,
    this.email,
    this.phone,
    required this.preferredChannel,
    this.address,
    required this.notes,
    this.attachments,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);

  static const toJsonFactory = _$ContactDtoToJson;
  Map<String, dynamic> toJson() => _$ContactDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'displayId')
  final String displayId;
  @JsonKey(name: 'person')
  final PersonDto? person;
  @JsonKey(
    name: 'roles',
    toJson: contractTypeListToJson,
    fromJson: contractTypeListFromJson,
  )
  final List<enums.ContractType>? roles;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(
    name: 'preferredChannel',
    toJson: contactMethodToJson,
    fromJson: contactMethodFromJson,
  )
  final enums.ContactMethod preferredChannel;
  @JsonKey(name: 'address')
  final AddressDto? address;
  @JsonKey(name: 'notes')
  final String notes;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto>? attachments;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$ContactDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContactDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.preferredChannel, preferredChannel) ||
                const DeepCollectionEquality()
                    .equals(other.preferredChannel, preferredChannel)) &&
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
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(preferredChannel) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ContactDtoExtension on ContactDto {
  ContactDto copyWith(
      {String? id,
      String? displayId,
      PersonDto? person,
      List<enums.ContractType>? roles,
      String? email,
      String? phone,
      enums.ContactMethod? preferredChannel,
      AddressDto? address,
      String? notes,
      List<AttachmentDto>? attachments,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return ContactDto(
        id: id ?? this.id,
        displayId: displayId ?? this.displayId,
        person: person ?? this.person,
        roles: roles ?? this.roles,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        preferredChannel: preferredChannel ?? this.preferredChannel,
        address: address ?? this.address,
        notes: notes ?? this.notes,
        attachments: attachments ?? this.attachments,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ContactDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<PersonDto?>? person,
      Wrapped<List<enums.ContractType>?>? roles,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<enums.ContactMethod>? preferredChannel,
      Wrapped<AddressDto?>? address,
      Wrapped<String>? notes,
      Wrapped<List<AttachmentDto>?>? attachments,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return ContactDto(
        id: (id != null ? id.value : this.id),
        displayId: (displayId != null ? displayId.value : this.displayId),
        person: (person != null ? person.value : this.person),
        roles: (roles != null ? roles.value : this.roles),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        preferredChannel: (preferredChannel != null
            ? preferredChannel.value
            : this.preferredChannel),
        address: (address != null ? address.value : this.address),
        notes: (notes != null ? notes.value : this.notes),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class TenantProfileDto {
  const TenantProfileDto({
    required this.contactId,
    required this.contactDisplayId,
    this.unitId,
    this.unitDisplayId,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.contactMethod,
    this.street,
    this.zip,
    this.city,
    this.country,
  });

  factory TenantProfileDto.fromJson(Map<String, dynamic> json) =>
      _$TenantProfileDtoFromJson(json);

  static const toJsonFactory = _$TenantProfileDtoToJson;
  Map<String, dynamic> toJson() => _$TenantProfileDtoToJson(this);

  @JsonKey(name: 'contactId')
  final String contactId;
  @JsonKey(name: 'contactDisplayId')
  final String contactDisplayId;
  @JsonKey(name: 'unitId')
  final String? unitId;
  @JsonKey(name: 'unitDisplayId')
  final String? unitDisplayId;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(
    name: 'contactMethod',
    toJson: tenantProfileDtoContactMethodNullableToJson,
    fromJson: tenantProfileDtoContactMethodNullableFromJson,
  )
  final enums.TenantProfileDtoContactMethod? contactMethod;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'zip')
  final String? zip;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'country')
  final String? country;
  static const fromJsonFactory = _$TenantProfileDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TenantProfileDto &&
            (identical(other.contactId, contactId) ||
                const DeepCollectionEquality()
                    .equals(other.contactId, contactId)) &&
            (identical(other.contactDisplayId, contactDisplayId) ||
                const DeepCollectionEquality()
                    .equals(other.contactDisplayId, contactDisplayId)) &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)) &&
            (identical(other.unitDisplayId, unitDisplayId) ||
                const DeepCollectionEquality()
                    .equals(other.unitDisplayId, unitDisplayId)) &&
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
            (identical(other.contactMethod, contactMethod) ||
                const DeepCollectionEquality()
                    .equals(other.contactMethod, contactMethod)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contactId) ^
      const DeepCollectionEquality().hash(contactDisplayId) ^
      const DeepCollectionEquality().hash(unitId) ^
      const DeepCollectionEquality().hash(unitDisplayId) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(contactMethod) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      runtimeType.hashCode;
}

extension $TenantProfileDtoExtension on TenantProfileDto {
  TenantProfileDto copyWith(
      {String? contactId,
      String? contactDisplayId,
      String? unitId,
      String? unitDisplayId,
      String? firstName,
      String? lastName,
      String? email,
      String? phone,
      enums.TenantProfileDtoContactMethod? contactMethod,
      String? street,
      String? zip,
      String? city,
      String? country}) {
    return TenantProfileDto(
        contactId: contactId ?? this.contactId,
        contactDisplayId: contactDisplayId ?? this.contactDisplayId,
        unitId: unitId ?? this.unitId,
        unitDisplayId: unitDisplayId ?? this.unitDisplayId,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        contactMethod: contactMethod ?? this.contactMethod,
        street: street ?? this.street,
        zip: zip ?? this.zip,
        city: city ?? this.city,
        country: country ?? this.country);
  }

  TenantProfileDto copyWithWrapped(
      {Wrapped<String>? contactId,
      Wrapped<String>? contactDisplayId,
      Wrapped<String?>? unitId,
      Wrapped<String?>? unitDisplayId,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<enums.TenantProfileDtoContactMethod?>? contactMethod,
      Wrapped<String?>? street,
      Wrapped<String?>? zip,
      Wrapped<String?>? city,
      Wrapped<String?>? country}) {
    return TenantProfileDto(
        contactId: (contactId != null ? contactId.value : this.contactId),
        contactDisplayId: (contactDisplayId != null
            ? contactDisplayId.value
            : this.contactDisplayId),
        unitId: (unitId != null ? unitId.value : this.unitId),
        unitDisplayId:
            (unitDisplayId != null ? unitDisplayId.value : this.unitDisplayId),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        contactMethod:
            (contactMethod != null ? contactMethod.value : this.contactMethod),
        street: (street != null ? street.value : this.street),
        zip: (zip != null ? zip.value : this.zip),
        city: (city != null ? city.value : this.city),
        country: (country != null ? country.value : this.country));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonCreateDto {
  const PersonCreateDto({
    this.email,
    this.phone,
    this.notes,
    required this.address,
    required this.preferredChannel,
    required this.salutation,
    required this.firstName,
    required this.lastName,
  });

  factory PersonCreateDto.fromJson(Map<String, dynamic> json) =>
      _$PersonCreateDtoFromJson(json);

  static const toJsonFactory = _$PersonCreateDtoToJson;
  Map<String, dynamic> toJson() => _$PersonCreateDtoToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'address')
  final CreateAddressDto address;
  @JsonKey(
    name: 'preferredChannel',
    toJson: contactMethodToJson,
    fromJson: contactMethodFromJson,
  )
  final enums.ContactMethod preferredChannel;
  @JsonKey(
    name: 'salutation',
    toJson: salutationToJson,
    fromJson: salutationFromJson,
  )
  final enums.Salutation salutation;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  static const fromJsonFactory = _$PersonCreateDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PersonCreateDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.preferredChannel, preferredChannel) ||
                const DeepCollectionEquality()
                    .equals(other.preferredChannel, preferredChannel)) &&
            (identical(other.salutation, salutation) ||
                const DeepCollectionEquality()
                    .equals(other.salutation, salutation)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(preferredChannel) ^
      const DeepCollectionEquality().hash(salutation) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      runtimeType.hashCode;
}

extension $PersonCreateDtoExtension on PersonCreateDto {
  PersonCreateDto copyWith(
      {String? email,
      String? phone,
      String? notes,
      CreateAddressDto? address,
      enums.ContactMethod? preferredChannel,
      enums.Salutation? salutation,
      String? firstName,
      String? lastName}) {
    return PersonCreateDto(
        email: email ?? this.email,
        phone: phone ?? this.phone,
        notes: notes ?? this.notes,
        address: address ?? this.address,
        preferredChannel: preferredChannel ?? this.preferredChannel,
        salutation: salutation ?? this.salutation,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }

  PersonCreateDto copyWithWrapped(
      {Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? notes,
      Wrapped<CreateAddressDto>? address,
      Wrapped<enums.ContactMethod>? preferredChannel,
      Wrapped<enums.Salutation>? salutation,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName}) {
    return PersonCreateDto(
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        notes: (notes != null ? notes.value : this.notes),
        address: (address != null ? address.value : this.address),
        preferredChannel: (preferredChannel != null
            ? preferredChannel.value
            : this.preferredChannel),
        salutation: (salutation != null ? salutation.value : this.salutation),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonUpdateDto {
  const PersonUpdateDto({
    required this.id,
    this.email,
    this.phone,
    this.notes,
    required this.preferredChannel,
    this.street,
    this.zip,
    this.city,
    required this.salutation,
    required this.firstName,
    required this.lastName,
  });

  factory PersonUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$PersonUpdateDtoFromJson(json);

  static const toJsonFactory = _$PersonUpdateDtoToJson;
  Map<String, dynamic> toJson() => _$PersonUpdateDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(
    name: 'preferredChannel',
    toJson: contactMethodToJson,
    fromJson: contactMethodFromJson,
  )
  final enums.ContactMethod preferredChannel;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'zip')
  final String? zip;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(
    name: 'salutation',
    toJson: salutationToJson,
    fromJson: salutationFromJson,
  )
  final enums.Salutation salutation;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  static const fromJsonFactory = _$PersonUpdateDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PersonUpdateDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.preferredChannel, preferredChannel) ||
                const DeepCollectionEquality()
                    .equals(other.preferredChannel, preferredChannel)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.salutation, salutation) ||
                const DeepCollectionEquality()
                    .equals(other.salutation, salutation)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(preferredChannel) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(salutation) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      runtimeType.hashCode;
}

extension $PersonUpdateDtoExtension on PersonUpdateDto {
  PersonUpdateDto copyWith(
      {String? id,
      String? email,
      String? phone,
      String? notes,
      enums.ContactMethod? preferredChannel,
      String? street,
      String? zip,
      String? city,
      enums.Salutation? salutation,
      String? firstName,
      String? lastName}) {
    return PersonUpdateDto(
        id: id ?? this.id,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        notes: notes ?? this.notes,
        preferredChannel: preferredChannel ?? this.preferredChannel,
        street: street ?? this.street,
        zip: zip ?? this.zip,
        city: city ?? this.city,
        salutation: salutation ?? this.salutation,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }

  PersonUpdateDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? notes,
      Wrapped<enums.ContactMethod>? preferredChannel,
      Wrapped<String?>? street,
      Wrapped<String?>? zip,
      Wrapped<String?>? city,
      Wrapped<enums.Salutation>? salutation,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName}) {
    return PersonUpdateDto(
        id: (id != null ? id.value : this.id),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        notes: (notes != null ? notes.value : this.notes),
        preferredChannel: (preferredChannel != null
            ? preferredChannel.value
            : this.preferredChannel),
        street: (street != null ? street.value : this.street),
        zip: (zip != null ? zip.value : this.zip),
        city: (city != null ? city.value : this.city),
        salutation: (salutation != null ? salutation.value : this.salutation),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName));
  }
}

@JsonSerializable(explicitToJson: true)
class TaskLinkDto {
  const TaskLinkDto({
    required this.id,
    required this.label,
    required this.status,
  });

  factory TaskLinkDto.fromJson(Map<String, dynamic> json) =>
      _$TaskLinkDtoFromJson(json);

  static const toJsonFactory = _$TaskLinkDtoToJson;
  Map<String, dynamic> toJson() => _$TaskLinkDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(
    name: 'status',
    toJson: taskStatusToJson,
    fromJson: taskStatusFromJson,
  )
  final enums.TaskStatus status;
  static const fromJsonFactory = _$TaskLinkDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TaskLinkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $TaskLinkDtoExtension on TaskLinkDto {
  TaskLinkDto copyWith({String? id, String? label, enums.TaskStatus? status}) {
    return TaskLinkDto(
        id: id ?? this.id,
        label: label ?? this.label,
        status: status ?? this.status);
  }

  TaskLinkDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? label,
      Wrapped<enums.TaskStatus>? status}) {
    return TaskLinkDto(
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class ContactLogEntryDto {
  const ContactLogEntryDto({
    required this.id,
    this.content,
    this.taskLink,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ContactLogEntryDto.fromJson(Map<String, dynamic> json) =>
      _$ContactLogEntryDtoFromJson(json);

  static const toJsonFactory = _$ContactLogEntryDtoToJson;
  Map<String, dynamic> toJson() => _$ContactLogEntryDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'taskLink')
  final TaskLinkDto? taskLink;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$ContactLogEntryDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContactLogEntryDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.taskLink, taskLink) ||
                const DeepCollectionEquality()
                    .equals(other.taskLink, taskLink)) &&
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
      const DeepCollectionEquality().hash(taskLink) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ContactLogEntryDtoExtension on ContactLogEntryDto {
  ContactLogEntryDto copyWith(
      {String? id,
      String? content,
      TaskLinkDto? taskLink,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return ContactLogEntryDto(
        id: id ?? this.id,
        content: content ?? this.content,
        taskLink: taskLink ?? this.taskLink,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ContactLogEntryDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? content,
      Wrapped<TaskLinkDto?>? taskLink,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return ContactLogEntryDto(
        id: (id != null ? id.value : this.id),
        content: (content != null ? content.value : this.content),
        taskLink: (taskLink != null ? taskLink.value : this.taskLink),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ContactLogEntryCreateDto {
  const ContactLogEntryCreateDto({
    required this.contactId,
    required this.content,
    this.taskId,
    required this.dueDate,
  });

  factory ContactLogEntryCreateDto.fromJson(Map<String, dynamic> json) =>
      _$ContactLogEntryCreateDtoFromJson(json);

  static const toJsonFactory = _$ContactLogEntryCreateDtoToJson;
  Map<String, dynamic> toJson() => _$ContactLogEntryCreateDtoToJson(this);

  @JsonKey(name: 'contactId')
  final String contactId;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'taskId')
  final String? taskId;
  @JsonKey(name: 'dueDate')
  final DateTime dueDate;
  static const fromJsonFactory = _$ContactLogEntryCreateDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContactLogEntryCreateDto &&
            (identical(other.contactId, contactId) ||
                const DeepCollectionEquality()
                    .equals(other.contactId, contactId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.taskId, taskId) ||
                const DeepCollectionEquality().equals(other.taskId, taskId)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality().equals(other.dueDate, dueDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contactId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(dueDate) ^
      runtimeType.hashCode;
}

extension $ContactLogEntryCreateDtoExtension on ContactLogEntryCreateDto {
  ContactLogEntryCreateDto copyWith(
      {String? contactId, String? content, String? taskId, DateTime? dueDate}) {
    return ContactLogEntryCreateDto(
        contactId: contactId ?? this.contactId,
        content: content ?? this.content,
        taskId: taskId ?? this.taskId,
        dueDate: dueDate ?? this.dueDate);
  }

  ContactLogEntryCreateDto copyWithWrapped(
      {Wrapped<String>? contactId,
      Wrapped<String>? content,
      Wrapped<String?>? taskId,
      Wrapped<DateTime>? dueDate}) {
    return ContactLogEntryCreateDto(
        contactId: (contactId != null ? contactId.value : this.contactId),
        content: (content != null ? content.value : this.content),
        taskId: (taskId != null ? taskId.value : this.taskId),
        dueDate: (dueDate != null ? dueDate.value : this.dueDate));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateContactDetailsDto {
  const UpdateContactDetailsDto({
    required this.id,
    this.email,
    this.phone,
    this.preferredChannel,
  });

  factory UpdateContactDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateContactDetailsDtoFromJson(json);

  static const toJsonFactory = _$UpdateContactDetailsDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateContactDetailsDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(
    name: 'preferredChannel',
    toJson: contactMethodNullableToJson,
    fromJson: contactMethodNullableFromJson,
  )
  final enums.ContactMethod? preferredChannel;
  static const fromJsonFactory = _$UpdateContactDetailsDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateContactDetailsDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.preferredChannel, preferredChannel) ||
                const DeepCollectionEquality()
                    .equals(other.preferredChannel, preferredChannel)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(preferredChannel) ^
      runtimeType.hashCode;
}

extension $UpdateContactDetailsDtoExtension on UpdateContactDetailsDto {
  UpdateContactDetailsDto copyWith(
      {String? id,
      String? email,
      String? phone,
      enums.ContactMethod? preferredChannel}) {
    return UpdateContactDetailsDto(
        id: id ?? this.id,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        preferredChannel: preferredChannel ?? this.preferredChannel);
  }

  UpdateContactDetailsDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<enums.ContactMethod?>? preferredChannel}) {
    return UpdateContactDetailsDto(
        id: (id != null ? id.value : this.id),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        preferredChannel: (preferredChannel != null
            ? preferredChannel.value
            : this.preferredChannel));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAttachmentDto {
  const CreateAttachmentDto({
    this.tenantIds,
    this.contactIds,
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
  @JsonKey(name: 'contactIds', defaultValue: <String>[])
  final List<String>? contactIds;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateAttachmentDto &&
            (identical(other.tenantIds, tenantIds) ||
                const DeepCollectionEquality()
                    .equals(other.tenantIds, tenantIds)) &&
            (identical(other.contactIds, contactIds) ||
                const DeepCollectionEquality()
                    .equals(other.contactIds, contactIds)) &&
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
      const DeepCollectionEquality().hash(contactIds) ^
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
      List<String>? contactIds,
      List<String>? taskIds,
      List<String>? unitIds,
      List<String>? buildingIds,
      List<String>? complexIds,
      List<String>? inquiryMessageIds}) {
    return CreateAttachmentDto(
        tenantIds: tenantIds ?? this.tenantIds,
        contactIds: contactIds ?? this.contactIds,
        taskIds: taskIds ?? this.taskIds,
        unitIds: unitIds ?? this.unitIds,
        buildingIds: buildingIds ?? this.buildingIds,
        complexIds: complexIds ?? this.complexIds,
        inquiryMessageIds: inquiryMessageIds ?? this.inquiryMessageIds);
  }

  CreateAttachmentDto copyWithWrapped(
      {Wrapped<List<String>?>? tenantIds,
      Wrapped<List<String>?>? contactIds,
      Wrapped<List<String>?>? taskIds,
      Wrapped<List<String>?>? unitIds,
      Wrapped<List<String>?>? buildingIds,
      Wrapped<List<String>?>? complexIds,
      Wrapped<List<String>?>? inquiryMessageIds}) {
    return CreateAttachmentDto(
        tenantIds: (tenantIds != null ? tenantIds.value : this.tenantIds),
        contactIds: (contactIds != null ? contactIds.value : this.contactIds),
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
    this.contactId,
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
  @JsonKey(name: 'contactId')
  final String? contactId;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteAttachmentDto &&
            (identical(other.attachmentId, attachmentId) ||
                const DeepCollectionEquality()
                    .equals(other.attachmentId, attachmentId)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.contactId, contactId) ||
                const DeepCollectionEquality()
                    .equals(other.contactId, contactId)) &&
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
      const DeepCollectionEquality().hash(contactId) ^
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
      String? contactId,
      String? leaseId,
      String? unitId,
      String? complexId,
      String? buildingId,
      String? taskId}) {
    return DeleteAttachmentDto(
        attachmentId: attachmentId ?? this.attachmentId,
        tenantId: tenantId ?? this.tenantId,
        contactId: contactId ?? this.contactId,
        leaseId: leaseId ?? this.leaseId,
        unitId: unitId ?? this.unitId,
        complexId: complexId ?? this.complexId,
        buildingId: buildingId ?? this.buildingId,
        taskId: taskId ?? this.taskId);
  }

  DeleteAttachmentDto copyWithWrapped(
      {Wrapped<String>? attachmentId,
      Wrapped<String?>? tenantId,
      Wrapped<String?>? contactId,
      Wrapped<String?>? leaseId,
      Wrapped<String?>? unitId,
      Wrapped<String?>? complexId,
      Wrapped<String?>? buildingId,
      Wrapped<String?>? taskId}) {
    return DeleteAttachmentDto(
        attachmentId:
            (attachmentId != null ? attachmentId.value : this.attachmentId),
        tenantId: (tenantId != null ? tenantId.value : this.tenantId),
        contactId: (contactId != null ? contactId.value : this.contactId),
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
    required this.lastContactId,
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
  @JsonKey(name: 'lastContactId')
  final double lastContactId;
  @JsonKey(name: 'members', defaultValue: <MemberDto>[])
  final List<MemberDto> members;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$TeamDtoFromJson;

  @override
  bool operator ==(Object other) {
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
            (identical(other.lastContactId, lastContactId) ||
                const DeepCollectionEquality()
                    .equals(other.lastContactId, lastContactId)) &&
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
      const DeepCollectionEquality().hash(lastContactId) ^
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
      double? lastContactId,
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
        lastContactId: lastContactId ?? this.lastContactId,
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
      Wrapped<double>? lastContactId,
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
        lastContactId:
            (lastContactId != null ? lastContactId.value : this.lastContactId),
        members: (members != null ? members.value : this.members),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class MemberLinkDto {
  const MemberLinkDto({
    required this.id,
    required this.label,
    required this.avatarUrl,
  });

  factory MemberLinkDto.fromJson(Map<String, dynamic> json) =>
      _$MemberLinkDtoFromJson(json);

  static const toJsonFactory = _$MemberLinkDtoToJson;
  Map<String, dynamic> toJson() => _$MemberLinkDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'avatarUrl')
  final String avatarUrl;
  static const fromJsonFactory = _$MemberLinkDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MemberLinkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      runtimeType.hashCode;
}

extension $MemberLinkDtoExtension on MemberLinkDto {
  MemberLinkDto copyWith({String? id, String? label, String? avatarUrl}) {
    return MemberLinkDto(
        id: id ?? this.id,
        label: label ?? this.label,
        avatarUrl: avatarUrl ?? this.avatarUrl);
  }

  MemberLinkDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? label,
      Wrapped<String>? avatarUrl}) {
    return MemberLinkDto(
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class BuildingLinkDto {
  const BuildingLinkDto({
    required this.id,
    required this.label,
    required this.displayId,
  });

  factory BuildingLinkDto.fromJson(Map<String, dynamic> json) =>
      _$BuildingLinkDtoFromJson(json);

  static const toJsonFactory = _$BuildingLinkDtoToJson;
  Map<String, dynamic> toJson() => _$BuildingLinkDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'displayId')
  final String displayId;
  static const fromJsonFactory = _$BuildingLinkDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BuildingLinkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.displayId, displayId) ||
                const DeepCollectionEquality()
                    .equals(other.displayId, displayId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(displayId) ^
      runtimeType.hashCode;
}

extension $BuildingLinkDtoExtension on BuildingLinkDto {
  BuildingLinkDto copyWith({String? id, String? label, String? displayId}) {
    return BuildingLinkDto(
        id: id ?? this.id,
        label: label ?? this.label,
        displayId: displayId ?? this.displayId);
  }

  BuildingLinkDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? label,
      Wrapped<String>? displayId}) {
    return BuildingLinkDto(
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        displayId: (displayId != null ? displayId.value : this.displayId));
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
    required this.priority,
    required this.assignees,
    required this.contacts,
    required this.units,
    required this.buildings,
    required this.complexes,
    required this.attachments,
    required this.connectedTo,
    required this.comments,
    this.inquirys,
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
  final MemberLinkDto createdBy;
  @JsonKey(
    name: 'status',
    toJson: statusToJson,
    fromJson: statusFromJson,
  )
  final enums.Status status;
  @JsonKey(
    name: 'priority',
    toJson: taskPriorityToJson,
    fromJson: taskPriorityFromJson,
  )
  final enums.TaskPriority priority;
  @JsonKey(name: 'assignees', defaultValue: <MemberLinkDto>[])
  final List<MemberLinkDto> assignees;
  @JsonKey(name: 'contacts', defaultValue: <ContactLinkDto>[])
  final List<ContactLinkDto> contacts;
  @JsonKey(name: 'units', defaultValue: <UnitLinkDto>[])
  final List<UnitLinkDto> units;
  @JsonKey(name: 'buildings', defaultValue: <BuildingLinkDto>[])
  final List<BuildingLinkDto> buildings;
  @JsonKey(name: 'complexes', defaultValue: <ComplexLinkDto>[])
  final List<ComplexLinkDto> complexes;
  @JsonKey(name: 'attachments', defaultValue: <AttachmentDto>[])
  final List<AttachmentDto> attachments;
  @JsonKey(name: 'connectedTo', defaultValue: <TaskLinkDto>[])
  final List<TaskLinkDto> connectedTo;
  @JsonKey(name: 'comments', defaultValue: <TaskCommentDto>[])
  final List<TaskCommentDto> comments;
  @JsonKey(name: 'inquirys', defaultValue: <InquiryLinkDto>[])
  final List<InquiryLinkDto>? inquirys;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$TaskDtoFromJson;

  @override
  bool operator ==(Object other) {
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
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.assignees, assignees) ||
                const DeepCollectionEquality()
                    .equals(other.assignees, assignees)) &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(assignees) ^
      const DeepCollectionEquality().hash(contacts) ^
      const DeepCollectionEquality().hash(units) ^
      const DeepCollectionEquality().hash(buildings) ^
      const DeepCollectionEquality().hash(complexes) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(connectedTo) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(inquirys) ^
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
      MemberLinkDto? createdBy,
      enums.Status? status,
      enums.TaskPriority? priority,
      List<MemberLinkDto>? assignees,
      List<ContactLinkDto>? contacts,
      List<UnitLinkDto>? units,
      List<BuildingLinkDto>? buildings,
      List<ComplexLinkDto>? complexes,
      List<AttachmentDto>? attachments,
      List<TaskLinkDto>? connectedTo,
      List<TaskCommentDto>? comments,
      List<InquiryLinkDto>? inquirys,
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
        priority: priority ?? this.priority,
        assignees: assignees ?? this.assignees,
        contacts: contacts ?? this.contacts,
        units: units ?? this.units,
        buildings: buildings ?? this.buildings,
        complexes: complexes ?? this.complexes,
        attachments: attachments ?? this.attachments,
        connectedTo: connectedTo ?? this.connectedTo,
        comments: comments ?? this.comments,
        inquirys: inquirys ?? this.inquirys,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  TaskDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? displayId,
      Wrapped<String>? title,
      Wrapped<String>? description,
      Wrapped<DateTime>? dueDate,
      Wrapped<MemberLinkDto>? createdBy,
      Wrapped<enums.Status>? status,
      Wrapped<enums.TaskPriority>? priority,
      Wrapped<List<MemberLinkDto>>? assignees,
      Wrapped<List<ContactLinkDto>>? contacts,
      Wrapped<List<UnitLinkDto>>? units,
      Wrapped<List<BuildingLinkDto>>? buildings,
      Wrapped<List<ComplexLinkDto>>? complexes,
      Wrapped<List<AttachmentDto>>? attachments,
      Wrapped<List<TaskLinkDto>>? connectedTo,
      Wrapped<List<TaskCommentDto>>? comments,
      Wrapped<List<InquiryLinkDto>?>? inquirys,
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
        priority: (priority != null ? priority.value : this.priority),
        assignees: (assignees != null ? assignees.value : this.assignees),
        contacts: (contacts != null ? contacts.value : this.contacts),
        units: (units != null ? units.value : this.units),
        buildings: (buildings != null ? buildings.value : this.buildings),
        complexes: (complexes != null ? complexes.value : this.complexes),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        connectedTo:
            (connectedTo != null ? connectedTo.value : this.connectedTo),
        comments: (comments != null ? comments.value : this.comments),
        inquirys: (inquirys != null ? inquirys.value : this.inquirys),
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
    required this.priority,
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
  @JsonKey(
    name: 'priority',
    toJson: taskPriorityToJson,
    fromJson: taskPriorityFromJson,
  )
  final enums.TaskPriority priority;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateTaskDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
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
      const DeepCollectionEquality().hash(priority) ^
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
      enums.TaskPriority? priority,
      String? assigneeId,
      List<String>? tenantIds,
      List<String>? unitIds,
      List<String>? complexIds}) {
    return CreateTaskDto(
        title: title ?? this.title,
        description: description ?? this.description,
        status: status ?? this.status,
        priority: priority ?? this.priority,
        assigneeId: assigneeId ?? this.assigneeId,
        tenantIds: tenantIds ?? this.tenantIds,
        unitIds: unitIds ?? this.unitIds,
        complexIds: complexIds ?? this.complexIds);
  }

  CreateTaskDto copyWithWrapped(
      {Wrapped<String>? title,
      Wrapped<String>? description,
      Wrapped<enums.CreateTaskDtoStatus>? status,
      Wrapped<enums.TaskPriority>? priority,
      Wrapped<String?>? assigneeId,
      Wrapped<List<String>>? tenantIds,
      Wrapped<List<String>>? unitIds,
      Wrapped<List<String>>? complexIds}) {
    return CreateTaskDto(
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        status: (status != null ? status.value : this.status),
        priority: (priority != null ? priority.value : this.priority),
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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
    this.description,
    required this.status,
    required this.priority,
    this.dueDate,
    required this.assigneeIds,
    required this.tenantIds,
    required this.contactIds,
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
  final String? description;
  @JsonKey(
    name: 'status',
    toJson: updateTaskDtoStatusToJson,
    fromJson: updateTaskDtoStatusFromJson,
  )
  final enums.UpdateTaskDtoStatus status;
  @JsonKey(
    name: 'priority',
    toJson: taskPriorityToJson,
    fromJson: taskPriorityFromJson,
  )
  final enums.TaskPriority priority;
  @JsonKey(name: 'dueDate')
  final DateTime? dueDate;
  @JsonKey(name: 'assigneeIds', defaultValue: <String>[])
  final List<String> assigneeIds;
  @JsonKey(name: 'tenantIds', defaultValue: <String>[])
  final List<String> tenantIds;
  @JsonKey(name: 'contactIds', defaultValue: <String>[])
  final List<String> contactIds;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateTaskDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.assigneeIds, assigneeIds) ||
                const DeepCollectionEquality()
                    .equals(other.assigneeIds, assigneeIds)) &&
            (identical(other.tenantIds, tenantIds) ||
                const DeepCollectionEquality()
                    .equals(other.tenantIds, tenantIds)) &&
            (identical(other.contactIds, contactIds) ||
                const DeepCollectionEquality()
                    .equals(other.contactIds, contactIds)) &&
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
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(assigneeIds) ^
      const DeepCollectionEquality().hash(tenantIds) ^
      const DeepCollectionEquality().hash(contactIds) ^
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
      enums.TaskPriority? priority,
      DateTime? dueDate,
      List<String>? assigneeIds,
      List<String>? tenantIds,
      List<String>? contactIds,
      List<String>? unitIds,
      List<String>? buildingIds,
      List<String>? complexIds,
      List<String>? taskIds}) {
    return UpdateTaskDto(
        id: id ?? this.id,
        description: description ?? this.description,
        status: status ?? this.status,
        priority: priority ?? this.priority,
        dueDate: dueDate ?? this.dueDate,
        assigneeIds: assigneeIds ?? this.assigneeIds,
        tenantIds: tenantIds ?? this.tenantIds,
        contactIds: contactIds ?? this.contactIds,
        unitIds: unitIds ?? this.unitIds,
        buildingIds: buildingIds ?? this.buildingIds,
        complexIds: complexIds ?? this.complexIds,
        taskIds: taskIds ?? this.taskIds);
  }

  UpdateTaskDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? description,
      Wrapped<enums.UpdateTaskDtoStatus>? status,
      Wrapped<enums.TaskPriority>? priority,
      Wrapped<DateTime?>? dueDate,
      Wrapped<List<String>>? assigneeIds,
      Wrapped<List<String>>? tenantIds,
      Wrapped<List<String>>? contactIds,
      Wrapped<List<String>>? unitIds,
      Wrapped<List<String>>? buildingIds,
      Wrapped<List<String>>? complexIds,
      Wrapped<List<String>>? taskIds}) {
    return UpdateTaskDto(
        id: (id != null ? id.value : this.id),
        description:
            (description != null ? description.value : this.description),
        status: (status != null ? status.value : this.status),
        priority: (priority != null ? priority.value : this.priority),
        dueDate: (dueDate != null ? dueDate.value : this.dueDate),
        assigneeIds:
            (assigneeIds != null ? assigneeIds.value : this.assigneeIds),
        tenantIds: (tenantIds != null ? tenantIds.value : this.tenantIds),
        contactIds: (contactIds != null ? contactIds.value : this.contactIds),
        unitIds: (unitIds != null ? unitIds.value : this.unitIds),
        buildingIds:
            (buildingIds != null ? buildingIds.value : this.buildingIds),
        complexIds: (complexIds != null ? complexIds.value : this.complexIds),
        taskIds: (taskIds != null ? taskIds.value : this.taskIds));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentRequestDto {
  const DocumentRequestDto({
    required this.documentType,
    this.notes,
  });

  factory DocumentRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DocumentRequestDtoFromJson(json);

  static const toJsonFactory = _$DocumentRequestDtoToJson;
  Map<String, dynamic> toJson() => _$DocumentRequestDtoToJson(this);

  @JsonKey(
    name: 'documentType',
    toJson: documentTypeToJson,
    fromJson: documentTypeFromJson,
  )
  final enums.DocumentType documentType;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$DocumentRequestDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DocumentRequestDto &&
            (identical(other.documentType, documentType) ||
                const DeepCollectionEquality()
                    .equals(other.documentType, documentType)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentType) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $DocumentRequestDtoExtension on DocumentRequestDto {
  DocumentRequestDto copyWith(
      {enums.DocumentType? documentType, String? notes}) {
    return DocumentRequestDto(
        documentType: documentType ?? this.documentType,
        notes: notes ?? this.notes);
  }

  DocumentRequestDto copyWithWrapped(
      {Wrapped<enums.DocumentType>? documentType, Wrapped<String?>? notes}) {
    return DocumentRequestDto(
        documentType:
            (documentType != null ? documentType.value : this.documentType),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateInquiryDto {
  const CreateInquiryDto({
    required this.type,
    this.date,
    this.description,
  });

  factory CreateInquiryDto.fromJson(Map<String, dynamic> json) =>
      _$CreateInquiryDtoFromJson(json);

  static const toJsonFactory = _$CreateInquiryDtoToJson;
  Map<String, dynamic> toJson() => _$CreateInquiryDtoToJson(this);

  @JsonKey(
    name: 'type',
    toJson: inquiryTypeToJson,
    fromJson: inquiryTypeFromJson,
  )
  final enums.InquiryType type;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$CreateInquiryDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateInquiryDto &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $CreateInquiryDtoExtension on CreateInquiryDto {
  CreateInquiryDto copyWith(
      {enums.InquiryType? type, DateTime? date, String? description}) {
    return CreateInquiryDto(
        type: type ?? this.type,
        date: date ?? this.date,
        description: description ?? this.description);
  }

  CreateInquiryDto copyWithWrapped(
      {Wrapped<enums.InquiryType>? type,
      Wrapped<DateTime?>? date,
      Wrapped<String?>? description}) {
    return CreateInquiryDto(
        type: (type != null ? type.value : this.type),
        date: (date != null ? date.value : this.date),
        description:
            (description != null ? description.value : this.description));
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
  bool operator ==(Object other) {
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
    required this.taskLinks,
    this.suggestion,
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
    toJson: inquiryTypeToJson,
    fromJson: inquiryTypeFromJson,
  )
  final enums.InquiryType type;
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
  @JsonKey(name: 'taskLinks', defaultValue: <TaskLinkDto>[])
  final List<TaskLinkDto> taskLinks;
  @JsonKey(name: 'suggestion')
  final String? suggestion;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$InquiryDtoFromJson;

  @override
  bool operator ==(Object other) {
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
            (identical(other.taskLinks, taskLinks) ||
                const DeepCollectionEquality()
                    .equals(other.taskLinks, taskLinks)) &&
            (identical(other.suggestion, suggestion) ||
                const DeepCollectionEquality()
                    .equals(other.suggestion, suggestion)) &&
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
      const DeepCollectionEquality().hash(taskLinks) ^
      const DeepCollectionEquality().hash(suggestion) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $InquiryDtoExtension on InquiryDto {
  InquiryDto copyWith(
      {String? id,
      String? description,
      enums.InquiryType? type,
      enums.InquiryDtoStatus? status,
      TenantDto? createdBy,
      List<InquiryMessageDto>? messages,
      List<TaskLinkDto>? taskLinks,
      String? suggestion,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return InquiryDto(
        id: id ?? this.id,
        description: description ?? this.description,
        type: type ?? this.type,
        status: status ?? this.status,
        createdBy: createdBy ?? this.createdBy,
        messages: messages ?? this.messages,
        taskLinks: taskLinks ?? this.taskLinks,
        suggestion: suggestion ?? this.suggestion,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  InquiryDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? description,
      Wrapped<enums.InquiryType>? type,
      Wrapped<enums.InquiryDtoStatus>? status,
      Wrapped<TenantDto?>? createdBy,
      Wrapped<List<InquiryMessageDto>>? messages,
      Wrapped<List<TaskLinkDto>>? taskLinks,
      Wrapped<String?>? suggestion,
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
        taskLinks: (taskLinks != null ? taskLinks.value : this.taskLinks),
        suggestion: (suggestion != null ? suggestion.value : this.suggestion),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
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
  bool operator ==(Object other) {
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
class MessageDto {
  const MessageDto({
    required this.id,
    required this.title,
    required this.content,
    this.inquiryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  static const toJsonFactory = _$MessageDtoToJson;
  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'inquiryId')
  final String? inquiryId;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$MessageDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MessageDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.inquiryId, inquiryId) ||
                const DeepCollectionEquality()
                    .equals(other.inquiryId, inquiryId)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(inquiryId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $MessageDtoExtension on MessageDto {
  MessageDto copyWith(
      {String? id,
      String? title,
      String? content,
      String? inquiryId,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return MessageDto(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        inquiryId: inquiryId ?? this.inquiryId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  MessageDto copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? title,
      Wrapped<String>? content,
      Wrapped<String?>? inquiryId,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return MessageDto(
        id: (id != null ? id.value : this.id),
        title: (title != null ? title.value : this.title),
        content: (content != null ? content.value : this.content),
        inquiryId: (inquiryId != null ? inquiryId.value : this.inquiryId),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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

String? unitTypeNullableToJson(enums.UnitType? unitType) {
  return unitType?.value;
}

String? unitTypeToJson(enums.UnitType unitType) {
  return unitType.value;
}

enums.UnitType unitTypeFromJson(
  Object? unitType, [
  enums.UnitType? defaultValue,
]) {
  return enums.UnitType.values.firstWhereOrNull((e) => e.value == unitType) ??
      defaultValue ??
      enums.UnitType.swaggerGeneratedUnknown;
}

enums.UnitType? unitTypeNullableFromJson(
  Object? unitType, [
  enums.UnitType? defaultValue,
]) {
  if (unitType == null) {
    return null;
  }
  return enums.UnitType.values.firstWhereOrNull((e) => e.value == unitType) ??
      defaultValue;
}

String unitTypeExplodedListToJson(List<enums.UnitType>? unitType) {
  return unitType?.map((e) => e.value!).join(',') ?? '';
}

List<String> unitTypeListToJson(List<enums.UnitType>? unitType) {
  if (unitType == null) {
    return [];
  }

  return unitType.map((e) => e.value!).toList();
}

List<enums.UnitType> unitTypeListFromJson(
  List? unitType, [
  List<enums.UnitType>? defaultValue,
]) {
  if (unitType == null) {
    return defaultValue ?? [];
  }

  return unitType.map((e) => unitTypeFromJson(e.toString())).toList();
}

List<enums.UnitType>? unitTypeNullableListFromJson(
  List? unitType, [
  List<enums.UnitType>? defaultValue,
]) {
  if (unitType == null) {
    return defaultValue;
  }

  return unitType.map((e) => unitTypeFromJson(e.toString())).toList();
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

String? contractTypeNullableToJson(enums.ContractType? contractType) {
  return contractType?.value;
}

String? contractTypeToJson(enums.ContractType contractType) {
  return contractType.value;
}

enums.ContractType contractTypeFromJson(
  Object? contractType, [
  enums.ContractType? defaultValue,
]) {
  return enums.ContractType.values
          .firstWhereOrNull((e) => e.value == contractType) ??
      defaultValue ??
      enums.ContractType.swaggerGeneratedUnknown;
}

enums.ContractType? contractTypeNullableFromJson(
  Object? contractType, [
  enums.ContractType? defaultValue,
]) {
  if (contractType == null) {
    return null;
  }
  return enums.ContractType.values
          .firstWhereOrNull((e) => e.value == contractType) ??
      defaultValue;
}

String contractTypeExplodedListToJson(List<enums.ContractType>? contractType) {
  return contractType?.map((e) => e.value!).join(',') ?? '';
}

List<String> contractTypeListToJson(List<enums.ContractType>? contractType) {
  if (contractType == null) {
    return [];
  }

  return contractType.map((e) => e.value!).toList();
}

List<enums.ContractType> contractTypeListFromJson(
  List? contractType, [
  List<enums.ContractType>? defaultValue,
]) {
  if (contractType == null) {
    return defaultValue ?? [];
  }

  return contractType.map((e) => contractTypeFromJson(e.toString())).toList();
}

List<enums.ContractType>? contractTypeNullableListFromJson(
  List? contractType, [
  List<enums.ContractType>? defaultValue,
]) {
  if (contractType == null) {
    return defaultValue;
  }

  return contractType.map((e) => contractTypeFromJson(e.toString())).toList();
}

String? inquiryStatusNullableToJson(enums.InquiryStatus? inquiryStatus) {
  return inquiryStatus?.value;
}

String? inquiryStatusToJson(enums.InquiryStatus inquiryStatus) {
  return inquiryStatus.value;
}

enums.InquiryStatus inquiryStatusFromJson(
  Object? inquiryStatus, [
  enums.InquiryStatus? defaultValue,
]) {
  return enums.InquiryStatus.values
          .firstWhereOrNull((e) => e.value == inquiryStatus) ??
      defaultValue ??
      enums.InquiryStatus.swaggerGeneratedUnknown;
}

enums.InquiryStatus? inquiryStatusNullableFromJson(
  Object? inquiryStatus, [
  enums.InquiryStatus? defaultValue,
]) {
  if (inquiryStatus == null) {
    return null;
  }
  return enums.InquiryStatus.values
          .firstWhereOrNull((e) => e.value == inquiryStatus) ??
      defaultValue;
}

String inquiryStatusExplodedListToJson(
    List<enums.InquiryStatus>? inquiryStatus) {
  return inquiryStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> inquiryStatusListToJson(List<enums.InquiryStatus>? inquiryStatus) {
  if (inquiryStatus == null) {
    return [];
  }

  return inquiryStatus.map((e) => e.value!).toList();
}

List<enums.InquiryStatus> inquiryStatusListFromJson(
  List? inquiryStatus, [
  List<enums.InquiryStatus>? defaultValue,
]) {
  if (inquiryStatus == null) {
    return defaultValue ?? [];
  }

  return inquiryStatus.map((e) => inquiryStatusFromJson(e.toString())).toList();
}

List<enums.InquiryStatus>? inquiryStatusNullableListFromJson(
  List? inquiryStatus, [
  List<enums.InquiryStatus>? defaultValue,
]) {
  if (inquiryStatus == null) {
    return defaultValue;
  }

  return inquiryStatus.map((e) => inquiryStatusFromJson(e.toString())).toList();
}

String? tenantDtoContactMethodNullableToJson(
    enums.TenantDtoContactMethod? tenantDtoContactMethod) {
  return tenantDtoContactMethod?.value;
}

String? tenantDtoContactMethodToJson(
    enums.TenantDtoContactMethod tenantDtoContactMethod) {
  return tenantDtoContactMethod.value;
}

enums.TenantDtoContactMethod tenantDtoContactMethodFromJson(
  Object? tenantDtoContactMethod, [
  enums.TenantDtoContactMethod? defaultValue,
]) {
  return enums.TenantDtoContactMethod.values
          .firstWhereOrNull((e) => e.value == tenantDtoContactMethod) ??
      defaultValue ??
      enums.TenantDtoContactMethod.swaggerGeneratedUnknown;
}

enums.TenantDtoContactMethod? tenantDtoContactMethodNullableFromJson(
  Object? tenantDtoContactMethod, [
  enums.TenantDtoContactMethod? defaultValue,
]) {
  if (tenantDtoContactMethod == null) {
    return null;
  }
  return enums.TenantDtoContactMethod.values
          .firstWhereOrNull((e) => e.value == tenantDtoContactMethod) ??
      defaultValue;
}

String tenantDtoContactMethodExplodedListToJson(
    List<enums.TenantDtoContactMethod>? tenantDtoContactMethod) {
  return tenantDtoContactMethod?.map((e) => e.value!).join(',') ?? '';
}

List<String> tenantDtoContactMethodListToJson(
    List<enums.TenantDtoContactMethod>? tenantDtoContactMethod) {
  if (tenantDtoContactMethod == null) {
    return [];
  }

  return tenantDtoContactMethod.map((e) => e.value!).toList();
}

List<enums.TenantDtoContactMethod> tenantDtoContactMethodListFromJson(
  List? tenantDtoContactMethod, [
  List<enums.TenantDtoContactMethod>? defaultValue,
]) {
  if (tenantDtoContactMethod == null) {
    return defaultValue ?? [];
  }

  return tenantDtoContactMethod
      .map((e) => tenantDtoContactMethodFromJson(e.toString()))
      .toList();
}

List<enums.TenantDtoContactMethod>? tenantDtoContactMethodNullableListFromJson(
  List? tenantDtoContactMethod, [
  List<enums.TenantDtoContactMethod>? defaultValue,
]) {
  if (tenantDtoContactMethod == null) {
    return defaultValue;
  }

  return tenantDtoContactMethod
      .map((e) => tenantDtoContactMethodFromJson(e.toString()))
      .toList();
}

String? resolvedTenantDtoContactMethodNullableToJson(
    enums.ResolvedTenantDtoContactMethod? resolvedTenantDtoContactMethod) {
  return resolvedTenantDtoContactMethod?.value;
}

String? resolvedTenantDtoContactMethodToJson(
    enums.ResolvedTenantDtoContactMethod resolvedTenantDtoContactMethod) {
  return resolvedTenantDtoContactMethod.value;
}

enums.ResolvedTenantDtoContactMethod resolvedTenantDtoContactMethodFromJson(
  Object? resolvedTenantDtoContactMethod, [
  enums.ResolvedTenantDtoContactMethod? defaultValue,
]) {
  return enums.ResolvedTenantDtoContactMethod.values
          .firstWhereOrNull((e) => e.value == resolvedTenantDtoContactMethod) ??
      defaultValue ??
      enums.ResolvedTenantDtoContactMethod.swaggerGeneratedUnknown;
}

enums.ResolvedTenantDtoContactMethod?
    resolvedTenantDtoContactMethodNullableFromJson(
  Object? resolvedTenantDtoContactMethod, [
  enums.ResolvedTenantDtoContactMethod? defaultValue,
]) {
  if (resolvedTenantDtoContactMethod == null) {
    return null;
  }
  return enums.ResolvedTenantDtoContactMethod.values
          .firstWhereOrNull((e) => e.value == resolvedTenantDtoContactMethod) ??
      defaultValue;
}

String resolvedTenantDtoContactMethodExplodedListToJson(
    List<enums.ResolvedTenantDtoContactMethod>?
        resolvedTenantDtoContactMethod) {
  return resolvedTenantDtoContactMethod?.map((e) => e.value!).join(',') ?? '';
}

List<String> resolvedTenantDtoContactMethodListToJson(
    List<enums.ResolvedTenantDtoContactMethod>?
        resolvedTenantDtoContactMethod) {
  if (resolvedTenantDtoContactMethod == null) {
    return [];
  }

  return resolvedTenantDtoContactMethod.map((e) => e.value!).toList();
}

List<enums.ResolvedTenantDtoContactMethod>
    resolvedTenantDtoContactMethodListFromJson(
  List? resolvedTenantDtoContactMethod, [
  List<enums.ResolvedTenantDtoContactMethod>? defaultValue,
]) {
  if (resolvedTenantDtoContactMethod == null) {
    return defaultValue ?? [];
  }

  return resolvedTenantDtoContactMethod
      .map((e) => resolvedTenantDtoContactMethodFromJson(e.toString()))
      .toList();
}

List<enums.ResolvedTenantDtoContactMethod>?
    resolvedTenantDtoContactMethodNullableListFromJson(
  List? resolvedTenantDtoContactMethod, [
  List<enums.ResolvedTenantDtoContactMethod>? defaultValue,
]) {
  if (resolvedTenantDtoContactMethod == null) {
    return defaultValue;
  }

  return resolvedTenantDtoContactMethod
      .map((e) => resolvedTenantDtoContactMethodFromJson(e.toString()))
      .toList();
}

String? salutationNullableToJson(enums.Salutation? salutation) {
  return salutation?.value;
}

String? salutationToJson(enums.Salutation salutation) {
  return salutation.value;
}

enums.Salutation salutationFromJson(
  Object? salutation, [
  enums.Salutation? defaultValue,
]) {
  return enums.Salutation.values
          .firstWhereOrNull((e) => e.value == salutation) ??
      defaultValue ??
      enums.Salutation.swaggerGeneratedUnknown;
}

enums.Salutation? salutationNullableFromJson(
  Object? salutation, [
  enums.Salutation? defaultValue,
]) {
  if (salutation == null) {
    return null;
  }
  return enums.Salutation.values
          .firstWhereOrNull((e) => e.value == salutation) ??
      defaultValue;
}

String salutationExplodedListToJson(List<enums.Salutation>? salutation) {
  return salutation?.map((e) => e.value!).join(',') ?? '';
}

List<String> salutationListToJson(List<enums.Salutation>? salutation) {
  if (salutation == null) {
    return [];
  }

  return salutation.map((e) => e.value!).toList();
}

List<enums.Salutation> salutationListFromJson(
  List? salutation, [
  List<enums.Salutation>? defaultValue,
]) {
  if (salutation == null) {
    return defaultValue ?? [];
  }

  return salutation.map((e) => salutationFromJson(e.toString())).toList();
}

List<enums.Salutation>? salutationNullableListFromJson(
  List? salutation, [
  List<enums.Salutation>? defaultValue,
]) {
  if (salutation == null) {
    return defaultValue;
  }

  return salutation.map((e) => salutationFromJson(e.toString())).toList();
}

String? contactMethodNullableToJson(enums.ContactMethod? contactMethod) {
  return contactMethod?.value;
}

String? contactMethodToJson(enums.ContactMethod contactMethod) {
  return contactMethod.value;
}

enums.ContactMethod contactMethodFromJson(
  Object? contactMethod, [
  enums.ContactMethod? defaultValue,
]) {
  return enums.ContactMethod.values
          .firstWhereOrNull((e) => e.value == contactMethod) ??
      defaultValue ??
      enums.ContactMethod.swaggerGeneratedUnknown;
}

enums.ContactMethod? contactMethodNullableFromJson(
  Object? contactMethod, [
  enums.ContactMethod? defaultValue,
]) {
  if (contactMethod == null) {
    return null;
  }
  return enums.ContactMethod.values
          .firstWhereOrNull((e) => e.value == contactMethod) ??
      defaultValue;
}

String contactMethodExplodedListToJson(
    List<enums.ContactMethod>? contactMethod) {
  return contactMethod?.map((e) => e.value!).join(',') ?? '';
}

List<String> contactMethodListToJson(List<enums.ContactMethod>? contactMethod) {
  if (contactMethod == null) {
    return [];
  }

  return contactMethod.map((e) => e.value!).toList();
}

List<enums.ContactMethod> contactMethodListFromJson(
  List? contactMethod, [
  List<enums.ContactMethod>? defaultValue,
]) {
  if (contactMethod == null) {
    return defaultValue ?? [];
  }

  return contactMethod.map((e) => contactMethodFromJson(e.toString())).toList();
}

List<enums.ContactMethod>? contactMethodNullableListFromJson(
  List? contactMethod, [
  List<enums.ContactMethod>? defaultValue,
]) {
  if (contactMethod == null) {
    return defaultValue;
  }

  return contactMethod.map((e) => contactMethodFromJson(e.toString())).toList();
}

String? tenantProfileDtoContactMethodNullableToJson(
    enums.TenantProfileDtoContactMethod? tenantProfileDtoContactMethod) {
  return tenantProfileDtoContactMethod?.value;
}

String? tenantProfileDtoContactMethodToJson(
    enums.TenantProfileDtoContactMethod tenantProfileDtoContactMethod) {
  return tenantProfileDtoContactMethod.value;
}

enums.TenantProfileDtoContactMethod tenantProfileDtoContactMethodFromJson(
  Object? tenantProfileDtoContactMethod, [
  enums.TenantProfileDtoContactMethod? defaultValue,
]) {
  return enums.TenantProfileDtoContactMethod.values
          .firstWhereOrNull((e) => e.value == tenantProfileDtoContactMethod) ??
      defaultValue ??
      enums.TenantProfileDtoContactMethod.swaggerGeneratedUnknown;
}

enums.TenantProfileDtoContactMethod?
    tenantProfileDtoContactMethodNullableFromJson(
  Object? tenantProfileDtoContactMethod, [
  enums.TenantProfileDtoContactMethod? defaultValue,
]) {
  if (tenantProfileDtoContactMethod == null) {
    return null;
  }
  return enums.TenantProfileDtoContactMethod.values
          .firstWhereOrNull((e) => e.value == tenantProfileDtoContactMethod) ??
      defaultValue;
}

String tenantProfileDtoContactMethodExplodedListToJson(
    List<enums.TenantProfileDtoContactMethod>? tenantProfileDtoContactMethod) {
  return tenantProfileDtoContactMethod?.map((e) => e.value!).join(',') ?? '';
}

List<String> tenantProfileDtoContactMethodListToJson(
    List<enums.TenantProfileDtoContactMethod>? tenantProfileDtoContactMethod) {
  if (tenantProfileDtoContactMethod == null) {
    return [];
  }

  return tenantProfileDtoContactMethod.map((e) => e.value!).toList();
}

List<enums.TenantProfileDtoContactMethod>
    tenantProfileDtoContactMethodListFromJson(
  List? tenantProfileDtoContactMethod, [
  List<enums.TenantProfileDtoContactMethod>? defaultValue,
]) {
  if (tenantProfileDtoContactMethod == null) {
    return defaultValue ?? [];
  }

  return tenantProfileDtoContactMethod
      .map((e) => tenantProfileDtoContactMethodFromJson(e.toString()))
      .toList();
}

List<enums.TenantProfileDtoContactMethod>?
    tenantProfileDtoContactMethodNullableListFromJson(
  List? tenantProfileDtoContactMethod, [
  List<enums.TenantProfileDtoContactMethod>? defaultValue,
]) {
  if (tenantProfileDtoContactMethod == null) {
    return defaultValue;
  }

  return tenantProfileDtoContactMethod
      .map((e) => tenantProfileDtoContactMethodFromJson(e.toString()))
      .toList();
}

String? taskStatusNullableToJson(enums.TaskStatus? taskStatus) {
  return taskStatus?.value;
}

String? taskStatusToJson(enums.TaskStatus taskStatus) {
  return taskStatus.value;
}

enums.TaskStatus taskStatusFromJson(
  Object? taskStatus, [
  enums.TaskStatus? defaultValue,
]) {
  return enums.TaskStatus.values
          .firstWhereOrNull((e) => e.value == taskStatus) ??
      defaultValue ??
      enums.TaskStatus.swaggerGeneratedUnknown;
}

enums.TaskStatus? taskStatusNullableFromJson(
  Object? taskStatus, [
  enums.TaskStatus? defaultValue,
]) {
  if (taskStatus == null) {
    return null;
  }
  return enums.TaskStatus.values
          .firstWhereOrNull((e) => e.value == taskStatus) ??
      defaultValue;
}

String taskStatusExplodedListToJson(List<enums.TaskStatus>? taskStatus) {
  return taskStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> taskStatusListToJson(List<enums.TaskStatus>? taskStatus) {
  if (taskStatus == null) {
    return [];
  }

  return taskStatus.map((e) => e.value!).toList();
}

List<enums.TaskStatus> taskStatusListFromJson(
  List? taskStatus, [
  List<enums.TaskStatus>? defaultValue,
]) {
  if (taskStatus == null) {
    return defaultValue ?? [];
  }

  return taskStatus.map((e) => taskStatusFromJson(e.toString())).toList();
}

List<enums.TaskStatus>? taskStatusNullableListFromJson(
  List? taskStatus, [
  List<enums.TaskStatus>? defaultValue,
]) {
  if (taskStatus == null) {
    return defaultValue;
  }

  return taskStatus.map((e) => taskStatusFromJson(e.toString())).toList();
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

String? taskPriorityNullableToJson(enums.TaskPriority? taskPriority) {
  return taskPriority?.value;
}

String? taskPriorityToJson(enums.TaskPriority taskPriority) {
  return taskPriority.value;
}

enums.TaskPriority taskPriorityFromJson(
  Object? taskPriority, [
  enums.TaskPriority? defaultValue,
]) {
  return enums.TaskPriority.values
          .firstWhereOrNull((e) => e.value == taskPriority) ??
      defaultValue ??
      enums.TaskPriority.swaggerGeneratedUnknown;
}

enums.TaskPriority? taskPriorityNullableFromJson(
  Object? taskPriority, [
  enums.TaskPriority? defaultValue,
]) {
  if (taskPriority == null) {
    return null;
  }
  return enums.TaskPriority.values
          .firstWhereOrNull((e) => e.value == taskPriority) ??
      defaultValue;
}

String taskPriorityExplodedListToJson(List<enums.TaskPriority>? taskPriority) {
  return taskPriority?.map((e) => e.value!).join(',') ?? '';
}

List<String> taskPriorityListToJson(List<enums.TaskPriority>? taskPriority) {
  if (taskPriority == null) {
    return [];
  }

  return taskPriority.map((e) => e.value!).toList();
}

List<enums.TaskPriority> taskPriorityListFromJson(
  List? taskPriority, [
  List<enums.TaskPriority>? defaultValue,
]) {
  if (taskPriority == null) {
    return defaultValue ?? [];
  }

  return taskPriority.map((e) => taskPriorityFromJson(e.toString())).toList();
}

List<enums.TaskPriority>? taskPriorityNullableListFromJson(
  List? taskPriority, [
  List<enums.TaskPriority>? defaultValue,
]) {
  if (taskPriority == null) {
    return defaultValue;
  }

  return taskPriority.map((e) => taskPriorityFromJson(e.toString())).toList();
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

String? documentTypeNullableToJson(enums.DocumentType? documentType) {
  return documentType?.value;
}

String? documentTypeToJson(enums.DocumentType documentType) {
  return documentType.value;
}

enums.DocumentType documentTypeFromJson(
  Object? documentType, [
  enums.DocumentType? defaultValue,
]) {
  return enums.DocumentType.values
          .firstWhereOrNull((e) => e.value == documentType) ??
      defaultValue ??
      enums.DocumentType.swaggerGeneratedUnknown;
}

enums.DocumentType? documentTypeNullableFromJson(
  Object? documentType, [
  enums.DocumentType? defaultValue,
]) {
  if (documentType == null) {
    return null;
  }
  return enums.DocumentType.values
          .firstWhereOrNull((e) => e.value == documentType) ??
      defaultValue;
}

String documentTypeExplodedListToJson(List<enums.DocumentType>? documentType) {
  return documentType?.map((e) => e.value!).join(',') ?? '';
}

List<String> documentTypeListToJson(List<enums.DocumentType>? documentType) {
  if (documentType == null) {
    return [];
  }

  return documentType.map((e) => e.value!).toList();
}

List<enums.DocumentType> documentTypeListFromJson(
  List? documentType, [
  List<enums.DocumentType>? defaultValue,
]) {
  if (documentType == null) {
    return defaultValue ?? [];
  }

  return documentType.map((e) => documentTypeFromJson(e.toString())).toList();
}

List<enums.DocumentType>? documentTypeNullableListFromJson(
  List? documentType, [
  List<enums.DocumentType>? defaultValue,
]) {
  if (documentType == null) {
    return defaultValue;
  }

  return documentType.map((e) => documentTypeFromJson(e.toString())).toList();
}

String? inquiryTypeNullableToJson(enums.InquiryType? inquiryType) {
  return inquiryType?.value;
}

String? inquiryTypeToJson(enums.InquiryType inquiryType) {
  return inquiryType.value;
}

enums.InquiryType inquiryTypeFromJson(
  Object? inquiryType, [
  enums.InquiryType? defaultValue,
]) {
  return enums.InquiryType.values
          .firstWhereOrNull((e) => e.value == inquiryType) ??
      defaultValue ??
      enums.InquiryType.swaggerGeneratedUnknown;
}

enums.InquiryType? inquiryTypeNullableFromJson(
  Object? inquiryType, [
  enums.InquiryType? defaultValue,
]) {
  if (inquiryType == null) {
    return null;
  }
  return enums.InquiryType.values
          .firstWhereOrNull((e) => e.value == inquiryType) ??
      defaultValue;
}

String inquiryTypeExplodedListToJson(List<enums.InquiryType>? inquiryType) {
  return inquiryType?.map((e) => e.value!).join(',') ?? '';
}

List<String> inquiryTypeListToJson(List<enums.InquiryType>? inquiryType) {
  if (inquiryType == null) {
    return [];
  }

  return inquiryType.map((e) => e.value!).toList();
}

List<enums.InquiryType> inquiryTypeListFromJson(
  List? inquiryType, [
  List<enums.InquiryType>? defaultValue,
]) {
  if (inquiryType == null) {
    return defaultValue ?? [];
  }

  return inquiryType.map((e) => inquiryTypeFromJson(e.toString())).toList();
}

List<enums.InquiryType>? inquiryTypeNullableListFromJson(
  List? inquiryType, [
  List<enums.InquiryType>? defaultValue,
]) {
  if (inquiryType == null) {
    return defaultValue;
  }

  return inquiryType.map((e) => inquiryTypeFromJson(e.toString())).toList();
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
