# svensktext R data package

svensktext is an R package that contains data relevant for the Swedish language, such as:

- stopwords
- emotions
- ...


# Install

*Note: under development*

```r
# install.packages("devtools")
devtools::install_github("peterdalle/svensktext-rpackage")
```

# Example

```py
library(svensktext)

svensktext::stopwords
svensktext::emotions
```

# Overview of datasets

Dataset | Description
------- | ---------------------
`stopwords` | Various stopwords suitable for generic texts.
`emotions` | ...
`...` | ...

# Documentation

In the R console, write `?` followed by the dataset name to view the documentation. For example:

```r
?svensktext::stopwords
```

See available datasets:

```r
?svensktext
```

# How the package is built

The datasets are prepared by: 

1. downloading the data from the svensktext data repository (<https://github.com/peterdalle/svensktext>)
2. saving data as built-in datasets within the R package. 

See the file `data-raw/prepare-datasets.R` for details.

# See also

- [svensktext data repository](https://github.com/peterdalle/svensktext)

# Licenses

[CC-BY](#LICENSE)

See the license for each particular dataset in the documentation.
