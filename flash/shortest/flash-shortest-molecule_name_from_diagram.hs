import Data.Maybe
main=interact a
a s=fromMaybe"NONE"$lookup(f 'C',f 'H')[((1,4),"methane"),((2,6),"ethane"),((3,8),"propane"),((4,10),"butane"),((5,12),"pentane")]where f x=length$filter(==x)$drop 1 s
