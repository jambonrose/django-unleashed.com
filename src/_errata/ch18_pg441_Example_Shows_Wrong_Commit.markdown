---
title: Example 18.58 Shows Code in Wrong Commit
slug: example_shows_wrong_commit
edition: 1
chapter: 18
page: 441
---
Example 18.58 shows the `NewsLinkDelete` class as it exists in commit
[7dcdf22318][7dcdf22318]. However, just as in Example 18.57 and Example
18.59, Example 18.58 should be showing the code as it exists in
[f4e337f96e][f4e337f96e], notably including the `NewsLinkGetObjectMixin`
class as superclass. The code is printed below for your convenience.

{% highlight python %}
class NewsLinkDelete(
        NewsLinkGetObjectMixin,
        StartupContextMixin,
        DeleteView):
    model = NewsLink
    slug_url_kwarg = 'newslink_slug'
{% endhighlight %}

[7dcdf22318]: https://github.com/jambonrose/DjangoUnleashed-1.8/commit/7dcdf223188c8b574534002d829b7dc1134f2cf8#diff-4cf866230c5f4552e690c940ba057d2eR20
[f4e337f96e]: https://github.com/jambonrose/DjangoUnleashed-1.8/commit/f4e337f96e46c76e8b6cf93ccf7ab9b31439b987#diff-4cf866230c5f4552e690c940ba057d2eR23
