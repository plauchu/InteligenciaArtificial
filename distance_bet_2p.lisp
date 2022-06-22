function getDistanceFromLatLonInKm(lat1, lon1, lat2, lon2) {
  var R = 6371; // Radius of the earth in km
  var dLat = deg2rad(lat2-lat1);  // deg2rad below
  var dLon = deg2rad(lon2-lon1); 
  var a = 
    Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
    Math.sin(dLon/2) * Math.sin(dLon/2)
    ; 
  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
  var d = R * c; // Distance in km
  return d;
}

function deg2rad(deg) {
  return deg * (Math.PI/180)
}

(defconstant PI 3.141592)

(defun gradosAradio (grad)
	(* grad (/ PI 180)))

(defvar R 6371)
(defvar dLat 0)
(defvar dLon 0)
(defvar a 0)
(defvar c 0)
(defvar d 0)

(defun distEnKmEntre2coords (lat1 lon1 lat2 lon2)
(setf dLat (gradosAradio (- lat2 lat1)))
(setf dLon (gradosAradio (- lon2 lon1)))
(setf a (+ (* (sin (/ dLat 2)) (sin (/ dLat 2)) ) 
			(* (cos (gradosAradio (lat1))) (cos (gradosAradio (lat2))) (sin (/ dLon 2)) (sin (/ dLon 2)) ) ))
(setf c (* 2 atan (* (sqrt a) (sqrt (- 1 a)) )))
(setf d (* R c))
(print d))