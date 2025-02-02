# fpe-trapping.m4 serial 1
dnl Copyright (C) 2023 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

# Prerequisites for turning FE_INVALID exceptions into a SIGFPE signal.
AC_DEFUN_ONCE([gl_FPE_TRAPPING],
[
  dnl Get FENV_EXCEPTIONS_TRACKING_LIBM.
  AC_REQUIRE([gl_FENV_EXCEPTIONS_TRACKING])
  dnl Get FENV_EXCEPTIONS_TRAPPING_LIBM.
  AC_REQUIRE([gl_FENV_EXCEPTIONS_TRAPPING])

  FPE_TRAPPING_LIBM="$FENV_EXCEPTIONS_TRACKING_LIBM"
  if test -z "$FPE_TRAPPING_LIBM"; then
    FPE_TRAPPING_LIBM="$FENV_EXCEPTIONS_TRAPPING_LIBM"
  fi
  AC_SUBST([FPE_TRAPPING_LIBM])
])
