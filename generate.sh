rm autocomplete
wget --no-check-certificate https://www.myhospitals.gov.au/search/autocomplete

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep SA | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > SAhospitalregion_private.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep SA | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > SAhospitalnames_private.txt

paste -d"-" SAhospitalnames_private.txt SAhospitalregion_private.txt > SAhospitalmerge_private.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep SA | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > SAhospitalregion_public.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep SA | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > SAhospitalnames_public.txt

paste -d"-" SAhospitalnames_public.txt SAhospitalregion_public.txt > SAhospitalmerge_public.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep NSW | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > NSWhospitalregion_private.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep NSW | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > NSWhospitalnames_private.txt

paste -d"-" NSWhospitalnames_private.txt NSWhospitalregion_private.txt > NSWhospitalmerge_private.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep NSW | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > NSWhospitalregion_public.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep NSW | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > NSWhospitalnames_public.txt

paste -d"-" NSWhospitalnames_public.txt NSWhospitalregion_public.txt > NSWhospitalmerge_public.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep NT | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > NThospitalregion_private.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep NT | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > NThospitalnames_private.txt

paste -d"-" NThospitalnames_private.txt NThospitalregion_private.txt > NThospitalmerge_private.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep NT | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > NThospitalregion_public.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep NT | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > NThospitalnames_public.txt

paste -d"-" NThospitalnames_public.txt NThospitalregion_public.txt > NThospitalmerge_public.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep Vic | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > Vichospitalregion_private.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep Vic | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > Vichospitalnames_private.txt

paste -d"-" Vichospitalnames_private.txt Vichospitalregion_private.txt > Vichospitalmerge_private.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep Vic | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > Vichospitalregion_public.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep Vic | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > Vichospitalnames_public.txt

paste -d"-" Vichospitalnames_public.txt Vichospitalregion_public.txt > Vichospitalmerge_public.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep WA | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > WAhospitalregion_private.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep WA | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > WAhospitalnames_private.txt

paste -d"-" WAhospitalnames_private.txt WAhospitalregion_private.txt > WAhospitalmerge_private.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep WA | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > WAhospitalregion_public.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep WA | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > WAhospitalnames_public.txt

paste -d"-" WAhospitalnames_public.txt WAhospitalregion_public.txt > WAhospitalmerge_public.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep Qld | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > Qldhospitalregion_private.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep Qld | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > Qldhospitalnames_private.txt

paste -d"-" Qldhospitalnames_private.txt Qldhospitalregion_private.txt > Qldhospitalmerge_private.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep Qld | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > Qldhospitalregion_public.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep Qld | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > Qldhospitalnames_public.txt

paste -d"-" Qldhospitalnames_public.txt Qldhospitalregion_public.txt > Qldhospitalmerge_public.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep ACT | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > ACThospitalregion_private.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep ACT | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > ACThospitalnames_private.txt

paste -d"-" ACThospitalnames_private.txt ACThospitalregion_private.txt > ACThospitalmerge_private.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep ACT | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > ACThospitalregion_public.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep ACT | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > ACThospitalnames_public.txt

paste -d"-" ACThospitalnames_public.txt ACThospitalregion_public.txt > ACThospitalmerge_public.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep Tas | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > Tashospitalregion_private.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep private | grep Tas | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > Tashospitalnames_private.txt

paste -d"-" Tashospitalnames_private.txt Tashospitalregion_private.txt > Tashospitalmerge_private.txt

cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep Tas | sed 's/[0-9]*//g' | cut -d "(" -f2 | cut -d ")" -f1 > Tashospitalregion_public.txt
cat autocomplete | python -m json.tool | jsawk 'return this.label' | python -m json.tool | grep public | grep Tas | sed 's/[0-9]*//g' | sed 's/,.*//' | tr -d \'\" > Tashospitalnames_public.txt

paste -d"-" Tashospitalnames_public.txt Tashospitalregion_public.txt > Tashospitalmerge_public.txt

#sed -e s/SA//g -i *.txt
#sed -e s/NSW//g -i *.txt
#sed -e s/ACT//g -i *.txt
#sed -e s/Qld//g -i *.txt
#sed -e s/WA//g -i *.txt
#sed -e s/NT//g -i *.txt
#sed -e s/TAS//g -i *.txt
#sed -e s/Vic//g -i *.txt
# sed -e s/,//g -i *.txt
