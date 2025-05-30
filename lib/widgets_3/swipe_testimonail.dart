class SwipeTestimonail {
  final String name;
  final String bio;

  const SwipeTestimonail({required this.name, required this.bio});

  static List<String> getAssetPaths() {
    final list = List.generate(
      13,
      (index) => 'assets/profiles/profile_$index.jpg',
    );
    list.shuffle();
    return list;
  }

  static List<SwipeTestimonail> getCandidates() {
    List<SwipeTestimonail> candidates = [
      SwipeTestimonail(
        name: 'Krishnan Unni',
        bio:
            'Choosing MCET was one of the best decisions '
            'I’ve made. The college emphasized both '
            'technical learning and personal growth. '
            'I was encouraged to take part in paper '
            'presentations, workshops, and coding contests, '
            'which enhanced my skills. The industry exposure '
            'I received through guest lectures and internships '
            'gave me clarity on my career path. Thanks to MCET’s '
            'strong academic culture, I graduated with '
            'confidence and a clear vision for the future. ',
      ),
      SwipeTestimonail(
        name: 'Lancy Biji',
        bio:
            'MCET shaped me into a confident professional '
            'ready to take on the world. The placement '
            'training was excellent, and the mock interviews '
            'helped me prepare well. Beyond academics, the '
            'campus environment encouraged creativity and '
            'leadership through clubs and events. Faculty '
            'were approachable and always pushed us to do '
            'our best. My time at MCET helped me discover '
            'my strengths and build lasting friendships, '
            'making it an unforgettable chapter of my life. ',
      ),
      SwipeTestimonail(
        name: 'Aisha Sidhiq',
        bio:
            'MCET provided a platform where I could '
            'grow both academically and socially. '
            'The mentorship from experienced faculty '
            'and the support during project work were '
            'incredibly valuable. The college focused '
            ' equally on soft skills, which helped during '
            'interviews and group discussions. Campus '
            'placements were well-organized, bringing '
            'in top companies. Looking back, I realize '
            ' how much this institution helped shape my '
            'confidence and character. I carry the '
            'lessons from MCET wherever I go. ',
      ),
      SwipeTestimonail(
        name: 'Muhammed Haja',
        bio:
            'MCET offered more than just a degree it '
            'offered a direction. The focus on practical '
            'learning, through labs and real-world '
            'projects, helped me apply classroom concepts '
            'effectively. The seminars, guest lectures, '
            'and tech fests kept me updated with the industry. '
            ' Faculty always supported my ambitions and '
            'gave me the freedom to explore ideas. The '
            'atmosphere was always positive and inspiring, '
            'and I’m proud to be an alumnus of MCET. ',
      ),
      SwipeTestimonail(
        name: 'Shana Sherafudeen',
        bio:
            'At MCET, I found a perfect balance between '
            'academics and extracurriculars. The college '
            'pushed me to challenge myself and step out '
            ' of my comfort zone. I loved being part of '
            'tech events and project expos that added so '
            'much to my learning experience. MCET’s '
            'dedication to student growth made a huge '
            'impact on my career and confidence. It’s a '
            'place that nurtures talent and turns students '
            'into professionals.',
      ),
    ];

    candidates.shuffle();
    return candidates;
  }
}
