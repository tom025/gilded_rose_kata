# The Gilded Rose Kata

This is a jruby version of the Gilded Rose kata, found [here](http://craftsmanship.drupalgardens.com/content/gilded-rose-kata).
The aim is to demonstrate a way of testing java classes using rspec.

This is a legacy code kata, so the focus is on safely refactoring the already
implemented code. The original kata had no tests, however since (for me at
least) the real learning is in the refactoring so there will be a test suite
provided.

## How to get this project running

I have tried to make this project as simple to use as possible to minimize the
distractions from doing the kata. Any suggestions on making this project easier
to run, especially on Windows, will be very welcome.

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

Now you are all set! All that remains is to run the tests using `rake`. Fire up
your editor and get cracking!

### Ubuntu/Debian

Make sure you have the jdk.

    apt-get install openjdk-6-jdk

Then the rest is as above.

## Original Description of the Gilded Rose

Hi and welcome to team Gilded Rose. As you know, we are a small inn
with a prime location in a prominent city ran by a friendly innkeeper
named Allison. We also buy and sell only the finest
goods. Unfortunately, our goods are constantly degrading in quality as
they approach their sell by date. We have a system in place that
updates our inventory for us. It was developed by a no-nonsense type
named Leeroy, who has moved on to new adventures. Your task is to add
the new feature to our system so that we can begin selling a new
category of items. First an introduction to our system:

- All items have a SellIn value which denotes the number of days we
  have to sell the item
- All items have a Quality value which denotes how valuable the item
  is
- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

  - Once the sell by date has passed, Quality degrades twice as fast
  - The Quality of an item is never negative
  - "Aged Brie" actually increases in Quality the older it gets
  - The Quality of an item is never more than 50
  - "Sulfuras", being a legendary item, never has to be sold or
    decreases in Quality
  - "Backstage passes", like aged brie, increases in Quality as it's
    SellIn value approaches; Quality increases by 2 when there are 10
    days or less and by 3 when there are 5 days or less but Quality
    drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to our system:

- "Conjured" items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any
new code as long as everything still works correctly. However, do not
alter the Item class or Items property as those belong to the goblin
in the corner who will insta-rage and one-shot you as he doesn't
believe in shared code ownership (you can make the UpdateQuality
method and Items property static if you like, we'll cover for
you). Your work needs to be completed by Friday, February 18, 2011
08:00:00 AM PST.

Just for clarification, an item can never have its Quality increase
above 50, however "Sulfuras" is a legendary item and as such its
Quality is 80 and it never alters.
