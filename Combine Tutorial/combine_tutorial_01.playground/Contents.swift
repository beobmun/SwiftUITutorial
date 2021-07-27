import UIKit
import Combine



var myIntArrayPublisher: Publishers.Sequence<[Int], Never> = [1, 2, 3].publisher


myIntArrayPublisher.sink { completion in
    switch completion {
    case .finished:
        print("완료")
    case .failure(let err):
        print("실패 :\(err)")
    
    }
} receiveValue: { receiveValue in
    print("값을 받았다. : \(receiveValue)")
}

var mySubscription: AnyCancellable?

var mySubscriptionSet = Set<AnyCancellable>()

var myNotification = Notification.Name("customNotification")

var myDefaultPublisher = NotificationCenter.default.publisher(for: myNotification)


mySubscription = myDefaultPublisher.sink(receiveCompletion: { completion in
    switch completion {
    case .finished:
        print("완료")
    case .failure(let err):
        print("실패 :\(err)")
    }
}, receiveValue: { receiveValue in
    print("받은 값 : \(receiveValue)")
})

mySubscription?.store(in: &mySubscriptionSet)

NotificationCenter.default.post(Notification(name: myNotification))



//KVO - Key value observing

class MyFriend {
    var name = "철수" {
        didSet {
            print("name - didSet() : \(name)")
        }
    }
}

var myFriend = MyFriend()

var myFriendSubscription: AnyCancellable = ["영수"].publisher.assign(to: \.name, on: myFriend)
