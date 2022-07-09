(in-package "ZZZ-CONTACT")
(defclass config-event-types (clog:clog-panel)
  (    (event-table :reader event-table)
    (contact-list :reader contact-list)
    (cc-db-report-events :reader cc-db-report-events)
    (table-contact :reader table-contact)
    (cc-db-report-contacts :reader cc-db-report-contacts)
    (notes :reader notes)
    (button-95 :reader button-95)
    (end_dtime :reader end_dtime)
    (start_dtime :reader start_dtime)
    (event_type_id :reader event_type_id)
    (contact_id :reader contact_id)
    (contact-event-table :reader contact-event-table)
    (cc-db-contact-event :reader cc-db-contact-event)
    (delete-btn-manage :reader delete-btn-manage)
    (update-btn-manage :reader update-btn-manage)
    (insert-btn-manage :reader insert-btn-manage)
    (next-btn-manage :reader next-btn-manage)
    (find-btn-manage :reader find-btn-manage)
    (email :reader email)
    (label-email :reader label-email)
    (phone :reader phone)
    (label-phone :reader label-phone)
    (nickname :reader nickname)
    (label-nickname :reader label-nickname)
    (name :reader name)
    (label-name :reader label-name)
    (contact-table-manage :reader contact-table-manage)
    (cc-db-manage :reader cc-db-manage)
    (event-type-list :reader event-type-list)
    (new-btn :reader new-btn)
    (delete-btn :reader delete-btn)
    (edit-btn :reader edit-btn)
    (label-3 :reader label-3)
    (cc-db-config :reader cc-db-config)
win))
(defun create-config-event-types (clog-obj &key (hidden nil) (class nil) (html-id nil) (auto-place t))
  (let ((panel (change-class (clog:create-div clog-obj :content "<div style=\"box-sizing: content-box; position: static; text-align: center;\" class=\"w3-light-blue\" id=\"CLOGB3866357117\" data-clog-name=\"none-SECTION-CONFIG-EVENT-TYPES\">PANEL - Config Event Types</div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357118\" data-clog-name=\"cc-db-config\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357119\" data-clog-name=\"none-ROW-buttons\"><label for=\"\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357120\" data-clog-name=\"label-3\">Event Types</label><button style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357121\" data-clog-name=\"edit-btn\">Edit</button><button style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357122\" data-clog-name=\"delete-btn\">Delete</button><button style=\"box-sizing: content-box; position: static; width: 32.7167px; height: 24.5px;\" id=\"CLOGB3866357123\" data-clog-name=\"new-btn\">New</button></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357124\" data-clog-name=\"none-ROW-event-type-list\"><select size=\"4\" style=\"box-sizing: content-box; position: static; right: 15px; bottom: 15px; width: 400px; height: 200px;\" id=\"CLOGB3866357125\" data-clog-name=\"event-type-list\"></select></div><div style=\"box-sizing: content-box; position: static; text-align: center;\" class=\"w3-light-blue\" id=\"CLOGB3866357126\" data-clog-name=\"none-SECTION-MANAGE-CONTACTS\">PANEL - Manage Contacts</div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357127\" data-clog-name=\"cc-db-manage\"></div><div style=\"box-sizing: content-box; position: static; height: 0px;\" id=\"CLOGB3866357128\" data-clog-name=\"contact-table-manage\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357129\" data-clog-name=\"none-ROW-name\"><label for=\"\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357130\" data-clog-name=\"label-name\">Name</label><input type=\"TEXT\" value=\"\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357131\" data-clog-name=\"name\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357132\" data-clog-name=\"none-ROW-nickname\"><label for=\"\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357133\" data-clog-name=\"label-nickname\">Nick Name</label><input type=\"TEXT\" value=\"\" style=\"box-sizing: content-box; position: static; width: 350px;\" id=\"CLOGB3866357134\" data-clog-name=\"nickname\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357135\" data-clog-name=\"none-ROW-phone\"><label for=\"\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357136\" data-clog-name=\"label-phone\">Phone</label><input type=\"TEXT\" value=\"\" style=\"box-sizing: content-box; position: static; width: 350px;\" id=\"CLOGB3866357137\" data-clog-name=\"phone\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357138\" data-clog-name=\"none-ROW-email\"><label for=\"\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357139\" data-clog-name=\"label-email\">E-Mail</label><input type=\"TEXT\" value=\"\" style=\"box-sizing: content-box; position: static; width: 350px;\" id=\"CLOGB3866357140\" data-clog-name=\"email\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357141\" data-clog-name=\"none-ROW-buttons-manage\"><button style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357142\" data-clog-name=\"find-btn-manage\">Find</button><button style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357143\" data-clog-name=\"next-btn-manage\">Next</button><button style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357144\" data-clog-name=\"insert-btn-manage\">Insert</button><button style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357145\" data-clog-name=\"update-btn-manage\">Update</button><button style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357146\" data-clog-name=\"delete-btn-manage\">Delete</button></div><div style=\"box-sizing: content-box; position: static; text-align: center; font: 400 15px / 1.5 Verdana, sans-serif;\" class=\"w3-light-blue\" id=\"CLOGB3866357147\" data-clog-name=\"none-SECTION-CONTACT-EVENTS\">PANEL - Contact Events</div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357148\" data-clog-name=\"cc-db-contact-event\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357149\" data-clog-name=\"contact-event-table\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357150\" data-clog-name=\"none-ROW-contact\">Contact<select style=\"box-sizing: content-box; position: static; width: 300px;\" id=\"CLOGB3866357151\" data-clog-name=\"contact_id\"></select></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357152\" data-clog-name=\"none-ROW-type\">Type<select style=\"box-sizing: content-box; position: static; width: 300px;\" id=\"CLOGB3866357153\" data-clog-name=\"event_type_id\"></select></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357154\" data-clog-name=\"none-ROW-start\">Start<input type=\"DATETIME-LOCAL\" value=\"\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357155\" data-clog-name=\"start_dtime\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357156\" data-clog-name=\"none-ROW-end\">End<input type=\"DATETIME-LOCAL\" value=\"\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357157\" data-clog-name=\"end_dtime\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357158\" data-clog-name=\"none-ROW-submit\"><button style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357159\" data-clog-name=\"button-95\">Submit Event</button></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357160\" data-clog-name=\"none-ROW-notes\">Notes<textarea name=\"\" cols=\"20\" rows=\"2\" style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357161\" data-clog-name=\"notes\"></textarea></div><div style=\"box-sizing: content-box; position: static; text-align: center; font: 400 15px / 1.5 Verdana, sans-serif;\" class=\"w3-light-blue\" id=\"CLOGB3866357162\" data-clog-name=\"none-SECTION-REPORT-CONTACTS\">PANEL - Report Contacts</div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357163\" data-clog-name=\"cc-db-report-contacts\"></div><table style=\"box-sizing: content-box; position: static;\" class=\"w3-table-all\" id=\"CLOGB3866357164\" data-clog-name=\"table-contact\"></table><div style=\"box-sizing: content-box; position: static; text-align: center; font: 400 15px / 1.5 Verdana, sans-serif;\" class=\"w3-light-blue\" id=\"CLOGB3866357165\" data-clog-name=\"none-SECTION-REPORT-CONTACTS\">PANEL - Report Events</div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357166\" data-clog-name=\"cc-db-report-events\"></div><div style=\"box-sizing: content-box; position: static;\" id=\"CLOGB3866357167\" data-clog-name=\"none-ROW-dblookup\">Sort<select style=\"box-sizing: content-box; position: static; height: 18px; width: 300px;\" id=\"CLOGB3866357168\" data-clog-name=\"contact-list\"></select></div><table style=\"box-sizing: content-box; position: static; width: 100%;\" class=\"w3-table-all\" id=\"CLOGB3866357169\" data-clog-name=\"event-table\"></table>"
         :hidden hidden :class class :html-id html-id :auto-place auto-place) 'config-event-types)))
    (setf (slot-value panel 'event-table) (attach-as-child clog-obj "CLOGB3866357169" :clog-type 'CLOG:CLOG-DB-TABLE :new-id t))
    (setf (slot-value panel 'contact-list) (attach-as-child clog-obj "CLOGB3866357168" :clog-type 'CLOG:CLOG-LOOKUP :new-id t))
    (setf (slot-value panel 'cc-db-report-events) (attach-as-child clog-obj "CLOGB3866357166" :clog-type 'CLOG:CLOG-DATABASE :new-id t))
    (setf (slot-value panel 'table-contact) (attach-as-child clog-obj "CLOGB3866357164" :clog-type 'CLOG:CLOG-DB-TABLE :new-id t))
    (setf (slot-value panel 'cc-db-report-contacts) (attach-as-child clog-obj "CLOGB3866357163" :clog-type 'CLOG:CLOG-DATABASE :new-id t))
    (setf (slot-value panel 'notes) (attach-as-child clog-obj "CLOGB3866357161" :clog-type 'CLOG:CLOG-TEXT-AREA :new-id t))
    (setf (slot-value panel 'button-95) (attach-as-child clog-obj "CLOGB3866357159" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'end_dtime) (attach-as-child clog-obj "CLOGB3866357157" :clog-type 'CLOG:CLOG-FORM-ELEMENT :new-id t))
    (setf (slot-value panel 'start_dtime) (attach-as-child clog-obj "CLOGB3866357155" :clog-type 'CLOG:CLOG-FORM-ELEMENT :new-id t))
    (setf (slot-value panel 'event_type_id) (attach-as-child clog-obj "CLOGB3866357153" :clog-type 'CLOG:CLOG-LOOKUP :new-id t))
    (setf (slot-value panel 'contact_id) (attach-as-child clog-obj "CLOGB3866357151" :clog-type 'CLOG:CLOG-LOOKUP :new-id t))
    (setf (slot-value panel 'contact-event-table) (attach-as-child clog-obj "CLOGB3866357149" :clog-type 'CLOG:CLOG-ONE-ROW :new-id t))
    (setf (slot-value panel 'cc-db-contact-event) (attach-as-child clog-obj "CLOGB3866357148" :clog-type 'CLOG:CLOG-DATABASE :new-id t))
    (setf (slot-value panel 'delete-btn-manage) (attach-as-child clog-obj "CLOGB3866357146" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'update-btn-manage) (attach-as-child clog-obj "CLOGB3866357145" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'insert-btn-manage) (attach-as-child clog-obj "CLOGB3866357144" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'next-btn-manage) (attach-as-child clog-obj "CLOGB3866357143" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'find-btn-manage) (attach-as-child clog-obj "CLOGB3866357142" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'email) (attach-as-child clog-obj "CLOGB3866357140" :clog-type 'CLOG:CLOG-FORM-ELEMENT :new-id t))
    (setf (slot-value panel 'label-email) (attach-as-child clog-obj "CLOGB3866357139" :clog-type 'CLOG:CLOG-LABEL :new-id t))
    (setf (slot-value panel 'phone) (attach-as-child clog-obj "CLOGB3866357137" :clog-type 'CLOG:CLOG-FORM-ELEMENT :new-id t))
    (setf (slot-value panel 'label-phone) (attach-as-child clog-obj "CLOGB3866357136" :clog-type 'CLOG:CLOG-LABEL :new-id t))
    (setf (slot-value panel 'nickname) (attach-as-child clog-obj "CLOGB3866357134" :clog-type 'CLOG:CLOG-FORM-ELEMENT :new-id t))
    (setf (slot-value panel 'label-nickname) (attach-as-child clog-obj "CLOGB3866357133" :clog-type 'CLOG:CLOG-LABEL :new-id t))
    (setf (slot-value panel 'name) (attach-as-child clog-obj "CLOGB3866357131" :clog-type 'CLOG:CLOG-FORM-ELEMENT :new-id t))
    (setf (slot-value panel 'label-name) (attach-as-child clog-obj "CLOGB3866357130" :clog-type 'CLOG:CLOG-LABEL :new-id t))
    (setf (slot-value panel 'contact-table-manage) (attach-as-child clog-obj "CLOGB3866357128" :clog-type 'CLOG:CLOG-ONE-ROW :new-id t))
    (setf (slot-value panel 'cc-db-manage) (attach-as-child clog-obj "CLOGB3866357127" :clog-type 'CLOG:CLOG-DATABASE :new-id t))
    (setf (slot-value panel 'event-type-list) (attach-as-child clog-obj "CLOGB3866357125" :clog-type 'CLOG:CLOG-LOOKUP :new-id t))
    (setf (slot-value panel 'new-btn) (attach-as-child clog-obj "CLOGB3866357123" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'delete-btn) (attach-as-child clog-obj "CLOGB3866357122" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'edit-btn) (attach-as-child clog-obj "CLOGB3866357121" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'label-3) (attach-as-child clog-obj "CLOGB3866357120" :clog-type 'CLOG:CLOG-LABEL :new-id t))
    (setf (slot-value panel 'cc-db-config) (attach-as-child clog-obj "CLOGB3866357118" :clog-type 'CLOG:CLOG-DATABASE :new-id t))
    (let ((target (cc-db-config panel))) (declare (ignorable target)) (setf (database-connection target) (dbi:connect :sqlite3  :database-name "/home/rtaylor/common-lisp/zzz-contact/clos-contact.db")))
    (let ((target (label-3 panel))) (declare (ignorable target)) NIL)
    (clog:set-on-click (edit-btn panel) (lambda (target) (declare (ignorable target)) (cet-on-edit target panel)))
    (clog:set-on-click (delete-btn panel) (lambda (target) (declare (ignorable target)) (cet-on-delete target panel)))
    (clog:set-on-click (new-btn panel) (lambda (target) (declare (ignorable target)) (cet-on-new target panel)))
    (let ((target (event-type-list panel))) (declare (ignorable target)) (setf (clog-database target) (clog-database (cc-db-config panel)))  (setf (table-name target) "event_type") (setf (value-field target) :|rowid|) (setf (option-field target) :|description|) (setf (where-clause target) "") (setf (order-by target) "") (setf (limit target) "") (setf (row-id-name target) "rowid") (setf (table-columns target) '(rowid description))(get-row target panel))
    (let ((target (cc-db-manage panel))) (declare (ignorable target)) (setf (database-connection target) (dbi:connect :sqlite3  :database-name "/home/rtaylor/common-lisp/zzz-contact/clos-contact.db")))
    (let ((target (contact-table-manage panel))) (declare (ignorable target)) (setf (clog-database target) (clog-database (cc-db-manage panel)))  (setf (table-name target) "contact") (setf (where-clause target) "") (setf (order-by target) "name") (setf (limit target) "") (setf (row-id-name target) "rowid") (setf (table-columns target) '(rowid name nickname phone email)))
    (let ((target (label-name panel))) (declare (ignorable target)) NIL)
    (let ((target (label-nickname panel))) (declare (ignorable target)) NIL)
    (let ((target (label-phone panel))) (declare (ignorable target)) NIL)
    (let ((target (label-email panel))) (declare (ignorable target)) NIL)
    (clog:set-on-click (find-btn-manage panel) (lambda (target) (declare (ignorable target)) (manage-contacts-find target panel)))
    (clog:set-on-click (next-btn-manage panel) (lambda (target) (declare (ignorable target)) (next-row (contact-table-manage panel) panel)))
    (clog:set-on-click (insert-btn-manage panel) (lambda (target) (declare (ignorable target)) (insert-row (contact-table-manage panel) panel)))
    (clog:set-on-click (update-btn-manage panel) (lambda (target) (declare (ignorable target)) (update-row (contact-table-manage panel) panel)))
    (clog:set-on-click (delete-btn-manage panel) (lambda (target) (declare (ignorable target)) (delete-row (contact-table-manage panel) panel)))
    (let ((target (cc-db-contact-event panel))) (declare (ignorable target)) (setf (database-connection target) (dbi:connect :sqlite3  :database-name "/home/rtaylor/common-lisp/zzz-contact/clos-contact.db")))
    (let ((target (contact-event-table panel))) (declare (ignorable target)) (setf (clog-database target) (clog-database (cc-db-contact-event panel)))  (setf (table-name target) "contact_event") (setf (where-clause target) "") (setf (order-by target) "") (setf (limit target) "") (setf (row-id-name target) "rowid") (setf (table-columns target) '(rowid contact_id event_type_id start_dtime end_dtime notes)))
    (let ((target (contact_id panel))) (declare (ignorable target)) (setf (clog-database target) (clog-database (cc-db-contact-event panel)))  (setf (table-name target) "contact") (setf (value-field target) :|rowid|) (setf (option-field target) :|disp|) (setf (where-clause target) "") (setf (order-by target) "") (setf (limit target) "") (setf (row-id-name target) "rowid") (setf (table-columns target) '(rowid ("name||' ('||nickname||')'" "disp"))))
    (let ((target (event_type_id panel))) (declare (ignorable target)) (setf (clog-database target) (clog-database (cc-db-contact-event panel)))  (setf (table-name target) "event_type") (setf (value-field target) :|rowid|) (setf (option-field target) :|description|) (setf (where-clause target) "") (setf (order-by target) "") (setf (limit target) "") (setf (row-id-name target) "rowid") (setf (table-columns target) '(rowid description)))
    (clog:set-on-click (button-95 panel) (lambda (target) (declare (ignorable target)) (contact-event-submit target panel)))
    (let ((target (cc-db-report-contacts panel))) (declare (ignorable target)) (setf (database-connection target) (dbi:connect :sqlite3  :database-name "/home/rtaylor/common-lisp/zzz-contact/clos-contact.db")))
    (clog:set-on-header (table-contact panel) (lambda (target) (declare (ignorable target)) (create-child target "<tr class='w3-green'><th>Row ID</th><th>Name</th><th>Nick Name</th><th>Phone</th><th>E-mail</th></tr>")))
    (let ((target (table-contact panel))) (declare (ignorable target)) (setf (clog-database target) (clog-database (cc-db-report-contacts panel)))  (setf (table-name target) "contact") (setf (where-clause target) "") (setf (order-by target) "") (setf (limit target) "") (setf (row-id-name target) "rowid") (setf (table-columns target) '(rowid name nickname phone email))(get-row target panel))
    (let ((target (cc-db-report-events panel))) (declare (ignorable target)) (setf (database-connection target) (dbi:connect :sqlite3  :database-name "/home/rtaylor/common-lisp/zzz-contact/clos-contact.db")))
    (clog:set-on-change (contact-list panel) (lambda (target) (declare (ignorable target)) (report-events-run (event-table panel) panel) ))
    (let ((target (contact-list panel))) (declare (ignorable target)) (setf (clog-database target) (clog-database (cc-db-report-events panel)))  (setf (table-name target) "contact") (setf (value-field target) :|rowid|) (setf (option-field target) :|name|) (setf (where-clause target) "name") (setf (order-by target) "") (setf (limit target) "") (setf (row-id-name target) "rowid") (setf (table-columns target) '(rowid name))(get-row target panel))
    (clog:set-on-header (event-table panel) (lambda (target) (declare (ignorable target)) (create-child target "<tr class='w3-green'><th>Event Type</th><th>Start</th><th>End</th><th>Notes</th></tr>")))
    (let ((target (event-table panel))) (declare (ignorable target)) (setf (clog-database target) (clog-database (cc-db-report-events panel)))  (setf (table-name target) "") (setf (where-clause target) "") (setf (order-by target) "") (setf (limit target) "") (setf (row-id-name target) "rowid") (setf (table-columns target) '(rowid)))
    panel))