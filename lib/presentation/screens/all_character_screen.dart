import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_character_app/presentation/component/theme_icon.dart';
import 'package:show_character_app/presentation/controller/all_character_bloc.dart';
import '../../core/service_locator.dart';
import '../component/character_list.dart';

class AllCharacterScreen extends StatelessWidget {
  const AllCharacterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return AllCharacterBloc(sl())..add(GetAllCharactersEvent());
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 13),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rick & Morty",
                      style: GoogleFonts.aclonica(
                          textStyle: const TextStyle(fontSize: 35),
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                   ThemeIcon(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 320,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "All Characters",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                    width: 310,
                    child: Divider(
                      height: 6,
                      color: Theme.of(context).colorScheme.primary,
                    )),
                const SizedBox(
                  height: 100,
                ),
                const CharacterList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
