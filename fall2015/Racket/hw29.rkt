;  hw#29
;  display and return
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 4:48pm

(display "#1 output to aid debugging") (newline)

; helper procedures

; 1. circleArea_fromRadius
(display "   1. circleArea_fromRadius") (newline)
(define circleArea_fromRadius 
  (lambda (radius)
    (display "   In circleArea_fromRadius")(newline)
    (display "      radius = ")(display radius)(newline)
    (* 3 (expt radius 2)) ; use 3 to approximate pi
    ))
; tests
(display (circleArea_fromRadius 5))  ;expecting 75
(newline)
(display (circleArea_fromRadius 10))  ;expecting 300
(newline)
(display "-----------------") (newline) (newline)


; 2. circleArea_fromDiameter
(display "   2. circleArea_fromDiameter") (newline)
(define circleArea_fromDiameter
  (lambda (diameter)
    (display "   In circleArea_fromDiameter")(newline)
    (display "      diameter = ")(display diameter)(newline)
    (circleArea_fromRadius (/ diameter 2))
    ))
(display (circleArea_fromDiameter 10))(newline)
(display (circleArea_fromDiameter 20))(newline)
(display "-----------------") (newline) (newline)


; 3. annulus area
(display "   3. annulus area") (newline)
(define annulusArea
  (lambda (innerRadius outerRadius)
    (display "   In annulusArea")(newline)
    (display "In circleArea_fromRadius")(newline)
    (display "      innerRadius = ")(display innerRadius)(newline)
    (display "      outerRadius = ")(display outerRadius)(newline)
    (- (circleArea_fromRadius outerRadius)
       (circleArea_fromRadius innerRadius))
    ))

; tests
(display (annulusArea 1 2)) ; expecting 3 * pi, ~9.3
(newline)
(display (annulusArea 2 3)) ; expecting 5 * pi, ~15.5
(newline)
(display "-----------------") (newline) (newline)


; 4. target area
(display "   4. targetArea ") (newline)
(define targetArea
  (lambda (smallestRadius)
    (display "   In targetArea")(newline)
    (display "      smallestRadius = ")(display smallestRadius)(newline)
    (+ (annulusArea      smallestRadius  (* 2 smallestRadius))
       (annulusArea (* 3 smallestRadius) (* 4 smallestRadius))
       (annulusArea (* 5 smallestRadius) (* 6 smallestRadius))
       )
    )) ; end of lambda and define
(display  (targetArea 1) )(newline) 
(display "-----------------") (newline) (newline)

(display "-----------------") (newline) (newline)