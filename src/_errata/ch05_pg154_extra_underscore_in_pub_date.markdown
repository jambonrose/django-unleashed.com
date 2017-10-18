---
title: Extra Underscores in `pub_date`
slug: extra_underscores_in_pub_date
edition: 1
chapter: 5
page: 154
---
Example 5.53 (page 154) contains the command listed below.

{% highlight python %}
Post.objects
    .filter(pub__date__year=2014)
    .filter(pub__date__month=11)
    .get(slug__iexact='django-training')
{% endhighlight python %}


There should only be one underscore between `pub` and `date` (in all of the
code in the book), meaning the command should actually be the code below.

{% highlight python %}
Post.objects
    .filter(pub_date__year=2014)
    .filter(pub_date__month=11)
    .get(slug__iexact='django-training')
{% endhighlight python %}


Thanks to Charlie Pilgrim for catching the error.
