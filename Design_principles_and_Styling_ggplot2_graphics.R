library(ggplot2)

#CO2 UPTAKE 
#1
ggplot(CO2) + aes(conc, uptake) + geom_jitter()

#2
ggplot(CO2) + aes(conc, uptake) +
  geom_jitter(shape = 17, size = 3, colour = "skyblue") +
  geom_smooth(method = "lm", colour = "deeppink1", linetype = "dotted")

#3
ggplot(CO2) + aes(conc, uptake) +
  geom_jitter(aes(colour = Type), shape = 17, size = 3) +
  geom_smooth(method = "lm", colour = "deeppink1")

#4
ggplot(CO2) + aes(conc, uptake) +
  geom_jitter(aes(colour = Type), shape = 17, size = 3) +
  geom_smooth(method = "lm", colour = "deeppink1") +
  labs(title = "CO2 uptake",
       colour = "Origin",
       x = "ambient CO2 concentrations (mL/L)",
       y = "CO2 uptake rates (umol/m^2 sec)")

#5
ggplot(CO2) + aes(conc, uptake, colour = Type) +
  geom_jitter(shape = 17, size = 3) +
  geom_smooth(method = "lm") +
  scale_colour_manual(values = c("steelblue3", "firebrick2")) +
  labs(title = "CO2 uptake",
       colour = "Origin",
       x = "ambient CO2 concentrations (mL/L)",
       y = "CO2 uptake rates (umol/m^2 sec)")

#6
ggplot(CO2) + aes(conc, uptake, colour = Type) +
  geom_jitter(shape = 17, size = 3) +
  geom_smooth(method = "lm") +
  scale_colour_manual(values = c("steelblue3", "firebrick2")) +
  labs(title = "CO2 uptake",
       colour = "Origin",
       x = "ambient CO2 concentrations (mL/L)",
       y = "CO2 uptake rates (umol/m^2 sec)") +
  facet_wrap(vars(Plant))

#7
ggplot(CO2) + aes(conc, uptake, colour = Type) +
  geom_jitter() +
  geom_smooth(method = "loess", formula = y ~ x) +
  scale_colour_manual(values = c("steelblue3", "firebrick2")) +
  labs(title = "CO2 uptake",
       colour = "Origin",
       x = "ambient CO2 concentrations (mL/L)",
       y = "CO2 uptake rates (umol/m^2 sec)") +
  facet_grid(Type ~ Treatment) +
  theme(legend.position = "none")




#Q2 MAMMALS SLEEP
#1
ggplot(msleep) + aes(bodywt, brainwt) + geom_point() +
  scale_x_log10() + scale_y_log10() +
  geom_smooth(formula = y~x, method = "lm") +
  labs(x = "Body weight", y = "Brain weight")

#2
ggplot(msleep) + aes(bodywt, brainwt) +
  geom_point(aes(colour = vore)) +
  geom_smooth(formula = y~x, method = "lm",
              size = 0.5, colour= "lightgrey", fill = "grey80") +
  scale_x_log10() + scale_y_log10() +
  labs(x = "Body weight", y = "Brain weight")

#3
vore.labels <- c("Carnivore", "Herbivore", "Insectivore", "Omnivore")
names(vore.labels) <- c("carni", "herbi", "insecti", "omni")
msleep.noNA <- msleep[!is.na(msleep$vore),]
ggplot(msleep.noNA) + aes(sleep_total, bodywt) +
  geom_point(aes(colour = genus)) +
  geom_smooth(formula = y~x,
              method = "lm") +
  scale_y_log10() +
  labs(x = "Sleep total", y = "Body weight",
       title = "Sleep and body weight by food source") +
  facet_wrap(vars(vore), labeller = labeller(vore = vore.labels)) +
  theme(legend.position = "none")




