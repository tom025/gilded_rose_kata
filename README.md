# The Guided Rose Kata

This is a jruby version of the Guild Rose kata, found [here](http://craftsmanship.drupalgardens.com/content/gilded-rose-kata).
The aim is to demonstrate a way of testing java classes using rspec.

This is a legacy code kata, so the focus is on safely refactoring the already
implemented code. The original kata had no tests, however since (for me at
least) the real learning is in the refactoring so there will be a test suite
provided.

## How to get this project running

I have tried to make this project as simple to use as possible to minimize the
distractions from doing the kata. Any suggestions on making this project easier
to running, especially on Windows, will be very welcome.

You will need jruby, the JDK and rubygems.

### Mac OS X

Macs come with the jdk, ruby and rubygems alredy installed. I recomend using
[rvm](http://beginrescueend.com/). It will setup everything you need to run
jruby. If you want you can bypass rvm by getting jruby [here](http://jruby.org/getting-started).

With rvm installed getting jruby is simple.

    rvm install jruby

Then clone the repo.

    git clone git@github.com:tom025/gilded_rose_kata.git

Change directory into the project and you will be prompted when rvm detects the
project `.rvmrc` file. All this file does is settup a gemset and make sure that
you are using it when ever you navigate to the project directory.

With that done, install bundler and install all the needed gems.

    gem install bundler
    bundle install

Now you are all set! All that remains is to run the tests using `rake`.


