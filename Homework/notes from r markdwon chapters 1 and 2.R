## To change R to YAML
cat(yaml::as.yaml(list(
  title = 'A Wonderful Day',
  subtitle = 'hygge: a quality of coziness'
)))





## In R Markdown, start with --- and close with --- for the top of the document
---
  title: "Practise File"
author: "Olivia Hudson"
date: "17/01/2020"
output: html_document

## other options for output are ... 
##  beamer_presentation
##  github_document
##  html_document
##  ioslides_presentation
##  latex_document
##  md_document
##  odt_document
##  pdf_document
##  powerpoint_presentation
##  rtf_document
##  slidy_presentation
##  word_document
---
  
  ```
##this is where you add a chunk of code

```

to add a smaller bit of code do 'a+b' in between a sentence for example





## Inline Formatting
 #Inline text will be italic if surrounded by underscores or asterisks, e.g., _text_ or *text*. 
 #Bold text is produced using a pair of double asterisks (**text**). 
 #A pair of tildes (~) turn text to a subscript (e.g., H~3~PO~4~ renders H3PO4). 
 #A pair of carets (^) produce a superscript (e.g., Cu^2+^ renders Cu2+).
 #To mark text as inline code, use a pair of backticks, e.g., `code`. To include literal backticks in the text, use one more than needed 
  #e.g., you can use four backticks to preserve three backtick inside: ```` ```code``` ````, which is rendered as ```code```.
 #Hyperlinks are created using the syntax [text](link), e.g., [RStudio](https://www.rstudio.com). 
 #The syntax for images is similar: just add an exclamation mark, e.g., ![alt text or image title](path/to/image). 
 #Footnotes are put inside the square brackets after a caret ^[], e.g., ^[This is a footnote.]



## Section headings
 #do these as below
'# First-level header

## Second-level header

### Third-level header'

 # if you do not want the headings to be numbered add {.unnumbered} after the heading




## List items
 #Unordered lists
 # start with * or  + or -
 # indent to nest within a list

' 
- item 1
- item 2
  - item 2.1
  - item 2.2
- item 3
'
 #ordered lists
 #start with numbers
'
1. the first item
2. the second item
3. the third item
    - one unordered item
    - one unordered item'





## Backquotes
 # write the quote after > 
 # add the author using ---
'
> "this is the quote"
>
> --- Author Name'



## Maths expressions
 # Inline latex maths expressions can be written by adding a '$' before and after the equation
 # e.g. '$equation$'
 # to make it more of a display (bigger expression) add two dollar signs
 # e.g. '$$equation$$'

