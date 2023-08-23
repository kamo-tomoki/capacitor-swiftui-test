import UIKit
import SwiftUI
import Capacitor

class TestViewController: UIViewController {
    var capacitorCall: CAPPluginCall
    
    init(capacitorCall: CAPPluginCall) {
        self.capacitorCall = capacitorCall
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        extractView()
    }
    
    func extractView(){
        let hostView = UIHostingController(rootView: TestView())
        hostView.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(hostView.view)
        
        let constraints = [
            
            hostView.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostView.view!.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostView.view!.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            hostView.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            hostView.view.widthAnchor.constraint(equalTo: view.widthAnchor),
        ]
        
        self.view.addConstraints(constraints)
        
        self.capacitorCall.resolve()
    }
}
