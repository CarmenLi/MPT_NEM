for state in NSW QLD VIC SA TAS
do 
    for ((year=1999; year<=2023; year=year+1))
    do 
        for month in 01 02 03 04 05 06 07 08 09 10 11 12
        do 
            if ! test -f PRICE_AND_DEMAND_${year}${month}_${state}1.csv; then
                wget "https://aemo.com.au/aemo/data/nem/priceanddemand/PRICE_AND_DEMAND_${year}${month}_${state}1.csv"
            fi
        done
    done
done
    
