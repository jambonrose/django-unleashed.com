---
title: Database Necessity Not Strictly True
slug: database_necessity
edition: 1
chapter: 1
page: 16
---
The very first paragraph on page 16 informs the reader that it is
necessary to create a database to run the new Django site. This is not
strictly true: it is possible to run the site using `manage.py` without
a database.  However, the first thing Django will do is to warn you (in
the shell, as demonstrated below) that you need to run migrations (the
command in Example 1.5) to create the database.
<pre><code class="highlight language-shell" data-lang="shell"><span class="nv">$ </span>./manage.py runserver
Performing system checks...

System check identified no issues (0 silenced).

<span class="err">You have unapplied migrations; your app may not work properly until they are applied.</span>
<span class="err">Run 'python manage.py migrate' to apply them.</span>
</code></pre>
The message above is why we opt to run `migrate` before `runserver`.

The truth of the matter is that Django will run just fine up until it
needs to communicate with a database. For instance, if you browse root
(`/`) or `/admin/` on a brand new site, everything will work. However,
the moment you try to login to `/admin/`, Django will begin to throw
errors. This is true for Django generally, not just on a new project.
