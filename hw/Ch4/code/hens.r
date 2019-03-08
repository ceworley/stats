X = function(){
    if(runif(1) < 44/45){
        return(32)
    }
    else{
        return(156)
    }
}


Y = function(){
    total = 0
    for(i in 1:45){
        total = total + X()
    }
    return(total/45)
}


means = c()
for(i in 1:10000){
    means = c(means, Y())
}

hist(means, freq=FALSE, xlab="average number of eggs from a sample of 45 hens",
     main="10000 repetitions of sampling 45 hens")
