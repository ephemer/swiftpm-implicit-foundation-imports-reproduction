// comment out `import Dep` and the package will not compile (via `swift build`)
// even though `Dep` has no reference to `Foundation` whatsoever
import Dep

print("Hello, world!".trimmingCharacters(in: .whitespaces))
