# Customization of UIAlertController

Recently I’m faced with an unusual task using <a href="https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAlertController_class/">UIAlertController</a>. First, add an image to some of items. And the second, add <a href="https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISwitch_Class/">UISwitch</a> control.

![alt tag](https://raw.github.com/maximbilan/UIAlertController-Customization/master/img/1.png)

I know it doesn’t matсh <i>Apple</i> design flow, but maybe someone will come in handy for resolving different tasks.

The first, how to add an image. <a href="https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAlertController_class/">UIAlertController</a> or <a href="https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAlertAction_Class/">UIAlertAction</a> has not public methods for this, but you can do this via <i>setValue</i> for key ‘<i>image</i>’. For example:

<pre>
alertAction.setValue(UIImage(named: "image1.png"), forKey: "image")
</pre>

But you will get no good result.

![alt tag](https://raw.github.com/maximbilan/UIAlertController-Customization/master/img/2.png)

Please create a version of this image with the specified rendering mode. In our case with <i>AlwaysOriginal</i>.

<pre>
alertAction.setValue(UIImage(named: "image1.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), forKey: "image")
</pre>

And see what we will get:

![alt tag](https://raw.github.com/maximbilan/UIAlertController-Customization/master/img/3.png)

The second thing, how to add a switch control? 

Let’s create a new view controller and a user interface for this.

![alt tag](https://raw.github.com/maximbilan/UIAlertController-Customization/master/img/4.png)

<pre>
import UIKit

class SwitchAlertActionViewController: UIViewController {
  @IBOutlet weak var valueSwitch: UISwitch!
  var isSwitchOn = false
 
  override func viewDidLoad() {
    super.viewDidLoad()

    valueSwitch.on = isSwitchOn
  }
}
</pre>

And the last point, we need to apply this controller to <a href="https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAlertAction_Class/">UIAlertAction</a>. The same way using a key <b><i>contentViewController</i></b>.

<pre>
let switchAlert = SwitchAlertActionViewController()
switchAlert.isSwitchOn = true
alertAction.setValue(switchAlert, forKey: "contentViewController")
</pre>

![alt tag](https://raw.github.com/maximbilan/UIAlertController-Customization/master/img/5.png)
