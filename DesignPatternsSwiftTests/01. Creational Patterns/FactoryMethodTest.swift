import XCTest
@testable import DesignPatternsSwift

class FactoryMethodTest: XCTestCase {
    func testFactoryMethod() {
        let emailManager = EmailNotificationManager()
        let emailMsg = sendUnknownNotification(manager: emailManager, msg: "Test Email Notification")
        XCTAssertEqual(emailMsg, "Email: Test Email Notification")

        let smsManager = SMSNotificationManager()
        let smsMsg = sendUnknownNotification(manager: smsManager, msg: "Test Sms Notification")
        XCTAssertEqual(smsMsg, "SMS: Test Sms Notification")
    }

    /// The function can be called with any NotificationManager and will send the notification using the appropriate method.
    private func sendUnknownNotification(manager: NotificationManager, msg: String) -> String {
        return manager.sendNotification(msg)
    }
}
