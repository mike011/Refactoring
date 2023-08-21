//: [Previous](@previous)

import Foundation

// 6. Rename Function to change the name of the new function to the same name as the original function.

struct Photo { let title, location: String; let date: Date }
struct Person { let name: String; let photo: Photo }
let person = Person(name: "Bob", photo: Photo(title: "Title", location: "NY", date: Date()))

func renderPerson(person: Person) {
    print("<p>name: \(person.name)</p>")
    Data()
    emitPhotoData(person.photo)
}

func photoDiv(photo: Photo) {
    emitPhotoData(photo)
}

func emitPhotoData(_ photo: Photo) {
    print("<p>title: \(photo.title)</p>")
    print("<p>location: \(photo.location)</p>")
    print("<b>date: \(photo.date)</b>")
}

//: [Next](@next)
