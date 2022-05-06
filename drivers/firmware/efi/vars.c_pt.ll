; ModuleID = '/llk/IR/drivers/firmware/efi/vars.c_pt.bc'
source_filename = "../drivers/firmware/efi/vars.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_validate\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_variable_is_removable:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_variable_is_removable\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_variable_is_removable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_init:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_init\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_add:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_add\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_remove\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___efivar_entry_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22__efivar_entry_delete\22\09\09\09\09\09"
module asm "__kstrtabns___efivar_entry_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_delete\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_set:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_set\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_set_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_set_safe\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_set_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_find:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_find\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_size:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_size\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___efivar_entry_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__efivar_entry_get\22\09\09\09\09\09"
module asm "__kstrtabns___efivar_entry_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_get:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_get\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_set_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_set_get_size\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_set_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_iter_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_iter_begin\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_iter_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_iter_end:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_iter_end\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_iter_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___efivar_entry_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22__efivar_entry_iter\22\09\09\09\09\09"
module asm "__kstrtabns___efivar_entry_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_entry_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_entry_iter\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_entry_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivars_kobject:\09\09\09\09\09"
module asm "\09.asciz \09\22efivars_kobject\22\09\09\09\09\09"
module asm "__kstrtabns_efivars_kobject:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivars_register:\09\09\09\09\09"
module asm "\09.asciz \09\22efivars_register\22\09\09\09\09\09"
module asm "__kstrtabns_efivars_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivars_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22efivars_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_efivars_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efivar_supports_writes:\09\09\09\09\09"
module asm "\09.asciz \09\22efivar_supports_writes\22\09\09\09\09\09"
module asm "__kstrtabns_efivar_supports_writes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.variable_validate = type { %struct.guid_t, ptr, ptr }
%struct.guid_t = type { [16 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.efivars = type { ptr, ptr, ptr }
%struct.efivar_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.efivar_entry = type { %struct.efi_variable, %struct.list_head, %struct.kobject, i8, i8 }
%struct.efi_variable = type { [512 x i16], %struct.guid_t, i32, [1024 x i8], i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.efi_generic_dev_path = type { i8, i8, i16 }

@variable_validate = internal unnamed_addr constant [17 x %struct.variable_validate] [%struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.5, ptr @validate_uint16 }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.6, ptr @validate_boot_order }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.7, ptr @validate_load_option }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.8, ptr @validate_boot_order }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.9, ptr @validate_load_option }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.10, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.11, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.12, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.13, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.14, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.15, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.16, ptr @validate_ascii_string }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.17, ptr null }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.18, ptr @validate_ascii_string }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.19, ptr @validate_uint16 }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"y\FC\C8\CF.\BE\DCM\97\F0\9F\98\BF\E2\98\A0" }, ptr @.str.20, ptr null }, %struct.variable_validate { %struct.guid_t zeroinitializer, ptr @.str.21, ptr null }], align 4
@__kstrtab_efivar_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_validate to i32), ptr @__kstrtab_efivar_validate, ptr @__kstrtabns_efivar_validate }, section "___ksymtab_gpl+efivar_validate", align 4
@__kstrtab_efivar_variable_is_removable = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_variable_is_removable = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_variable_is_removable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_variable_is_removable to i32), ptr @__kstrtab_efivar_variable_is_removable, ptr @__kstrtabns_efivar_variable_is_removable }, section "___ksymtab_gpl+efivar_variable_is_removable", align 4
@__efivars = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [38 x i8] c"\013efivars: Memory allocation failed.\0A\00", align 1
@efivars_lock = internal global %struct.semaphore { %struct.raw_spinlock zeroinitializer, i32 1, %struct.list_head { ptr getelementptr (i8, ptr @efivars_lock, i64 8), ptr getelementptr (i8, ptr @efivars_lock, i64 8) } }, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\014efivars: get_next_variable: status=%lx\0A\00", align 1
@__kstrtab_efivar_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_init = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_init to i32), ptr @__kstrtab_efivar_init, ptr @__kstrtabns_efivar_init }, section "___ksymtab_gpl+efivar_init", align 4
@__kstrtab_efivar_entry_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_add = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_add to i32), ptr @__kstrtab_efivar_entry_add, ptr @__kstrtabns_efivar_entry_add }, section "___ksymtab_gpl+efivar_entry_add", align 4
@__kstrtab_efivar_entry_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_remove to i32), ptr @__kstrtab_efivar_entry_remove, ptr @__kstrtabns_efivar_entry_remove }, section "___ksymtab_gpl+efivar_entry_remove", align 4
@__kstrtab___efivar_entry_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns___efivar_entry_delete = external dso_local constant [0 x i8], align 1
@__ksymtab___efivar_entry_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__efivar_entry_delete to i32), ptr @__kstrtab___efivar_entry_delete, ptr @__kstrtabns___efivar_entry_delete }, section "___ksymtab_gpl+__efivar_entry_delete", align 4
@__kstrtab_efivar_entry_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_delete to i32), ptr @__kstrtab_efivar_entry_delete, ptr @__kstrtabns_efivar_entry_delete }, section "___ksymtab_gpl+efivar_entry_delete", align 4
@__kstrtab_efivar_entry_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_set = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_set to i32), ptr @__kstrtab_efivar_entry_set, ptr @__kstrtabns_efivar_entry_set }, section "___ksymtab_gpl+efivar_entry_set", align 4
@__kstrtab_efivar_entry_set_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_set_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_set_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_set_safe to i32), ptr @__kstrtab_efivar_entry_set_safe, ptr @__kstrtabns_efivar_entry_set_safe }, section "___ksymtab_gpl+efivar_entry_set_safe", align 4
@__kstrtab_efivar_entry_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_find = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_find to i32), ptr @__kstrtab_efivar_entry_find, ptr @__kstrtabns_efivar_entry_find }, section "___ksymtab_gpl+efivar_entry_find", align 4
@__kstrtab_efivar_entry_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_size = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_size to i32), ptr @__kstrtab_efivar_entry_size, ptr @__kstrtabns_efivar_entry_size }, section "___ksymtab_gpl+efivar_entry_size", align 4
@__kstrtab___efivar_entry_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___efivar_entry_get = external dso_local constant [0 x i8], align 1
@__ksymtab___efivar_entry_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__efivar_entry_get to i32), ptr @__kstrtab___efivar_entry_get, ptr @__kstrtabns___efivar_entry_get }, section "___ksymtab_gpl+__efivar_entry_get", align 4
@__kstrtab_efivar_entry_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_get = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_get to i32), ptr @__kstrtab_efivar_entry_get, ptr @__kstrtabns_efivar_entry_get }, section "___ksymtab_gpl+efivar_entry_get", align 4
@__kstrtab_efivar_entry_set_get_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_set_get_size = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_set_get_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_set_get_size to i32), ptr @__kstrtab_efivar_entry_set_get_size, ptr @__kstrtabns_efivar_entry_set_get_size }, section "___ksymtab_gpl+efivar_entry_set_get_size", align 4
@__kstrtab_efivar_entry_iter_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_iter_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_iter_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_iter_begin to i32), ptr @__kstrtab_efivar_entry_iter_begin, ptr @__kstrtabns_efivar_entry_iter_begin }, section "___ksymtab_gpl+efivar_entry_iter_begin", align 4
@__kstrtab_efivar_entry_iter_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_iter_end = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_iter_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_iter_end to i32), ptr @__kstrtab_efivar_entry_iter_end, ptr @__kstrtabns_efivar_entry_iter_end }, section "___ksymtab_gpl+efivar_entry_iter_end", align 4
@__kstrtab___efivar_entry_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns___efivar_entry_iter = external dso_local constant [0 x i8], align 1
@__ksymtab___efivar_entry_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__efivar_entry_iter to i32), ptr @__kstrtab___efivar_entry_iter, ptr @__kstrtabns___efivar_entry_iter }, section "___ksymtab_gpl+__efivar_entry_iter", align 4
@__kstrtab_efivar_entry_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_entry_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_entry_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_entry_iter to i32), ptr @__kstrtab_efivar_entry_iter, ptr @__kstrtabns_efivar_entry_iter }, section "___ksymtab_gpl+efivar_entry_iter", align 4
@__kstrtab_efivars_kobject = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivars_kobject = external dso_local constant [0 x i8], align 1
@__ksymtab_efivars_kobject = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivars_kobject to i32), ptr @__kstrtab_efivars_kobject, ptr @__kstrtabns_efivars_kobject }, section "___ksymtab_gpl+efivars_kobject", align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\016Registered efivars operations\0A\00", align 1
@__kstrtab_efivars_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivars_register = external dso_local constant [0 x i8], align 1
@__ksymtab_efivars_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivars_register to i32), ptr @__kstrtab_efivars_register, ptr @__kstrtabns_efivars_register }, section "___ksymtab_gpl+efivars_register", align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"\013efivars not registered\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\016Unregistered efivars operations\0A\00", align 1
@__kstrtab_efivars_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivars_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_efivars_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivars_unregister to i32), ptr @__kstrtab_efivars_unregister, ptr @__kstrtabns_efivars_unregister }, section "___ksymtab_gpl+efivars_unregister", align 4
@__kstrtab_efivar_supports_writes = external dso_local constant [0 x i8], align 1
@__kstrtabns_efivar_supports_writes = external dso_local constant [0 x i8], align 1
@__ksymtab_efivar_supports_writes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efivar_supports_writes to i32), ptr @__kstrtab_efivar_supports_writes, ptr @__kstrtabns_efivar_supports_writes }, section "___ksymtab_gpl+efivar_supports_writes", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"BootNext\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"BootOrder\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Boot*\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"DriverOrder\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Driver*\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ConIn\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"ConInDev\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ConOut\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ConOutDev\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ErrOut\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ErrOutDev\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Lang\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"OsIndications\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"PlatformLang\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"\014efivars: duplicate variable: %s-%pUl\0A\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab___efivar_entry_delete, ptr @__ksymtab___efivar_entry_get, ptr @__ksymtab___efivar_entry_iter, ptr @__ksymtab_efivar_entry_add, ptr @__ksymtab_efivar_entry_delete, ptr @__ksymtab_efivar_entry_find, ptr @__ksymtab_efivar_entry_get, ptr @__ksymtab_efivar_entry_iter, ptr @__ksymtab_efivar_entry_iter_begin, ptr @__ksymtab_efivar_entry_iter_end, ptr @__ksymtab_efivar_entry_remove, ptr @__ksymtab_efivar_entry_set, ptr @__ksymtab_efivar_entry_set_get_size, ptr @__ksymtab_efivar_entry_set_safe, ptr @__ksymtab_efivar_entry_size, ptr @__ksymtab_efivar_init, ptr @__ksymtab_efivar_supports_writes, ptr @__ksymtab_efivar_validate, ptr @__ksymtab_efivar_variable_is_removable, ptr @__ksymtab_efivars_kobject, ptr @__ksymtab_efivars_register, ptr @__ksymtab_efivars_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @efivar_validate([4 x i32] %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.guid_t, align 4
  %6 = alloca %struct.guid_t, align 4
  %7 = tail call i32 @ucs2_utf8size(ptr noundef %1) #15
  %8 = add i32 %7, 1
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %67, label %11

11:                                               ; preds = %4
  %12 = tail call i32 @ucs2_as_utf8(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %7) #15
  %13 = getelementptr i8, ptr %9, i32 %7
  store i8 0, ptr %13, align 1
  %14 = extractvalue [4 x i32] %0, 0
  %15 = extractvalue [4 x i32] %0, 1
  %16 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %17 = extractvalue [4 x i32] %0, 2
  %18 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %19 = extractvalue [4 x i32] %0, 3
  %20 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %21 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  br label %24

24:                                               ; preds = %61, %11
  %25 = phi ptr [ @.str.5, %11 ], [ %64, %61 ]
  %26 = phi i32 [ 0, %11 ], [ %62, %61 ]
  %27 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  store i32 %14, ptr %5, align 4
  store i32 %15, ptr %16, align 4
  store i32 %17, ptr %18, align 4
  store i32 %19, ptr %20, align 4
  store i32 %28, ptr %6, align 4
  store i32 %30, ptr %21, align 4
  store i32 %32, ptr %22, align 4
  store i32 %34, ptr %23, align 4
  %35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef nonnull dereferenceable(16) %6, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %47, %24
  %38 = phi i32 [ %48, %47 ], [ 0, %24 ]
  %39 = getelementptr i8, ptr %25, i32 %38
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %41 [
    i8 42, label %51
    i8 0, label %49
  ]

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, %8
  br i1 %42, label %61, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %9, i32 %38
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %40, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = add i32 %38, 1
  br label %37

49:                                               ; preds = %37
  %50 = icmp eq i32 %38, %8
  br i1 %50, label %51, label %61

51:                                               ; preds = %49, %37
  %52 = phi i32 [ %38, %37 ], [ %8, %49 ]
  %53 = and i32 %26, 536870911
  %54 = lshr i32 102400, %53
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i32 0, i32 %26, i32 2
  tail call void @kfree(ptr noundef nonnull %9) #15
  %59 = load ptr, ptr %58, align 4
  %60 = tail call zeroext i1 %59(ptr noundef %1, i32 noundef %52, ptr noundef %2, i32 noundef %3) #15
  br label %67

61:                                               ; preds = %49, %43, %41, %24
  %62 = add nuw nsw i32 %26, 1
  %63 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i32 0, i32 %62, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq i32 %62, 16
  br i1 %65, label %66, label %24

66:                                               ; preds = %61, %51
  tail call void @kfree(ptr noundef nonnull %9) #15
  br label %67

67:                                               ; preds = %66, %57, %4
  %68 = phi i1 [ true, %66 ], [ false, %4 ], [ %60, %57 ]
  ret i1 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucs2_utf8size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucs2_as_utf8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @efivar_variable_is_removable([4 x i32] %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca %struct.guid_t, align 4
  %5 = alloca %struct.guid_t, align 4
  %6 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %9 = extractvalue [4 x i32] %0, 0
  %10 = extractvalue [4 x i32] %0, 1
  %11 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %12 = extractvalue [4 x i32] %0, 2
  %13 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %14 = extractvalue [4 x i32] %0, 3
  %15 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  br label %16

16:                                               ; preds = %44, %3
  %17 = phi i1 [ false, %3 ], [ %49, %44 ]
  %18 = phi ptr [ @.str.5, %3 ], [ %47, %44 ]
  %19 = phi i32 [ 0, %3 ], [ %45, %44 ]
  %20 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store i32 %21, ptr %4, align 4
  store i32 %23, ptr %6, align 4
  store i32 %25, ptr %7, align 4
  store i32 %27, ptr %8, align 4
  store i32 %9, ptr %5, align 4
  store i32 %10, ptr %11, align 4
  store i32 %12, ptr %13, align 4
  store i32 %14, ptr %15, align 4
  %28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %4, ptr noundef nonnull dereferenceable(16) %5, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %40, %16
  %31 = phi i32 [ %41, %40 ], [ 0, %16 ]
  %32 = getelementptr i8, ptr %18, i32 %31
  %33 = load i8, ptr %32, align 1
  switch i8 %33, label %34 [
    i8 42, label %51
    i8 0, label %42
  ]

34:                                               ; preds = %30
  %35 = icmp eq i32 %31, %2
  br i1 %35, label %44, label %36

36:                                               ; preds = %34
  %37 = getelementptr i8, ptr %1, i32 %31
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %33, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = add i32 %31, 1
  br label %30

42:                                               ; preds = %30
  %43 = icmp eq i32 %31, %2
  br i1 %43, label %51, label %44

44:                                               ; preds = %42, %36, %34, %16
  %45 = add nuw nsw i32 %19, 1
  %46 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i32 0, i32 %45, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  %50 = icmp eq i32 %45, 16
  br i1 %50, label %51, label %16

51:                                               ; preds = %44, %42, %30
  %52 = phi i1 [ %17, %30 ], [ %49, %44 ], [ %17, %42 ]
  %53 = xor i1 %52, true
  ret i1 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_init(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef readonly %3) #0 {
  %5 = alloca %struct.guid_t, align 4
  %6 = alloca %struct.guid_t, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.guid_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 1024, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !8
  %9 = load ptr, ptr @__efivars, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %147, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.efivars, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1024) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %147

19:                                               ; preds = %11
  %20 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %145

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.efivar_operations, ptr %13, i32 0, i32 1
  %24 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 1
  %25 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 2
  %26 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 3
  %27 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %28 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %29 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %30 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %31 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %32 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  br label %33

33:                                               ; preds = %139, %22
  %34 = phi i32 [ %133, %139 ], [ 0, %22 ]
  store i32 1024, ptr %7, align 4
  %35 = load ptr, ptr %23, align 4
  %36 = call i32 %35(ptr noundef nonnull %7, ptr noundef nonnull %15, ptr noundef nonnull %8) #15
  switch i32 %36, label %137 [
    i32 0, label %37
    i32 -2147483645, label %143
    i32 -2147483634, label %141
  ]

37:                                               ; preds = %33
  br i1 %2, label %38, label %102

38:                                               ; preds = %37
  call void @up(ptr noundef nonnull @efivars_lock) #15
  %39 = load i32, ptr %7, align 4
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %51, label %41

41:                                               ; preds = %48, %38
  %42 = phi i32 [ %49, %48 ], [ 2, %38 ]
  %43 = lshr exact i32 %42, 1
  %44 = add nsw i32 %43, -1
  %45 = getelementptr i16, ptr %15, i32 %44
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = add i32 %42, 2
  %50 = icmp ugt i32 %49, %39
  br i1 %50, label %51, label %41

51:                                               ; preds = %48, %41, %38
  %52 = phi i32 [ 2, %38 ], [ %49, %48 ], [ %42, %41 ]
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 %39) #15
  store i32 %53, ptr %7, align 4
  %54 = call i32 @ucs2_strsize(ptr noundef nonnull %15, i32 noundef 1024) #15
  %55 = load ptr, ptr %3, align 4
  %56 = icmp eq ptr %55, %3
  br i1 %56, label %118, label %57

57:                                               ; preds = %81, %51
  %58 = phi ptr [ %60, %81 ], [ %55, %51 ]
  %59 = getelementptr i8, ptr %58, i32 -2076
  %60 = load ptr, ptr %58, align 4
  %61 = call i32 @ucs2_strsize(ptr noundef %59, i32 noundef 1024) #15
  %62 = icmp eq i32 %54, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = call i32 @bcmp(ptr nonnull %15, ptr %59, i32 %54) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = getelementptr i8, ptr %58, i32 -1052
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %58, i32 -1048
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %58, i32 -1044
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %58, i32 -1040
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %8, align 4
  %76 = load i32, ptr %24, align 4
  %77 = load i32, ptr %25, align 4
  %78 = load i32, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  store i32 %68, ptr %5, align 4
  store i32 %70, ptr %27, align 4
  store i32 %72, ptr %28, align 4
  store i32 %74, ptr %29, align 4
  store i32 %75, ptr %6, align 4
  store i32 %76, ptr %30, align 4
  store i32 %77, ptr %31, align 4
  store i32 %78, ptr %32, align 4
  %79 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef nonnull dereferenceable(16) %6, i32 16) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %66, %63, %57
  %82 = icmp eq ptr %60, %3
  br i1 %82, label %118, label %57

83:                                               ; preds = %66
  %84 = load i32, ptr %7, align 4
  %85 = lshr i32 %84, 1
  %86 = call noalias align 64 ptr @__kmalloc(i32 noundef %85, i32 noundef 3520) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %131, label %88

88:                                               ; preds = %83
  %89 = icmp ult i32 %84, 2
  br i1 %89, label %100, label %90

90:                                               ; preds = %88
  %91 = call i32 @llvm.umax.i32(i32 %85, i32 1) #15
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi i32 [ %98, %92 ], [ 0, %90 ]
  %94 = getelementptr i16, ptr %15, i32 %93
  %95 = load i16, ptr %94, align 2
  %96 = trunc i16 %95 to i8
  %97 = getelementptr i8, ptr %86, i32 %93
  store i8 %96, ptr %97, align 1
  %98 = add nuw nsw i32 %93, 1
  %99 = icmp eq i32 %98, %91
  br i1 %99, label %100, label %92

100:                                              ; preds = %92, %88
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %86, ptr noundef nonnull %8) #18
  call void @kfree(ptr noundef nonnull %86) #15
  br label %131

102:                                              ; preds = %37
  %103 = load i32, ptr %7, align 4
  %104 = icmp ult i32 %103, 2
  br i1 %104, label %115, label %105

105:                                              ; preds = %112, %102
  %106 = phi i32 [ %113, %112 ], [ 2, %102 ]
  %107 = lshr exact i32 %106, 1
  %108 = add nsw i32 %107, -1
  %109 = getelementptr i16, ptr %15, i32 %108
  %110 = load i16, ptr %109, align 2
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = add i32 %106, 2
  %114 = icmp ugt i32 %113, %103
  br i1 %114, label %115, label %105

115:                                              ; preds = %112, %105, %102
  %116 = phi i32 [ 2, %102 ], [ %113, %112 ], [ %106, %105 ]
  %117 = call i32 @llvm.umin.i32(i32 %116, i32 %103) #15
  store i32 %117, ptr %7, align 4
  br label %118

118:                                              ; preds = %115, %81, %51
  %119 = load i32, ptr %7, align 4
  %120 = load i32, ptr %8, align 4
  %121 = insertvalue [4 x i32] poison, i32 %120, 0
  %122 = load i32, ptr %24, align 4
  %123 = insertvalue [4 x i32] %121, i32 %122, 1
  %124 = load i32, ptr %25, align 4
  %125 = insertvalue [4 x i32] %123, i32 %124, 2
  %126 = load i32, ptr %26, align 4
  %127 = insertvalue [4 x i32] %125, i32 %126, 3
  %128 = call i32 %0(ptr noundef nonnull %15, [4 x i32] %127, i32 noundef %119, ptr noundef %1) #15
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 0, i32 -2147483634
  br label %131

131:                                              ; preds = %118, %100, %83
  %132 = phi i32 [ %130, %118 ], [ -2147483634, %83 ], [ -2147483634, %100 ]
  %133 = phi i32 [ %128, %118 ], [ %34, %83 ], [ %34, %100 ]
  br i1 %2, label %134, label %139

134:                                              ; preds = %131
  %135 = call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %145

137:                                              ; preds = %33
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %36) #18
  br label %143

139:                                              ; preds = %134, %131
  %140 = icmp eq i32 %132, -2147483634
  br i1 %140, label %141, label %33

141:                                              ; preds = %139, %33
  %142 = phi i32 [ %34, %33 ], [ %133, %139 ]
  br label %143

143:                                              ; preds = %141, %137, %33
  %144 = phi i32 [ %34, %137 ], [ %142, %141 ], [ -95, %33 ]
  call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %145

145:                                              ; preds = %143, %134, %19
  %146 = phi i32 [ %144, %143 ], [ -4, %19 ], [ -4, %134 ]
  call void @kfree(ptr noundef nonnull %15) #15
  br label %147

147:                                              ; preds = %145, %17, %4
  %148 = phi i32 [ %146, %145 ], [ -12, %17 ], [ -14, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  ret i32 %148
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store ptr %7, ptr %6, align 4
  %9 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, i32 1
  store ptr %1, ptr %9, align 4
  store volatile ptr %6, ptr %1, align 4
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %5 ], [ -4, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_remove(ptr nocapture noundef %0) #0 {
  %2 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %4 ], [ -4, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__efivar_entry_delete(ptr noundef %0) #0 {
  %2 = load ptr, ptr @__efivars, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.efivars, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.efivar_operations, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  %10 = tail call i32 %8(ptr noundef %0, ptr noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %11 = tail call i32 @efi_status_to_err(i32 noundef %10) #15
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi i32 [ %11, %4 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_status_to_err(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_delete(ptr noundef %0) #0 {
  %2 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %1
  %5 = load ptr, ptr @__efivars, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.efivars, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.efivar_operations, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  %14 = tail call i32 %12(ptr noundef %0, ptr noundef %13, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  switch i32 %14, label %15 [
    i32 -2147483634, label %17
    i32 0, label %17
  ]

15:                                               ; preds = %8
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  %16 = tail call i32 @efi_status_to_err(i32 noundef %14) #15
  br label %23

17:                                               ; preds = %8, %8
  %18 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %23

23:                                               ; preds = %17, %15, %7, %1
  %24 = phi i32 [ 0, %17 ], [ %16, %15 ], [ -22, %7 ], [ -4, %1 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.guid_t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %7, i32 16, i1 false)
  %8 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %5
  %11 = load ptr, ptr @__efivars, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %53

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.efivars, ptr %11, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %4, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %6, align 4
  %20 = insertvalue [4 x i32] poison, i32 %19, 0
  %21 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [4 x i32] %20, i32 %22, 1
  %24 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = insertvalue [4 x i32] %23, i32 %25, 2
  %27 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = insertvalue [4 x i32] %26, i32 %28, 3
  %30 = tail call ptr @efivar_entry_find(ptr noundef %0, [4 x i32] %29, ptr noundef nonnull %4, i1 noundef zeroext false)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %53

33:                                               ; preds = %18, %14
  %34 = tail call i32 @ucs2_strsize(ptr noundef %0, i32 noundef 1024) #15
  %35 = add i32 %34, %2
  %36 = load ptr, ptr @__efivars, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.efivars, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.efivar_operations, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call i32 %42(i32 noundef %1, i32 noundef %35, i1 noundef zeroext false) #15
  switch i32 %45, label %50 [
    i32 -2147483645, label %46
    i32 0, label %46
  ]

46:                                               ; preds = %44, %44, %38, %33
  %47 = getelementptr inbounds %struct.efivar_operations, ptr %16, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2, ptr noundef %3) #15
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i32 [ %49, %46 ], [ %45, %44 ]
  call void @up(ptr noundef nonnull @efivars_lock) #15
  %52 = call i32 @efi_status_to_err(i32 noundef %51) #15
  br label %53

53:                                               ; preds = %50, %32, %13, %5
  %54 = phi i32 [ -17, %32 ], [ %52, %50 ], [ -22, %13 ], [ -4, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i32 %54
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @efivar_entry_find(ptr noundef %0, [4 x i32] %1, ptr noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.guid_t, align 4
  %6 = alloca %struct.guid_t, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %55, label %9

9:                                                ; preds = %4
  %10 = extractvalue [4 x i32] %1, 0
  %11 = extractvalue [4 x i32] %1, 1
  %12 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %13 = extractvalue [4 x i32] %1, 2
  %14 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %15 = extractvalue [4 x i32] %1, 3
  %16 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %17 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  br label %20

20:                                               ; preds = %41, %9
  %21 = phi ptr [ %7, %9 ], [ %23, %41 ]
  %22 = getelementptr i8, ptr %21, i32 -2076
  %23 = load ptr, ptr %21, align 4
  %24 = tail call i32 @ucs2_strsize(ptr noundef %0, i32 noundef 1024) #15
  %25 = tail call i32 @ucs2_strsize(ptr noundef %22, i32 noundef 1024) #15
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = tail call i32 @bcmp(ptr %0, ptr %22, i32 %24)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %21, i32 -1052
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %21, i32 -1048
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %21, i32 -1044
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %21, i32 -1040
  %38 = load i32, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  store i32 %10, ptr %5, align 4
  store i32 %11, ptr %12, align 4
  store i32 %13, ptr %14, align 4
  store i32 %15, ptr %16, align 4
  store i32 %32, ptr %6, align 4
  store i32 %34, ptr %17, align 4
  store i32 %36, ptr %18, align 4
  store i32 %38, ptr %19, align 4
  %39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef nonnull dereferenceable(16) %6, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30, %27, %20
  %42 = icmp eq ptr %23, %2
  br i1 %42, label %55, label %20

43:                                               ; preds = %30
  br i1 %3, label %44, label %55

44:                                               ; preds = %43
  %45 = getelementptr i8, ptr %21, i32 44
  %46 = load i8, ptr %45, align 4, !range !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %21, i32 45
  store i8 1, ptr %49, align 1
  br label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %21, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  br label %55

55:                                               ; preds = %50, %48, %43, %41, %4
  %56 = phi ptr [ %22, %48 ], [ %22, %50 ], [ %22, %43 ], [ null, %4 ], [ null, %41 ]
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucs2_strsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_set_safe(ptr noundef %0, [4 x i32] %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.guid_t, align 4
  %8 = alloca %struct.guid_t, align 4
  %9 = extractvalue [4 x i32] %1, 0
  store i32 %9, ptr %8, align 4
  %10 = extractvalue [4 x i32] %1, 1
  %11 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = extractvalue [4 x i32] %1, 2
  %13 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = extractvalue [4 x i32] %1, 3
  %15 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = load ptr, ptr @__efivars, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %105, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.efivars, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.efivar_operations, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %105, label %24

24:                                               ; preds = %18
  br i1 %3, label %80, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.efivar_operations, ptr %20, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %64, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  store i32 %9, ptr %7, align 4
  %30 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 1
  store i32 %10, ptr %30, align 4
  %31 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 2
  store i32 %12, ptr %31, align 4
  %32 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 3
  store i32 %14, ptr %32, align 4
  %33 = tail call i32 @down_trylock(ptr noundef nonnull @efivars_lock) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load ptr, ptr @__efivars, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %62

39:                                               ; preds = %35
  %40 = tail call i32 @ucs2_strsize(ptr noundef %0, i32 noundef 1024) #15
  %41 = add i32 %40, %4
  %42 = load ptr, ptr @__efivars, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.efivars, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.efivar_operations, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = tail call i32 %48(i32 noundef %2, i32 noundef %41, i1 noundef zeroext true) #15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %44, %39
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %62

54:                                               ; preds = %50
  %55 = load ptr, ptr @__efivars, align 4
  %56 = getelementptr inbounds %struct.efivars, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.efivar_operations, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 %59(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %4, ptr noundef %5) #15
  call void @up(ptr noundef nonnull @efivars_lock) #15
  %61 = call i32 @efi_status_to_err(i32 noundef %60) #15
  br label %62

62:                                               ; preds = %54, %53, %38, %29
  %63 = phi i32 [ -28, %53 ], [ %61, %54 ], [ -22, %38 ], [ -16, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  br label %105

64:                                               ; preds = %25
  %65 = tail call i32 @ucs2_strsize(ptr noundef %0, i32 noundef 1024) #15
  %66 = add i32 %65, %4
  %67 = tail call i32 @down_trylock(ptr noundef nonnull @efivars_lock) #15
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %64
  %70 = load ptr, ptr @__efivars, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %99, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.efivars, ptr %70, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.efivar_operations, ptr %74, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %72
  %79 = tail call i32 %76(i32 noundef %2, i32 noundef %66, i1 noundef zeroext true) #15
  br label %96

80:                                               ; preds = %24
  %81 = tail call i32 @ucs2_strsize(ptr noundef %0, i32 noundef 1024) #15
  %82 = add i32 %81, %4
  %83 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = load ptr, ptr @__efivars, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.efivars, ptr %86, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.efivar_operations, ptr %90, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = tail call i32 %92(i32 noundef %2, i32 noundef %82, i1 noundef zeroext false) #15
  br label %96

96:                                               ; preds = %94, %78
  %97 = phi i32 [ %79, %78 ], [ %95, %94 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96, %88, %85, %72, %69
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %105

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.efivar_operations, ptr %20, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 %102(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2, i32 noundef %4, ptr noundef %5) #15
  call void @up(ptr noundef nonnull @efivars_lock) #15
  %104 = call i32 @efi_status_to_err(i32 noundef %103) #15
  br label %105

105:                                              ; preds = %100, %99, %80, %64, %62, %18, %6
  %106 = phi i32 [ -28, %99 ], [ %104, %100 ], [ %63, %62 ], [ -22, %6 ], [ -38, %18 ], [ -16, %64 ], [ -4, %80 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_size(ptr noundef %0, ptr noundef %1) #0 {
  store i32 0, ptr %1, align 4
  %3 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = load ptr, ptr @__efivars, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.efivars, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  %14 = tail call i32 %12(ptr noundef %0, ptr noundef %13, ptr noundef null, ptr noundef %1, ptr noundef null) #15
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  %15 = icmp eq i32 %14, -2147483643
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @efi_status_to_err(i32 noundef %14) #15
  br label %18

18:                                               ; preds = %16, %9, %8, %2
  %19 = phi i32 [ %17, %16 ], [ -22, %8 ], [ -4, %2 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__efivar_entry_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr @__efivars, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.efivars, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  %12 = tail call i32 %10(ptr noundef %0, ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  %13 = tail call i32 @efi_status_to_err(i32 noundef %12) #15
  br label %14

14:                                               ; preds = %7, %4
  %15 = phi i32 [ %13, %7 ], [ -22, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load ptr, ptr @__efivars, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.efivars, ptr %8, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  %16 = tail call i32 %14(ptr noundef %0, ptr noundef %15, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  %17 = tail call i32 @efi_status_to_err(i32 noundef %16) #15
  br label %18

18:                                               ; preds = %11, %10, %4
  %19 = phi i32 [ %17, %11 ], [ -22, %10 ], [ -4, %4 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_set_get_size(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1
  store i8 0, ptr %4, align 1
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %6, align 4
  %9 = insertvalue [4 x i32] undef, i32 %8, 0
  %10 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = insertvalue [4 x i32] %9, i32 %11, 1
  %13 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = insertvalue [4 x i32] %12, i32 %14, 2
  %16 = getelementptr inbounds %struct.efi_variable, ptr %0, i32 0, i32 1, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = insertvalue [4 x i32] %15, i32 %17, 3
  %19 = tail call zeroext i1 @efivar_validate([4 x i32] %18, ptr noundef %0, ptr noundef %3, i32 noundef %7)
  br i1 %19, label %20, label %72

20:                                               ; preds = %5
  %21 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %20
  %24 = load ptr, ptr @__efivars, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %70, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %2, align 4
  %28 = tail call i32 @ucs2_strsize(ptr noundef %0, i32 noundef 1024) #15
  %29 = add i32 %28, %27
  %30 = load ptr, ptr @__efivars, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.efivars, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.efivar_operations, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = tail call i32 %36(i32 noundef %1, i32 noundef %29, i1 noundef zeroext false) #15
  switch i32 %39, label %67 [
    i32 0, label %40
    i32 -2147483645, label %42
  ]

40:                                               ; preds = %38
  %41 = load i32, ptr %2, align 4
  br label %45

42:                                               ; preds = %38, %32, %26
  %43 = load i32, ptr %2, align 4
  %44 = icmp ugt i32 %43, 65536
  br i1 %44, label %70, label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %47 = load ptr, ptr @__efivars, align 4
  %48 = getelementptr inbounds %struct.efivars, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.efivar_operations, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %0, ptr noundef %6, i32 noundef %1, i32 noundef %46, ptr noundef %3) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  store i8 1, ptr %4, align 1
  store i32 0, ptr %2, align 4
  %55 = load ptr, ptr %49, align 4
  %56 = tail call i32 %55(ptr noundef %0, ptr noundef %6, ptr noundef null, ptr noundef %2, ptr noundef null) #15
  %57 = icmp eq i32 %56, -2147483634
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1
  %60 = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %60, align 4
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %65

64:                                               ; preds = %54
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  switch i32 %56, label %65 [
    i32 -2147483643, label %72
    i32 0, label %72
  ]

65:                                               ; preds = %64, %58
  %66 = tail call i32 @efi_status_to_err(i32 noundef %56) #15
  br label %72

67:                                               ; preds = %45, %38
  %68 = phi i32 [ %39, %38 ], [ %52, %45 ]
  %69 = tail call i32 @efi_status_to_err(i32 noundef %68) #15
  br label %70

70:                                               ; preds = %67, %42, %23
  %71 = phi i32 [ -22, %23 ], [ -28, %42 ], [ %69, %67 ]
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %72

72:                                               ; preds = %70, %65, %64, %64, %20, %5
  %73 = phi i32 [ %71, %70 ], [ %66, %65 ], [ -22, %5 ], [ -4, %20 ], [ 0, %64 ], [ 0, %64 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_iter_begin() #0 {
  %1 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @efivar_entry_iter_end() #0 {
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__efivar_entry_iter(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6, %4
  %10 = load ptr, ptr %1, align 4
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %16, %15 ]
  %13 = getelementptr i8, ptr %12, i32 -2076
  %14 = icmp eq ptr %12, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %12, align 4
  %17 = tail call i32 %0(ptr noundef %13, ptr noundef %2) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %17, %15 ], [ 0, %11 ]
  br i1 %5, label %33, label %21

21:                                               ; preds = %19
  store ptr %13, ptr %3, align 4
  br label %33

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.efivar_entry, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %29, %22
  %26 = phi ptr [ %24, %22 ], [ %30, %29 ]
  %27 = getelementptr i8, ptr %26, i32 -2076
  store ptr %27, ptr %3, align 4
  %28 = icmp eq ptr %26, %1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %26, align 4
  %31 = tail call i32 %0(ptr noundef %27, ptr noundef %2) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %25, label %33

33:                                               ; preds = %29, %25, %21, %19
  %34 = phi i32 [ %20, %21 ], [ %20, %19 ], [ 0, %25 ], [ %31, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivar_entry_iter(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 4
  br label %8

8:                                                ; preds = %11, %6
  %9 = phi ptr [ %7, %6 ], [ %13, %11 ]
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %9, i32 -2076
  %13 = load ptr, ptr %9, align 4
  %14 = tail call i32 %0(ptr noundef %12, ptr noundef %2) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %8
  %17 = phi i32 [ %14, %11 ], [ 0, %8 ]
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ %4, %3 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @efivars_kobject() #7 {
  %1 = load ptr, ptr @__efivars, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.efivars, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ null, %0 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivars_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.efivars, ptr %0, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.efivars, ptr %0, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  store ptr %0, ptr @__efivars, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #18
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -4, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efivars_unregister(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @down_interruptible(ptr noundef nonnull @efivars_lock) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = load ptr, ptr @__efivars, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #18
  br label %13

9:                                                ; preds = %4
  %10 = icmp eq ptr %5, %0
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #18
  store ptr null, ptr @__efivars, align 4
  br label %13

13:                                               ; preds = %11, %9, %7
  %14 = phi i32 [ 0, %11 ], [ -22, %7 ], [ -22, %9 ]
  tail call void @up(ptr noundef nonnull @efivars_lock) #15
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i32 [ %14, %13 ], [ -4, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @efivar_supports_writes() #7 {
  %1 = load ptr, ptr @__efivars, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.efivars, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.efivar_operations, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %3, %0
  %11 = phi i32 [ 0, %0 ], [ %9, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uint16(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #10 {
  %5 = icmp eq i32 %3, 2
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_boot_order(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #10 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @validate_load_option(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @ucs2_strnlen(ptr noundef %0, i32 noundef 1024) #15
  %6 = add i32 %1, 4
  %7 = icmp slt i32 %1, 2147483644
  br i1 %7, label %41, label %49

8:                                                ; preds = %45
  %9 = add nsw i32 %1, 1
  %10 = icmp slt i32 %9, %6
  br i1 %10, label %11, label %49

11:                                               ; preds = %8
  %12 = getelementptr i16, ptr %0, i32 %9
  %13 = load i16, ptr %12, align 2
  %14 = icmp ugt i16 %13, 127
  br i1 %14, label %97, label %15

15:                                               ; preds = %11
  %16 = trunc i16 %13 to i8
  %17 = tail call i32 @hex_to_bin(i8 noundef zeroext %16) #15
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %97, label %19

19:                                               ; preds = %15
  %20 = add nsw i32 %1, 2
  %21 = icmp slt i32 %20, %6
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = getelementptr i16, ptr %0, i32 %20
  %24 = load i16, ptr %23, align 2
  %25 = icmp ugt i16 %24, 127
  br i1 %25, label %97, label %26

26:                                               ; preds = %22
  %27 = trunc i16 %24 to i8
  %28 = tail call i32 @hex_to_bin(i8 noundef zeroext %27) #15
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %97, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %1, 3
  %32 = icmp slt i32 %31, %6
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = getelementptr i16, ptr %0, i32 %31
  %35 = load i16, ptr %34, align 2
  %36 = icmp ugt i16 %35, 127
  br i1 %36, label %97, label %37

37:                                               ; preds = %33
  %38 = trunc i16 %35 to i8
  %39 = tail call i32 @hex_to_bin(i8 noundef zeroext %38) #15
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %97, label %49

41:                                               ; preds = %4
  %42 = getelementptr i16, ptr %0, i32 %1
  %43 = load i16, ptr %42, align 2
  %44 = icmp ugt i16 %43, 127
  br i1 %44, label %97, label %45

45:                                               ; preds = %41
  %46 = trunc i16 %43 to i8
  %47 = tail call i32 @hex_to_bin(i8 noundef zeroext %46) #15
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %97, label %8

49:                                               ; preds = %37, %30, %19, %8, %4
  %50 = icmp sgt i32 %5, %6
  %51 = icmp ult i32 %3, 8
  %52 = or i1 %51, %50
  br i1 %52, label %97, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %2, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr i8, ptr %2, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr i8, ptr %2, i32 6
  %59 = add i32 %3, -6
  %60 = tail call i32 @ucs2_strsize(ptr noundef %58, i32 noundef %59) #15
  %61 = add i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %53
  %64 = zext i8 %57 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = zext i8 %55 to i32
  %67 = or i32 %65, %66
  %68 = add i32 %60, 8
  %69 = add i32 %68, %67
  %70 = icmp ugt i32 %69, %3
  br i1 %70, label %97, label %71

71:                                               ; preds = %63
  %72 = getelementptr i8, ptr %2, i32 %61
  %73 = getelementptr i8, ptr %72, i32 6
  %74 = icmp ult i32 %67, 4
  br i1 %74, label %97, label %75

75:                                               ; preds = %71
  %76 = add nsw i32 %67, -4
  br label %77

77:                                               ; preds = %94, %75
  %78 = phi i32 [ 0, %75 ], [ %88, %94 ]
  %79 = phi ptr [ %73, %75 ], [ %95, %94 ]
  %80 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %79, i32 0, i32 2
  %81 = load i16, ptr %80, align 1
  %82 = zext i16 %81 to i32
  %83 = icmp ult i16 %81, 4
  %84 = sub i32 %67, %78
  %85 = icmp ult i32 %84, %82
  %86 = select i1 %83, i1 true, i1 %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %77
  %88 = add i32 %78, %82
  %89 = load i8, ptr %79, align 1
  switch i8 %89, label %94 [
    i8 127, label %90
    i8 -1, label %90
  ]

90:                                               ; preds = %87, %87
  %91 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %79, i32 0, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, -1
  br i1 %93, label %97, label %94

94:                                               ; preds = %90, %87
  %95 = getelementptr i8, ptr %73, i32 %88
  %96 = icmp ugt i32 %88, %76
  br i1 %96, label %97, label %77

97:                                               ; preds = %94, %90, %77, %71, %63, %53, %49, %45, %41, %37, %33, %26, %22, %15, %11
  %98 = phi i1 [ false, %49 ], [ false, %53 ], [ false, %63 ], [ false, %71 ], [ true, %90 ], [ false, %94 ], [ false, %77 ], [ true, %37 ], [ true, %33 ], [ true, %26 ], [ true, %22 ], [ true, %15 ], [ true, %11 ], [ true, %45 ], [ true, %41 ]
  ret i1 %98
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @validate_device_path(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #11 {
  %5 = icmp ult i32 %3, 4
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = add i32 %3, -4
  br label %8

8:                                                ; preds = %25, %6
  %9 = phi i32 [ 0, %6 ], [ %19, %25 ]
  %10 = phi ptr [ %2, %6 ], [ %26, %25 ]
  %11 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %10, i32 0, i32 2
  %12 = load i16, ptr %11, align 1
  %13 = zext i16 %12 to i32
  %14 = icmp ult i16 %12, 4
  %15 = sub i32 %3, %9
  %16 = icmp ult i32 %15, %13
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %8
  %19 = add i32 %9, %13
  %20 = load i8, ptr %10, align 1
  switch i8 %20, label %25 [
    i8 127, label %21
    i8 -1, label %21
  ]

21:                                               ; preds = %18, %18
  %22 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %10, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, -1
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %18
  %26 = getelementptr i8, ptr %2, i32 %19
  %27 = icmp ugt i32 %19, %7
  br i1 %27, label %28, label %8

28:                                               ; preds = %25, %21, %8, %4
  %29 = phi i1 [ false, %4 ], [ false, %8 ], [ false, %25 ], [ true, %21 ]
  ret i1 %29
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @validate_ascii_string(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #12 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %16, label %9

6:                                                ; preds = %14
  %7 = add nuw i32 %10, 1
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp slt i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp eq i8 %12, 0
  br i1 %15, label %16, label %6

16:                                               ; preds = %14, %9, %6, %4
  %17 = phi i1 [ false, %4 ], [ false, %6 ], [ true, %14 ], [ false, %9 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucs2_strnlen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
