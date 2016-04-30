# AustralianHospitals
Terribly formatted Australian Hospital data, by state. This data has not been perfectly cleaned yet, instructions below. Generation scripts included.

Final data located in: https://github.com/DragonStuff/AustralianHospitals/tree/master/cleaned/f

Delimited as: NAME - NSW HEALTH REGION, TYPE

Run `sed -e 's/^[ \t]*//'` on the files in the (https://github.com/DragonStuff/AustralianHospitals/tree/master/cleaned/f) directory to remove the spaces from the beginning of the data.
