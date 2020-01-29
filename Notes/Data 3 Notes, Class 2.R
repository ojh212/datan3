## Reproducible research
 # every statistical analysis should be able to be reproduced by other researchers
 # always keep code in scripts
 # have a folder for each project, and create subfolders with clear structur
 # write comments for code so that it makes sense
 
## R Markdown
 # combine code and output in one document
 # easily change output formats (html, LaTex, Word, etc.)
 # go to file, new file, r markdown
 # name file
 # make output github_document

 # to customise the output in R Markdown, add a code after the title/author/output section
 # i.e.

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
 # this ^ means that the code AND output are included
 # echo = FALSE means that only the output is included
 # these codes will be provided by Alexi as starter codes so that we can copy and paste them

## To upload .Rmd files to github online
 # 3 steps - stage, commit, push
 # 1) Stage
  # To stage the files we select the files on the 'staged' check box under the 'Git' section near the environment on R
 # 2) Commit
  # press the commit button
  # add a commit message
 # 3) Push
  # then press the push button (top right)
 # to delete a file, re commit but add the commit message 'delete file.Rmd' (add ur filename where it says file)

## wave 9 is found in this file location - Data/UKDA-6614-tab/tab/ukhls_w9
# a standard normal deviation has a mean of zero and sd of one