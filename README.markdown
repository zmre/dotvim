About
=====
I love vim.  I have switched away into IDEs (Aptana with vim plugin, etc.) and
code editors like TextMate and Sublime Text 2.  These are all great in
different ways, but I just can't stay away from vim where the more you learn,
the more powerful and fast you become.  But everytime I come back, there's some
piece of functionality I liked about that other editor that I wish vim had.
And then I find that there's a plugin.  And so my .vimrc has exploded into
a full application with bundles of plugins and organized rc files.  Plus
a cheatsheet for those commands that I always forget (this cheatsheet not
suitable for beginners).  And since it is almost obligatory for vim nerds to
share their vimfiles with the world... here is my contribution.

Installation Instructions
=========================
Wherever possible I have taken bundles from git so they can be updated.  And
I've added these as submodules.  So to clone and update, do this:

    mv ~/.vimrc ~/.vimrc.bak
    mv ~/.vim ~/.vim.bak
    git clone git://github.com/zmre/dotvim.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc

And then every now and then, use these commands to update:

    cd ~/.vim
    git pull
    git submodule foreach git pull

Next, one of my favorite plugins is CommandT, which reproduces some TextMate
functionality that I've tied to `,t`.  But this plugin is a pain in the butt as
it requires a recent vim built with ruby.  If you have this, you still have
some work to do before you can take advantage:

    cd ~/.vim/bundles/command-t
    rake make # note: obviously you need a ruby env with rake installed

If you get any errors like vim crashing on startup, it is likely due to
CommandT and, in my experience, due to your vim being built with one version of
ruby and your CommandT library being built with another.  If you're using
`rvm`, be especially careful.

