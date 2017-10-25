---
title: Capital F in `CharField`
slug: capital_f_charfield
edition: 1
chapter: 3
page: 38
---
The second paragraph on page 38 refers to Django's `CharField` multiple
times.  In one instance, the field is mistakenly printed as `Charfield`.
The *F* should instead be captialized to properly refer to the Python
class (as Python variables are case-sensitive).

Thanks to Jonathan Friedman for catching this.
