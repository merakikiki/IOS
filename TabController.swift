import UIKit


class TabController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
            let firstViewController = ViewController()
            let secondViewController = ViewController2()

        viewControllers = [firstViewController, secondViewController]

        setTabBarItem(for: firstViewController, title: "Home", symbolName: "house")
                setTabBarItem(for: secondViewController, title: "Profile", symbolName: "person")
            }
    private func setTabBarItem(for viewController: UIViewController, title: String, symbolName: String) {
            let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 22, weight: .regular)
            let image = UIImage(systemName: symbolName, withConfiguration: symbolConfiguration)
            viewController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
        }
    }
