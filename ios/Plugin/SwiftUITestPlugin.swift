import Foundation
import Capacitor

@objc(SwiftUITestPlugin)
public class SwiftUITestPlugin: CAPPlugin {
    @objc func show(_ call: CAPPluginCall) {
        // UIの更新処理はメインスレッドで行う必要アリ
        DispatchQueue.main.async {
            let testViewController = TestViewController(capacitorCall: call)
            self.bridge?.viewController?.present(testViewController, animated: true)
        }
    }
}
