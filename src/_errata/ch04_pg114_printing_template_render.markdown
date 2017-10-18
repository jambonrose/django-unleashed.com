---
title: Printing `template.render()`
slug: print_template_render
edition: 1
chapter: 4
page: 114
---
Example 4.70 (page 114) ends with the code printed below.

{% highlight python %}
>>> template.render(context)
{% endhighlight python %}

As noted in the [IPython][IPython] notebook on [GitHub][Ch4 IPython NB],
the code should actually use a `print()` function to make the output
readable.

{% highlight python %}
>>> print(template.render(context))
{% endhighlight python %}

Thanks to Dan Hitt for catching the error.

[IPython]: http://ipython.org/
[Ch4 IPython NB]: https://github.com/jambonrose/DjangoUnleashed-1.8/blob/master/Chapter_04_Using_Templates_In_Python.ipynb
