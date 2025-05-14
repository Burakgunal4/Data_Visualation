install.packages("ggplot2")

#Q1
? mpg

#Q2
ggplot(mpg) + aes(displ, hwy) + geom_point()

#Q3
ggplot(mpg) + aes(displ, hwy, size = cty) + geom_point()

#Q4
ggplot(mpg) + aes(displ, hwy, size = cty, colour = class) + geom_point()

#Q5
ggplot(mpg) + aes(displ, hwy, colour = class) + geom_point() +
  geom_rug()

#Q6
ggplot(mpg) + aes(displ, hwy, colour = class) + geom_point() +
  geom_rug() + geom_smooth(aes(colour = NULL))

#Q7
ggplot(mpg) + aes(class) + geom_bar()

#Q8
ggplot(mpg) + aes(class, fill = fl) + geom_bar()

#Q9
ggplot(mpg) + aes(x = "", fill = class) + geom_bar() + coord_polar("y")

#Q10
ggplot(mpg) + aes(hwy) + geom_histogram(bins = 20)

#Q11
ggplot(mpg) + aes(displ, hwy) +
  geom_smooth() + geom_point(aes(colour = drv))

#Q12
ggplot(mpg) + aes(displ, hwy) +
  geom_smooth(aes(linetype = drv)) + geom_point(aes(colour = drv))



