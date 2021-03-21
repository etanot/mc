
dnl
dnl Use the slang library.
dnl
AC_DEFUN([mc_WITH_SLANG], [
    found_slang=no
    PKG_CHECK_MODULES(SLANG, [slang >= 2.0], [found_slang=yes], [:])
    if test x"$found_slang" = xno; then
        AC_MSG_ERROR([S-Lang >= 2.0.0 library not found])
    fi

    MCLIBS="$SLANG_LIBS $MCLIBS"
    CPPFLAGS="$SLANG_CFLAGS $CPPFLAGS"

    screen_type=slang
    screen_msg="S-Lang"

    AC_DEFINE(HAVE_SLANG, 1, [Define to use S-Lang library for screen management])
])
