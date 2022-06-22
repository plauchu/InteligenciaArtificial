//if

; (if <prueba> <forma a evaluar si prueba es true>
;			   <forma a evaluar si prueba es false>)

//When

;	(when) <prueba> )

//Ej

(defun potencia (m n)
(if (= n 0) 1
	(* m (potencia m (- n 1)))))

(defun fibo (n)
(if (or (= n 0) (= n 1)) 1
	(+ (fibo (- n 1)) (fibo (- n 2)))))

// LET - permite crear variables locales

// Funcall - macro que permite ejecutar funciones

//mapcar - macro que facilita la transformación de la lista

