import Foundation

public struct Reminder: Identifiable, Codable, Equatable {
    public let id: UUID
    public var title: String
    public var dueDate: Date
    public var source: String?

    public init(id: UUID = UUID(), title: String, dueDate: Date, source: String? = nil) {
        self.id = id
        self.title = title
        self.dueDate = dueDate
        self.source = source
    }

    public var dueDescription: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: dueDate, relativeTo: Date())
    }
}
