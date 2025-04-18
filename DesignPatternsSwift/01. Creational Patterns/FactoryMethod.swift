protocol Notification {
    func send(msg: String) -> String
}

protocol NotificationManager {
    func createNotification() -> Notification
    func sendNotification(_ msg: String) -> String
}

extension NotificationManager {
    func sendNotification(_ msg: String) -> String {
        let notification = createNotification()
        return notification.send(msg: msg)
    }
}

class EmailNotification: Notification {
    func send(msg: String) -> String {
        let result = "Email: \(msg)"
        print(result)
        return result
    }
}

class SMSNotification: Notification {
    func send(msg: String) -> String {
        let result = "SMS: \(msg)"
        print(result)
        return result
    }
}

class EmailNotificationManager: NotificationManager {
    func createNotification() -> Notification {
        return EmailNotification()
    }
}

class SMSNotificationManager: NotificationManager {
    func createNotification() -> Notification {
        return SMSNotification()
    }
}
