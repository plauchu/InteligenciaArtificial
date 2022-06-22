(defun aplanainv (lst)
(cond
	((null lst))
	((atom (car lst)) (push (car lst) lst1) (aplanainv (cdr lst)))
	(t (aplanainv (car lst)) (aplanainv (cdr lst)))))

(setq lst ‘(a b c d e f) d 1)            
(append (nthcdr (mod d (lenght lst)) lst)) (reverse (nthcdr (- (lenght lst) (mod d (lenght lst))) (reverse lst)))

(reverse (nthcdr (- (lenght lst) (min m (lenght lst))) (reverse (nthcdr (- (min n (lenght lst)) 1) lst))))

(push ele (nthcdr (- n 1) list))



