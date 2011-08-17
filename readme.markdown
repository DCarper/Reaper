curb
====

A tool to remove unused static assets from a project. Only image removal is supported for now, stylesheets and javascripts at some point in the future.

Usage
-----
rake curb:images

future
----
* support removal of javascript and css/sass files
* allow directories and filetypes to be manually specified
* baked in git branching support
* support for marking certain files as risky if a partial filename is matched -- IE the the filename of the image is being concatenated from several seperate strings

Contributing to curb
--------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2011 Dan Carper. See LICENSE.txt for
further details.

