king=scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
king
king_ts=ts(king)
king_ts
plot(king_ts)
births=scan("http://robjhyndman.com/tsdldata/data/nybirths.dat")
b_ts=ts(births,frequency = 12,start = c(1946,1))
b_ts
plot(b_ts)
b_ts
