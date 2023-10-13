// 1. Add a special-case check property to the subject, returning false.
// 2. Create a special-case object with only the special-case check property, returning true.
// 3. Apply Extract Function to the special-case comparison code. Ensure that all clients use the new function instead of directly comparing it.
// 4. Introduce the new special-case subject into the code, either by returning it from a function call or by applying a transform function.
// 5. Change the body of the special-case comparison function so that it uses the special-case check property.
// 6. Test.
// 7. Use Combine Functions into Class or Combine Functions into Transform to move all of the common special-case behaviour into the new element.
// 8. Use Inline Function on the special-case comparison function for the places where it’s still needed.

class Subject {
    func isUnknown() -> Bool {return false}
}
