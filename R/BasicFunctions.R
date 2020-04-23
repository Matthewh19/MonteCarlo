
MonteCarloSimulation <- function(repititions, gain, variation, starting_value) {
  gains <- rnorm(n = repititions, mean = gain, sd = variation)

  price <- data.frame(index = numeric(), Price = numeric())

  for(i in 1:repititions){
    if(i == 1){
      price[i, 1] <- 20
    } else{
      price[i, 1] <- price[i-1, 1]*gains[i]
    }
  }
  ggplot(hey, aes( x = 1:repititions, y = Price)) +
    geom_line()
}

library(ggplot2)

MonteCarloSimulation(repititions = 200, gain = 1.001, variation = 0.005, starting_value = 20)





days <- 200
changes <- rnorm(200,mean=1.001,sd=0.005)
plot(cumprod(c(20,changes)),type='l',ylab="Price",xlab="day",main="BAYZ closing price (sample path)")
