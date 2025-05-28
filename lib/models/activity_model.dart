class ActivityModel {
  final String name;
  final String assetName;

  const ActivityModel({required this.name, required this.assetName});

  static final List<ActivityModel> dummyList = [
    ActivityModel(name: 'Sports', assetName: 'activity_1.jpeg'),
    ActivityModel(name: 'Avishkar', assetName: 'activity_2.png'),
    ActivityModel(name: 'Ethnic', assetName: 'activity_3.jpeg'),
    ActivityModel(name: 'Onam', assetName: 'activity_4.jpeg'),
    ActivityModel(name: 'X\'mas', assetName: 'activity_5.jpeg'),
  ];
}
