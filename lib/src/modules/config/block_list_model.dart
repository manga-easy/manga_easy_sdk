class BlockListModel {
  List<String> blockList;
  List<String> over18List;

  BlockListModel({
    required this.blockList,
    required this.over18List,
  });

  BlockListModel.fromMap(Map<String, dynamic> map)
      : blockList = (map['block_list'] as List)
            .map<String>((e) => e.toString())
            .toList(),
        over18List =
            map['over_18_list'].map<String>((e) => e.toString()).toList();

  Map<String, dynamic> toJson() {
    return {
      'block_list': blockList,
      'over_18_list': over18List,
    };
  }

  BlockListModel.offline()
      : blockList = [],
        over18List = [];
}
