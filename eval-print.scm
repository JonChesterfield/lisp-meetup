(define eval-print
  (lambda (X)
    (begin
      (display X)
      (display " => ")
      (display (primitive-eval X))
      (newline))))
