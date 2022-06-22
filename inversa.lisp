//inversa
(setq lst1 nil)
(defun inversa (lst)
(cond
	((null lst)(write lst1))
	(t (push (car lst) lst1)
	(inversa (cdr lst)))))

//list hace una lista de los objetos
//append hace una lista de listas 

(defun inversa (lst)
(cond 
	((null lst) ())
	(t (append (inversa (cdr lst)) (list (car lst))))))

//suma
(setq sum 0)
(defun suma (lst)
(cond 
	((null lst) sum)
	((atom (car lst))
		(cond 
			((numberp (car lst)) (incf sum (car lst)) (suma (cdr lst)))
			(t (suma (cdr lst)))))
	(t (suma (cdr lst)))))


;(setq lst '(1 4 b (a b) 5))

//cuenta
(setq num 0 sim 0 lst '(1 a (a) 5 2 s))
(defun cuenta (lst)
(cond 
	((null lst))
	((atom (car lst))
		(cond
			((numberp (car lst)) (incf num)(cuenta (cdr lst)))
			(t (incf sim) (cuenta (cdr lst)))))
	(t (cuenta (cdr lst)))))









