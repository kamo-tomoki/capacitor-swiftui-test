import Foundation

@objc public class SwiftUITest: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
