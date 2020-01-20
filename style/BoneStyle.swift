import UIKit
import DressCode

public enum {{name | firstUppercase}}<View>:String, CaseIterable, StylableView{
    
    public func style(for theme: Themeable) -> Property<View> {
        return .empty()
    }
}

public extension Property {
    static func theme(for styleView:{{name | firstUppercase}}<Element>, forTheme theme:Themeable) -> Property<Element>{
        return styleView.style(for: theme)
    }
}

public extension Stylable{
    func applyStyleView(_ styleView:{{name | firstUppercase}}<Self>, for theme:Themeable){
        setStyle(styleView.style(for: theme))
    }
}

public extension {{name | firstUppercase}} where View:UILabel{
    func applyStyleView(for theme:Themeable, to views:View...){
        views.forEach({$0.setStyle(self.style(for: theme))})
    }
}

public extension {{name | firstUppercase}} where View:UIButton{
    func applyStyleView(for theme:Themeable, to views:View...){
        views.forEach({$0.setStyle(self.style(for: theme))})
    }
}

public extension UILabel{
    func applyStyleView(_ styleView:{{name | firstUppercase}}<UILabel>, for theme:Themeable){
        setStyle(styleView.style(for: theme))
    }
}

public extension UIButton{
    func applyStyleView(_ styleView:{{name | firstUppercase}}<UIButton>, for theme:Themeable){
        setStyle(styleView.style(for: theme))
    }
}

