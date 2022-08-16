# Implicit Foundation imports

This is a reproduction of an issue in SwiftPM.

By adding `import Dep`, `import Foundation` is implicitly added to the `executable` module, meaning it will compile even if it uses seemingly-unavailable Foundation-only APIs (e.g. `myString.trimmingCharacters(in: .whitespaces)`).

This has something to do with the `resources: ` API of SwiftPM. By commenting out that line, the package will no longer build (note: this is the expected and desired behaviour!) via `swift package clean && swift build`

## Instructions

1. Clone the repo
2. `swift build` -> you will see that it compiles the Foundation APIs (even though it shouldn't!)
3. Comment out the line in Package.swift that defines `resources:`
4. `swift package clean && swift build` -> The project will no longer build (this is the expected and desired behaviour!)
