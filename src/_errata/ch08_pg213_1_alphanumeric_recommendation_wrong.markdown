---
title: Slug Error Non-alphanumeric Recommendation is Inaccurate
slug: slug_alphanumeric_recommendation_wrong
edition: 1
chapter: 8
page: 213
---

Towards the end of section 8.2.1, I state:

> Triggering a validation error with our slug field is simpler: we have
  the option to pass the value `create`, or any character that is not
  alphanumeric, such as a dash or an underscore.

This is not accurate. To generate an error on a `SlugField`, we must
pass a value that is not accepted by the field. As originally discussed
on in Chapter 5 on page 130, a slug will accept an alphanumeric
character, a dash, or an underscore. We can use any other character to
forcibly generate an error. I opt to use `%%%`, but you could use any of
`!`, `#`, `$`, or even `😈`. Keep in mind that spaces do not count as
alphanumeric, so you could generate a validation error by passing a
string with spaces in between (simply including spaces count as an empty
submission).
