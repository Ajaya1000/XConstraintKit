# TODO
* directly activating constraint for XConstraints - Done
* dimensional constraint with other view - Done
* Move to class based implementation instead of enums - Done
* ExpressibleByAnchor: Protocol instead of UIView or UILayoutGuide - Done
* Add enum for all the anchors - Done
* inequalities support - Done
* Add to direclty adding constraint to any ExpressibleByAnchor instances - In progress
* Implement Validation - Needs to be updated

view.xcKit.leading.with(superView.leading)

view1.activate(with: superView) { xc in
    xc.leading.withLeading
    xc.trailing.withCenter
    xc.top
    xc.bottom.constant(to: 100.0)
}

view1.activate(with: superView) { xc in xc.leading }
