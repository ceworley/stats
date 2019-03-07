
top = c()
bot = c()

end = 500

for(i in 1:end)
{
    se = 1.118/sqrt(i)
    top = c(top, 2.5+se)
    bot = c(bot, 2.5-se)
}

pdf('running_die_SE.pdf',width=6,height=3.5)

plot(1:end, top, ylim=c(1,4), type='l', xlab='rolls', ylab='mu plus/minus SE', main='The standard error decreases with more rolls.')
lines(1:end, bot)
