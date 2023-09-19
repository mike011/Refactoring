//: [Previous](@previous)

import Foundation

// 3. Find all references to the collection. If anyone calls modifiers on the collection, change them to use the new add/remove functions. Test after each change.

struct Course { var name: String }
class Person {
    private var courses: [Course]
    init() { self.courses = [] }
    func getCourses() -> [Course] { return courses }
    func addCourse(course: Course) { courses.append(course) }
    func removeCourse(course: Course) { courses = courses.filter( { $0.name != course.name } )}
}

let person = Person()
person.addCourse(course: Course(name: "Chemistry"))
person.addCourse(course: Course(name: "Geography"))
person.removeCourse(course: Course(name: "Geography"))
person.addCourse(course: Course(name: "Physics"))
print("You are enrolled in \(person.getCourses())")

//: [Next](@next)
