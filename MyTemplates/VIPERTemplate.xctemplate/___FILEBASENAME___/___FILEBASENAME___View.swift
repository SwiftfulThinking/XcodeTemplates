import SwiftUI

struct ___VARIABLE_productName:identifier___Delegate {
    
}

struct ___VARIABLE_productName:identifier___View: View {
    
    @State var presenter: ___VARIABLE_productName:identifier___Presenter
    let delegate: ___VARIABLE_productName:identifier___Delegate
    
    var body: some View {
        Text("Hello, World!")
            .screenAppearAnalytics(name: "___VARIABLE_productName:identifier___View")
    }
}

extension ___VARIABLE_coreName:identifier___Builder {
    
    func ___VARIABLE_camelCasedProductName:identifier___View(router: Router, delegate: ___VARIABLE_productName:identifier___Delegate) -> some View {
        ___VARIABLE_productName:identifier___View(
            presenter: ___VARIABLE_productName:identifier___Presenter(
                interactor: interactor,
                router: ___VARIABLE_coreName:identifier___Router(router: router, builder: self)
            ),
            delegate: delegate
        )
    }
    
}

extension ___VARIABLE_coreName:identifier___Router {
    
    func show___VARIABLE_productName:identifier___View(delegate: ___VARIABLE_productName:identifier___Delegate) {
        router.showScreen(.push) { router in
            builder.___VARIABLE_camelCasedProductName:identifier___View(router: router, delegate: delegate)
        }
    }
    
}

#Preview {
    let container = DevPreview.shared.container
    let builder = ___VARIABLE_coreName:identifier___Builder(interactor: ___VARIABLE_coreName:identifier___Interactor(container: container))
    let delegate = ___VARIABLE_productName:identifier___Delegate()
    
    return RouterView { router in
        builder.___VARIABLE_camelCasedProductName:identifier___View(router: router, delegate: delegate)
    }
    .previewEnvironment()
}
