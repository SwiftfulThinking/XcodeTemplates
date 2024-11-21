import SwiftUI

@Observable
@MainActor
class ___VARIABLE_productName:identifier___Presenter {
    
    private let interactor: ___VARIABLE_productName:identifier___Interactor
    private let router: ___VARIABLE_productName:identifier___Router
    
    init(interactor: ___VARIABLE_productName:identifier___Interactor, router: ___VARIABLE_productName:identifier___Router) {
        self.interactor = interactor
        self.router = router
    }
    
    func onViewAppear(delegate: ___VARIABLE_productName:identifier___Delegate) {
        interactor.trackScreenEvent(event: Event.onAppear(delegate: delegate))
    }
    
    func onViewDisappear(delegate: ___VARIABLE_productName:identifier___Delegate) {
        interactor.trackEvent(event: Event.onDisappear(delegate: delegate))
    }
}

extension ___VARIABLE_productName:identifier___Presenter {
    
    enum Event: LoggableEvent {
        case onAppear(delegate: ___VARIABLE_productName:identifier___Delegate)
        case onDisappear(delegate: ___VARIABLE_productName:identifier___Delegate)

        var eventName: String {
            switch self {
            case .onAppear:                 return "___VARIABLE_productName:identifier___View_Appear"
            case .onDisappear:              return "___VARIABLE_productName:identifier___View_Disappear"
            }
        }
        
        var parameters: [String: Any]? {
            switch self {
            case .onAppear(delegate: let delegate), .onDisappear(delegate: let delegate):
                return delegate.eventParameters
//            default:
//                return nil
            }
        }
        
        var type: LogType {
            switch self {
            default:
                return .analytic
            }
        }
    }

}
