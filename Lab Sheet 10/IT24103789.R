#Exercise answer
setwd("C:\\Users\\ASUS\\Desktop\\IT24103789")
getwd()

observed <- c(120, 95, 85, 100)

prob <- c(0.25, 0.25, 0.25, 0.25)

result <- chisq.test(x = observed, p = prob)

print(result)


result$expected
