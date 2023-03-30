# Olympic Coast National Marine Sanctuary Public Scoping Comment Analysis 

## What's in this repository?

This repository contains code and folder structure for sorting and categorizing public comments - this code was written for the 2023 OCNMS Management Plan Review, but can be adapted for other NMS Public Scoping comment applications.

This repository is maintained by Hofmann Lab graduate student Amelia Ritger (GitHub: [@ameliaritger](https://github.com/ameliaritger)) at the University of California, Santa Barbara in the Department of Ecology, Evolution, & Marine Biology. Please direct any questions or comments about this repository to [Amelia Ritger](mailto:aritger@ucsb.edu).

## Folder structure

Folder | Description 
---|-----------
code | Code for cleaning up, categorizing, and visualizing comments
data | File(s) containing raw comments as .csv files
sorted | Sorted comment file(s) and corresponding figure(s)

## How to use this repository

This repository has everything you need to get started analyzing Public Scoping comments - except the comments. 

### You will need to make the following changes to the repository to get it working for you:

1. Download the public scoping comments template from `data/template/` and copy/paste your comments and associated details within this file. **Copy the text from any attachments and paste that text into the "comment" column**. Then, **save the file as a .csv.** The code can handle multiple files, if you want to save comments as multiple .csv files.
2. Upload your now-formatted public scoping comments .csv file(s) to `data/`. The code is written to handle multiple .csv files.
3. Go into `code/` and find `comment_sort.Rmd`. Locate the code chunk labeled "**Generate categories and input keywords**". Everything to the left of `<-` is a category or sub-category, everything to the right and contained within `c()` is (generally) a keyword. Change the categories/subcategories and keywords to your needs. **DO NOT USE SPACES in your category/subcategory names**, instead follow [standard programming naming conventions](https://www.freecodecamp.org/news/programming-naming-conventions-explained/). The code is written in snake case, but you can change the syntax to your preference. 

### After following the above steps, the code will generate the following outputs: 

1. In `sorted/`: A .csv file called `comments_sorted.csv` containing all your public comments that have now been sorted into your established categories/subcategories using the keywords you provided in step 3 above. There are also columns that show the total number of categories each comment was sorted into, and list the categories each comment was sorted into. 
2. In `sorted/category-specific`: Individual .csv files for each category/subcategory, named using the category/subcategory names you provided in step 3 above.