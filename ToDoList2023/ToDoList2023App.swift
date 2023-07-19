
import SwiftUI

@main
struct ToDoList2023App: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            //ContentView(toDoItems: .constant([]))
            HomeView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
