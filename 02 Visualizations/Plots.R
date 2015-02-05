ggplot(dfa1, aes(x = OCCURANCES, y = NUMBER_OF_DAYS)) + geom_point()
ggplot(dfb1, aes(x = CUSTOMER_STATE, y = PEOPLE_FROM_STATE)) + geom_point()
ggplot(dfc1, aes(x = ITEM_ID, y = NUMBER_OF_TIMES_ORDERED)) + geom_point()
ggplot(dfd1, aes(x = ARTIST, y = AVERAGE_PRICE)) + geom_point()
p <- ggplot(df, aes(x=as.Date(SHIPPED_DATE, "%Y-%m-%d"), y=as.Date(ORDER_DATE, "%Y-%m-%d")))+geom_point(aes(color= as.factor(UNIT_PRICE)))
p + facet_wrap(~CUSTOMER_STATE)

q <- ggplot(df, aes(x=as.Date(SHIPPED_DATE, "%Y-%m-%d"), y=as.Date(ORDER_DATE, "%Y-%m-%d")))+geom_point(aes(color= as.factor(TITLE)))
q + facet_wrap(~CUSTOMER_STATE)

r <- ggplot(df, aes(x=as.Date(SHIPPED_DATE, "%Y-%m-%d"), y=as.Date(ORDER_DATE, "%Y-%m-%d")))+geom_point(aes(color= as.factor(ARTIST)))
r + facet_wrap(~CUSTOMER_STATE)