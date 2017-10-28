---
title: Variable `contributor` Never Assigned
slug: group_never_assigned
edition: 1
chapter: 20
page: 480
---
Example 20.21 creates a new group, but never assigns the new group to a
variable. In Example 20.22, the `contributor` variable is refered to
for the first time without warning. Example 20.21 should assign the
value.

{% highlight python %}
>>> contributor = Group.objects.create(name='contributors')
>>> contributor
<Group: contributors>
>>> Group.objects.values()
[{'id': 1, 'name': 'contributors'}]
{% endhighlight %}
