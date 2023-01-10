#!/bin/bash
echo "Below are list of the MENU"
echo -e "item\t menuprice\t quantity\t toltalcost" > mymenu.txt

select MENU in ChickenChilli StuffedMashroom PronMasala KothambirWadi PaneerDoPizaa ChickenBiryani MatkaPaneer ChickenHakkaNoodle Exit
do
  case ${MENU} in
  "ChickenChilli")
     COST=200
     ;;
  "StuffedMashroom")
     COST=200
     ;;
  "PronMasala")
     COST=250
     ;;
  "KothimbirWadi")
     COST=100
     ;;
  "PaneerDoPizaa")
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

read -p "How much Portion: " PORTION
TOTCOST=`expr ${PORTION} \* ${COST}`
echo -e "${MENU}\t\t ${COST}\\t\t ${PORTION}\t\t ${TOTCOST}" >> mymenu.txt

FINALPRICE=`expr ${FINALPRICE} + ${TOTCOST}`
done
   echo "please pay ${FINALPRICE}" >> mymenu.txt
cat mymenu.txt
