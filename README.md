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

This repository has everything you need to get started analyzing Public Scoping comments - except the comments. You will need to make the following changes to the repository to get it working for you:
1. Download the public scoping comments template from data/template/ and copy/paste your comments and associated details within this file. *Save the file as a .csv.* The code can handle multiple files, if you want to save comments as mutliple .csv files.
2. Add your public scoping comments .csv file(s) to data/
3. Go into code/ and find `comment_sort.Rmd`. Locate the code chunk labeled "Generate categories and input keywords"