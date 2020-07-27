library(ggplot2)

kNN_vec                     = c(1,5,10,20,50,100)

RMSE_50 =  c(0.8085851,0.8002455,0.7847977,0.768254,0.73333,0.7083541)
RMSE_100 = c(0.8333894,0.8168655,0.794376,0.7464838,0.6477484,0.6831452)
RMSE_150 = c(0.7035869,0.6720156,0.6909337,0.7699794,NA,NA)
RMSE_270 = c(0.5679435,0.926641,0.926641,0.926641,0.926641,0.926641)
# RMSE_df   = data.frame(kNN_vec, RMSE_50, RMSE_100, RMSE_150, RMSE_270)
# ggplot(data=RMSE_df)
# ggplot(RMSE_df, aes(kNN_vec)) +                    # basic graphical object
#   geom_line(aes(y=RMSE_50), colour="red") +  # first layer
#   geom_line(aes(y=RMSE_100), colour="green") + # second layer
#   geom_line(aes(y=RMSE_150), colour="black") +  # third layer
#   geom_line(aes(y=RMSE_270), colour="blue") + # fourth layer
#   ylab("RMSE") + xlab("k neighbors ") +
#   labs(title="RMSE Vs number of neighbors for different number of baseline users")

x<-kNN_vec; y1=RMSE_50; y2=RMSE_100; y3=RMSE_150; y4=RMSE_270
plot(x, y1, type="b", pch=19, col="green", xlab="k neighbors", ylab="RMSE", ylim=c(0.5,1), lty=1, main = "RMSE Vs number of neighbors", cex=1,cex.lab=1.5,cex.axis=1, cex.main=1.5)
# Ajouter une ligne
lines(x, y2, pch=3, col="blue", type="b", lty=2)
lines(x, y3, pch=4, col="magenta", type="b", lty=2)
lines(x, y4, pch=0, col="black", type="b", lty=1)
# Ajouter une légende
legend(40, 0.9, legend=c("1861 users 11187 movies", "262 users 9309 movies" , "56 users 6283 movies", "6 users 949 movies"),
       col=c("green", "blue","magenta","black"), lty=c(1,2,2,1), cex=1, pch=c(19,3,4,0))
  # 
# min 50 user ratings: 1861 users 11187 movies
accuracy_50 =  c(1,1,1,1,1,0.9998862)
precision_50 =  c(1,1,1,1,1,0.9998047)
recall_50 =  c(1,1,1,1,1,1)
# 
# min 100 user ratings: 262 users 9309 movies 
# 
accuracy_100 =  c(1,1,0.9996262,0.9939256,0.9380637,0.8471382)
precision_100 =  c(1,1,0.9994169,0.9945586,0.9425821,0.8453765)
recall_100 =  c(1,1,1,0.9957627,0.9519616,0.8788315)
# 
# min 150 user ratings: 56 users 6283 movies 
# 
accuracy_150 =  c(0.9634146,0.9058824,0.8544194,0.7929361,0.6719194,0.6497152)
precision_150 =  c(0.9574468,0.9174757,0.8644068,0.80172,0.6778276,0.658046)
recall_150 =  c(0.9782609,0.9264706,0.8819939,0.826194,0.702459,0.6751541)
# 
# 
# min 270 user ratings & 20 movie ratings: 6 users 949 movies 
# 
accuracy_270 =  c(0.8,0.6134969,0.6134969,0.6134969,0.6134969,0.6134969)
precision_270 =  c(0.8666667,0.6593407,0.6593407,0.6593407,0.6593407,0.6593407)
recall_270 =  c(0.8125,0.6521739,0.6521739,0.6521739,0.6521739,0.6521739)
# 
# 
x<-kNN_vec; y1=accuracy_50; y2=accuracy_100; y3=accuracy_150; y4=accuracy_270
plot(x, y1, type="b", pch=19, col="green", xlab="k neighbors", ylab="accuracy", ylim=c(0.5,1), lty=1, main = "accuracy Vs number of neighbors", cex=1,cex.lab=1.5,cex.axis=1, cex.main=1.5)
# Ajouter une ligne
lines(x, y2, pch=3, col="blue", type="b", lty=2)
lines(x, y3, pch=4, col="magenta", type="b", lty=2)
lines(x, y4, pch=0, col="black", type="b", lty=1)
# Ajouter une légende
legend(40, 0.85, legend=c("1861 users 11187 movies", "262 users 9309 movies" , "56 users 6283 movies", "6 users 949 movies"),
       col=c("green", "blue","magenta","black"), lty=c(1,2,2,1), cex=1, pch=c(19,3,4,0))

x1=recall_50; x2=recall_100; x3=recall_150; x4=recall_270
y1=precision_50; y2=precision_100; y3=precision_150; y4=precision_270
plot(x1, y1, type="b", pch=19, col="green", xlab="recall", ylab="precision", xlim=c(0.6,1), ylim=c(0.6,1), lty=1, main = "precision Vs recall", cex=1,cex.lab=1.5,cex.axis=1, cex.main=1.5)
# Ajouter une ligne
lines(x2, y2, pch=3, col="blue", type="b", lty=2)
lines(x3, y3, pch=4, col="magenta", type="b", lty=2)
lines(x4, y4, pch=0, col="black", type="b", lty=1)
# Ajouter une légende
legend(0.6, 1, legend=c("1861 users 11187 movies", "262 users 9309 movies" , "56 users 6283 movies", "6 users 949 movies"),
       col=c("green", "blue","magenta","black"), lty=c(1,2,2,1), cex=1, pch=c(19,3,4,0))
