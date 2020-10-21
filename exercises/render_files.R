# R script to render all the .Rmd files in the folder
#
# Author: Saurabh Steixner-Kumar
#

# An Example 
# rmarkdown::render('3_1_1.Rmd', output_format = c("pdf_document","html_document"))

#### Code to render pdf documents ####
files <- list.files(pattern = "*.Rmd", recursive = TRUE)
print('files to render in pdf format:');print(files)
for (file in files) {
  invisible(capture.output(suppressWarnings(
    rmarkdown::render(file, output_dir = "./pdf_files", output_format = c("pdf_document"))
    )))
}
#
print('All pdf files done!')

#### Code to render html files ####
files <- list.files(pattern = "*.Rmd", recursive = TRUE)
print('files to render in html format:');print(files)
for (file in files) {
  invisible(capture.output(suppressWarnings(
    rmarkdown::render(file, output_dir = "./html_files", output_format = c("html_document"))
    )))
}
#
print('All html files done!')

