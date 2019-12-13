"
***************************************************************************
gert2_simpleRegresion.R
---------------------
Date                 : December 2019
Copyright            : (C) 2019 by Felipe Carranza
Email                : fcarranza@protonmail.com
***************************************************************************
*                                                                         *
*   This program is free software; you can redistribute it and/or modify  *
*   it under the terms of the MIT  License *
*                                                                         *
*                                                                         *
***************************************************************************

__author__ = 'Felipe Carranza'
__date__ = 'December 2019'
__copyright__ = '(C) 2019, Felipe Carranza'

#Showing how to find sample number and interval confidence"
"The coefficient of determination, called R² and pronounced R square, is a statistic used in
the context of a statistical model whose main purpose is to predict future results or test a hypothesis.
The coefficient determines the quality of the model to replicate the results, and the proportion of 
variation of the results that can be explained by the model
Steel, R.G.D, and Torrie, J. H., Principles and Procedures of Statistics with Special Reference to the Biological Sciences., McGraw Hill, 1960, pp. 187, 287.)
"

#example of how to get R2 from simple regression

#Dependent variable
x=c(3,
    6,
    8,
    8,
    11,
    16,
    20,
    20,
    22,
    26)
#Independent variable
y=c(58,
    105,
    88,
    118,
    117,
    137,
    157,
    169,
    149,
    202
)

#equation
# y = b0 + b1X

#OLS Method

#Find means
(xprm=mean(x))
(yprom=mean(y))

#you need for to find  de B1
sum1= sum(( x - xprom)*( y - yprom) )
sum2=sum( (x - xprom)^2)

(b1=sum1/sum2)

#find B0
(b0=yprom - (b1*xprom))

#Graph scatter
plot(y~x)

#Use it if you can calculate values:
(yesti= b0 + (b1*(x))   )

#Error SCE
(sce=sum( ( y - yesti ) ^2) )
#Error STC
(stc=sum( (y - yprom)^2 ) ) 
#Error SCR
(scr=sum( (yesti - yprom )^2))


#Obtaining Rsquare
#form 1
(R2=1-(sce/stc))
#form 2
(R2= scr/stc) 
#0.902736

#Compare your R2
#Natural sciences 0.l6%
#Social Sciences  0.25%
#Business Area 25%


#Correlation coeficient
r=sqrt(R2)

