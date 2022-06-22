(defun aplanar(lst)
(cond
	((null lst))
	((listp (car lst)) (aplanar (car lst)) (aplanar (cdr lst)))
	((numberp (car lst)) (push (car lst) apla))
	(t (aplanar (cdr lst)))))

(defun inversa (lst)
(cond
	((null lst)(write lst1))
	(t (push (car lst) lst1)
	(inversa (cdr lst)))))

(setq lst '(1 (a) (5) ((c)) 3))
(defun yl (lst)
(cond ((null lst) 2)
	  ((atom lst) 1)
	  (t (max (+ (yl (first lst)) 1)
	  	(yl (cdr lst))))))


