class Task{
 String id,title,description;
 int date;
 bool isChecked;
 Task({this.id='',this.isChecked=false,required this.title,
  required this.description,required this.date,});


 Task.formJson(Map<String,dynamic>json):this(
     id: json['id'] as String,
     title: json['title'] as String,
     date: json['date'] as int,
     description: json['description'] as String,
     isChecked: json['isChecked'] as bool
 );

Map<String,dynamic> toJson(){
  return{
   "id":id,
   "title":title,
   "date":date,
   "description": description,
   "isChecked": isChecked
  };
 }
}