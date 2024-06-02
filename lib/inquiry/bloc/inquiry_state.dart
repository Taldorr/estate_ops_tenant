// coverage:ignore-file

part of 'inquiry_bloc.dart';

class InquiryState extends Equatable {
  final List<InquiryModel> inquirys;
  final InquiryModel? current;
  final bool isLoading;
  const InquiryState(
      {this.inquirys = const [], this.isLoading = false, this.current});

  @override
  List<Object?> get props => [inquirys, isLoading, current];

  InquiryState copyWith(
      {List<InquiryModel>? inquirys, bool? isLoading, InquiryModel? current}) {
    return InquiryState(
      current: current ?? this.current,
      inquirys: inquirys ?? this.inquirys,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  InquiryState resetCurrent() {
    return InquiryState(
      current: null,
      inquirys: inquirys,
      isLoading: isLoading,
    );
  }
}

/// The initial state of InquiryState
class InquiryInitial extends InquiryState {
  const InquiryInitial() : super();
}
