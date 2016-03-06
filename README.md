# iOS UIAlertController Customization

Recently I’m faced with unusual task using UIAlertController. First, add image to some of items. And the second, add UISwitch control.

img1

I know it doesn’t math Apple design flow, but maybe someone will come in handy for resolving different tasks.

The first, how to add some image. UIAlertController or UIAlertAction has not public methods for this, but you can do this via setValue for key ‘image’. For example:

<pre>
</pre>

But you will get no good result.

img2

Please create a version of this image with the specified rendering mode. In our case with AlwaysOriginal.

<pre>
</pre>

And see what we will get:

img3

The second thing, how to add the switch control? 

Let’s create new view controller and user interface for this.

img4

<pre>
</pre>

And the last point, we need to apply this controller to UIAlertAction. The same way using key ‘contentViewController’.

<pre>
</pre>

img5
