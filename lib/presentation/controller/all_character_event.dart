part of 'all_character_bloc.dart';

abstract class AllCharacterEvent extends Equatable {
  const AllCharacterEvent();
  @override
  List<Object> get props => [];
}

class GetAllCharactersEvent extends AllCharacterEvent {
  const GetAllCharactersEvent();


}
