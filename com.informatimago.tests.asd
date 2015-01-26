;;;; -*- mode:lisp;coding:utf-8 -*-
;;;;**************************************************************************
;;;;FILE:               com.informatimago.tests.asd
;;;;LANGUAGE:           Common-Lisp
;;;;SYSTEM:             Common-Lisp
;;;;USER-INTERFACE:     NONE
;;;;DESCRIPTION
;;;;    
;;;;    This system runs all the tests systems of the com.informatimago library.
;;;;    
;;;;AUTHORS
;;;;    <PJB> Pascal J. Bourguignon <pjb@informatimago.com>
;;;;MODIFICATIONS
;;;;    2015-01-26 <PJB> Created.
;;;;BUGS
;;;;LEGAL
;;;;    AGPL3
;;;;    
;;;;    Copyright Pascal J. Bourguignon 2015 - 2015
;;;;    
;;;;    This program is free software: you can redistribute it and/or modify
;;;;    it under the terms of the GNU Affero General Public License as published by
;;;;    the Free Software Foundation, either version 3 of the License, or
;;;;    (at your option) any later version.
;;;;    
;;;;    This program is distributed in the hope that it will be useful,
;;;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;;    GNU Affero General Public License for more details.
;;;;    
;;;;    You should have received a copy of the GNU Affero General Public License
;;;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;;**************************************************************************

(asdf:defsystem :com.informatimago.tests

  ;; system attributes:
  
  :description  "This system tests most of the Informatimago systems."
  :author       "Pascal J. Bourguignon <pjb@informatimago.com>"
  :maintainer   "Pascal J. Bourguignon <pjb@informatimago.com>"
  :licence      "AGPL3"

  
  ;; component attributes:
  :name "Informatimago Systems Agregate Tests"
  :version "1.0.0"
  :properties ((#:author-email                   . "pjb@informatimago.com")
               (#:date                           . "Winter 2015")
               ((#:albert #:output-dir)          . "/tmp/documentation/com.informatimago.test/")
               ((#:albert #:formats)             . ("docbook"))
               ((#:albert #:docbook #:template)  . "book")
               ((#:albert #:docbook #:bgcolor)   . "white")
               ((#:albert #:docbook #:textcolor) . "black"))
  #+asdf-unicode :encoding #+asdf-unicode :utf-8
  :depends-on ("com.informatimago"
               "com.informatimago.common-lisp.cesarum-test"
               "com.informatimago.common-lisp.lisp-reader-test")
  :in-order-to ((asdf:test-op (asdf:test-op "com.informatimago.common-lisp.cesarum-test")
                              (asdf:test-op "com.informatimago.common-lisp.lisp-reader-test")))
  :components ())
