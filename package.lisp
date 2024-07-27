(defpackage #:org.shirakumo.com-on.cffi
  (:use #:cl)
  (:shadow #:byte #:boolean)
  (:export
   #:ole32
   #:cp-utf8
   #:clsctx-all
   #:format-message-from-system
   #:format-message-ignore-inserts
   #:dword
   #:word
   #:long
   #:short
   #:byte
   #:wchar
   #:uint-ptr
   #:init
   #:hresult
   #:com
   #:vtbl
   #:guid
   #:guid-data1
   #:guid-data2
   #:guid-data3
   #:guid-data4
   #:initialize
   #:uninitialize
   #:create-instance
   #:task-mem-free
   #:wide-char-to-multi-byte
   #:multi-byte-to-wide-char
   #:get-last-error
   #:format-message
   #:bool
   #:boolean
   #:handle
   #:hresult
   #:lresult
   #:hwnd
   #:hdc
   #:hinstance
   #:hicon
   #:hmenu
   #:hcursor
   #:hbrush
   #:hbitmap
   #:hmonitor
   #:hmodule
   #:handle
   #:hglobal
   #:hdrop
   #:hgdiobj
   #:lparam
   #:wparam
   #:hglrc
   #:win32-error-code))

(defpackage #:org.shirakumo.com-on
  (:use #:cl)
  (:shadowing-import-from #:org.shirakumo.com-on.cffi
                          #:bool
                          #:boolean
                          #:hresult
                          #:lresult
                          #:hwnd
                          #:hdc
                          #:hinstance
                          #:hicon
                          #:hmenu
                          #:hcursor
                          #:hbrush
                          #:hbitmap
                          #:hmonitor
                          #:hmodule
                          #:handle
                          #:hglobal
                          #:hdrop
                          #:hgdiobj
                          #:lparam
                          #:wparam
                          #:win32-error-code)
  (:local-nicknames
   (#:com #:org.shirakumo.com-on.cffi))
  ;; ffi types
  (:export
   #:bool
   #:boolean
   #:lresult
   #:hwnd
   #:hdc
   #:hinstance
   #:hicon
   #:hmenu
   #:hcursor
   #:hbrush
   #:hbitmap
   #:hmonitor
   #:hmodule
   #:handle
   #:hglobal
   #:hdrop
   #:hgdiobj
   #:lparam
   #:wparam)
  ;; com.lisp
  (:export
   #:create
   #:release
   #:releasef
   #:with-com
   #:with-com*
   #:define-comfun
   #:define-comstruct
   #:init
   #:shutdown
   #:iunknown
   #:iunknown-query-interface
   #:iunknown-add-ref
   #:iunknown-release
   #:query-interface
   #:add-ref)
  ;; error.lisp
  (:export
   #:wstring
   #:wstring->string
   #:string->wstring
   #:wstring-length
   #:with-wstring
   #:error-message
   #:win32-error
   #:function-name
   #:code
   #:message
   #:check-last-error
   #:check-hresult
   #:with-deref
   #:hresult
   #:add-hresult
   #:define-hresult
   #:win32-error-code
   #:add-win32-error-code
   #:define-win32-error-code
   #:check-win32-error-code)
  ;; guid.lisp
  (:export
   #:guid
   #:bytes
   #:guid-string
   #:guid=
   #:guid
   #:define-guid))
