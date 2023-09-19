//: [Previous](@previous)

import Foundation

// 4. Modify the getter for the collection to return a protected view on it, using a read-only proxy or a copy and test.

struct Course { var name: String }
class Person {
    private var courses: [Course]
    init() { self.courses = [] }
    func getCourses() -> [Course] { return courses.map { $0 } }
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
