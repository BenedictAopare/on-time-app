import XCTest
@testable import OnTimeApp

final class OnTimeAppTests: XCTestCase {
    func testSampleRemindersNotEmpty() {
        let vm = ContentViewModel()
        XCTAssertFalse(vm.reminders.isEmpty)
    }
}
