import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable{}

class InitialState extends BaseState{
  @override
  List<Object?> get props => [];
}

class LoadingState extends BaseState{
  @override
  List<Object?> get props => [];
}

class ErrorState extends BaseState{
  @override
  List<Object?> get props => [];
}