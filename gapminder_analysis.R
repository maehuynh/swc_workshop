download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")


#African Countries Life expectancies for 2007
#get 2007 data
is_2007 <- gapminder$year == 2007
is_Africa <- gapminder$country == "Africa"
africa_2007 <- gapminder[is_2007 & is_Africa,c("country", "lifeExp")]

ggplot(data=gapminder, aes (x=year, y=lifeExp, color=continent)) + 
  geom_point()

ggplot(data=gapminder, aes (x=year, y=lifeExp, by=country, color=continent)) + 
  geom_line(color="black") + geom_point (aes(size=gdpPercap))

#Notes from Software Carpentry Workshop
#Date: January 17-18, 2017

