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
            'Choosing MCET was one of the best decisions I made. The college focused on both technical learning and personal growth. I participated in paper presentations, workshops, and coding contests that improved my skills. Industry exposure through guest lectures and internships clarified my career path. Thanks to MCET’s strong academic culture, I post graduated with confidence and a clear vision for my future.',
      ),
      SwipeTestimonail(
        name: 'Aisha Sidhiq',
        bio:
            'MCET provided a platform for growth both academically and socially. Mentorship from experienced faculty and support during projects were invaluable. The college equally focused on soft skills, helping me in interviews and group discussions. Campus placements were well-organized, attracting top companies. Looking back, I see how much MCET shaped my confidence and character, preparing me well for my future career  ',
      ),

      SwipeTestimonail(
        name: 'Lancy Biji',
        bio:
            'MCET shaped me into a confident professional ready for challenges. The placement training was excellent, and mock interviews prepared me well. Beyond academics, the campus encouraged creativity and leadership through clubs and events. Faculty were approachable and motivated us to excel. My time at MCET helped me discover my strengths, build lasting friendships, and created unforgettable memories, making it a truly valuable chapter of my life.',
      ),
      SwipeTestimonail(
        name: 'Muhammed Haja',
        bio:
            'MCET offered more than just a degree it offered direction. Practical learning through labs and real-world projects helped me apply classroom concepts effectively. Seminars, guest lectures, and tech fests kept me industry-ready. The supportive faculty encouraged my ambitions and gave me freedom to explore ideas. The atmosphere was always positive and inspiring. I\'m proud to be an MCET alumnus, shaped by an environment that values growth and innovation.',
      ),
      SwipeTestimonail(
        name: 'Shana Sherafudeen',
        bio:
            'At MCET I found a perfect balance between academics and extracurricular activities. The college encouraged me to challenge myself and step out of my comfort zone. I really enjoyed participating in tech events and project expos that greatly enriched my learning experience. MCET’s strong focus on student growth had a significant impact on my career and confidence. It’s truly a place that nurtures talent and shapes students into skilled professionals.',
      ),
    ];

    candidates.shuffle();
    return candidates;
  }
}
