---
title: Example Output for `makemigrations` is Incorrect
slug: makemigration_output_incorrect
edition: 1
chapter: 15
page: 369
---
Example 15.42 demonstrates how to generate a data migration with a
specific file name by passing the `--name` flag to the `makemigrations`
command. The output in the example prints the wrong name for the file
created. Instead of creating `0001_sites_data.py`, this command will
create the filename passed: `0002_flatpages_data.py`
