(defpackage #:zzz-contact
  (:use #:cl #:clog #:clog-gui)
  (:export start-app))

(in-package :zzz-contact)

(defun on-file-new (obj)
  (let* ((app (connection-data-item obj "app-data"))
	 (win (create-gui-window obj :title "New Window")))
    (declare (ignore app win))))

(defun on-help-about (obj)
  (let* ((about (create-gui-window obj
				   :title   "About"
				   :content "<div class='w3-black'>
                                         <center><img src='/img/clogwicon.png'></center>
	                                 <center>zzz-contact</center>
	                                 <center>zzz-contact</center></div>
			                 <div><p><center>A New App</center>
                                         <center>(c) 2022 - Some One</center></p></div>"
				   :hidden  t
				   :width   200
				   :height  200)))
    (window-center about)
    (setf (visiblep about) t)
    (set-on-window-can-size about (lambda (obj)
				    (declare (ignore obj))()))))

;;;;;;;;;;;;;;
;; contact app stuff
;;;;;;;;;;;;;;

(defun on-blah (obj)
  nil)



;; windows - all apps
(defun on-manage-contacts (obj)
  (let* ((app (connection-data-item obj "app-data"))
	 (win (create-gui-window obj :title "Manage Contacts"
				     :width 500
				     :height 600)))
    (declare (ignore app))
    (create-manage-contacts (window-content win))))

(defun on-new-event (obj)
  (let* ((app (connection-data-item obj "app-data"))
	 (win (create-gui-window obj :title "New Contact Event"
				     :width 500
				     :height 600)))
    (declare (ignore app))
    (create-new-contact-event (window-content win))))

(defun on-config-event-types (obj)
  (let* ((app (connection-data-item obj "app-data"))
	 (win (create-gui-window obj :title "New Config Event Types"
				     :width 500
				     :height 600)))
    (declare (ignore app))
        (create-config-event-types (window-content win))))


;; panel- config event types

(defun cet-on-new (target panel)
  (input-dialog panel "Enter new event type description"
		(lambda (input)
		  (when input
		    (dbi:do-sql (database-connection (cc-db-config panel))
		      "INSERT INTO event_type (description) VALUES (?)" (list input))
		    ;; get-row on one of the table related database controls
		    ;; refreshes the query.
		    (get-row (event-type-list panel) panel)))))


(defun cet-on-edit (target panel)
  (let ((rowid (value (event-type-list panel))))
    (unless (equal rowid "")
      (input-dialog panel "Update event type description"
		    (lambda (update)
		      (when update
			(dbi:do-sql (database-connection (cc-db-config panel))
			  "UPDATE event_type SET description=? WHERE rowid=?"
			  (list update rowid))
			(get-row (event-type-list panel) panel)))
		    :default-value (select-text (event-type-list panel))))))


(defun cet-on-delete (target panel)
  (let ((rowid (value (event-type-list panel))))
    (unless (equal rowid "")
      (confirm-dialog panel
		      (format nil "Delete - ~A?"
			      (select-text (event-type-list panel)))
		      (lambda (del)
			(when del
			  (dbi:do-sql (database-connection (cc-db-config panel))
			    "DELETE FROM event_type WHERE rowid=?" (list rowid))
			  (get-row (event-type-list panel) panel)))))))

;; panel - manage contacts

(defun manage-contacts-find (target panel)
  (input-dialog panel "Enter search string eg, name like 'david%'"
		(lambda (input)
		  (when input
		    (setf (where-clause (contact-table-manage panel)) input)
		    (get-row (contact-table-manage panel) panel)))))

;; panel - contact events

(defun contact-event-submit (target panel)
  (insert-row (contact-event-table panel) panel))

;; panel - report events

;; panel - report contacts

(defun report-events-run (target panel)
  (query-row (event-table panel) panel
	                  (format nil "SELECT e.description, c.start_dtime, c.end_dtime, c.notes ~
                          FROM contact_event c ~
                          INNER JOIN event_type e ~
                          ON c.event_type_id=e.rowid
                          WHERE c.contact_id=~A"
				  (value (contact-list panel)))))





;;;;;;;;;;;;;;
;; menu stuff
;;;;;;;;;;;;;;

(defclass app-data ()
  ((data
    :accessor data)))

(defun on-new-window (body)
  (let ((app (make-instance 'app-data)))
    (setf (connection-data-item body "app-data") app)
    (setf (title (html-document body)) "New App")
    (clog-gui-initialize body)
    (add-class body "w3-teal")  
    (let* ((menu-bar    (create-gui-menu-bar body))
	   (icon-item   (create-gui-menu-icon menu-bar :on-click 'on-help-about))
	   (file-item   (create-gui-menu-drop-down menu-bar :content "File"))
	   (file-new    (create-gui-menu-item file-item :content "New Window" :on-click 'on-file-new))
	   (help-item   (create-gui-menu-drop-down menu-bar :content "Help"))
	   (help-about  (create-gui-menu-item help-item :content "About" :on-click 'on-help-about))
	   
	   (contact-app   (create-gui-menu-drop-down menu-bar :content "Apps"))
	   (contact-app-configure (create-gui-menu-item contact-app :content "Contact App" :on-click 'on-config-event-types))
	   
	   (full-screen (create-gui-menu-full-screen menu-bar)))
      (declare (ignore icon-item file-new help-about full-screen)))))

(defun start-app ()
  (initialize 'on-new-window
   :static-root (merge-pathnames "./www/"
		  (asdf:system-source-directory :zzz-contact)))
  (open-browser))
