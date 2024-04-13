import 'dart:convert';

class NewPoll
{
  final String topic;
  final String statement;
  final bool is_anonymous;
  final String poll_type;
  final List<String> text_options;

  NewPoll({required this.topic,
  required this.statement,
  required this.is_anonymous,
  required this.poll_type,
  required this.text_options});

  Map<String,dynamic> toMap()
  {
    return {
      'topic':topic,
    'statement':statement,
    'is_anonymous':is_anonymous,
    'poll_type':poll_type,
    'text_options':text_options};
  }

  factory NewPoll.toclassObject(Map<String,dynamic> map)
  {
    return NewPoll(
        topic: map['topic'],
        statement: map['statement'],
        is_anonymous: ['is_anonymous'] as bool,
        poll_type: map['String'],
        text_options: List<String>.from(map['text_options']));
  }

  String tojson()
{
  return jsonEncode(toMap());
}

factory NewPoll.tofromjson(String source)
{
  return NewPoll.toclassObject(jsonDecode(source));

}

}