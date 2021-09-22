class CreateSplitController {
  String eventName = "";

  bool isValid() {
    return eventName.isNotEmpty;
  }

  setEventName(String name) => eventName = name;
}
