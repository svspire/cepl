(in-package :cepl.pipelines)

;;--------------------------------------------------

(defgeneric %recompile-gpu-function-and-pipelines (key))
(defgeneric inject-func-key (spec))
(defgeneric func-key= (x y))
(defgeneric gpu-func-spec (key &optional error-if-missing))
(defgeneric (setf gpu-func-spec) (value func-key &optional error-if-missing))
(defgeneric %unsubscibe-from-all (spec))
(defgeneric funcs-that-use-this-func (key))
(defgeneric %funcs-this-func-uses (key &optional (depth)))
(defgeneric pipelines-that-use-this-as-a-stage (func-key))
(defgeneric recompile-pipelines-that-use-this-as-a-stage (key))
(defgeneric func-key (source))
(defgeneric %subscribe-to-gpu-func (func subscribe-to))
(defgeneric forget-gpu-func (name in-arg-types &optional error-if-missing))
(defgeneric (setf funcs-that-use-this-func) (value key))