(define list-iter
  (lambda (lst)
    (define iter (lambda () (call/cc compute-state)))
    (define compute-state
      (lambda (return)
        (for-each (lambda (element)
                    (set! return (call/cc (lambda
                                              (resume-here)
                                            (set! compute-state resume-here)
                                            (return element)))))
                  lst)
        (return 'EOL)))
    iter))
