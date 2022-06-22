//member determina si un elemento es miembro de una lista
//regresa la lista a partir de donde se encuentra ese elemento

;regresa los primeros n elementos de la lista
(reverse (nthcdr (- (length lst) n) (reverse lst)))

;regresa la lista sin los n últimos elememntos
(reverse (nthcdr n(reverse lst)))

;regresa lista sin los primeros n y sin los últimos m elems de lst
(butlast (nthcdr n lst) m)

;otra manera
(reverse (nthcdr m (reverse (nthcdr n lst))))
