//: [Previous](@previous)

import Foundation

// 3. If you have more callers, use Extract Function on one of the call sites to extract both the call to the target function and the statements you wish to move into it. Give it a name that’s transient, but easy to grep.

struct Photo { let title, location: String; let date: Date }
struct Person { let name: String; let photo: Photo }
let person = Person(name: "Bob", photo: Photo(title: "Title", location: "NY", date: Date()))

func renderPerson(person: Person) {
    print("<p>name: \(person.name)</p>")
    Data()
    xxnew(person.photo)
}

func photoDiv(photo: Photo) {
    print("<p>title: \(photo.title)</p>")
    print(emitPhotoData(photo))
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
