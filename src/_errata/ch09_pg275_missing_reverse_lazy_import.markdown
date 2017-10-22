---
title: Missing Import and Explanation for `reverse_lazy()`
slug: reverse_lazy_explanation
edition: 1
chapter: 9
page: 275
---

In Example 9.85 on page 275, we use `reverse_lazy()` for the first time.
Unfortunately, the example fails to import the function, and there is no
explanation provided for what it does.

The import is on line one of commit [dc53479077][dc53479077], printed below for
convenience. 

{% highlight python %}
from django.core.urlresolvers import reverse_lazy
{% endhighlight %}

The explanation that should appear below the example is printed below.

> Example 9.85 introduces a new function called `reverse_lazy()`. It does the
  same thing that `reverse()` does, but waits until the URL string is needed by
  Django before computing the URL. The advantage is that we can use
  `reverse_lazy()` in contexts when Django hasn't yet created the full
  URL-pattern tree. The inherent problem is that Python files are imported by
  Django as Django is starting up, meaning that attributes on classes or
  variables (like those in `settings.py`) are evaluated as Django starts, which
  is before the existence of the URL-pattern tree. If we were to use
  `reverse()` on an a class attribute like in the example above, Django would
  throw an error, because it cannot find any URLs when it's starting! In short:
  `reverse_lazy()` allows our code to remain DRY in situations when reversing
  URLs is not yet possible.

[dc53479077]: https://github.com/jambonrose/DjangoUnleashed-1.8/commit/dc53479077259140c871064d9edfb3f1b64b85ee#diff-4cf866230c5f4552e690c940ba057d2eR1
