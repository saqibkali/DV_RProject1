p <- ggplot(df, aes(x=as.Date(SHIPPED_DATE, "%Y-%m-%d"), y=as.Date(ORDER_DATE, "%Y-%m-%d")))+geom_point(na.rm = TRUE, aes(color= as.factor(UNIT_PRICE)))
p + facet_wrap(~CUSTOMER_STATE)

q <- ggplot(df, aes(x=as.Date(SHIPPED_DATE, "%Y-%m-%d"), y=as.Date(ORDER_DATE, "%Y-%m-%d")))+geom_point(na.rm = TRUE, aes(color= as.factor(TITLE)))
q + facet_wrap(~CUSTOMER_STATE)

r <- ggplot(df, aes(x=as.Date(SHIPPED_DATE, "%Y-%m-%d"), y=as.Date(ORDER_DATE, "%Y-%m-%d")))+geom_point(na.rm=TRUE, aes(color= as.factor(ARTIST)))
r + facet_wrap(~CUSTOMER_STATE)
