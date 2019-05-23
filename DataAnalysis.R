library(jsonlite)
library(dplyr)
library(readr)
pay103<-read_csv("C:\\Users\\asus\\Desktop\\hw1\\data103.csv")
pay104<-read_csv("C:\\Users\\asus\\Desktop\\hw1\\data104.csv")
pay105<-read_csv("C:\\Users\\asus\\Desktop\\hw1\\data105.csv")
pay106<-read_csv("C:\\Users\\asus\\Desktop\\hw1\\data106.csv")


pay103$大職業別<-gsub("_","、",pay103$大職業別)
pay104$大職業別<-gsub("_","、",pay104$大職業別)
pay105$大職業別<-gsub("_","、",pay105$大職業別)
pay106$大職業別<-gsub("_","、",pay106$大職業別)

pay106$`經常性薪資-薪資`<-gsub("—","0",pay106$`經常性薪資-薪資`)
pay106$`經常性薪資-女/男`<-gsub("…","0",pay106$`經常性薪資-女/男`)
pay106$`國中及以下-薪資`<-gsub("—","0",pay106$`國中及以下-薪資`)
pay106$`國中及以下-薪資`<-gsub("…","0",pay106$`國中及以下-薪資`)
pay106$`國中及以下-女/男`<-gsub("—","0",pay106$`國中及以下-女/男`)
pay106$`國中及以下-女/男`<-gsub("…","0",pay106$`國中及以下-女/男`)
pay106$`高中或高職-薪資`<-gsub("—","0",pay106$`高中或高職-薪資`)
pay106$`高中或高職-薪資`<-gsub("…","0",pay106$`高中或高職-薪資`)
pay106$`高中或高職-女/男`<-gsub("—","0",pay106$`高中或高職-女/男`)
pay106$`高中或高職-女/男`<-gsub("…","0",pay106$`高中或高職-女/男`)
pay106$`專科-薪資`<-gsub("—","0",pay106$`專科-薪資`)
pay106$`專科-薪資`<-gsub("…","0",pay106$`專科-薪資`)
pay106$`專科-女/男`<-gsub("—","0",pay106$`專科-女/男`)
pay106$`專科-女/男`<-gsub("…","0",pay106$`專科-女/男`)
pay106$`大學-薪資`<-gsub("—","0",pay106$`大學-薪資`)
pay106$`大學-薪資`<-gsub("…","0",pay106$`大學-薪資`)
pay106$`大學-女/男`<-gsub("—","0",pay106$`大學-女/男`)
pay106$`大學-女/男`<-gsub("…","0",pay106$`大學-女/男`)
pay106$`研究所及以上-薪資`<-gsub("—","0",pay106$`研究所及以上-薪資`)
pay106$`研究所及以上-薪資`<-gsub("…","0",pay106$`研究所及以上-薪資`)
pay106$`研究所及以上-女/男`<-gsub("—","0",pay106$`研究所及以上-女/男`)
pay106$`研究所及以上-女/男`<-gsub("…","0",pay106$`研究所及以上-女/男`)


pay103$`經常性薪資-薪資`<-gsub("—","0",pay103$`經常性薪資-薪資`)
pay103$`經常性薪資-女/男`<-gsub("…","0",pay103$`經常性薪資-女/男`)
pay103$`國中及以下-薪資`<-gsub("—","0",pay103$`國中及以下-薪資`)
pay103$`國中及以下-薪資`<-gsub("…","0",pay103$`國中及以下-薪資`)
pay103$`國中及以下-女/男`<-gsub("—","0",pay103$`國中及以下-女/男`)
pay103$`國中及以下-女/男`<-gsub("…","0",pay103$`國中及以下-女/男`)
pay103$`高中或高職-薪資`<-gsub("—","0",pay103$`高中或高職-薪資`)
pay103$`高中或高職-薪資`<-gsub("…","0",pay103$`高中或高職-薪資`)
pay103$`高中或高職-女/男`<-gsub("—","0",pay103$`高中或高職-女/男`)
pay103$`高中或高職-女/男`<-gsub("…","0",pay103$`高中或高職-女/男`)
pay103$`專科-薪資`<-gsub("—","0",pay103$`專科-薪資`)
pay103$`專科-薪資`<-gsub("…","0",pay103$`專科-薪資`)
pay103$`專科-女/男`<-gsub("—","0",pay103$`專科-女/男`)
pay103$`專科-女/男`<-gsub("…","0",pay103$`專科-女/男`)
pay103$`大學-薪資`<-gsub("—","0",pay103$`大學-薪資`)
pay103$`大學-薪資`<-gsub("…","0",pay103$`大學-薪資`)
pay103$`大學-女/男`<-gsub("—","0",pay103$`大學-女/男`)
pay103$`大學-女/男`<-gsub("…","0",pay103$`大學-女/男`)
pay103$`研究所及以上-薪資`<-gsub("—","0",pay103$`研究所及以上-薪資`)
pay103$`研究所及以上-薪資`<-gsub("…","0",pay103$`研究所及以上-薪資`)
pay103$`研究所及以上-女/男`<-gsub("—","0",pay103$`研究所及以上-女/男`)
pay103$`研究所及以上-女/男`<-gsub("…","0",pay103$`研究所及以上-女/男`)








pay104$`大學-女/男`<-gsub("—","0",pay104$`大學-女/男`)
pay104$`大學-女/男`<-gsub("…","0",pay104$`大學-女/男`)
pay105$`大學-女/男`<-gsub("—","0",pay105$`大學-女/男`)
pay105$`大學-女/男`<-gsub("…","0",pay105$`大學-女/男`)

pay103$`大學-薪資`<-as.numeric(pay103$`大學-薪資`)
pay106$`大學-薪資`<-as.numeric(pay106$`大學-薪資`)

pay106$`大學-女/男`<-as.numeric(pay106$`大學-女/男`)
pay105$`大學-女/男`<-as.numeric(pay105$`大學-女/男`)
pay104$`大學-女/男`<-as.numeric(pay104$`大學-女/男`)
pay103$`大學-女/男`<-as.numeric(pay103$`大學-女/男`)
pay106$`經常性薪資-女/男`<-as.numeric(pay106$`經常性薪資-女/男`)

university106<-pay106$`大學-薪資`
university103<-pay103$`大學-薪資`



pay106$rate<-(university106-university103)/university103
knitr::kable(head(arrange(pay106,desc(rate)),10))


knitr::kable(head(filter(pay106,rate>0.05)%>%
         arrange(desc(rate)),10))

Q1.2<-filter(pay106,rate>0.05)



Maintitle<-strsplit(Q1.2$大職業別,"-")

Maintitle0<- c()
for(i in 1:length(Maintitle)){
 Maintitle0[i]<- Maintitle[[i]][1]}

knitr::kable(table(Maintitle0))

pay103Q2<-select(pay103,年度,大職業別,starts_with("大學"),starts_with("研究所"))
pay104Q2<-select(pay104,年度,大職業別,starts_with("大學"),starts_with("研究所"))
pay105Q2<-select(pay105,年度,大職業別,starts_with("大學"),starts_with("研究所"))
pay106Q2<-select(pay106,年度,大職業別,starts_with("大學"),starts_with("研究所"))
combined_data<-rbind(pay103Q2,pay104Q2,pay105Q2,pay106Q2)
combined_data$`大學-女/男`<-as.numeric(combined_data$`大學-女/男`)
combined_data<-na.omit(combined_data)
combined_data<-arrange(combined_data,`大學-女/男`)
Man<-subset(combined_data,`大學-女/男`<100)
#行業薪資 男生>女生
knitr::kable(table(Man$大職業別))
#差異大到小排序
knitr::kable(Man)
#前十比
knitr::kable(head(Man,10))

Woman<-subset(combined_data,`大學-女/男`>100)
Woman<-arrange(Woman,desc(`大學-女/男`))
#行業薪資 女生<男生
knitr::kable(table(Woman$大職業別))
#差異大到小排序
knitr::kable(Woman)
#前十比
knitr::kable(head(Woman,10))

edu106<-pay106
edu106$`研究所及以上-薪資`<-gsub("—","0",edu106$`研究所及以上-薪資`)%>%as.numeric()
edu106$`大學-薪資`<-gsub("—","0",edu106$`大學-薪資`)%>%as.numeric()

edu106<-mutate(edu106,ugrate= (`研究所及以上-薪資`/`大學-薪資`)/`大學-薪資`)

knitr::kable(
  head(filter(edu106,ugrate>0)%>%
         arrange(desc(ugrate)),10))





Work<-head(filter(pay106,grepl("資訊及通訊傳播業-專業人員",pay106$大職業別)),5)

knitr::kable(select(Work,大職業別,`研究所及以上-薪資`,`大學-薪資`))




Work$`研究所及以上-薪資`<-as.numeric(Work$`研究所及以上-薪資`)
Work$`大學-薪資`<-as.numeric(Work$`大學-薪資`)

Work$XG=(Work$`研究所及以上-薪資`-Work$`大學-薪資`)
Work$uprate=(Work$`研究所及以上-薪資`/Work$`大學-薪資`)

knitr::kable(select(Work,大職業別,`研究所及以上-薪資`,`大學-薪資`,XG,uprate)%>%
    arrange(by=desc(uprate)))





