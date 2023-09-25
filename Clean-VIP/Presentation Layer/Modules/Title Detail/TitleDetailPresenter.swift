

import Foundation

protocol TitleDetailPresenter: class {
    func interactor(didRetrieveTitle title: Title)
    func interactor(didFailRetrieveTitle error: Error)
}

class TitleDetailPresenterImplementation: TitleDetailPresenter {
    
    var viewController: TitleDetailPresenterOutput?
    
    func interactor(didRetrieveTitle title: Title) {
        let titleString = title.text
        viewController?.presenter(didRetrieveItem: titleString ?? "")
    }
    
    func interactor(didFailRetrieveTitle error: Error) {
        viewController?.presenter(didFailRetrieveItem: error.localizedDescription)
    }
}
