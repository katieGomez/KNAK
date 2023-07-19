

import Foundation

public class ToDoItem: Identifiable {

    public var id = UUID()
    public var title : String
    public var isImportant : Bool
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}
