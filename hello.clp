(clear)
(reset)
(deftemplate age
    (slot answer))
(deftemplate height
    (slot answer))
(deftemplate wieght
    (slot answer))        
(deftemplate preference
    (slot answer))    
(deftemplate gender
    (slot answer))   
(deftemplate bmi
	(slot answer)) 
(deftemplate genderpreference
(slot answer))       
;;;; functions
 (deffunction some (?nai)
 	(return ?nai)
 )
  (deffunction initial (?var1 ?var2 ?var3)
    (assert (age(answer ?var1)))
    (assert (bmi(answer ?var2)))
    (assert (genderpreference(answer ?var3)))
    (run)
 )
;; starter rule fire in start
(defrule starter
(age (answer xyz))
    =>
    (printout t "What is your age ?" crlf "Enter in integer"  crlf)
    (bind ?answer (read))
    (if (or (< ?answer 16)(> ?answer 50))then 
        (printout t " your not allowed here come back when age is greater than 16" crlf)
        else 
        (if (and (>= ?answer 16)(<= ?answer 25))then
        (assert (age(answer young)))
        else 
        	(if (and (> ?answer 25)(<= ?answer 35))then
        			(assert (age(answer oldadult)))	
        			else
        				(if (and (> ?answer 35)(< ?answer 50))then
        						(assert (age(answer old))))))))    
  (defrule printbudha
  (age (answer veryold))
  =>
  (printout t "your age is budha" crlf)
  )
        
 (defrule printyoungage
 (age(answer hhhhhhhhhhh))
 =>
 (printout t "what is your height :" crlf "enter in m")
 (bind ?hanswer (read))
 (printout t "what is your wieght :" crlf "enter in kg")
 (bind ?wanswer (read))
 (bind ?bmianswer (/ ?wanswer (* ?hanswer ?hanswer)))
 (if (or (< ?bmianswer 18.5)(> ?bmianswer 30))then
 (printout t " your bmi is not got in suitable range for gyming ") 
 )
 (printout t "what is your gender :" crlf "enter M/F")
 (bind ?ganswer (read))
 (printout t "what is your preference :" crlf "enter SLIM/HEAVY")
 (bind ?panswer (read))
 (if (and (>= ?bmianswer 18.5)(< ?bmianswer 24.5))then
 (assert (bmi (answer low))) 
 )
 (if (and (<= ?bmianswer 24.5)(< ?bmianswer 30))then
 (assert (bmi (answer high))) 
 )
 (if (and (eq ?ganswer F)(eq ?panswer SLIM))then
 (assert (genderpreference (answer FS))) 
 ) 
 (if (and (eq ?ganswer F)(eq ?panswer HEAVY))then
 (assert (genderpreference (answer fh))) 
 )
 (if (and (eq ?ganswer M)(eq ?panswer SLIM))then
 (assert (genderpreference (answer MS))) 
 )
 (if (and (eq ?ganswer M)(eq ?panswer HEAVY))then
 (assert (genderpreference (answer mh))) 
 )
 (printout t "here is bmi bmianswer" ?bmianswer crlf))    
 
 (deffunction some (?nai)
 	(return ?nai)
 )
 (defrule printadultage
 (age(answer ttttttttt))
 =>
 (printout t "what is your height :" crlf "enter in m")
 (bind ?hanswer (read))
 (printout t "what is your wieght :" crlf "enter in kg")
 (bind ?wanswer (read))
 (bind ?bmianswer (/ ?wanswer (* ?hanswer ?hanswer)))
 (if (or (< ?bmianswer 18.5)(> ?bmianswer 30))then
 (printout t " your bmi is n to do got in suitable range for gyming ") 
 )
 (printout t "what is your gender :" crlf "enter M/F")
 (bind ?ganswer (read))
 (printout t "what is your preference :" crlf "enter SLIM/HEAVY")
 (bind ?panswer (read))
 (if (and (>= ?bmianswer 18.5)(< ?bmianswer 24.5))then
 (assert (bmi (answer low))) 
 )
 (if (and (<= ?bmianswer 24.5)(< ?bmianswer 30))then
 (assert (bmi (answer high))) 
 )
 (if (and (eq ?ganswer F)(eq ?panswer SLIM))then
 (assert (genderpreference (answer FS))) 
 ) 
 (if (and (eq ?ganswer F)(eq ?panswer HEAVY))then
 (assert (genderpreference (answer fh))) 
 )
 (if (and (eq ?ganswer M)(eq ?panswer SLIM))then
 (assert (genderpreference (answer MS))) 
 )
 (if (and (eq ?ganswer M)(eq ?panswer HEAVY))then
 (assert (genderpreference (answer mh))) 
 )
 (printout t "here is bmi bmianswer" ?bmianswer crlf))
 
 (defrule printoldage
 (age(answer kkkkkkkk))
 =>
 (printout t "what is your height :" crlf "enter in m")
 (bind ?hanswer (read))
 (printout t "what is your wieght :" crlf "enter in kg")
 (bind ?wanswer (read))
 (bind ?bmianswer (/ ?wanswer (* ?hanswer ?hanswer)))
 (if (or (< ?bmianswer 18.5)(> ?bmianswer 30))then
 (printout t " your bmi is n to do got in suitable range for gyming ") 
 )
 (printout t "what is your gender :" crlf "enter M/F")
 (bind ?ganswer (read))
 (printout t "what is your preference :" crlf "enter SLIM/HEAVY")
 (bind ?panswer (read))
 (if (and (>= ?bmianswer 18.5)(< ?bmianswer 24.5))then
 (assert (bmi (answer low))) 
 )
 (if (and (<= ?bmianswer 24.5)(< ?bmianswer 30))then
 (assert (bmi (answer high))) 
 )
 (if (and (eq ?ganswer F)(eq ?panswer SLIM))then
 (assert (genderpreference (answer FS))) 
 ) 
 (if (and (eq ?ganswer F)(eq ?panswer HEAVY))then
 (assert (genderpreference (answer fh))) 
 )
 (if (and (eq ?ganswer M)(eq ?panswer SLIM))then
 (assert (genderpreference (answer MS))) 
 )
 (if (and (eq ?ganswer M)(eq ?panswer HEAVY))then
 (assert (genderpreference (answer mh))) 
 )
 (printout t "here is bmi bmianswer" ?bmianswer crlf))
 
 
 ;;; schedules are here
  (defrule printSchedule1
 (age(answer oldadult))
 (bmi (answer low))
 (genderpreference (answer FS))
 =>
 (printout t "Calisthetic - Pull-ups Cardio -Running Aerobic -Dead-Lift")
 )
 (defrule printSchedule2
 (age(answer oldadult))
 (bmi (answer low))
 (genderpreference (answer fh))
 =>
 (printout t "Calisthetic - Crunch Cardio -Jumping rope Aerobic -Dead-Lift")
 )
 (defrule printSchedule3
 (age(answer oldadult))
 (bmi (answer low))
 (genderpreference (answer MS))
 =>
 (printout t "Calisthetic - Lunges Cardio -Jumping Jack Aerobic -Wrist-Curls")
 )
 (defrule printSchedule4
 (age(answer oldadult))
 (bmi (answer low))
 (genderpreference (answer mh))
 =>
 (printout t "Calisthetic - Lunges Cardio -Jumping rope Aerobic -Wrist-Curls")
 )
 (defrule printSchedule5
 (age(answer oldadult))
 (bmi (answer high))
 (genderpreference (answer FS))
 =>
 (printout t "Calisthetic - Lunges Cardio -Jumping rope Aerobic -Shoulder-Press")
 )
 (defrule printSchedule6
 (age(answer oldadult))
 (bmi (answer high))
 (genderpreference (answer fh))
 =>
 (printout t "Calisthetic - Dips Cardio -Jumping Jack Aerobic -Shoulder-Press")
 )
 (defrule printSchedule7
 (age(answer oldadult))
 (bmi (answer high))
 (genderpreference (answer MS))
 =>
 (printout t "Calisthetic - Dips Cardio -Jumping Jack Aerobic -Bench-Press")
 )
 (defrule printSchedule8
 (age(answer oldadult))
 (bmi (answer high))
 (genderpreference (answer mh))
 =>
 (printout t "Calisthetic - Dips Cardio -Jumping rope Aerobic -Wrist-Curls")
 )
 (defrule printSchedule9
 (age(answer old))
 (bmi (answer low))
 (genderpreference (answer FS))
 =>
 (printout t "Calisthetic - Dips Cardio -Jumping rope Aerobic -Bench-Press")
 )
 (defrule printSchedule10
 (age(answer old))
 (bmi (answer low))
 (genderpreference (answer fh))
 =>
 (printout t "Calisthetic - Dips Cardio -Running Aerobic -Bench-Press")
 )
 (defrule printSchedule11
 (age(answer old))
 (bmi (answer low))
 (genderpreference (answer MS))
 =>
 (printout t "Calisthetic - Pull-ups Cardio -Running Aerobic -Dead-Lift")
 )
 (defrule printSchedule12
 (age(answer old))
 (bmi (answer low))
 (genderpreference (answer mh))
 =>
 (printout t "Calisthetic - Crunch Cardio -Jumping rope Aerobic -Shoulder-Press")
 )
 (defrule printSchedule13
 (age(answer old))
 (bmi (answer high))
 (genderpreference (answer FS))
 =>
 (printout t "Calisthetic - Lunges Cardio -Jumping rope Aerobic -Wrist-Curls")
 )
 (defrule printSchedule14
 (age(answer old))
 (bmi (answer high))
 (genderpreference (answer fh))
 =>
 (printout t "Calisthetic - Squat Cardio -Jumping rope Aerobic -Wrist-Curls")
 )
 (defrule printSchedule15
 (age(answer old))
 (bmi (answer high))
 (genderpreference (answer MS))
 =>
 (printout t "Calisthetic - Dips Cardio -Running Aerobic -Wrist-Curls")
 )
 (defrule printSchedule16
 (age(answer old))
 (bmi (answer high))
 (genderpreference (answer mh))
 =>
 (printout t "Calisthetic - Crunch Cardio -Running Aerobic -Dead-Lift")
 )
 (defrule printSchedule17
 (age(answer young))
 (bmi (answer low))
 (genderpreference (answer FS))
 =>
 (printout t "Calisthetic - Crunch Cardio -Jumping Jack Aerobic -Bench-Press")
 )
 (defrule printSchedule18
 (age(answer young))
 (bmi (answer low))
 (genderpreference (answer fh))
 =>
 (printout t "Calisthetic - Squat Cardio -Running Aerobic -Shoulder-Press")
 )
 (defrule printSchedule19
 (age(answer young))
 (bmi (answer low))
 (genderpreference (answer MS))
 =>
 (printout t "Calisthetic - Squat Cardio -Jumping Jack Aerobic -Wrist-Curls")
 )
 (defrule printSchedule20
 (age(answer young))
 (bmi (answer low))
 (genderpreference (answer mh))
 =>
 (printout t "Calisthetic - Crunch Cardio -Running Aerobic -Shoulder-Press")
 )
 (defrule printSchedule21
 (age(answer young))
 (bmi (answer high))
 (genderpreference (answer FS))
 =>
 (printout t "Calisthetic - Squat Cardio -Running Aerobic -Bench-Press")
 )
 (defrule printSchedule22
 (age(answer young))
 (bmi (answer high))
 (genderpreference (answer fh))
 =>
 (printout t "Calisthetic - Lunges Cardio -Jumping Jack Aerobic -Dead-Lift")
 )
 (defrule printSchedule23
 (age(answer young))
 (bmi (answer high))
 (genderpreference (answer MS))
 =>
 (printout t "Calisthetic - Lunges Cardio -Jumping rope Aerobic -Bench-Press")
 )
 (defrule printSchedule24
 (age(answer young))
 (bmi (answer high))
 (genderpreference (answer mh))
 =>
 (printout t "Calisthetic - Lunges Cardio -Running Aerobic -Wrist-Curls")
 )
(run)