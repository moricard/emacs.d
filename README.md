emacs.d
=======

The Motivation
--------------
I have been using vim for a while now but it's lack of dynamic integration with
repls is turning me towards emacs.

I tried some ready-made advanced configurations, namely: 
* [[https://github.com/magnars/emacsrocks.com]]
* [[https://github.com/overtone/emacs-live]]

But using this *ready-to-eat* type of configuration, despite being really nice,
leaves me with an incomplete understanding of the editor and gives me the
impression of having a bloated, superfluous emacs.

Thus, this repository will be the placeholder for my custom optimally fitted
emacs configuration.


The Needs
---------

### What I expect from a programming environment

* Autocompletion & snippet mnemonics.
  Coding is redundant and my editor should provide tools to quickly get the
heavy plumbing done.

* Quick code navigation.
  Whenever a program becomes a tiny bit complex, being able to easily jump to
functions or variables declarations is primordial.

* Interactivity & Feedback
  Being able to evaluate in place the code I am writing makes for a much
quicker, enjoyable programming experience. Also, in those conditions, debugging 
becomes a breeze.

* Version Control 
  I want to be able to commit to my versioning systems from within the editor. I
happen to use Mercurial on bitbucket for work and Github for personnal
projects. 


### Language Specifics

* Scala
  I read some great things about ENSIME, it should give me the appropriate
level of interactivity whenever I am working in a scala project.

* Clojure
  I want to use the interactive REPL for dynamic programming. In particular, I want
to experiment with Overtone.

* Javascript
  I am mainly using the node.js environment when working in javascript. A
javascript Repl could be nice, something like swank-js. Manipulating a canvas
in the browser directly from the editor seems nice too: 
[[http://emacsrocks.com/e11.html]]

* Lua
  I am using lua when experimenting game developement with the MOAI framework. 

* Python
  I mainly use IPython for machine learning experimentation. The IPython repl
should not be too hard to bind to using something like Slime.
