

import UIKit

protocol TitlesRouter: class {
    var navigationController: UINavigationController? { get }
    
    func routeToDetail(with id: String)
}

class TitlesRouterImplementation: TitlesRouter {
    weak var navigationController: UINavigationController?
    
    func routeToDetail(with id: String) {
        let viewController = TitleDetailViewController()
        TitleDetailConfigurator.configureModule(titleId: id,
                                                viewController: viewController)
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
