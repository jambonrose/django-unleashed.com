---
title: Section 9.4.1 Opening Paragraph Repeat Typo
slug: section_9_4_1_opening_paragraph_repeat
edition: 1
chapter: 9
page: 269
---
The second line to section 9.4.1 accidentally repeats `blog_post_detail`.

> However, to differentiate `blog_post_delete` from either
  **`blog_post_detail`** or **`blog_post_detail`**, our new URL pattern
  will append the `/delete/` path segment to our regular expression
  pattern, as shown in Example 9.68.

The second URL pattern should be referring to `blog_post_update`.

> However, to differentiate `blog_post_delete` from either
  `blog_post_detail` or **`blog_post_update`**, our new URL pattern
  will append the `/delete/` path segment to our regular expression
  pattern, as shown in Example 9.68.
