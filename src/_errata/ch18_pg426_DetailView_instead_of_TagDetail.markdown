---
title: Text should refer to `DetailView`, not `TagDetail`
slug: detailview_instead_of_tagdetail
edition: 1
chapter: 18
page: 426
---
In the first paragraph of section 18.5,

> Given that our detail page for `Post` uses the year, month, and slug
  of the object for uniqueness, it didn’t make any sense to use
  **`TagDetail`**.

The `TagDetail` at the end of the sentence should actually refer to
the `DetailView` generic view mentioned earlier in the paragraph. The
line should therefore be printed as it is below.

> Given that our detail page for `Post` uses the year, month, and slug
  of the object for uniqueness, it didn’t make any sense to use
  **`DetailView`**.
