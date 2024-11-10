// 3. To-Do List App:
// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
// use of for-each loops.

void main() {
  Map<String, TodoItem> todoLists = {};
  TodoItem todoItem = TodoItem();
  todoItem.describtion = "Playing Football at staduim";
  todoItem.dueDate = "Friday - 15/11/2024";
  todoItem.status = false;
  addTodoItem(Item: todoItem, itemName: 'PlayingFootball', todoList: todoLists);
  displayTodoItems(todoList: todoLists);
  TodoItem todoUpdateItem = TodoItem();
  todoUpdateItem.describtion = "Playing Football at staduim";
  todoUpdateItem.dueDate = "Friday - 08/11/2024";
  todoUpdateItem.status = true;
  updateTodoItem(
      itemName: "PlayingFootball",
      todoList: todoLists,
      itemUpdate: todoUpdateItem);
  displayTodoItems(todoList: todoLists);
}

class TodoItem {
  String? describtion;
  String? dueDate;
  bool? status;
}

void addTodoItem(
    {required TodoItem Item,
    required String itemName,
    required Map<String, TodoItem> todoList}) {
  Map<String, TodoItem> todoItem = {itemName: Item};
  todoList.addEntries(todoItem.entries);
}

void removeTodoItem(
    {required String itemName, required Map<String, TodoItem> todoList}) {
  if (todoList.containsKey(itemName)) {
    print("Success remove $itemName");
    todoList.remove(itemName);
  }
}

void updateTodoItem({
  required String itemName,
  required Map<String, TodoItem> todoList,
  required TodoItem itemUpdate,
}) {
  if (todoList.containsKey(itemName)) {
    todoList[itemName] = itemUpdate;
    print("Updated Success");
  }
}

void displayTodoItems({required Map<String, TodoItem> todoList}) {
  todoList.entries.forEach((item) {
    print(item.key);
    print("---------------------");
    print(item.value.describtion);
    print(item.value.dueDate);
    print(item.value.status);
  });
}
