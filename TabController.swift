import UIKit


class TabController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
            let firstViewController = ViewController()
            let secondViewController = ClubsController()
            let thirdViewController = TicketController()

        viewControllers = [firstViewController, secondViewController, thirdViewController]

        setTabBarItem(for: firstViewController, title: "Home", symbolName: "house")
                setTabBarItem(for: secondViewController, title: "Favourite", symbolName: "heart")
                setTabBarItem(for: thirdViewController, title: "Tickets", symbolName: "ticket")
            }
    private func setTabBarItem(for viewController: UIViewController, title: String, symbolName: String) {
            let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 22, weight: .regular)
            let image = UIImage(systemName: symbolName, withConfiguration: symbolConfiguration)
            viewController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
        }
    }
