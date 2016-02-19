# swift-protocol-property-bug

```swift
func ==(lhs: UIRole, rhs: UIRole) -> Bool {
    //
    //FIXME:  Is it a swift bug?
    // If I comment ```&& lhs.hasAssignee == rhs.hasAssignee``` here, compile will report error
    // However, if I put code (UIRole, UICompany, Assigneeable) together, it compiles
    //
    
    return lhs.oxygenId == rhs.oxygenId && lhs.name == rhs.name /*&& lhs.hasAssignee == rhs.hasAssignee*/
}
```
