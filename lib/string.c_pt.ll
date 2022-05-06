; ModuleID = '/llk/IR/lib/string.c_pt.bc'
source_filename = "../lib/string.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strncasecmp:\09\09\09\09\09"
module asm "\09.asciz \09\22strncasecmp\22\09\09\09\09\09"
module asm "__kstrtabns_strncasecmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strcasecmp:\09\09\09\09\09"
module asm "\09.asciz \09\22strcasecmp\22\09\09\09\09\09"
module asm "__kstrtabns_strcasecmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22strcpy\22\09\09\09\09\09"
module asm "__kstrtabns_strcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strncpy:\09\09\09\09\09"
module asm "\09.asciz \09\22strncpy\22\09\09\09\09\09"
module asm "__kstrtabns_strncpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strlcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22strlcpy\22\09\09\09\09\09"
module asm "__kstrtabns_strlcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strscpy:\09\09\09\09\09"
module asm "\09.asciz \09\22strscpy\22\09\09\09\09\09"
module asm "__kstrtabns_strscpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stpcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22stpcpy\22\09\09\09\09\09"
module asm "__kstrtabns_stpcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strcat:\09\09\09\09\09"
module asm "\09.asciz \09\22strcat\22\09\09\09\09\09"
module asm "__kstrtabns_strcat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strncat:\09\09\09\09\09"
module asm "\09.asciz \09\22strncat\22\09\09\09\09\09"
module asm "__kstrtabns_strncat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strlcat:\09\09\09\09\09"
module asm "\09.asciz \09\22strlcat\22\09\09\09\09\09"
module asm "__kstrtabns_strlcat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22strcmp\22\09\09\09\09\09"
module asm "__kstrtabns_strcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strncmp:\09\09\09\09\09"
module asm "\09.asciz \09\22strncmp\22\09\09\09\09\09"
module asm "__kstrtabns_strncmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strchrnul:\09\09\09\09\09"
module asm "\09.asciz \09\22strchrnul\22\09\09\09\09\09"
module asm "__kstrtabns_strchrnul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strnchr:\09\09\09\09\09"
module asm "\09.asciz \09\22strnchr\22\09\09\09\09\09"
module asm "__kstrtabns_strnchr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strlen:\09\09\09\09\09"
module asm "\09.asciz \09\22strlen\22\09\09\09\09\09"
module asm "__kstrtabns_strlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strnlen:\09\09\09\09\09"
module asm "\09.asciz \09\22strnlen\22\09\09\09\09\09"
module asm "__kstrtabns_strnlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strspn:\09\09\09\09\09"
module asm "\09.asciz \09\22strspn\22\09\09\09\09\09"
module asm "__kstrtabns_strspn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strcspn:\09\09\09\09\09"
module asm "\09.asciz \09\22strcspn\22\09\09\09\09\09"
module asm "__kstrtabns_strcspn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strpbrk:\09\09\09\09\09"
module asm "\09.asciz \09\22strpbrk\22\09\09\09\09\09"
module asm "__kstrtabns_strpbrk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strsep:\09\09\09\09\09"
module asm "\09.asciz \09\22strsep\22\09\09\09\09\09"
module asm "__kstrtabns_strsep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memset16:\09\09\09\09\09"
module asm "\09.asciz \09\22memset16\22\09\09\09\09\09"
module asm "__kstrtabns_memset16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22memcmp\22\09\09\09\09\09"
module asm "__kstrtabns_memcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22bcmp\22\09\09\09\09\09"
module asm "__kstrtabns_bcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memscan:\09\09\09\09\09"
module asm "\09.asciz \09\22memscan\22\09\09\09\09\09"
module asm "__kstrtabns_memscan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strstr:\09\09\09\09\09"
module asm "\09.asciz \09\22strstr\22\09\09\09\09\09"
module asm "__kstrtabns_strstr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strnstr:\09\09\09\09\09"
module asm "\09.asciz \09\22strnstr\22\09\09\09\09\09"
module asm "__kstrtabns_strnstr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memchr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22memchr_inv\22\09\09\09\09\09"
module asm "__kstrtabns_memchr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_strncasecmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_strncasecmp = external dso_local constant [0 x i8], align 1
@__ksymtab_strncasecmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strncasecmp to i32), ptr @__kstrtab_strncasecmp, ptr @__kstrtabns_strncasecmp }, section "___ksymtab+strncasecmp", align 4
@__kstrtab_strcasecmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_strcasecmp = external dso_local constant [0 x i8], align 1
@__ksymtab_strcasecmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strcasecmp to i32), ptr @__kstrtab_strcasecmp, ptr @__kstrtabns_strcasecmp }, section "___ksymtab+strcasecmp", align 4
@__kstrtab_strcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_strcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_strcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strcpy to i32), ptr @__kstrtab_strcpy, ptr @__kstrtabns_strcpy }, section "___ksymtab+strcpy", align 4
@__kstrtab_strncpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_strncpy = external dso_local constant [0 x i8], align 1
@__ksymtab_strncpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strncpy to i32), ptr @__kstrtab_strncpy, ptr @__kstrtabns_strncpy }, section "___ksymtab+strncpy", align 4
@__kstrtab_strlcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_strlcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_strlcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strlcpy to i32), ptr @__kstrtab_strlcpy, ptr @__kstrtabns_strlcpy }, section "___ksymtab+strlcpy", align 4
@strscpy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"lib/string.c\00", align 1
@__kstrtab_strscpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_strscpy = external dso_local constant [0 x i8], align 1
@__ksymtab_strscpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strscpy to i32), ptr @__kstrtab_strscpy, ptr @__kstrtabns_strscpy }, section "___ksymtab+strscpy", align 4
@__kstrtab_stpcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_stpcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_stpcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stpcpy to i32), ptr @__kstrtab_stpcpy, ptr @__kstrtabns_stpcpy }, section "___ksymtab+stpcpy", align 4
@__kstrtab_strcat = external dso_local constant [0 x i8], align 1
@__kstrtabns_strcat = external dso_local constant [0 x i8], align 1
@__ksymtab_strcat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strcat to i32), ptr @__kstrtab_strcat, ptr @__kstrtabns_strcat }, section "___ksymtab+strcat", align 4
@__kstrtab_strncat = external dso_local constant [0 x i8], align 1
@__kstrtabns_strncat = external dso_local constant [0 x i8], align 1
@__ksymtab_strncat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strncat to i32), ptr @__kstrtab_strncat, ptr @__kstrtabns_strncat }, section "___ksymtab+strncat", align 4
@__kstrtab_strlcat = external dso_local constant [0 x i8], align 1
@__kstrtabns_strlcat = external dso_local constant [0 x i8], align 1
@__ksymtab_strlcat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strlcat to i32), ptr @__kstrtab_strlcat, ptr @__kstrtabns_strlcat }, section "___ksymtab+strlcat", align 4
@__kstrtab_strcmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_strcmp = external dso_local constant [0 x i8], align 1
@__ksymtab_strcmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strcmp to i32), ptr @__kstrtab_strcmp, ptr @__kstrtabns_strcmp }, section "___ksymtab+strcmp", align 4
@__kstrtab_strncmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_strncmp = external dso_local constant [0 x i8], align 1
@__ksymtab_strncmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strncmp to i32), ptr @__kstrtab_strncmp, ptr @__kstrtabns_strncmp }, section "___ksymtab+strncmp", align 4
@__kstrtab_strchrnul = external dso_local constant [0 x i8], align 1
@__kstrtabns_strchrnul = external dso_local constant [0 x i8], align 1
@__ksymtab_strchrnul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strchrnul to i32), ptr @__kstrtab_strchrnul, ptr @__kstrtabns_strchrnul }, section "___ksymtab+strchrnul", align 4
@__kstrtab_strnchr = external dso_local constant [0 x i8], align 1
@__kstrtabns_strnchr = external dso_local constant [0 x i8], align 1
@__ksymtab_strnchr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strnchr to i32), ptr @__kstrtab_strnchr, ptr @__kstrtabns_strnchr }, section "___ksymtab+strnchr", align 4
@__kstrtab_strlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_strlen = external dso_local constant [0 x i8], align 1
@__ksymtab_strlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strlen to i32), ptr @__kstrtab_strlen, ptr @__kstrtabns_strlen }, section "___ksymtab+strlen", align 4
@__kstrtab_strnlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_strnlen = external dso_local constant [0 x i8], align 1
@__ksymtab_strnlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strnlen to i32), ptr @__kstrtab_strnlen, ptr @__kstrtabns_strnlen }, section "___ksymtab+strnlen", align 4
@__kstrtab_strspn = external dso_local constant [0 x i8], align 1
@__kstrtabns_strspn = external dso_local constant [0 x i8], align 1
@__ksymtab_strspn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strspn to i32), ptr @__kstrtab_strspn, ptr @__kstrtabns_strspn }, section "___ksymtab+strspn", align 4
@__kstrtab_strcspn = external dso_local constant [0 x i8], align 1
@__kstrtabns_strcspn = external dso_local constant [0 x i8], align 1
@__ksymtab_strcspn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strcspn to i32), ptr @__kstrtab_strcspn, ptr @__kstrtabns_strcspn }, section "___ksymtab+strcspn", align 4
@__kstrtab_strpbrk = external dso_local constant [0 x i8], align 1
@__kstrtabns_strpbrk = external dso_local constant [0 x i8], align 1
@__ksymtab_strpbrk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strpbrk to i32), ptr @__kstrtab_strpbrk, ptr @__kstrtabns_strpbrk }, section "___ksymtab+strpbrk", align 4
@__kstrtab_strsep = external dso_local constant [0 x i8], align 1
@__kstrtabns_strsep = external dso_local constant [0 x i8], align 1
@__ksymtab_strsep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strsep to i32), ptr @__kstrtab_strsep, ptr @__kstrtabns_strsep }, section "___ksymtab+strsep", align 4
@__kstrtab_memset16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_memset16 = external dso_local constant [0 x i8], align 1
@__ksymtab_memset16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memset16 to i32), ptr @__kstrtab_memset16, ptr @__kstrtabns_memset16 }, section "___ksymtab+memset16", align 4
@__kstrtab_memcmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_memcmp = external dso_local constant [0 x i8], align 1
@__ksymtab_memcmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memcmp to i32), ptr @__kstrtab_memcmp, ptr @__kstrtabns_memcmp }, section "___ksymtab+memcmp", align 4
@__kstrtab_bcmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcmp = external dso_local constant [0 x i8], align 1
@__ksymtab_bcmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcmp to i32), ptr @__kstrtab_bcmp, ptr @__kstrtabns_bcmp }, section "___ksymtab+bcmp", align 4
@__kstrtab_memscan = external dso_local constant [0 x i8], align 1
@__kstrtabns_memscan = external dso_local constant [0 x i8], align 1
@__ksymtab_memscan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memscan to i32), ptr @__kstrtab_memscan, ptr @__kstrtabns_memscan }, section "___ksymtab+memscan", align 4
@__kstrtab_strstr = external dso_local constant [0 x i8], align 1
@__kstrtabns_strstr = external dso_local constant [0 x i8], align 1
@__ksymtab_strstr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strstr to i32), ptr @__kstrtab_strstr, ptr @__kstrtabns_strstr }, section "___ksymtab+strstr", align 4
@__kstrtab_strnstr = external dso_local constant [0 x i8], align 1
@__kstrtabns_strnstr = external dso_local constant [0 x i8], align 1
@__ksymtab_strnstr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strnstr to i32), ptr @__kstrtab_strnstr, ptr @__kstrtabns_strnstr }, section "___ksymtab+strnstr", align 4
@__kstrtab_memchr_inv = external dso_local constant [0 x i8], align 1
@__kstrtabns_memchr_inv = external dso_local constant [0 x i8], align 1
@__ksymtab_memchr_inv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memchr_inv to i32), ptr @__kstrtab_memchr_inv, ptr @__kstrtabns_memchr_inv }, section "___ksymtab+memchr_inv", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_bcmp, ptr @__ksymtab_memchr_inv, ptr @__ksymtab_memcmp, ptr @__ksymtab_memscan, ptr @__ksymtab_memset16, ptr @__ksymtab_stpcpy, ptr @__ksymtab_strcasecmp, ptr @__ksymtab_strcat, ptr @__ksymtab_strchrnul, ptr @__ksymtab_strcmp, ptr @__ksymtab_strcpy, ptr @__ksymtab_strcspn, ptr @__ksymtab_strlcat, ptr @__ksymtab_strlcpy, ptr @__ksymtab_strlen, ptr @__ksymtab_strncasecmp, ptr @__ksymtab_strncat, ptr @__ksymtab_strnchr, ptr @__ksymtab_strncmp, ptr @__ksymtab_strncpy, ptr @__ksymtab_strnlen, ptr @__ksymtab_strnstr, ptr @__ksymtab_strpbrk, ptr @__ksymtab_strscpy, ptr @__ksymtab_strsep, ptr @__ksymtab_strspn, ptr @__ksymtab_strstr], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @strncasecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %34, %3
  %6 = phi ptr [ %9, %34 ], [ %0, %3 ]
  %7 = phi ptr [ %11, %34 ], [ %1, %3 ]
  %8 = phi i32 [ %36, %34 ], [ %2, %3 ]
  %9 = getelementptr i8, ptr %6, i32 1
  %10 = load i8, ptr %6, align 1
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = load i8, ptr %7, align 1
  %13 = icmp ne i8 %10, 0
  %14 = icmp ne i8 %12, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %38

16:                                               ; preds = %5
  %17 = icmp eq i8 %10, %12
  br i1 %17, label %34, label %18

18:                                               ; preds = %16
  %19 = zext i8 %10 to i32
  %20 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = add i8 %10, 32
  %25 = select i1 %23, i8 %10, i8 %24
  %26 = zext i8 %12 to i32
  %27 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = add i8 %12, 32
  %32 = select i1 %30, i8 %12, i8 %31
  %33 = icmp eq i8 %25, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %18, %16
  %35 = phi i8 [ %10, %16 ], [ %25, %18 ]
  %36 = add i32 %8, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %5

38:                                               ; preds = %34, %18, %5
  %39 = phi i8 [ %35, %34 ], [ %25, %18 ], [ %10, %5 ]
  %40 = phi i8 [ %35, %34 ], [ %32, %18 ], [ %12, %5 ]
  %41 = zext i8 %39 to i32
  %42 = zext i8 %40 to i32
  %43 = sub nsw i32 %41, %42
  br label %44

44:                                               ; preds = %38, %3
  %45 = phi i32 [ %43, %38 ], [ 0, %3 ]
  ret i32 %45
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @strcasecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = phi ptr [ %1, %2 ], [ %15, %3 ]
  %6 = getelementptr i8, ptr %4, i32 1
  %7 = load i8, ptr %4, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = add i8 %7, 32
  %14 = select i1 %12, i8 %7, i8 %13
  %15 = getelementptr i8, ptr %5, i32 1
  %16 = load i8, ptr %5, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = add i8 %16, 32
  %23 = select i1 %21, i8 %16, i8 %22
  %24 = icmp eq i8 %14, %23
  %25 = icmp ne i8 %14, 0
  %26 = and i1 %25, %24
  br i1 %26, label %3, label %27

27:                                               ; preds = %3
  %28 = zext i8 %14 to i32
  %29 = zext i8 %23 to i32
  %30 = sub nsw i32 %28, %29
  ret i32 %30
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @strcpy(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1) #1 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %8, %3 ]
  %5 = phi ptr [ %1, %2 ], [ %6, %3 ]
  %6 = getelementptr i8, ptr %5, i32 1
  %7 = load i8, ptr %5, align 1
  %8 = getelementptr i8, ptr %4, i32 1
  store i8 %7, ptr %4, align 1
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %3

10:                                               ; preds = %3
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @strncpy(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %13, %5 ], [ %0, %3 ]
  %7 = phi i32 [ %14, %5 ], [ %2, %3 ]
  %8 = phi ptr [ %12, %5 ], [ %1, %3 ]
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %6, align 1
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr i8, ptr %6, i32 1
  %14 = add i32 %7, -1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %5

16:                                               ; preds = %5, %3
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strlcpy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %1, %3 ], [ %8, %4 ]
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr i8, ptr %5, i32 1
  br i1 %7, label %9, label %4

9:                                                ; preds = %4
  %10 = ptrtoint ptr %5 to i32
  %11 = ptrtoint ptr %1 to i32
  %12 = sub i32 %10, %11
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = icmp ult i32 %12, %2
  %16 = add i32 %2, -1
  %17 = select i1 %15, i32 %12, i32 %16
  %18 = tail call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef %17) #6
  %19 = getelementptr i8, ptr %0, i32 %17
  store i8 0, ptr %19, align 1
  br label %20

20:                                               ; preds = %14, %9
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @strlen(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr i8, ptr %3, i32 1
  br i1 %5, label %7, label %2

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i32
  %9 = ptrtoint ptr %0 to i32
  %10 = sub i32 %8, %9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strscpy(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %70, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %2, 0
  %7 = load i1, ptr @strscpy.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %5
  store i1 true, ptr @strscpy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #6
  br label %11

11:                                               ; preds = %10, %5
  br i1 %6, label %70, label %12

12:                                               ; preds = %11
  %13 = ptrtoint ptr %1 to i32
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, 4095
  %17 = sub nuw nsw i32 4096, %16
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %2)
  %19 = select i1 %15, i32 %2, i32 %18
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %51

21:                                               ; preds = %45, %12
  %22 = phi i32 [ %48, %45 ], [ %2, %12 ]
  %23 = phi i32 [ %49, %45 ], [ %19, %12 ]
  %24 = phi i32 [ %47, %45 ], [ 0, %12 ]
  %25 = getelementptr i8, ptr %1, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -16843009
  %28 = and i32 %26, -2139062144
  %29 = xor i32 %28, -2139062144
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %21
  %33 = add i32 %30, -1
  %34 = xor i32 %30, -1
  %35 = and i32 %33, %34
  %36 = lshr i32 %35, 7
  %37 = and i32 %36, %26
  %38 = getelementptr i8, ptr %0, i32 %24
  store i32 %37, ptr %38, align 4
  %39 = icmp eq i32 %35, 127
  %40 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 false) #7, !range !9
  %41 = sub nuw nsw i32 32, %40
  %42 = lshr i32 %41, 3
  %43 = select i1 %39, i32 0, i32 %42
  %44 = add i32 %43, %24
  br label %70

45:                                               ; preds = %21
  %46 = getelementptr i8, ptr %0, i32 %24
  store i32 %26, ptr %46, align 4
  %47 = add i32 %24, 4
  %48 = add i32 %22, -4
  %49 = add i32 %23, -4
  %50 = icmp ugt i32 %49, 3
  br i1 %50, label %21, label %51

51:                                               ; preds = %45, %12
  %52 = phi i32 [ 0, %12 ], [ %47, %45 ]
  %53 = phi i32 [ %2, %12 ], [ %48, %45 ]
  br label %54

54:                                               ; preds = %58, %51
  %55 = phi i32 [ %63, %58 ], [ %52, %51 ]
  %56 = phi i32 [ %64, %58 ], [ %53, %51 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %1, i32 %55
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr i8, ptr %0, i32 %55
  store i8 %60, ptr %61, align 1
  %62 = icmp eq i8 %60, 0
  %63 = add i32 %55, 1
  %64 = add i32 %56, -1
  br i1 %62, label %70, label %54

65:                                               ; preds = %54
  %66 = icmp eq i32 %55, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %65
  %68 = add i32 %55, -1
  %69 = getelementptr i8, ptr %0, i32 %68
  store i8 0, ptr %69, align 1
  br label %70

70:                                               ; preds = %67, %65, %58, %32, %11, %3
  %71 = phi i32 [ -7, %11 ], [ -7, %3 ], [ -7, %67 ], [ -7, %65 ], [ %44, %32 ], [ %55, %58 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stpcpy(ptr noalias noundef writeonly %0, ptr noalias nocapture noundef readonly %1) #1 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %8, %3 ]
  %5 = phi ptr [ %1, %2 ], [ %6, %3 ]
  %6 = getelementptr i8, ptr %5, i32 1
  %7 = load i8, ptr %5, align 1
  %8 = getelementptr i8, ptr %4, i32 1
  store i8 %7, ptr %4, align 1
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %3

10:                                               ; preds = %3
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @strcat(ptr noundef returned %0, ptr nocapture noundef readonly %1) #1 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr i8, ptr %4, i32 1
  br i1 %6, label %8, label %3

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %13, %8 ], [ %4, %3 ]
  %10 = phi ptr [ %11, %8 ], [ %1, %3 ]
  %11 = getelementptr i8, ptr %10, i32 1
  %12 = load i8, ptr %10, align 1
  %13 = getelementptr i8, ptr %9, i32 1
  store i8 %12, ptr %9, align 1
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %15, label %8

15:                                               ; preds = %8
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @strncat(ptr noundef returned %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %9, %5 ], [ %0, %3 ]
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr i8, ptr %6, i32 1
  br i1 %8, label %10, label %5

10:                                               ; preds = %16, %5
  %11 = phi ptr [ %17, %16 ], [ %6, %5 ]
  %12 = phi ptr [ %18, %16 ], [ %1, %5 ]
  %13 = phi i32 [ %19, %16 ], [ %2, %5 ]
  %14 = load i8, ptr %12, align 1
  store i8 %14, ptr %11, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %11, i32 1
  %18 = getelementptr i8, ptr %12, i32 1
  %19 = add i32 %13, -1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %10

21:                                               ; preds = %16
  store i8 0, ptr %17, align 1
  br label %22

22:                                               ; preds = %21, %10, %3
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strlcat(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %8, %4 ]
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr i8, ptr %5, i32 1
  br i1 %7, label %9, label %4

9:                                                ; preds = %4
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %1, %9 ], [ %15, %11 ]
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr i8, ptr %12, i32 1
  br i1 %14, label %16, label %11

16:                                               ; preds = %11
  %17 = ptrtoint ptr %5 to i32
  %18 = sub i32 %17, %10
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %21, label %20, !prof !10

20:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/string.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 322, 0\0A.popsection", ""() #7, !srcloc !11
  unreachable

21:                                               ; preds = %16
  %22 = ptrtoint ptr %12 to i32
  %23 = ptrtoint ptr %1 to i32
  %24 = sub i32 %22, %23
  %25 = sub i32 %2, %18
  %26 = icmp ult i32 %24, %25
  %27 = add i32 %25, -1
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = getelementptr i8, ptr %0, i32 %18
  %30 = add i32 %24, %18
  %31 = tail call ptr @memcpy(ptr noundef %29, ptr noundef %1, i32 noundef %28) #6
  %32 = getelementptr i8, ptr %29, i32 %28
  store i8 0, ptr %32, align 1
  ret i32 %30
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @strcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi ptr [ %0, %2 ], [ %14, %12 ]
  %5 = phi ptr [ %1, %2 ], [ %13, %12 ]
  %6 = load i8, ptr %4, align 1
  %7 = load i8, ptr %5, align 1
  %8 = icmp eq i8 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = icmp ult i8 %6, %7
  %11 = select i1 %10, i32 -1, i32 1
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %5, i32 1
  %14 = getelementptr i8, ptr %4, i32 1
  %15 = icmp eq i8 %6, 0
  br i1 %15, label %16, label %3

16:                                               ; preds = %12, %9
  %17 = phi i32 [ %11, %9 ], [ 0, %12 ]
  ret i32 %17
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @strncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %15, %3
  %6 = phi i32 [ %17, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %18, %15 ], [ %1, %3 ]
  %8 = phi ptr [ %19, %15 ], [ %0, %3 ]
  %9 = load i8, ptr %8, align 1
  %10 = load i8, ptr %7, align 1
  %11 = icmp eq i8 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = icmp ult i8 %9, %10
  %14 = select i1 %13, i32 -1, i32 1
  br label %22

15:                                               ; preds = %5
  %16 = icmp eq i8 %9, 0
  %17 = add i32 %6, -1
  %18 = getelementptr i8, ptr %7, i32 1
  %19 = getelementptr i8, ptr %8, i32 1
  %20 = icmp eq i32 %17, 0
  %21 = select i1 %16, i1 true, i1 %20
  br i1 %21, label %22, label %5

22:                                               ; preds = %15, %12, %3
  %23 = phi i32 [ %14, %12 ], [ 0, %3 ], [ 0, %15 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @strchrnul(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = trunc i32 %1 to i8
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %0, %2 ], [ %10, %4 ]
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = icmp eq i8 %6, %3
  %9 = or i1 %7, %8
  %10 = getelementptr i8, ptr %5, i32 1
  br i1 %9, label %11, label %4

11:                                               ; preds = %4
  ret ptr %5
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @strnchrnul(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = trunc i32 %2 to i8
  %7 = getelementptr i8, ptr %0, i32 %1
  br label %8

8:                                                ; preds = %15, %5
  %9 = phi i32 [ %1, %5 ], [ %16, %15 ]
  %10 = phi ptr [ %0, %5 ], [ %17, %15 ]
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = icmp eq i8 %11, %6
  %14 = or i1 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = add i32 %9, -1
  %17 = getelementptr i8, ptr %10, i32 1
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %8

19:                                               ; preds = %15, %8, %3
  %20 = phi ptr [ %0, %3 ], [ %7, %15 ], [ %10, %8 ]
  ret ptr %20
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @strnchr(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %2 to i8
  br label %5

5:                                                ; preds = %13, %3
  %6 = phi ptr [ %0, %3 ], [ %14, %13 ]
  %7 = phi i32 [ %1, %3 ], [ %8, %13 ]
  %8 = add i32 %7, -1
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %6, align 1
  %12 = icmp eq i8 %11, %4
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %6, i32 1
  %15 = icmp eq i8 %11, 0
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %10, %5
  %17 = phi ptr [ %6, %10 ], [ null, %13 ], [ null, %5 ]
  ret ptr %17
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @strnlen(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 %1
  br label %6

6:                                                ; preds = %11, %4
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  %8 = phi ptr [ %13, %11 ], [ %0, %4 ]
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, -1
  %13 = getelementptr i8, ptr %8, i32 1
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %6

15:                                               ; preds = %11, %6, %2
  %16 = phi ptr [ %0, %2 ], [ %5, %11 ], [ %8, %6 ]
  %17 = ptrtoint ptr %16 to i32
  %18 = ptrtoint ptr %0 to i32
  %19 = sub i32 %17, %18
  ret i32 %19
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @strspn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1
  %7 = icmp eq i8 %6, 0
  br label %8

8:                                                ; preds = %20, %5
  %9 = phi i8 [ %3, %5 ], [ %23, %20 ]
  %10 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %11 = phi ptr [ %0, %5 ], [ %22, %20 ]
  br i1 %7, label %25, label %16

12:                                               ; preds = %16
  %13 = getelementptr i8, ptr %18, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %14, %12 ], [ %6, %8 ]
  %18 = phi ptr [ %13, %12 ], [ %1, %8 ]
  %19 = icmp eq i8 %9, %17
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = add i32 %10, 1
  %22 = getelementptr i8, ptr %11, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %8

25:                                               ; preds = %20, %12, %8, %2
  %26 = phi i32 [ 0, %2 ], [ %10, %12 ], [ 0, %8 ], [ %21, %20 ]
  ret i32 %26
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @strcspn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1
  %7 = icmp eq i8 %6, 0
  br label %8

8:                                                ; preds = %20, %5
  %9 = phi i8 [ %3, %5 ], [ %23, %20 ]
  %10 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %11 = phi ptr [ %0, %5 ], [ %22, %20 ]
  br i1 %7, label %20, label %16

12:                                               ; preds = %16
  %13 = getelementptr i8, ptr %18, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %14, %12 ], [ %6, %8 ]
  %18 = phi ptr [ %13, %12 ], [ %1, %8 ]
  %19 = icmp eq i8 %9, %17
  br i1 %19, label %25, label %12

20:                                               ; preds = %12, %8
  %21 = add i32 %10, 1
  %22 = getelementptr i8, ptr %11, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %8

25:                                               ; preds = %20, %16, %2
  %26 = phi i32 [ 0, %2 ], [ %10, %16 ], [ %21, %20 ]
  ret i32 %26
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @strpbrk(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1
  %7 = icmp eq i8 %6, 0
  br label %8

8:                                                ; preds = %19, %5
  %9 = phi i8 [ %3, %5 ], [ %21, %19 ]
  %10 = phi ptr [ %0, %5 ], [ %20, %19 ]
  br i1 %7, label %19, label %15

11:                                               ; preds = %15
  %12 = getelementptr i8, ptr %17, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %8
  %16 = phi i8 [ %13, %11 ], [ %6, %8 ]
  %17 = phi ptr [ %12, %11 ], [ %1, %8 ]
  %18 = icmp eq i8 %9, %16
  br i1 %18, label %23, label %11

19:                                               ; preds = %11, %8
  %20 = getelementptr i8, ptr %10, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %8

23:                                               ; preds = %19, %15, %2
  %24 = phi ptr [ null, %2 ], [ %10, %15 ], [ null, %19 ]
  ret ptr %24
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @strsep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 0
  br label %11

11:                                               ; preds = %22, %8
  %12 = phi i8 [ %6, %8 ], [ %24, %22 ]
  %13 = phi ptr [ %3, %8 ], [ %23, %22 ]
  br i1 %10, label %22, label %18

14:                                               ; preds = %18
  %15 = getelementptr i8, ptr %20, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %11
  %19 = phi i8 [ %16, %14 ], [ %9, %11 ]
  %20 = phi ptr [ %15, %14 ], [ %1, %11 ]
  %21 = icmp eq i8 %12, %19
  br i1 %21, label %26, label %14

22:                                               ; preds = %14, %11
  %23 = getelementptr i8, ptr %13, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %11

26:                                               ; preds = %18
  %27 = icmp eq ptr %13, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %13, i32 1
  store i8 0, ptr %13, align 1
  br label %30

30:                                               ; preds = %28, %26, %22, %5
  %31 = phi ptr [ %29, %28 ], [ null, %26 ], [ null, %5 ], [ null, %22 ]
  store ptr %31, ptr %0, align 4
  br label %32

32:                                               ; preds = %30, %2
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local ptr @memset16(ptr noundef returned writeonly %0, i16 noundef zeroext %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %9, %5 ], [ %0, %3 ]
  %7 = phi i32 [ %8, %5 ], [ %2, %3 ]
  %8 = add i32 %7, -1
  %9 = getelementptr i16, ptr %6, i32 1
  store i16 %1, ptr %6, align 2
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %5

11:                                               ; preds = %5, %3
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @memcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 3
  br i1 %4, label %5, label %17

5:                                                ; preds = %12, %3
  %6 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %7 = phi ptr [ %14, %12 ], [ %1, %3 ]
  %8 = phi i32 [ %15, %12 ], [ %2, %3 ]
  %9 = load i32, ptr %6, align 1
  %10 = load i32, ptr %7, align 1
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = getelementptr i32, ptr %6, i32 1
  %14 = getelementptr i32, ptr %7, i32 1
  %15 = add i32 %8, -4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %5, label %17

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %2, %3 ], [ %15, %12 ]
  %19 = phi ptr [ %1, %3 ], [ %14, %12 ]
  %20 = phi ptr [ %0, %3 ], [ %13, %12 ]
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %17, %5
  %23 = phi i32 [ %18, %17 ], [ %8, %5 ]
  %24 = phi ptr [ %20, %17 ], [ %6, %5 ]
  %25 = phi ptr [ %19, %17 ], [ %7, %5 ]
  br label %26

26:                                               ; preds = %36, %22
  %27 = phi i32 [ %39, %36 ], [ %23, %22 ]
  %28 = phi ptr [ %37, %36 ], [ %24, %22 ]
  %29 = phi ptr [ %38, %36 ], [ %25, %22 ]
  %30 = load i8, ptr %28, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %29, align 1
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %28, i32 1
  %38 = getelementptr i8, ptr %29, i32 1
  %39 = add i32 %27, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %26

41:                                               ; preds = %36, %26, %17
  %42 = phi i32 [ 0, %17 ], [ %34, %26 ], [ 0, %36 ]
  ret i32 %42
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @bcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 3
  br i1 %4, label %5, label %17

5:                                                ; preds = %12, %3
  %6 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %7 = phi ptr [ %14, %12 ], [ %1, %3 ]
  %8 = phi i32 [ %15, %12 ], [ %2, %3 ]
  %9 = load i32, ptr %6, align 1
  %10 = load i32, ptr %7, align 1
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = getelementptr i32, ptr %6, i32 1
  %14 = getelementptr i32, ptr %7, i32 1
  %15 = add i32 %8, -4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %5, label %17

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %2, %3 ], [ %15, %12 ]
  %19 = phi ptr [ %1, %3 ], [ %14, %12 ]
  %20 = phi ptr [ %0, %3 ], [ %13, %12 ]
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %17, %5
  %23 = phi i32 [ %18, %17 ], [ %8, %5 ]
  %24 = phi ptr [ %20, %17 ], [ %6, %5 ]
  %25 = phi ptr [ %19, %17 ], [ %7, %5 ]
  br label %26

26:                                               ; preds = %36, %22
  %27 = phi i32 [ %39, %36 ], [ %23, %22 ]
  %28 = phi ptr [ %37, %36 ], [ %24, %22 ]
  %29 = phi ptr [ %38, %36 ], [ %25, %22 ]
  %30 = load i8, ptr %28, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %29, align 1
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %28, i32 1
  %38 = getelementptr i8, ptr %29, i32 1
  %39 = add i32 %27, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %26

41:                                               ; preds = %36, %26, %17
  %42 = phi i32 [ 0, %17 ], [ 0, %36 ], [ %34, %26 ]
  ret i32 %42
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @memscan(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = trunc i32 %1 to i8
  %7 = getelementptr i8, ptr %0, i32 %2
  br label %8

8:                                                ; preds = %13, %5
  %9 = phi ptr [ %0, %5 ], [ %14, %13 ]
  %10 = phi i32 [ %2, %5 ], [ %15, %13 ]
  %11 = load i8, ptr %9, align 1
  %12 = icmp eq i8 %11, %6
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 1
  %15 = add i32 %10, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %13, %8, %3
  %18 = phi ptr [ %0, %3 ], [ %7, %13 ], [ %9, %8 ]
  ret ptr %18
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @strstr(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %7, %3 ]
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr i8, ptr %4, i32 1
  br i1 %6, label %8, label %3

8:                                                ; preds = %3
  %9 = ptrtoint ptr %4 to i32
  %10 = ptrtoint ptr %1 to i32
  %11 = sub i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %17, %13 ], [ %0, %8 ]
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr i8, ptr %14, i32 1
  br i1 %16, label %18, label %13

18:                                               ; preds = %13
  %19 = ptrtoint ptr %14 to i32
  %20 = ptrtoint ptr %0 to i32
  %21 = sub i32 %19, %20
  %22 = icmp ult i32 %21, %11
  br i1 %22, label %65, label %23

23:                                               ; preds = %18
  %24 = icmp ugt i32 %11, 3
  br label %25

25:                                               ; preds = %61, %23
  %26 = phi i32 [ %21, %23 ], [ %62, %61 ]
  %27 = phi ptr [ %0, %23 ], [ %63, %61 ]
  br i1 %24, label %28, label %40

28:                                               ; preds = %35, %25
  %29 = phi ptr [ %36, %35 ], [ %27, %25 ]
  %30 = phi ptr [ %37, %35 ], [ %1, %25 ]
  %31 = phi i32 [ %38, %35 ], [ %11, %25 ]
  %32 = load i32, ptr %29, align 1
  %33 = load i32, ptr %30, align 1
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = getelementptr i32, ptr %29, i32 1
  %37 = getelementptr i32, ptr %30, i32 1
  %38 = add i32 %31, -4
  %39 = icmp ugt i32 %38, 3
  br i1 %39, label %28, label %40

40:                                               ; preds = %35, %25
  %41 = phi i32 [ %11, %25 ], [ %38, %35 ]
  %42 = phi ptr [ %1, %25 ], [ %37, %35 ]
  %43 = phi ptr [ %27, %25 ], [ %36, %35 ]
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %40, %28
  %46 = phi i32 [ %41, %40 ], [ %31, %28 ]
  %47 = phi ptr [ %43, %40 ], [ %29, %28 ]
  %48 = phi ptr [ %42, %40 ], [ %30, %28 ]
  br label %49

49:                                               ; preds = %56, %45
  %50 = phi i32 [ %59, %56 ], [ %46, %45 ]
  %51 = phi ptr [ %57, %56 ], [ %47, %45 ]
  %52 = phi ptr [ %58, %56 ], [ %48, %45 ]
  %53 = load i8, ptr %51, align 1
  %54 = load i8, ptr %52, align 1
  %55 = icmp eq i8 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = getelementptr i8, ptr %51, i32 1
  %58 = getelementptr i8, ptr %52, i32 1
  %59 = add i32 %50, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %49

61:                                               ; preds = %49
  %62 = add i32 %26, -1
  %63 = getelementptr i8, ptr %27, i32 1
  %64 = icmp ult i32 %62, %11
  br i1 %64, label %65, label %25

65:                                               ; preds = %61, %56, %40, %18, %8
  %66 = phi ptr [ %0, %8 ], [ null, %18 ], [ %27, %56 ], [ null, %61 ], [ %27, %40 ]
  ret ptr %66
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @strnstr(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %1, %3 ], [ %8, %4 ]
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr i8, ptr %5, i32 1
  br i1 %7, label %9, label %4

9:                                                ; preds = %4
  %10 = ptrtoint ptr %5 to i32
  %11 = ptrtoint ptr %1 to i32
  %12 = sub i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  %15 = icmp ugt i32 %12, %2
  br i1 %15, label %58, label %16

16:                                               ; preds = %14
  %17 = icmp ugt i32 %12, 3
  br label %18

18:                                               ; preds = %54, %16
  %19 = phi i32 [ %2, %16 ], [ %55, %54 ]
  %20 = phi ptr [ %0, %16 ], [ %56, %54 ]
  br i1 %17, label %21, label %33

21:                                               ; preds = %28, %18
  %22 = phi ptr [ %29, %28 ], [ %20, %18 ]
  %23 = phi ptr [ %30, %28 ], [ %1, %18 ]
  %24 = phi i32 [ %31, %28 ], [ %12, %18 ]
  %25 = load i32, ptr %22, align 1
  %26 = load i32, ptr %23, align 1
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = getelementptr i32, ptr %22, i32 1
  %30 = getelementptr i32, ptr %23, i32 1
  %31 = add i32 %24, -4
  %32 = icmp ugt i32 %31, 3
  br i1 %32, label %21, label %33

33:                                               ; preds = %28, %18
  %34 = phi i32 [ %12, %18 ], [ %31, %28 ]
  %35 = phi ptr [ %1, %18 ], [ %30, %28 ]
  %36 = phi ptr [ %20, %18 ], [ %29, %28 ]
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %33, %21
  %39 = phi i32 [ %34, %33 ], [ %24, %21 ]
  %40 = phi ptr [ %36, %33 ], [ %22, %21 ]
  %41 = phi ptr [ %35, %33 ], [ %23, %21 ]
  br label %42

42:                                               ; preds = %49, %38
  %43 = phi i32 [ %52, %49 ], [ %39, %38 ]
  %44 = phi ptr [ %50, %49 ], [ %40, %38 ]
  %45 = phi ptr [ %51, %49 ], [ %41, %38 ]
  %46 = load i8, ptr %44, align 1
  %47 = load i8, ptr %45, align 1
  %48 = icmp eq i8 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = getelementptr i8, ptr %44, i32 1
  %51 = getelementptr i8, ptr %45, i32 1
  %52 = add i32 %43, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %42

54:                                               ; preds = %42
  %55 = add i32 %19, -1
  %56 = getelementptr i8, ptr %20, i32 1
  %57 = icmp ult i32 %55, %12
  br i1 %57, label %58, label %18

58:                                               ; preds = %54, %49, %33, %14, %9
  %59 = phi ptr [ %0, %9 ], [ null, %14 ], [ %20, %49 ], [ null, %54 ], [ %20, %33 ]
  ret ptr %59
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @memchr_inv(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %1 to i8
  %5 = icmp ult i32 %2, 17
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %170, label %8

8:                                                ; preds = %13, %6
  %9 = phi i32 [ %15, %13 ], [ %2, %6 ]
  %10 = phi ptr [ %14, %13 ], [ %0, %6 ]
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, %4
  br i1 %12, label %13, label %170

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %10, i32 1
  %15 = add i32 %9, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %170, label %8

17:                                               ; preds = %3
  %18 = and i32 %1, 255
  %19 = mul nuw i32 %18, 16843009
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %20, 4294967297
  %22 = ptrtoint ptr %0 to i32
  %23 = and i32 %22, 7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %72, label %25

25:                                               ; preds = %17
  %26 = sub nuw nsw i32 8, %23
  %27 = load i8, ptr %0, align 1
  %28 = icmp eq i8 %27, %4
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = icmp eq i32 %23, 7
  br i1 %30, label %68, label %31

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, %4
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = icmp eq i32 %23, 6
  br i1 %36, label %68, label %37

37:                                               ; preds = %35
  %38 = getelementptr i8, ptr %0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, %4
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = icmp eq i32 %23, 5
  br i1 %42, label %68, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %0, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, %4
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = icmp eq i32 %23, 4
  br i1 %48, label %68, label %49

49:                                               ; preds = %47
  %50 = getelementptr i8, ptr %0, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, %4
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = icmp eq i32 %23, 3
  br i1 %54, label %68, label %55

55:                                               ; preds = %53
  %56 = getelementptr i8, ptr %0, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, %4
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = icmp eq i32 %23, 2
  br i1 %60, label %68, label %61

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %0, i32 6
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, %4
  br i1 %64, label %68, label %65

65:                                               ; preds = %61, %55, %49, %43, %37, %31, %25
  %66 = phi ptr [ %0, %25 ], [ %32, %31 ], [ %38, %37 ], [ %44, %43 ], [ %50, %49 ], [ %56, %55 ], [ %62, %61 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %170

68:                                               ; preds = %65, %61, %59, %53, %47, %41, %35, %29
  %69 = sub i32 %2, %26
  %70 = getelementptr i8, ptr %0, i32 %26
  %71 = icmp ult i32 %69, 8
  br i1 %71, label %125, label %72

72:                                               ; preds = %68, %17
  %73 = phi i32 [ %69, %68 ], [ %2, %17 ]
  %74 = phi ptr [ %70, %68 ], [ %0, %17 ]
  %75 = lshr i32 %73, 3
  %76 = and i32 %73, -8
  %77 = getelementptr i8, ptr %74, i32 %76
  br label %78

78:                                               ; preds = %121, %72
  %79 = phi i32 [ %123, %121 ], [ %75, %72 ]
  %80 = phi ptr [ %122, %121 ], [ %74, %72 ]
  %81 = load i64, ptr %80, align 8
  %82 = icmp eq i64 %81, %21
  br i1 %82, label %121, label %83

83:                                               ; preds = %78
  %84 = lshr i64 %81, 16
  %85 = trunc i64 %84 to i8
  %86 = lshr i64 %81, 24
  %87 = trunc i64 %86 to i8
  %88 = lshr i64 %81, 32
  %89 = trunc i64 %88 to i8
  %90 = lshr i64 %81, 40
  %91 = trunc i64 %90 to i8
  %92 = lshr i64 %81, 48
  %93 = trunc i64 %92 to i8
  %94 = trunc i64 %81 to i8
  %95 = icmp eq i8 %94, %4
  br i1 %95, label %96, label %170

96:                                               ; preds = %83
  %97 = lshr i64 %81, 8
  %98 = trunc i64 %97 to i8
  %99 = getelementptr i8, ptr %80, i32 1
  %100 = icmp eq i8 %98, %4
  br i1 %100, label %101, label %170

101:                                              ; preds = %96
  %102 = getelementptr i8, ptr %80, i32 2
  %103 = icmp eq i8 %85, %4
  br i1 %103, label %104, label %170

104:                                              ; preds = %101
  %105 = getelementptr i8, ptr %80, i32 3
  %106 = icmp eq i8 %87, %4
  br i1 %106, label %107, label %170

107:                                              ; preds = %104
  %108 = getelementptr i8, ptr %80, i32 4
  %109 = icmp eq i8 %89, %4
  br i1 %109, label %110, label %170

110:                                              ; preds = %107
  %111 = getelementptr i8, ptr %80, i32 5
  %112 = icmp eq i8 %91, %4
  br i1 %112, label %113, label %170

113:                                              ; preds = %110
  %114 = getelementptr i8, ptr %80, i32 6
  %115 = icmp eq i8 %93, %4
  br i1 %115, label %116, label %170

116:                                              ; preds = %113
  %117 = getelementptr i8, ptr %80, i32 7
  %118 = load i8, ptr %117, align 1
  %119 = icmp eq i8 %118, %4
  %120 = select i1 %119, ptr null, ptr %117
  br label %170

121:                                              ; preds = %78
  %122 = getelementptr i8, ptr %80, i32 8
  %123 = add nsw i32 %79, -1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %78

125:                                              ; preds = %121, %68
  %126 = phi i32 [ %69, %68 ], [ %73, %121 ]
  %127 = phi ptr [ %70, %68 ], [ %77, %121 ]
  %128 = and i32 %126, 7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %170, label %130

130:                                              ; preds = %125
  %131 = load i8, ptr %127, align 1
  %132 = icmp eq i8 %131, %4
  br i1 %132, label %133, label %170

133:                                              ; preds = %130
  %134 = icmp eq i32 %128, 1
  br i1 %134, label %170, label %135

135:                                              ; preds = %133
  %136 = getelementptr i8, ptr %127, i32 1
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %137, %4
  br i1 %138, label %139, label %170

139:                                              ; preds = %135
  %140 = icmp eq i32 %128, 2
  br i1 %140, label %170, label %141

141:                                              ; preds = %139
  %142 = getelementptr i8, ptr %127, i32 2
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, %4
  br i1 %144, label %145, label %170

145:                                              ; preds = %141
  %146 = icmp eq i32 %128, 3
  br i1 %146, label %170, label %147

147:                                              ; preds = %145
  %148 = getelementptr i8, ptr %127, i32 3
  %149 = load i8, ptr %148, align 1
  %150 = icmp eq i8 %149, %4
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = icmp eq i32 %128, 4
  br i1 %152, label %170, label %153

153:                                              ; preds = %151
  %154 = getelementptr i8, ptr %127, i32 4
  %155 = load i8, ptr %154, align 1
  %156 = icmp eq i8 %155, %4
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = icmp eq i32 %128, 5
  br i1 %158, label %170, label %159

159:                                              ; preds = %157
  %160 = getelementptr i8, ptr %127, i32 5
  %161 = load i8, ptr %160, align 1
  %162 = icmp eq i8 %161, %4
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = icmp eq i32 %128, 6
  br i1 %164, label %170, label %165

165:                                              ; preds = %163
  %166 = getelementptr i8, ptr %127, i32 6
  %167 = load i8, ptr %166, align 1
  %168 = icmp eq i8 %167, %4
  %169 = select i1 %168, ptr null, ptr %166
  br label %170

170:                                              ; preds = %165, %163, %159, %157, %153, %151, %147, %145, %141, %139, %135, %133, %130, %125, %116, %113, %110, %107, %104, %101, %96, %83, %65, %13, %8, %6
  %171 = phi ptr [ %66, %65 ], [ null, %6 ], [ null, %125 ], [ %80, %83 ], [ %99, %96 ], [ %102, %101 ], [ %105, %104 ], [ %108, %107 ], [ %111, %110 ], [ %114, %113 ], [ %120, %116 ], [ %10, %8 ], [ null, %13 ], [ %127, %130 ], [ null, %133 ], [ %136, %135 ], [ null, %139 ], [ %142, %141 ], [ null, %145 ], [ %148, %147 ], [ null, %151 ], [ %154, %153 ], [ null, %157 ], [ %160, %159 ], [ null, %163 ], [ %169, %165 ]
  ret ptr %171
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2150120280, i64 2150120757, i64 2150120317, i64 2150120373, i64 2150120407, i64 2150120431, i64 2150120472, i64 2150120493, i64 2150120521, i64 2150120555}
