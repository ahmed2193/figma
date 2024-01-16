part of 'nursery_detail_bloc.dart';

sealed class NurseryDetailState extends Equatable {
  const NurseryDetailState();
  
  @override
  List<Object> get props => [];
}

final class NurseryDetailInitial extends NurseryDetailState {}
