library(readr)
library(dplyr)
library(ggplot2)



Epi1project_xlsx_Sheet1 <- read_csv("Epi1project.xlsx - Sheet1.csv")
View(Epi1project_xlsx_Sheet1)

### Frequency for Mycobacterium tuberculosis (MTB)

Epi1ProjectTuberculosis = filter(Epi1project_xlsx_Sheet1, 
                                 `Organism/Disease identified` == 
                                  "Mycobacterium tuberculosis")
View(Epi1ProjectTuberculosis)

table(Epi1project_xlsx_Sheet1$`Organism/Disease identified`)
#50 cases of Mycobacterium tuberculosis

table(Epi1ProjectTuberculosis$Sex)
#25 Male, 25 Female cases

table(Epi1ProjectTuberculosis$Age)
#Relatively even spread, with 18 year olds having the highest mode (5 cases)

table(Epi1ProjectTuberculosis$Fatality)
#19/50 deaths
#OR: (19*284) / (66*31) = 2.6373
#(TB Death * NonTB No Death) / (Non TB Death * TB No Death)

table(Epi1ProjectTuberculosis$Fever)
#28/50 have fever
#OR: (28*143) / (207*22) = 0.8792

table(Epi1ProjectTuberculosis$Rash)
#5/50 have rash
#OR: () / ()

table(Epi1ProjectTuberculosis$`Respiratory symptoms`)
#34/50 have respiratory symptoms

table(Epi1ProjectTuberculosis$Seizure)
#2/50 have seizures

table(Epi1ProjectTuberculosis$Diarrhea)
#13/50 have diarrhea

table(Epi1ProjectTuberculosis$`Mosquito contact`)
#20/50 had mosquito contact

table(Epi1ProjectTuberculosis$`Tick contact`)
#4/50 had tick contact

table(Epi1ProjectTuberculosis$`Immune compromised`)
#33/50 are immunocompromised

table(Epi1ProjectTuberculosis$`History of consuming undercooked meats`)
#1/50 had a history of eating undercooked meats

###Frequency for non-TB diseases

Epi1ProjectNonTB = filter(Epi1project_xlsx_Sheet1, 
                                 `Organism/Disease identified` != 
                                   "Mycobacterium tuberculosis")
View(Epi1ProjectNonTB)

table(Epi1ProjectNonTB$Sex)
#172 Male, 178 Female cases

table(Epi1ProjectNonTB$Age)
ggplot(data=(Epi1ProjectNonTB), aes(x=Age, y=Freq)) +
  geom_col()+
  geom_text(aes(label=len), vjust=-0.3, size=3.5)+
  theme_minimal()

barplot(table(Epi1ProjectNonTB$Age))

table(Epi1ProjectNonTB$Fatality)
#66/350 deaths (284)

table(Epi1ProjectNonTB$Fever)
#207/350 have fever (143)

table(Epi1ProjectNonTB$Rash)
#81/269 have rash (188)

table(Epi1ProjectNonTB$`Respiratory symptoms`)
#72/278 have respiratory symptoms

table(Epi1ProjectNonTB$Seizure)
#140/210 have seizures

table(Epi1ProjectNonTB$Diarrhea)
#101/249 have diarrhea

table(Epi1ProjectNonTB$`Mosquito contact`)
#207/350 had mosquito contact

table(Epi1ProjectNonTB$`Tick contact`)
#54/350 had tick contact

table(Epi1ProjectNonTB$`Immune compromised`)
#75/350 are immunocompromised

table(Epi1ProjectNonTB$`History of consuming undercooked meats`)
#85/350