%facts
instructor(chan,mat1017).
instructor(patel,mat6002).
instructor(sharma,mat5012).
enroll(aryan,mat1012).
enroll(soham,mat1017).
enroll(aditya,mat1017).
enroll(harsh,mat6002).
enroll(parag,mat1012).

%rules
teaches(X,Y) :- instructor(X,Z) , enroll(Y,Z).