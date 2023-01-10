#!/bin/bash

echo "Below is List of MENU"
echo -e "item\t menuprice\t quantity\t totalprice" > printnewmenu.txt

select MENU in ChickenChilli StuffedMashrrom PronMasala KothimbirWadi PaneerDoPizza ChickenBiryani MatkaPaneer ChickenHakkaNoodle Exit
do
  case "${MENU}" in
  "ChickenChilli")
     COST=200
     ;;
  "StuffedMashroom")
     COST=200
     ;;
  "Pronmasala")
     COST=250
     ;;
  "KothimbirWadi")
     COST=100
     ;;
  "PaneerDoPizza")
     COST=180
     ;;
  "ChickenBiryani")
     COST=160
     ;;
  "MatkaPaneer")
     COST=280
     ;;
  "ChickenHakkaNoodle")
     COST=170
     ;;
  "Exit")
      break;;
*)
esac

read -p "How much portion: " PORTION
TOTCOST=`expr ${PORTION} \* ${COST}`
echo -e "${MENU}\t\t ${COST}\\t\t ${PORTION}\t\t ${TOTCOST}" >> printnewmenu.txt

FINALPRICE=`expr ${FINALPRICE} + ${TOTCOST}`
done
   echo "Please pay ${FINALPRICE}" >> printnewmenu.txt
cat printnewmenu.txt
