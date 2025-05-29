import 'dart:math';

class SwipeTestimonail {
  final String name;
  final int distanceInFt;
  final int age;
  final bool isOnline;
  final String bio;
  final List<String> hobbies;

  const SwipeTestimonail({
    required this.name,
    required this.distanceInFt,
    required this.isOnline,
    required this.age,
    required this.bio,
    required this.hobbies,
  });

  static List<String> getAssetPaths() {
    final list = List.generate(
      13,
      (index) => 'assets/profiles/profile_$index.png',
    );
    list.shuffle();
    return list;
  }

  static List<SwipeTestimonail> getCandidates() {
    List<SwipeTestimonail> candidates = [
      SwipeTestimonail(
        name: 'Hannah',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      SwipeTestimonail(
        name: 'Jane',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      SwipeTestimonail(
        name: 'Katie',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      SwipeTestimonail(
        name: 'Emily',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      SwipeTestimonail(
        name: 'Diana',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      SwipeTestimonail(
        name: 'Samantha',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      SwipeTestimonail(
        name: 'Isabella',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      SwipeTestimonail(
        name: 'Ella',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
      SwipeTestimonail(
        name: 'Olivia',
        distanceInFt: Random.secure().nextInt(50) + 100,
        age: Random.secure().nextInt(10) + 25,
        isOnline: Random.secure().nextBool(),
        bio:
            'I\'m a cool person with a lot of hobbies. '
            'I like to hike, read, swim, draw, model, and design. '
            'In my free time, I like to go out and have fun with my friends. '
            'I\'m looking for someone who shares my interests and is'
            ' looking for a serious relationship.',
        hobbies: _getShuffledHobies(),
      ),
    ];

    candidates.shuffle();
    return candidates;
  }

  static List<String> _getShuffledHobies() {
    final hobbies = [
      'Hiking',
      'Reading',
      'Swimming',
      'Drawing',
      'Modeling',
      'Designing',
    ];

    hobbies.shuffle();

    hobbies.removeAt(Random.secure().nextInt(hobbies.length));
    if (Random.secure().nextBool()) {
      hobbies.removeAt(Random.secure().nextInt(hobbies.length));
    }

    return hobbies;
  }
}
