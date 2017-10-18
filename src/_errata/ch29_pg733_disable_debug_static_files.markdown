---
title: Disabling `DEBUG` Setting Disables Static File Loading
slug: disabling_debug_static
edition: 1
chapter: 29
page: 733
---

Clarification: the reason we use the [`whitenoise`][whitenoise] package
beginning on page 733 is because Django does not serve static files in
production. When the `DEBUG` setting is disabled (set to `false` in
`suorganizer/settings/production.py` in commit [`3c73f989ea`][debug git
diff]) Django ceases to serve the files, instead anticipating that files
will be served with another tool, because Django does not serve static
files quickly. On very large sites, it is recommended to serve static
files on a completely different server, usually sitting behing a
Content-Distribution Network. Covering this material is beyong the scope
of the book.

[debug git diff]: https://github.com/jambonrose/DjangoUnleashed-1.8/commit/3c73f989ea/#diff-5c33a057d0c2b6bf5eaeda7a89489b31R13
[whitenoise]: http://whitenoise.evans.io/en/stable/django.html
