import 'package:show_character_app/domain/entities/character_details.dart';
import 'package:show_character_app/domain/repository/base_all_character_repo.dart';

class GetCharacterDetailsUseCase{
   BaseAllCharacterRepo baseAllCharacterRepo ;
   GetCharacterDetailsUseCase(this.baseAllCharacterRepo);
   Future<List<CharacterDetails>> call(int id)async{
     return await baseAllCharacterRepo.getAllCharacterDetails(id);
   }
 }