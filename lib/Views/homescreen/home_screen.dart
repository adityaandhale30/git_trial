import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Models/home_tab_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(),
          const SliverToBoxAdapter(child: SizedBox(height: 35)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid.builder(
              itemCount: hometab.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 5 / 7,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, idx) {
                return HomeTabCard(
                  imagePath: hometab[idx].imagePath,
                  name: hometab[idx].name,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return  SliverAppBar(
      stretchTriggerOffset: 200,
      shadowColor: const Color.fromARGB(255, 249, 66, 66),
      shape: const Border(
        bottom: BorderSide(
          color: Color.fromARGB(255, 80, 191, 246),
          width: 5,
        ),
      ),
      floating: true,
      stretch: true,
      backgroundColor: Colors.blueGrey,
      centerTitle: true,
      title: Text(
        "Uni App",
        style: GoogleFonts.roboto(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class HomeTabCard extends StatelessWidget {
  final String imagePath;
  final String name;


  const HomeTabCard({
    super.key,
    required this.imagePath,
    required this.name,
  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 106, 106, 106),
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(0, 6),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(16),
          Text(
            name,
            style:const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color:  Color.fromRGBO(25, 33, 38, 1),
            ),
          ),
        ],
      ),
    );
  }
}
