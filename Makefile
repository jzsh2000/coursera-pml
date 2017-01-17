pml.html: pml.Rmd data/pml-training.csv data/pml-training.csv
	R ${R_OPTS} -e "rmarkdown::render('pml.Rmd', \
	    BiocStyle::html_document())"

data/pml-training.csv:
	mkdir -p data
	cd data/; wget https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv

data/pml-testing.csv:
	mkdir -p data
	cd data/; wget https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv
