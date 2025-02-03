#pragma library Process

native libcall(const libname[], const funcname[], const typestring[], ...);
native bool: libfree(const libname[]="");

native PID:  procexec(const progname[]);
native       procwait(PID:pid);
native bool: procwrite(const line[], bool:appendlf=false);
native bool: procread(line[], size=sizeof line, bool:striplf=false, bool:packed=false);