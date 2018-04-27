#vehicle

attach(Sorted.vehicles)
names(Sorted.vehicles)

plot(V1,V2)


#Evening cycle
plot(V1[21000:40000],V2[21000:40000],type="n")
fit.ml5 <- glm(V2[21000:40000] ~ poly(V1[21000:40000],27))
predicted.intervals <- predict(fit.ml5, data.frame(x=V1[21000:40000]),interval='confidence',
                               level=0.95)
lines(V1[21000:40000],predicted.intervals,col='green',lwd=3)

hist(V2[1800:5500])
hist(V3[1800:5500])
mean(V2[1800:5500])
max(V2[1800:5500])
sd(V2[1800:5500])

#morning Cycle
plot(V1[1700:17000],V2[1700:17000],type="n")
fit.ml6 <- glm(V2[1700:17000] ~ poly(V1[1700:17000],25))
predicted.intervals <- predict(fit.ml6, data.frame(x=V1[1700:17000]),interval='confidence',
                               level=0.95)
lines(V1[1700:17000],predicted.intervals,col='blue',lwd=3)

hist(V2)
hist(V3)
mean(V2[1700:17000])
max(V2[1700:17000])
sd(V2[1700:17000])
plot(V2,V3,cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5)

max(V3)


