---
title: Variable `andrew` Never Assigned
slug: user_never_assigned
edition: 1
chapter: 19
page: 459
---
Example 19.12 creates a new user, but never assigns the new user to a
variable.  In Example 19.14 on the next page, the `andrew` variable is
refered to for the first time without warning. Example 19.12 should
assign the new user created to the variable.

{% highlight python %}
>>> andrew = User.objects.create_user(
...     'andrew', # username
...     'django@jambonsw.com', # email
...     'hunter2') # password
...
>>> andrew
<User: andrew>
{% endhighlight %}
