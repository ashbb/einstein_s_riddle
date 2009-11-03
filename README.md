Einstein's Riddle
=================

I got this fantastic riddle from **yiyun** at [RubyLearningChina.com](http://cn.rubylearning.com/home/index.php).

The post is: [Riddle by Einstein](http://cn.rubylearning.com/blog/posts/riddle-by-einstein.rb) Cool! B-)

It inspired me so much to try!


The Riddle
----------

Look at [this](http://www.manbottle.com/trivia/einstein_s_riddle).

<pre><code>
 *01. The Englishman lives in the red house.
 -02. The Swede keeps dogs.
 -03. The Dane drinks tea.
 *04. The green house is just to the left of the white one.
 *05. The owner of the green house drinks coffee.
 -06. The Pall Mall smoker keeps birds.
 *07. The owner of the yellow house smokes Dunhills.
 *08. The man in the center house drinks milk.
 *09. The Norwegian lives in the first house.
  10. The Blend smoker has a neighbor who keeps cats.
 -11. The man who smokes Blue Masters drinks bier.
 *12. The man who keeps horses lives next to the Dunhill smoker.
 -13. The German smokes Prince.
 *14. The Norwegian lives next to the blue house.
  15. The Blend smoker has a neighbor who drinks water.
</code></pre>

THE QUESTION: **WHO OWNS THE FISH?**

Things
------
<pre><code>
  house colors  : red, blue, green, yellow, white
  nationalities : English, Swede, Dane, Norweign, German
  drinks        : tea, coffee, milk, water, bier
  cigarettes    : Dunhill, PallMall, Blend, BlueMaster, Prince
  pets          : dog, bird, cat, horse, fish
</code></pre>


At First
--------
I thought my pc could evaluate all cases, 

	C:\>irb
	irb(main):001:0> a = 5*4*3*2*1
	=> 120
	irb(main):002:0> a*a*a*a*a
	=> 24883200000

OMG! Can't!

as far as possible
------------------

From 01, 04, 05, 07, 08, 09, 12, 14.    
Considered by myself with a pencil and a paper. Then I got the following:

<pre><code>
  yellow   Norweign   *****    Dunhill  *****
  blue     *****      *****    *****    horse
  red      English    milk     *****    *****
  green    *****      coffee   *****    *****
  white    *****      *****    *****    *****
</code></pre>


Facts 1
-------

From 02, 03, 06, 11, 13.

<pre><code>
  Swede, dog
  Dane, tea
  PallMall, bird
  BlueMaster, bier
  German, Prince
</code></pre>


Facts 2
-------

From 10, 15.

<pre><code>
  house[cat] + 1 == Blend or house[cat] - 1 == Blend
  house[water] + 1 == Blend or house[water] - 1 == Blend
</code></pre>

Okay, now, I can code. :-D Look at [this](http://github.com/ashbb/einstein_s_riddle/blob/master/einstein_s_riddle.rb).


Output
------

<pre><code>
[[["yellow", "Norweign", "water",  "Dunhill",    "cat"],
  ["blue",   "Dane",     "tea",    "Blend",      "horse"],
  ["red",    "English",  "milk",   "PallMall",   "bird"],
  ["green",  "German",   "coffee", "Prince",     "fish"],
  ["white",  "Swede",    "bier",   "BlueMaster", "dog"]]]
</code></pre>

Yay! :-D


Answer
------

Look at [this](http://www.manbottle.com/trivia/einstein_s_riddle/einstein_s_riddle_answer). 


