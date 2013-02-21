# Mention Tagger - Tag those friends facebook style

Mention tagger is a jQuery plugin that is based on Kenneth Auchenbergs work on [jquery.mentionsInput](http://podio.github.com/jquery-mentions-input/). It has been changed quite heavily to work of using a space ' ' as the triggering character and have the list of friends to be the users facebook friends

## Installation

First add the gem to your gem file

    gem mention-tagger
    
Add ``//= require mention-tagger`` to your application.js file

Add ``@import 'mention-tagger'`` to your application.css.scss file 

Where you want the mention box to be, add a text area as follows

    <div>
      <textarea class="mentionbox"></textarea>
    </div>
    
wrapping the text area in a div is important as without it the plugin goes all screwy. I shall try to look into this when its fully functional.

Finally when Bookface is connected and we have basic permissions for the user call the setup function

    $('textarea.mentionbox').setupMentionTagging()
    
