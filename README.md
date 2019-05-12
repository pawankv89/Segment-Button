# Segment-Button

=========

## Custom Segment Button in Swift 5.

### In this demo show Custom Segment Button.

------------
Added Some screens here.

![](https://github.com/pawankv89/Segment-Button/blob/master/images/screen_1.png)
![](https://github.com/pawankv89/Segment-Button/blob/master/images/screen_2.png)




## Usage
------------

#### Custom Segment Button 

```swift

class ViewController: UIViewController {

@IBOutlet weak var segmentView: UIView!
@IBOutlet weak var firstSegmentButton: UIButton!
@IBOutlet weak var secondSegmentButton: UIButton!

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.

//First Segment Button
firstSegmentButton.layer.cornerRadius = firstSegmentButton.frame.size.height/2
firstSegmentButton.backgroundColor = UIColor.blue
firstSegmentButton.tag = 0

//Second Segment Button
secondSegmentButton.layer.cornerRadius = secondSegmentButton.frame.size.height/2
secondSegmentButton.backgroundColor = UIColor.black
secondSegmentButton.tag = 1

//Selected First Segment Button
segmentView.bringSubviewToFront(firstSegmentButton)

}

@IBAction func segmentButtonTap(sender: UIButton) {

switch sender.tag {
case 0:
//Selected First Segment Button
segmentView.bringSubviewToFront(firstSegmentButton)
print("Segment Button \(sender.tag)")

case 1:
//Selected First Segment Button
segmentView.bringSubviewToFront(secondSegmentButton)
print("Segment Button \(sender.tag)")

default:
print("Segment Button \(sender.tag)")

}

}
}



```


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
