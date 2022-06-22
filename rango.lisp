//rango
(defun rango (mi ma me)
(>= ma me mi));(<= mi me ma)

(defun miembro (obj lst)
(cond
	((null lst) nil)
	((equal obj (car lst)) t)
	(t (miembro obj (cdr lst)))))

(setq lst'(1 2 3 (a b ((c)) d) 4 5) con 0)
(defun cuenta (lst)
(cond 
	((null lst)) 
	((atom (car lst))
		(incf con) (cuenta (cdr lst)))
	(t (cuenta (car lst)) (cuenta (cdr lst)))))


(set lst'(1 a 3 (c 6) 4) sum 0)
(defun suma (lst)
(cond
	((null lst))
	((atom (car lst))
		(cond
			((numberp (car lst)) (incf sum (car lst))
				(suma (cdr lst)))
			(t (suma (cdr lst)))))
	(t (suma (car lst)) (suma (cdr lst)))))

(defun cuentans (lst)
(cond
	((nul lst))
	((atom obj)
		(cond
			((numberp obj) (incf num))
			(t (incf sim)))
		(suma (cdr lst)))
	(t (suma (car lst)) (suma (cdr lst)))))






