(define (activity day time)
  (cond
    ((equal? day "weekday")
     (cond
       ((and (< time 16) (< 8 time)) "school")
       (else "Facebook")))
    (else
     (cond
       ((and (< time 16) (< 8 time)) "sleep")
       (else "Youtube")))))
     