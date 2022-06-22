funciones de tarea

;reverse de una lista profundidad
(defun reverseP(lst)
(cond
	((null lst) ())
	((listp (car lst)) (append (reverseP (cdr lst)))))
	(t (append (reverseP (cdr lst)) (list (car lst)))))

;suma de los elementos de una lista a profundidad
(defun sumaP (lst)
(cond
	((atom lst) (if (numberp lst) lst 0))
	(t (apply #'+ (mapcar #'sumaP lst)))))
