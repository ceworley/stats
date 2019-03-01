a = c(rep(0,13),rep(1,35))
b = sample(a,48)

males = b[1:24]
females = b[25:48]

male_proportion = sum(males)/24
female_proportion = sum(females)/24

difference = male_proportion - female_proportion

print(difference)



differences = c()

for (i in 1:10000) {
    b = sample(a,48)

    males = b[1:24]
    females = b[25:48]

    male_proportion = sum(males)/24
    female_proportion = sum(females)/24

    difference = male_proportion - female_proportion

    differences = c(differences, difference)
}

print(differences)
#hist(differences,breaks=10)
stripchart(differences, method = "stack", offset = .5, at = .15, pch = 19, main = "Dotplot of Differences", xlab = "Difference")
