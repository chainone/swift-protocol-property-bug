# swift-protocol-property-bug

```swift
func ==(lhs: UIRole, rhs: UIRole) -> Bool {
    //
    //FIXME:  Is it a swift bug?
    // If I comment ```&& lhs.hasAssignee == rhs.hasAssignee``` here, compile will report error
    // However, if I put code of UIRole.swift, Assigneeable.swift into one single Swift file , it compiles
    //
    
    return lhs.oxygenId == rhs.oxygenId && lhs.name == rhs.name /*&& lhs.hasAssignee == rhs.hasAssignee*/
}
```
Bug reported to Swift team: https://bugs.swift.org/browse/SR-788
