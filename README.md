CSSParser is a tiny Swift wrapper around the pure C [katana-parser](https://github.com/hackers-painters/katana-parser) framework.

### Basic Usage
This framework is intended to be used with any kind of document that benefits from styling via stylesheets. It works by first parsing the contents of a stylesheet, and then providing hooks to query this parsed stylesheet to see which styles apply to a given node in an element tree.

The basic parts of the CSS spec are implemented, allowing for things like sibling selectors, attribute selectors, and so on.

A basic example:

```swift
let sheet = "box { height: 100 } #blah { flex: 1}"
let parsed = StyleSheet(string: sheet)!

// SomeElement conforms to the StyleElement protocol.
let element = SomeElement(tagName: "box")
let styles = parsed.stylesForElement(element)

// Values come back as strings and must be parsed into their corresponding type.
element.height = NumberFormatter().number(from: styles["height"])?.intValue ?? 0
```

### Considerations
Much of the CSS specification is not handled, but the framework is generic enough so that it can be easily extended. Contributions are welcome!
