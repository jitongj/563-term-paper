###########
##Data
###########
setwd("~/Desktop/term paper/APCI")
EWdeath<-read.table("1x1USA_Deaths.txt")
EWdeath.female<-as.numeric(as.vector(EWdeath[,3])) # col3 is female

EWdeath.female.mat<-matrix(EWdeath.female,nrow=111) # 111 age categories

EWdeath.female.mat.ex<-EWdeath.female.mat[(1:100),(29:70)] # (1:100): age from 0-109, (29:70): year from 1961 to 2002
EWdeath.female.vec.ex<-as.vector(EWdeath.female.mat.ex)

EWexpo<-read.table("1x1USA_Exposures.txt")
EWexpo.female<-as.numeric(as.vector(EWexpo[,3])) # col3 is female
EWexpo.female.mat<-matrix(EWexpo.female,nrow=111)
EWexpo.female.mat.ex<-EWexpo.female.mat[(1:100),(29:70)]
EWexpo.female.vec.ex<-as.vector(EWexpo.female.mat.ex)

A<-dim(EWdeath.female.mat.ex)[1];T<-dim(EWdeath.female.mat.ex)[2]

###############
##Holdout data
###############

EWdeath.validation<-read.table("1x1USA_Deaths.txt")
EWdeath.female.validation<-as.numeric(as.vector(EWdeath.validation[,3])) # col3 is female
EWdeath.female.mat.validation<-matrix(EWdeath.female.validation,nrow=111) # 111 age categories
EWdeath.female.mat.ex.validation<-EWdeath.female.mat.validation[(1:100), (71:84)] # (1:100): age from 0-109, year from 2003 to 2016
EWdeath.female.mat.ex.validation<-round(EWdeath.female.mat.ex.validation)

EWexpo.validation<-read.table("1x1USA_Exposures.txt")
EWexpo.female.validation<-as.numeric(as.vector(EWexpo.validation[,3])) # col3 is female
EWexpo.female.mat.validation<-matrix(EWexpo.female.validation,nrow=111)
EWexpo.female.mat.ex.validation<-EWexpo.female.mat.validation[(1:100),(71:84)]
EWexpo.female.mat.ex.validation<-round(EWexpo.female.mat.ex.validation)

