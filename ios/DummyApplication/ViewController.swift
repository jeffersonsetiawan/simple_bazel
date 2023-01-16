import UIKit

final class ViewController: UIViewController {
    private let button: UIButton = {
        let view = UIButton()
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Click Me", for: .normal)
        view.accessibilityIdentifier = "button_click_me"
        
        return view
    }()
    
    private let text: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Hello World"
        view.accessibilityIdentifier = "title_text"
        
        return view
    }()
    
    private let image: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "toped_change_phone_intro"))
        return imageView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        view.addSubview(button)
        view.addSubview(text)
        view.addSubview(image)
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            image.widthAnchor.constraint(equalToConstant: 40),
            image.heightAnchor.constraint(equalToConstant: 40),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            text.topAnchor.constraint(equalTo: view.topAnchor, constant: 24),
            text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            text.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 24),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 20),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

import Combine
import GroupActivities

@available(iOS 13, *)
internal var bag = Set<AnyCancellable>()

@available(iOS 15, *)
internal struct GroupActivityExample: GroupActivity {
    internal static let activityIdentifier = "com.example.GroupActivityExample"
    internal var metadata: GroupActivityMetadata {
        var metadata = GroupActivityMetadata()
        metadata.type = .generic
        metadata.title = NSLocalizedString("GroupActivityExample", comment: "")
        metadata.subtitle = NSLocalizedString("Hello World", comment: "")
        metadata.previewImage = UIImage(named: "AppIcon")?.cgImage
        return metadata
    }
    
    static func test() {
        Task {
            do {
                _ = try await GroupActivityExample().activate()
            } catch {
                print("error", error.localizedDescription)
            }
        }
    }
}
