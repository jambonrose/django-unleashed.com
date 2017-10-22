---
title: 404 Error for `/tag/create/`
slug: 404_tag_create_view
edition: 1
chapter: 8
page: 213
---
Section 8.2.1 instructs the reader to run the development server and access the
site at URI `/tag/create/`. However, the view to actually render the template
we've just built won't be created until section 9.2.2, a whole chapter later.

The typo is due to a rewrite where this content was rearranged. To actually run
the site, you may clone the code from the [main repository][main repo],
checkout commit [fa52634a9e][fa52634a9e], and then follow the original
instructions.

```console
$ # remember to run Python projects in a virtual env!
$ # you can skip the cloning step if you already have the code
$ git clone git@github.com:jambonrose/DjangoUnleashed-1.8.git
$ # the command above optionally takes a directory name for where to clone the repo
$ git checkout fa52634a9e
$ # if you've just cloned, you must first migrate
$ python manage.py migrate
$ python manage.py runserver
```

If you now browse to `http://127.0.0.1:8000/tag/create/`, you can see the form
errors as described.

[main repo]: https://github.com/jambonrose/DjangoUnleashed-1.8
[fa52634a9e]: https://github.com/jambonrose/DjangoUnleashed-1.8/commit/fa52634a9e
