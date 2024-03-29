//: [Previous](@previous)

import Foundation

// 2. Add functions to add and remove elements from the collection.

struct Course { var name: String }
class Person {
    private var courses: [Course]
    init() { self.courses = [] }
    func getCourses() -> [Course] { return courses }
    func setCourses(courses: [Course]) { self.courses = courses }
    func addCourse(course: Course) { courses.append(course) }
    func removeCourse(course: Course) { courses = courses.filter( { $0.name != course.name } )}
}

let person = Person()
person.setCourses(courses: [Course(name: "Chemistry"), Course(name: "Geography")])
person.setCourses(courses: [Course(name: "Chemistry"), Course(name: "Physics")])
print("You are enrolled in \(person.getCourses())")

//: [Next](@next)
