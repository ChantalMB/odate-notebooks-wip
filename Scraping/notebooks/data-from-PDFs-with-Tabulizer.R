install.packages("tabulapdf")

library("tabulapdf")

# The file could be local, or it could be on the web.
# We're going to use 
# Lane, K., Pomeroy, E. & Davila, M. (2018). Over Rock and Under Stone: Carved Rocks and Subterranean Burials at Kipia, Ancash, AD 1000 – 1532. Open Archaeology, 4(1), pp. 299-321. Retrieved 20 Jul. 2018, from doi:10.1515/opar-2018-0018

location <- 'https://researchonline.ljmu.ac.uk/id/eprint/8451/8/Rock%20and%20Under%20Stone%20Carved%20Rocks%20and%20Subterranean%20Burials%20at%20Kipia%20Ancash%20AD%201000%20%201532.pdf'

# Next, let's grab the data in Table 1. This is on pg 6 of the pdf.
# The line below will open a window in the viewer on the right side
# of RStudio, and open pg 6 there. Drag and click a box over the 
# table to extract. Be careful to grab the table, and only the table.

data <- extract_areas(location, 6) 

# We can examine the first bit of data that we've extracted with the 'head' command.
head(data)

# We can save our data to another variable just in case we mess something up.

orig_data <- data # in case of trouble

# Now let's clean this up; right now it's a list with text, not a dataframe with numbers.
# Let's remove that first row, which appears to be a parsing error, and update data to be the tibble our data variable contains
data <- data[[1]][-1, ]

# Examine the data again. 
head(data)

# Notice anything different than last time we ran the head command?

# Now we turn it into a dataframe
str(data)

View(data)

# ta da!

## Now let's plot something
library("ggplot2")

# data is all chr, so we have to turn it into numeric

# first we look in the C14 column for things that match digits
years <- regexpr("[[:digit:]]{3}",data[["C14"]])

# then we tell R that those digits are data type numeric
data$years <- as.numeric(regmatches(data[["C14"]], years))
data$RegPerc <- as.numeric(gsub("%", "", data$Pit))

# now we can make a scatter plot

ggplot(data=data, aes(x=Pit, y=C14)) +
  geom_point(shape=1)

#-----------#

# We can get also get tabulapdf to extract all of the tables it finds automatically:
tab1 <- extract_tables(location)
str(tab1)
