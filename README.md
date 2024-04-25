# Installation

## use cocoapod

pod 'XConstraintKit', :git => 'git@github.com:Ajaya1000/XConstraintKit.git', :tag => 'v1'

## use SPM
add this library using this git@github.com:Ajaya1000/XConstraintKit.git

# Uses
Activate constraint for childView with superView using the function
 `func activate(with superView: ExpressibleByAnchors? = nil,
                  @XLayoutConstraintBuilder constraints: (XLayoutConstraintMaker) -> [XLayoutConstraint])`

```swift
self.childView.activate(with: superView) { xc in
    xc.leading
    xc.trailing
    xc.top
    xc.bottom
}
```

ExpressibleByAnchors are conformed by `UIView` & `UILayoutGuide`

for xc.leading => attr1 = .leading, attr1 = .leading
for xc.leading.withTrailing => attr1 = .leading, attr1 = .trailing

so on like that

XLayoutConstraint has function to set `constant`, `priority` and `multiplier`.