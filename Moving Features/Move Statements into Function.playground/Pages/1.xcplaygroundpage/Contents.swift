//: [Previous](@previous)

import Foundation

// 1. If the repetitive code isn’t adjacent to the call of the target function, use Slide Statements to get it adjacent.

struct Photo { let title, location: String; let date: Date }
struct Person { let name: String; let photo: Photo }
let person = Person(name: "Bob", photo: Photo(title: "Title", location: "NY", date: Date()))

func renderPerson(person: Person) {
    print("<p>name: \(person.name)</p>")
    Data()
    print("<p>title: \(person.photo.title)</p>")
    print(emitPhotoData(person.photo))
}

func photoDiv(photo: Photo) {
    print("<p>title: \(photo.title)</p>")
    print(emitPhotoData(photo))
}

func emitPhotoData(_ photo: Photo) {
    print("<p>location: \(photo.location)</p>")
    print("<b>date: \(photo.date)</b>")
}

//: [Next](@next)
