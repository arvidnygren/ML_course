#let author = "Arvid Nygren"
#set page(
  header: [#author #h(1fr) #datetime.today().display()]
)

#set text(font: "New Computer Modern", size: 11pt)
= Some answers 
== 3
It seems like the data points come from some kind of cubic function so therefore RMSE for testing and training are quite similair atleast when the ratio is relativly high. When its's 0.5 they are nearly identical.
For high ratios degree 7 looks quite similair to degree 3 but when the raito is 0.1 the data can be interpolated exactly and then the RMSE for testing blows up, i.e overfitting.
Degree 12 is a similair story but the RMSE training versus testing descrepancy is apparent even at higher ratios.

Difficult to say what split is better, the less data you us for training the higher the variance in the testing RMSE is going to be but if you have the right model it's also a good idea to use as much data as possible for training.

The $RMSE_train$ for 10 90 split for degree 12 is really high because of extreme overfitting. The more data samples I have the higher the ratio could be (?).
