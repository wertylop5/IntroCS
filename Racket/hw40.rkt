;  more appending lists
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 5:06pm


;From hw39
;(display "#17 rev3") (newline)
;
;(define rev3
;  (lambda (x)
;    (append (cddr x) (list (cadr x) (car x)))))
;
;(rev3 '(backward ran sentences))
;(display "...should be (sentences ran backward)") (newline)
;(display "-----------------") (newline) (newline)

(display "#1 rev3_theOtherWay") (newline)

(define rev3_theOtherWay
  (lambda (x)
    (list (caddr x) (cadr x) (car x))))

(rev3_theOtherWay '(backward ran sentences))
(display "...should be (sentences ran backward)") (newline)

(display "-----------------") (newline) (newline)

;I prefer using the method with list becasue it is a lot more clearer