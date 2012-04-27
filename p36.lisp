(load "~/Ninety-Nine-Lisp-Problems/p35.lisp")
(defun encode-factors (lst &optional prev-a)
    (cond ((null lst) (append (list prev-a)))
	((null prev-a) (encode-factors (cdr lst) (list (car lst) 1)))
	((eq (car prev-a) (car lst)) (encode-factors (cdr lst) (list (car lst) (1+ (cadr prev-a)))))
	(T  (append (list prev-a) (encode-factors (cdr lst) (list (car lst) 1)))))
    )

(defun prime-factors-mult (n)
  (encode-factors (prime-factors n)))
