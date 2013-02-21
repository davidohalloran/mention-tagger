# Mention Tagger - Tag those friends Facebook style

Mention tagger is a jQuery plugin that is based on Kenneth Auchenbergs work on [jquery.mentionsInput](http://podio.github.com/jquery-mentions-input/). It takes a bog standard text box and pimps it out allow you to tag friends in the message. It has been changed quite heavily to work of using a space ' ' as the triggering character and have the list of friends to be the users Facebook friends

## Installation

First add the gem to your gem file

    source 'http://gems.betapond.com'
    gem 'mention-tagger'
    
Add ``//= require mention-tagger`` to your application.js file

Add ``@import 'mention-tagger'`` to your application.css.scss file 

Where you want the mention box to be, add a text area as follows

    <div>
      <textarea class="mentionbox"></textarea>
    </div>
    
wrapping the text area in a div is important as without it the plugin goes all screwy. I shall try to look into this when its fully functional.

Finally when Bookface is connected and we have basic permissions for the user call the setup function

    $('textarea.mentionbox').setupMentionTagging()

To get the message and the tagged friends out of the text box just call the following function 
    
    $('textarea.mentionbox').mentionTagging('getGraphFormatedString')

This will return a string like so ``i love @[61010765] a @[14801267]`` 
     
## Testing

To check out the gem in action pull the repo and go into ``test/dummy``.

From the dummy folder open up ``app/views/home/index.html.erb`` and add in your ``appId`` to the ``window.fbAsyncInit`` method.

Run the dummy app and navigate to the root directory and make sure you have authed your app

## TODO
* Get message from box in graph format
* Easier removal of friends
* Adding additional button for adding friends out side of the message