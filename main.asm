;main.asm
;Junhyeok  Choe
; #1
.386
.MODEL flat, stdcall
 STD_OUTPUT_HANDLE EQU -11 
 GetStdHandle PROTO, nStdHandle: DWORD 
 WriteConsoleA PROTO, handle: DWORD, lpBuffer:PTR BYTE, nNumberOfBytesToWrite:DWORD, lpNumberOfBytesWritten:PTR DWORD, lpReserved:DWORD
 ExitProcess PROTO, dwExitCode: DWORD 

 .data
 consoleOutHandle dd ? 
 bytesWritten dd ? 
 message db "Don't try ASSEMBLYER",20,10
 lmessage dd 20

 .code
 main PROC
  INVOKE GetStdHandle, STD_OUTPUT_HANDLE
  mov consoleOutHandle, eax 
  mov edx,offset message 
  pushad    
  mov eax, lmessage
  INVOKE WriteConsoleA, consoleOutHandle, edx, eax, offset bytesWritten, 0
  popad
  INVOKE ExitProcess,0 
 main ENDP
END main