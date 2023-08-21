//: [Previous](@previous)

import Foundation

// 2. If the target function is only called by the source function, just cut the code from the source, paste it into the target, test, and ignore the rest of these mechanics.

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
