//: [Previous](@previous)

import Foundation

// 4. Convert every other call to use the new function. Test after each conversion.

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
    print(emitPhotoData(photo))
}

func emitPhotoData(_ photo: Photo) {
    print("<p>location: \(photo.location)</p>")
    print("<b>date: \(photo.date)</b>")
}

//: [Next](@next)
