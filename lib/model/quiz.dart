const String tableName = 'recent_quiz';
const String columnId = 'id';
const String columnTitle = 'title';
const String columnScore = 'score';

class Quiz {
  const Quiz({
    this.id,
    required this.title,
    required this.score,
  });

   final int? id;
   final String title;
   final double score;


  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      columnTitle: title,
      columnScore: score 
    };

    if(id != null){
      map[columnId] = id;
    }
    return map;
  }
}