import 'package:show_character_app/domain/entities/character.dart';
import '../entities/character_details.dart';

abstract class BaseAllCharacterRepo {

  Future<List<Character>> getAllCharacter();

  Future<CharacterDetails> getAllCharacterDetails(int characterId);
}
