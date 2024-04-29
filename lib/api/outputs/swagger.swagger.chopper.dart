// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = Swagger;

  @override
  Future<Response<dynamic>> _get() {
    final Uri $url = Uri.parse('/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _bugPost({required CreateBugDto? body}) {
    final Uri $url = Uri.parse('/bug');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<UnitDto>>> _unitsGet() {
    final Uri $url = Uri.parse('/units');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<UnitDto>, UnitDto>($request);
  }

  @override
  Future<Response<UnitDto>> _unitsPost({required CreateUnitDto? body}) {
    final Uri $url = Uri.parse('/units');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UnitDto, UnitDto>($request);
  }

  @override
  Future<Response<UpdateUnitDto>> _unitsPut({required UpdateUnitDto? body}) {
    final Uri $url = Uri.parse('/units');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateUnitDto, UpdateUnitDto>($request);
  }

  @override
  Future<Response<dynamic>> _unitsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/units/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _unitsIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/units/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _unitsQueryPost({required QueryDto? body}) {
    final Uri $url = Uri.parse('/units/query');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AccountInfoDto>> _authGet() {
    final Uri $url = Uri.parse('/auth');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AccountInfoDto, AccountInfoDto>($request);
  }

  @override
  Future<Response<List<TenantDto>>> _tenantsGet() {
    final Uri $url = Uri.parse('/tenants');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<TenantDto>, TenantDto>($request);
  }

  @override
  Future<Response<TenantDto>> _tenantsPost({required CreateTenantDto? body}) {
    final Uri $url = Uri.parse('/tenants');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TenantDto, TenantDto>($request);
  }

  @override
  Future<Response<UpdateTenantDto>> _tenantsPut(
      {required UpdateTenantDto? body}) {
    final Uri $url = Uri.parse('/tenants');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateTenantDto, UpdateTenantDto>($request);
  }

  @override
  Future<Response<TenantProfileDto>> _tenantsProfileGet() {
    final Uri $url = Uri.parse('/tenants/profile');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TenantProfileDto, TenantProfileDto>($request);
  }

  @override
  Future<Response<List<ResolvedTenantDto>>> _tenantsFindPost(
      {required FindTenantDto? body}) {
    final Uri $url = Uri.parse('/tenants/find');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ResolvedTenantDto>, ResolvedTenantDto>($request);
  }

  @override
  Future<Response<dynamic>> _tenantsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/tenants/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _tenantsIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/tenants/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _tenantsQueryPost({required QueryDto? body}) {
    final Uri $url = Uri.parse('/tenants/query');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<ComplexDto>>> _complexGet() {
    final Uri $url = Uri.parse('/complex');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ComplexDto>, ComplexDto>($request);
  }

  @override
  Future<Response<ComplexDto>> _complexPost({required CreateComplexDto? body}) {
    final Uri $url = Uri.parse('/complex');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ComplexDto, ComplexDto>($request);
  }

  @override
  Future<Response<UpdateComplexDto>> _complexPut(
      {required UpdateComplexDto? body}) {
    final Uri $url = Uri.parse('/complex');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateComplexDto, UpdateComplexDto>($request);
  }

  @override
  Future<Response<dynamic>> _complexIdGet({required String? id}) {
    final Uri $url = Uri.parse('/complex/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _complexIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/complex/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _complexQueryPost({required QueryDto? body}) {
    final Uri $url = Uri.parse('/complex/query');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<BuildingDto>>> _buildingGet() {
    final Uri $url = Uri.parse('/building');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<BuildingDto>, BuildingDto>($request);
  }

  @override
  Future<Response<BuildingDto>> _buildingPost(
      {required CreateBuildingDto? body}) {
    final Uri $url = Uri.parse('/building');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BuildingDto, BuildingDto>($request);
  }

  @override
  Future<Response<UpdateBuildingDto>> _buildingPut(
      {required UpdateBuildingDto? body}) {
    final Uri $url = Uri.parse('/building');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateBuildingDto, UpdateBuildingDto>($request);
  }

  @override
  Future<Response<dynamic>> _buildingIdGet({required String? id}) {
    final Uri $url = Uri.parse('/building/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _buildingIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/building/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _buildingQueryPost({required QueryDto? body}) {
    final Uri $url = Uri.parse('/building/query');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _buildingAddUnitIdPut({
    required String? id,
    required AddUnitBuildingDto? body,
  }) {
    final Uri $url = Uri.parse('/building/add-unit/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<LeaseDto>>> _leaseGet() {
    final Uri $url = Uri.parse('/lease');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<LeaseDto>, LeaseDto>($request);
  }

  @override
  Future<Response<LeaseDto>> _leasePost({required CreateLeaseDto? body}) {
    final Uri $url = Uri.parse('/lease');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<LeaseDto, LeaseDto>($request);
  }

  @override
  Future<Response<dynamic>> _leaseIdGet({required String? id}) {
    final Uri $url = Uri.parse('/lease/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _leaseIdPut({
    required String? id,
    required UpdateLeaseDto? body,
  }) {
    final Uri $url = Uri.parse('/lease/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _leaseIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/lease/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AttachmentDto>> _attachmentPost(
      {required CreateAttachmentDto? body}) {
    final Uri $url = Uri.parse('/attachment');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AttachmentDto, AttachmentDto>($request);
  }

  @override
  Future<Response<List<AttachmentDto>>> _attachmentGet() {
    final Uri $url = Uri.parse('/attachment');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<AttachmentDto>, AttachmentDto>($request);
  }

  @override
  Future<Response<AttachmentDto>> _attachmentDelete(
      {required DeleteAttachmentDto? body}) {
    final Uri $url = Uri.parse('/attachment');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AttachmentDto, AttachmentDto>($request);
  }

  @override
  Future<Response<dynamic>> _attachmentAvatarGet() {
    final Uri $url = Uri.parse('/attachment/avatar');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _attachmentIdGet({required String? id}) {
    final Uri $url = Uri.parse('/attachment/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _teamGet() {
    final Uri $url = Uri.parse('/team');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<KpiDto>> _teamKpiGet() {
    final Uri $url = Uri.parse('/team/kpi');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<KpiDto, KpiDto>($request);
  }

  @override
  Future<Response<TeamDto>> _teamTeamIdMemberPost({
    required String? teamId,
    required AddTeamMemberDto? body,
  }) {
    final Uri $url = Uri.parse('/team/${teamId}/member');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TeamDto, TeamDto>($request);
  }

  @override
  Future<Response<dynamic>> _teamTeamIdMemberMemberIdDelete({
    required String? teamId,
    required String? memberId,
  }) {
    final Uri $url = Uri.parse('/team/${teamId}/member/${memberId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<TaskDto>>> _taskGet() {
    final Uri $url = Uri.parse('/task');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<TaskDto>, TaskDto>($request);
  }

  @override
  Future<Response<TaskDto>> _taskPost({required CreateTaskDto? body}) {
    final Uri $url = Uri.parse('/task');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TaskDto, TaskDto>($request);
  }

  @override
  Future<Response<UpdateTaskDto>> _taskPut({required UpdateTaskDto? body}) {
    final Uri $url = Uri.parse('/task');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UpdateTaskDto, UpdateTaskDto>($request);
  }

  @override
  Future<Response<List<TaskDto>>> _taskOwnGet() {
    final Uri $url = Uri.parse('/task/own');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<TaskDto>, TaskDto>($request);
  }

  @override
  Future<Response<dynamic>> _taskIdGet({required String? id}) {
    final Uri $url = Uri.parse('/task/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _taskQueryPost({required QueryDto? body}) {
    final Uri $url = Uri.parse('/task/query');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<TaskCommentDto>> _taskCommentPost(
      {required CreateTaskCommentDto? body}) {
    final Uri $url = Uri.parse('/task/comment');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TaskCommentDto, TaskCommentDto>($request);
  }

  @override
  Future<Response<TaskDto>> _taskStatusPut(
      {required UpdateStatusTaskDto? body}) {
    final Uri $url = Uri.parse('/task/status');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TaskDto, TaskDto>($request);
  }

  @override
  Future<Response<dynamic>> _inquiryDocumentPost(
      {required DocumentRequestDto? body}) {
    final Uri $url = Uri.parse('/inquiry/document');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<InquiryDto>> _inquiryPost({required CreateInquiryDto? body}) {
    final Uri $url = Uri.parse('/inquiry');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<InquiryDto, InquiryDto>($request);
  }

  @override
  Future<Response<List<InquiryDto>>> _inquiryGet() {
    final Uri $url = Uri.parse('/inquiry');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<InquiryDto>, InquiryDto>($request);
  }

  @override
  Future<Response<InquiryMessageDto>> _inquiryMessagePost(
      {required CreateInquiryMessageDto? body}) {
    final Uri $url = Uri.parse('/inquiry/message');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<InquiryMessageDto, InquiryMessageDto>($request);
  }

  @override
  Future<Response<dynamic>> _chatbotTestPost() {
    final Uri $url = Uri.parse('/chatbot/test');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _chatbotQueryPost() {
    final Uri $url = Uri.parse('/chatbot/query');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _messagesSendPost({required SendMessageDto? body}) {
    final Uri $url = Uri.parse('/messages/send');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _messagesFcmTokenPut(
      {required UpdateFCMTokenDto? body}) {
    final Uri $url = Uri.parse('/messages/fcm-token');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
