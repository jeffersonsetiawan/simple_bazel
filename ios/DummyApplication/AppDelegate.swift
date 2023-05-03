import UIKit
import SwiftLibrary
import Pdp

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        fooA()
        window = UIWindow(frame: UIScreen.main.bounds)

        let viewController = ViewController()
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.isTranslucent = false

        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        let model = PdpSecondPriority(
            id: "1", 
            name: "iPhone", 
            price: "20000", 
            campaign: PdpCampaign(campaignId: 1, name: "FlashSale limited")
        )
        print(model.id)
        return true
    }

    func jeff1() {
        print("myname")
    }
}
