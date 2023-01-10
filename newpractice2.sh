!/bin/bash

echo "Below are my list of soups"
echo -e "Item\t SoupName\t UnitPrice\t TotalPrice"> printmenuN.txt

select SOUP in corn manchow tamato chicken vegclear Exit

do
   case "${SOUP}" in
   "corn")
       COST=25
        ;;
   "manchow")
       COST=35
        ;;
   "tamato")
       COST=40
        ;;
   "chicken")
       COST=45
        ;;
   "vegclear")
       COST=20
        ;;
   "Exit")
       break;;
   *)
       echo "you choosen wrong choice"
       break;;
esac

read -p "how much portion: " PORTION
TOTCOST=`expr ${PORTION} \* ${COST}`
echo -e "${SOUP}\t ${COST}\t\t ${PORTION}\t\t ${TOTCOST}">> printmenuN.txt 
FINALPRICE=`expr ${FINALPRICE} + ${TOTCOST}`

done

echo "please pay ${FINALPRICE}" >> printmenuN.txt
echo "please come again" >> printmenuN.txt

cat printmenuN.txt
