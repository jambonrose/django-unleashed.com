---
title: What `requirements.txt` file?
slug: what_requirements_txt_file
edition: 1
chapter: 3
page: 56
---
The aside on page 56 makes reference to a `requirements.txt` file that
exists in a repository. The repository in question is the [official book
code hosted on GitHub][repo].

To get the requirements file, you can either [browse to the file
online][codeRequirements] and then copy and paste the contents, or you
can use the `curl` command to download the file directly to your own
project, as demonstrated below.

{% highlight shell %}
$ curl -o requirements.txt \
    https://raw.githubusercontent.com/jambonrose/DjangoUnleashed-1.8/799c6ab6ae/requirements.txt
{% endhighlight %}

The requirements file is just a list of packages for [`pip`][pip] to
install. To install all the items in the list, use the command below.

{% highlight shell %}
$ pip install -r requirements.txt
{% endhighlight %}

While having a requirements file is a Python convention (to make using a
project easier for other developers), you don't actually need a
requirements file. You could simply install all of the tools you wish
directly with [`pip`][pip]. Below, I use [`pip`][pip] to install
[IPython][IPython] with notebook functionality enabled, using exactly
the same name from the `requirements.txt` file online.

{% highlight shell %}
$ pip install ipython[notebook]
{% endhighlight %}

Note that between the time I finished writing the book and now,
[IPython][IPython] notebooks have begun to shift to a new project named
[Jupyter][Jupyter]. While the command above still works, eventually
you'll want to install [Jupyter][Jupyter] with the command listed below.

{% highlight shell %}
$ pip install jupyter
{% endhighlight %}

When using just [IPython][IPython], the terminal command to activate
notebooks was `ipython notebook`. With [Jupyter][Jupyter], that command
is now `jupyter notebook`. However, with a Django project you will still
want to access notebooks with the command below.

{% highlight shell %}
$ ./manage.py shell_plus --notebook
{% endhighlight %}

Thanks to Chris Wilkins for pointing out the ambiguity.

[codeRequirements]: https://github.com/jambonrose/DjangoUnleashed-1.8/blob/799c6ab6aee3c340edd2d0d3d6a210faea6153bd/requirements.txt
[IPython]: http://ipython.org/
[Jupyter]: http://jupyter.org/
[pip]: https://pip.pypa.io/en/latest/
[repo]: https://github.com/jambonrose/DjangoUnleashed-1.8/
