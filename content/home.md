+++
title = 'Home page'
url = '/'
comment = false
postDate = false
+++

Hi :wink:! This is the official website of the Fejix project!

## What is Fejix?

Fejix is a cross-platform GUI framework designed for compilable programming languages.

It is still in early stage of development.
Don't expect to see a breathtaking demo, simply because it doesn't even exist :worried:.

But I can already tell you the concept:

In short: the essence of Fejix is that you can get optimized GUI by specifying it in a domain-specific language in a semantically correct way.

If you want something longer:

Let's assume you're using a programming language XX. It can be C, C++, Rust, Haskell, D, etc.

All the GUI stuff is completely separated from your XX code.
Your XX code doesn't know anything about your UI except that it can pass some data to it in order to update.
Your GUI is defined in a domain-specific language.
We'll now call it GUI Markup Language (GUIML).

Wait a minute, but isn't it a reinvention of the wheel? Don't we already have QML/Qt, HTML/Electron, XML/other?

Yes, we do. And they work well. But they all are dynamic.

The core idea of most of them is that you launch a giant string into an interpreter and you get the GUI widgets on the screen.
It certainly has a lot of adventages, one of them is that it is a dynamic way to create GUI that is by definition dynamic.

I suggest another approach.
Our GUIML files are preprocessed and converted to XX. Or C, because C is everybody's friend.
So, in the final code everything is drawn by XX or C.

You may ask why using GUIML if everything is converted into XX anyway. The wrong thing here is that we assume that XX is convenient for working with GUI while it really isn't. Maybe, memory management is OK in XX. But managing its dynamic state is a lot more complicated. 

Some of the frameworks don't allow semantic definition of widget elements.
A pink rectangle with rounded corners of radius 3 pixels? Why? Whyy?! I know that my computer can draw whatever I want, but the pink rectangle appears to be a button! That's not right. Rectangles can't be clickable and they can't contain text. One of the goals of Fejix is to fix that.

Anyway, there's definitely nothing bad in yet another GUI framework. 

GUIML in case of Fejix is called Fejix Markup Language or FjML

## Looking for a logo :eyes:

It would be nice if Fejix had a logo. The tiny image on this site is just a place holder. Could anyone help?

What about a polygonal phoenix? Or maybe a stylized piece of malachite?


## About this website

I chose a non-ideal but working way of using a site generator. All tool names are written in the footer of the page.

