//: [Previous](@previous)

import Foundation

// 5. When all the original calls use the new function, use Inline Function to inline the original function completely into the new function, removing the original function.

struct Photo { let title, location: String; let date: Date }
struct Person { let name: String; let photo: Photo }
let person = Person(name: "Bob", photo: Photo(title: "Title", location: "NY", date: Date()))

func renderPerson(person: Person) {
    print("<p>name: \(person.name)</p>")
    Data()
    xxnew(person.photo)
}

func photoDiv(photo: Photo) {
    xxnew(photo)
}

func xxnew(_ photo: Photo) {
    print("<p>title: \(photo.title)</p>")
    print("<p>location: \(photo.location)</p>")
    print("<b>date: \(photo.date)</b>")
}

//: [Next](@next)
