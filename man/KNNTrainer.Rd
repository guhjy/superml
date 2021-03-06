% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/KNNTrainer.R
\docType{data}
\name{KNNTrainer}
\alias{KNNTrainer}
\title{K Nearest Neighbours Trainer}
\format{\code{\link{R6Class}} object.}
\usage{
KNNTrainer
}
\description{
Trains a k nearest neighbour model using fast search algorithms
KNN is a supervised learning algorithm which is used for both regression and classification problems.
}
\section{Usage}{

For usage details see \bold{Methods, Arguments and Examples} sections.
\preformatted{
bst = KNNTrainer$new(k, prob, algorithm, type)
bst$fit_predict(train, test, y)
bst$get_predictions(type)
}
}

\section{Methods}{

\describe{
    \item{\code{$new()}}{Initialise the instance of the vectorizer}
    \item{\code{$fit_predict()}}{trains the knn model and stores the test prediction}
    \item{\code{$get_predictions()}}{returns predictions}
}
}

\section{Arguments}{

\describe{
    \item{k}{number of neighbours to predict}
    \item{prob}{if probability should be computed}
    \item{algorithm}{algorithm used to train the model, possible values are 'kd_tree','cover_tree','brute'}
    \item{type}{type of problem to solve i.e. regression or classification, possible values are 'reg' or 'class'}
}
}

\examples{
data("iris")

iris$Species <- as.integer(as.factor(iris$Species))

xtrain <- iris[1:100,]
xtest <- iris[101:150,]

bst <- KNNTrainer$new(k=3, prob=TRUE, type="class")
bst$fit_predict(xtrain, xtest, 'Species')
pred <- bst$get_predictions(type="raw")
}
\keyword{datasets}
