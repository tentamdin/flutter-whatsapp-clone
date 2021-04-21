class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final String callStatus;
  final String storyStatus;

  ChatModel(
      {this.name,
      this.message,
      this.time,
      this.avatarUrl,
      this.callStatus,
      this.storyStatus});
}

List<ChatModel> dummyData = [
  ChatModel(
    name: "Pawan Kumar",
    message: "Hey Flutter, You are so amazing !",
    time: "7:30 PM",
    callStatus: "Outgoing",
    storyStatus: "20m ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Harvey Spectre",
    message: "Hey I have hacked whatsapp!",
    time: "3:30 PM",
    callStatus: "Outgoing",
    storyStatus: "1h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Mike Ross",
    message: "Wassup !",
    time: "10:43 AM",
    callStatus: "Incoming",
    storyStatus: "2h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Rachel",
    message: "I'm good!",
    time: "Yesterday",
    callStatus: "Outgoing",
    storyStatus: "5h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Barry Allen",
    message: "I'm the fastest man alive!",
    time: "Saturday",
    callStatus: "Incoming",
    storyStatus: "5h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Joe West",
    message: "Hey Flutter, You are so cool !",
    time: "Friday",
    callStatus: "Missed",
    storyStatus: "8h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Pawan Kumar",
    message: "Hey Flutter, You are so amazing !",
    time: "Wednesday",
    callStatus: "Outgoing",
    storyStatus: "11h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Harvey Spectre",
    message: "Hey I have hacked whatsapp!",
    time: "Wednesday",
    callStatus: "Incoming",
    storyStatus: "12h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Mike Ross",
    message: "Wassup !",
    time: "Tuesday",
    callStatus: "Missed",
    storyStatus: "15h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Rachel",
    message: "I'm good!",
    time: "Monday",
    callStatus: "Missed",
    storyStatus: "20h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Barry Allen",
    message: "I'm the fastest man alive!",
    time: "10/04/21",
    callStatus: "Outgoing",
    storyStatus: "21h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Joe West",
    message: "Hey Flutter, You are so cool !",
    time: "08/04/21",
    callStatus: "Incoming",
    storyStatus: "23h ago",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
];
