### _17/3_

# Munch!
### Yahoo Pipes to mash the web into usable peices

![Screenshot of munch in action](http://img.skitch.com/20090317-jtkffs8gj1kkh34h7g6xfpkjut.jpg)

So, I needed a project, it was lunch time and I was already thinking about food, so I got
stuck into mentally planning my sinatra application, it would be fed straght from the cloud.

Yahoo Pipes allows you to visually parse and manipulate data using a series of drag and droppable
widgets, I'd not given it a lot of respect until today. 

YQL allows you to query Yahoo services, _"who cares"_ I  thought, thankfully [Lachlan Hardy](http://lachstock.com.au/) bitch slapped me upside the head, instructing me that it actually allows you to parse *any public website*.

_Thats a lot of information kids!_

For the time I spent using Yahoo pipes, I probably could've written parser to do it all for me;
  
  * Each piece would have its own format and require a custom parser.
  * Pipes lets me drag elements around to create the feed that I want.

Now that I have said feed... You can mess about with [Yahoo Pipes](http://pipes.yahoo.com/pipes/), [YQL](http://developer.yahoo.com/yql/), [Sinatra](http://www.sinatrarb.com/) and find something to make for dinner!

I still don't have a new blog, if I had one this would probably be a post; I'd have thought long and hard about what I said and how it came across. But I don't have one, so read the source code and make sure you [checkout the pipe](http://pipes.yahoo.com/pipes/pipe.info?_id=e24258e68f6016bb6137f737552a203e) that I used to make it.

### How to run it

Ensure you have Sinatra and the Json gems

    sudo gem install sinatra json

Run it with `ruby app.rb`, `rackup config.ru` or use shotgun `shotgun` (my preference)


## YQL?

YQL was used to parse ["The cook and the chef"](http://www.abc.net.au/tv/cookandchef/) web site

You can add as many more as you like to your own 'pipe' and the app doesn't have to change!
