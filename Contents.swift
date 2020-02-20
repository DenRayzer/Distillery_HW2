import Cocoa
/*
 We have an app with news feed. There can be different feed item types: plain text, text with image, text with video, text with image and audio. Create base FeedItem class and all needed inherited classes for feed items of all types with initializers. Create function to get time to consume the feed item, assuming that reading speed is 100 letters/min, image staring time is 10 sec, audio and video per their duration. Put the playground to a github repository.

 */
class FeedItem{
    
    var readingTime: Double = 0
    init(_ items: Item...){
        for i in items{
           readingTime += i.getReadingSpeed()
        }
    }
    func getReadingTime()->Double{
        return readingTime
    }
    
}
class Item{
    
    var readingSpeed: Double
    init(_ read: Double){
        readingSpeed = read
    }
    func getReadingSpeed()->Double{
        return readingSpeed
    }
    
}
class Text:Item{
    
    var lettersCount: Int
    init(_ text : String){
        lettersCount = text.count
          super.init(0.6) //
    }
    override func getReadingSpeed() -> Double {
        return readingSpeed*Double(lettersCount)
    }
    
}
class Video:Item{
    
}

class Audio:Item{

}

class Image:Item{
    
   init(){
        super.init(10)
      }
}

var newPost = FeedItem(Text ("Hello!"),Image(),Audio(10))
print("Время просмотра данного поста \(newPost.getReadingTime()) секунд")
