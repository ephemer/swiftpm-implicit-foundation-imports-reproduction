# Implicit Foundation imports

This is a reproduction of an issue in SwiftPM.

By adding `import Dep`, `import Foundation` is implicitly added to the `executable` module, meaning it will compile even if it uses seemingly-unavailable Foundation-only APIs (e.g. `myString.trimmingCharacters(in: .whitespaces)`).

This has something to do with the `resources: ` API of SwiftPM. By commenting out that line, the package will no longer build (note: this is the expected and desired behaviour!) via `swift package clean && swift build`
