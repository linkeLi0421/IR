; ModuleID = '/llk/IR/lib/kobject.c_pt.bc'
source_filename = "../lib/kobject.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_get_path:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_get_path\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_get_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_set_name\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_init:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_init\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_add:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_add\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_init_and_add:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_init_and_add\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_init_and_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_rename\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_move:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_move\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_move:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_del:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_del\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_get:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_get\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_get_unless_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_get_unless_zero\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_get_unless_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_put:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_put\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_create_and_add:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_create_and_add\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_create_and_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobj_sysfs_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22kobj_sysfs_ops\22\09\09\09\09\09"
module asm "__kstrtabns_kobj_sysfs_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kset_register:\09\09\09\09\09"
module asm "\09.asciz \09\22kset_register\22\09\09\09\09\09"
module asm "__kstrtabns_kset_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kset_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22kset_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_kset_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kset_find_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22kset_find_obj\22\09\09\09\09\09"
module asm "__kstrtabns_kset_find_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kset_create_and_add:\09\09\09\09\09"
module asm "\09.asciz \09\22kset_create_and_add\22\09\09\09\09\09"
module asm "__kstrtabns_kset_create_and_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobj_ns_grab_current:\09\09\09\09\09"
module asm "\09.asciz \09\22kobj_ns_grab_current\22\09\09\09\09\09"
module asm "__kstrtabns_kobj_ns_grab_current:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobj_ns_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22kobj_ns_drop\22\09\09\09\09\09"
module asm "__kstrtabns_kobj_ns_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__va_list = type { ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.3, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.3 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_kobject_get_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_get_path = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_get_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_get_path to i32), ptr @__kstrtab_kobject_get_path, ptr @__kstrtabns_kobject_get_path }, section "___ksymtab_gpl+kobject_get_path", align 4
@__kstrtab_kobject_set_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_set_name = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_set_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_set_name to i32), ptr @__kstrtab_kobject_set_name, ptr @__kstrtabns_kobject_set_name }, section "___ksymtab+kobject_set_name", align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid kobject pointer!\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"must have a ktype to be initialized properly!\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"\013kobject (%p): tried to init an initialized object, something is seriously wrong.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\013kobject (%p): %s\0A\00", align 1
@__kstrtab_kobject_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_init = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_init to i32), ptr @__kstrtab_kobject_init, ptr @__kstrtabns_kobject_init }, section "___ksymtab+kobject_init", align 4
@.str.4 = private unnamed_addr constant [90 x i8] c"\013kobject '%s' (%p): tried to add an uninitialized object, something is seriously wrong.\0A\00", align 1
@__kstrtab_kobject_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_add = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_add to i32), ptr @__kstrtab_kobject_add, ptr @__kstrtabns_kobject_add }, section "___ksymtab+kobject_add", align 4
@__kstrtab_kobject_init_and_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_init_and_add = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_init_and_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_init_and_add to i32), ptr @__kstrtab_kobject_init_and_add, ptr @__kstrtabns_kobject_init_and_add }, section "___ksymtab_gpl+kobject_init_and_add", align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"DEVPATH_OLD=%s\00", align 1
@__kstrtab_kobject_rename = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_rename = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_rename = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_rename to i32), ptr @__kstrtab_kobject_rename, ptr @__kstrtabns_kobject_rename }, section "___ksymtab_gpl+kobject_rename", align 4
@__kstrtab_kobject_move = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_move = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_move = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_move to i32), ptr @__kstrtab_kobject_move, ptr @__kstrtabns_kobject_move }, section "___ksymtab_gpl+kobject_move", align 4
@__kstrtab_kobject_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_del = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_del to i32), ptr @__kstrtab_kobject_del, ptr @__kstrtabns_kobject_del }, section "___ksymtab+kobject_del", align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"lib/kobject.c\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"\014kobject: '%s' (%p): is not initialized, yet kobject_get() is being called.\0A\00", align 1
@__kstrtab_kobject_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_get = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_get to i32), ptr @__kstrtab_kobject_get, ptr @__kstrtabns_kobject_get }, section "___ksymtab+kobject_get", align 4
@__kstrtab_kobject_get_unless_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_get_unless_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_get_unless_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_get_unless_zero to i32), ptr @__kstrtab_kobject_get_unless_zero, ptr @__kstrtabns_kobject_get_unless_zero }, section "___ksymtab+kobject_get_unless_zero", align 4
@.str.8 = private unnamed_addr constant [78 x i8] c"\014kobject: '%s' (%p): is not initialized, yet kobject_put() is being called.\0A\00", align 1
@__kstrtab_kobject_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_put = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_put to i32), ptr @__kstrtab_kobject_put, ptr @__kstrtabns_kobject_put }, section "___ksymtab+kobject_put", align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"\014%s: kobject_add error: %d\0A\00", align 1
@__func__.kobject_create_and_add = private unnamed_addr constant [23 x i8] c"kobject_create_and_add\00", align 1
@__kstrtab_kobject_create_and_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_create_and_add = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_create_and_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_create_and_add to i32), ptr @__kstrtab_kobject_create_and_add, ptr @__kstrtabns_kobject_create_and_add }, section "___ksymtab_gpl+kobject_create_and_add", align 4
@kobj_sysfs_ops = dso_local constant %struct.sysfs_ops { ptr @kobj_attr_show, ptr @kobj_attr_store }, align 4
@__kstrtab_kobj_sysfs_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobj_sysfs_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_kobj_sysfs_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobj_sysfs_ops to i32), ptr @__kstrtab_kobj_sysfs_ops, ptr @__kstrtabns_kobj_sysfs_ops }, section "___ksymtab_gpl+kobj_sysfs_ops", align 4
@__kstrtab_kset_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_kset_register = external dso_local constant [0 x i8], align 1
@__ksymtab_kset_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kset_register to i32), ptr @__kstrtab_kset_register, ptr @__kstrtabns_kset_register }, section "___ksymtab+kset_register", align 4
@__kstrtab_kset_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_kset_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_kset_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kset_unregister to i32), ptr @__kstrtab_kset_unregister, ptr @__kstrtabns_kset_unregister }, section "___ksymtab+kset_unregister", align 4
@__kstrtab_kset_find_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_kset_find_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_kset_find_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kset_find_obj to i32), ptr @__kstrtab_kset_find_obj, ptr @__kstrtabns_kset_find_obj }, section "___ksymtab_gpl+kset_find_obj", align 4
@__kstrtab_kset_create_and_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_kset_create_and_add = external dso_local constant [0 x i8], align 1
@__ksymtab_kset_create_and_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kset_create_and_add to i32), ptr @__kstrtab_kset_create_and_add, ptr @__kstrtabns_kset_create_and_add }, section "___ksymtab_gpl+kset_create_and_add", align 4
@kobj_ns_type_lock = internal global %struct.spinlock zeroinitializer, align 4
@kobj_ns_ops_tbl.0 = internal unnamed_addr global ptr null, align 4
@__kstrtab_kobj_ns_grab_current = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobj_ns_grab_current = external dso_local constant [0 x i8], align 1
@__ksymtab_kobj_ns_grab_current = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobj_ns_grab_current to i32), ptr @__kstrtab_kobj_ns_grab_current, ptr @__kstrtabns_kobj_ns_grab_current }, section "___ksymtab_gpl+kobj_ns_grab_current", align 4
@__kstrtab_kobj_ns_drop = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobj_ns_drop = external dso_local constant [0 x i8], align 1
@__ksymtab_kobj_ns_drop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobj_ns_drop to i32), ptr @__kstrtab_kobj_ns_drop, ptr @__kstrtabns_kobj_ns_drop }, section "___ksymtab_gpl+kobj_ns_drop", align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"\013kobject: can not set name properly!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dynamic_kobj_ktype = internal global %struct.kobj_type { ptr @dynamic_kobj_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [60 x i8] c"kobject: (%p): attempted to be registered with empty name!\0A\00", align 1
@.str.13 = private unnamed_addr constant [105 x i8] c"\013%s failed for %s with -EEXIST, don't try to register things with the same name in the same directory.\0A\00", align 1
@__func__.kobject_add_internal = private unnamed_addr constant [21 x i8] c"kobject_add_internal\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"\013%s failed for %s (error: %d parent: %s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"'none'\00", align 1
@kernfs_enable_ns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"include/linux/kernfs.h\00", align 1
@kernfs_enable_ns.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kset_ktype = internal global %struct.kobj_type { ptr @kset_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr @kset_get_ownership }, align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_kobj_ns_drop, ptr @__ksymtab_kobj_ns_grab_current, ptr @__ksymtab_kobj_sysfs_ops, ptr @__ksymtab_kobject_add, ptr @__ksymtab_kobject_create_and_add, ptr @__ksymtab_kobject_del, ptr @__ksymtab_kobject_get, ptr @__ksymtab_kobject_get_path, ptr @__ksymtab_kobject_get_unless_zero, ptr @__ksymtab_kobject_init, ptr @__ksymtab_kobject_init_and_add, ptr @__ksymtab_kobject_move, ptr @__ksymtab_kobject_put, ptr @__ksymtab_kobject_rename, ptr @__ksymtab_kobject_set_name, ptr @__ksymtab_kset_create_and_add, ptr @__ksymtab_kset_find_obj, ptr @__ksymtab_kset_register, ptr @__ksymtab_kset_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobject_namespace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.kobj_type, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = tail call ptr %11(ptr noundef nonnull %3) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.kobj_type, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %23(ptr noundef %0) #11
  br label %25

25:                                               ; preds = %19, %16, %13, %9, %5, %1
  %26 = phi ptr [ %24, %19 ], [ null, %16 ], [ null, %13 ], [ null, %9 ], [ null, %5 ], [ null, %1 ]
  ret ptr %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobj_ns_ops(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.kobj_type, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr %11(ptr noundef nonnull %3) #11
  br label %15

15:                                               ; preds = %13, %9, %5, %1
  %16 = phi ptr [ %14, %13 ], [ null, %9 ], [ null, %5 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kobject_get_ownership(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kobj_type, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobject_get_path(ptr noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi i32 [ 1, %2 ], [ %11, %8 ]
  %5 = phi ptr [ %0, %2 ], [ %13, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @strlen(ptr noundef nonnull %6) #11
  %10 = add i32 %9, %4
  %11 = add i32 %10, 1
  %12 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %3

15:                                               ; preds = %8
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = or i32 %1, 256
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef %18) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %0, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %30, %23 ], [ %10, %21 ]
  %25 = phi ptr [ %33, %23 ], [ %0, %21 ]
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strlen(ptr noundef %26) #11
  %28 = sub i32 %24, %27
  %29 = getelementptr i8, ptr %19, i32 %28
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %29, ptr align 1 %26, i32 %27, i1 false) #11
  %30 = add i32 %28, -1
  %31 = getelementptr i8, ptr %19, i32 %30
  store i8 47, ptr %31, align 1
  %32 = getelementptr inbounds %struct.kobject, ptr %25, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23

35:                                               ; preds = %23, %21, %17, %15, %3
  %36 = phi ptr [ null, %15 ], [ null, %17 ], [ %19, %21 ], [ %19, %23 ], [ null, %3 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_set_name_vargs(ptr nocapture noundef %0, ptr noundef %1, [1 x i32] %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = or i1 %6, %5
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = tail call ptr @kvasprintf_const(i32 noundef 3264, ptr noundef %1, [1 x i32] %2) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @strchr(ptr noundef nonnull %9, i32 noundef 47)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call noalias ptr @kstrdup(ptr noundef nonnull %9, i32 noundef 3264) #11
  tail call void @kfree_const(ptr noundef nonnull %9) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @strreplace(ptr noundef nonnull %15, i8 noundef zeroext 47, i8 noundef zeroext 33) #11
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %15, %17 ], [ %9, %11 ]
  %21 = load ptr, ptr %0, align 4
  tail call void @kfree_const(ptr noundef %21) #11
  store ptr %20, ptr %0, align 4
  br label %22

22:                                               ; preds = %19, %14, %8, %3
  %23 = phi i32 [ 0, %19 ], [ 0, %3 ], [ -12, %8 ], [ -12, %14 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kvasprintf_const(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_set_name(ptr nocapture noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @kobject_set_name_vargs(ptr noundef %0, ptr noundef %1, [1 x i32] %5)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kobject_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #13
  tail call void @dump_stack() #13
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 6
  store volatile i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = load i8, ptr %7, align 4
  %18 = and i8 %17, -16
  %19 = or i8 %18, 1
  store i8 %19, ptr %7, align 4
  %20 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  store ptr %1, ptr %20, align 4
  br label %24

21:                                               ; preds = %4, %2
  %22 = phi ptr [ @.str, %2 ], [ @.str.1, %4 ]
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef nonnull %22) #13
  tail call void @dump_stack() #13
  br label %24

24:                                               ; preds = %21, %13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %12, ptr noundef nonnull %0) #13
  tail call void @dump_stack() #13
  br label %26

14:                                               ; preds = %6
  call void @llvm.va_start(ptr nonnull %4)
  %15 = load i32, ptr %4, align 4
  %16 = insertvalue [1 x i32] poison, i32 %15, 0
  %17 = call i32 @kobject_set_name_vargs(ptr noundef nonnull %0, ptr noundef %2, [1 x i32] %16) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %24

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  store ptr %1, ptr %22, align 4
  %23 = call fastcc i32 @kobject_add_internal(ptr noundef nonnull %0) #11
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %17, %19 ], [ %23, %21 ]
  call void @llvm.va_end(ptr nonnull %4)
  br label %26

26:                                               ; preds = %24, %11, %3
  %27 = phi i32 [ %25, %24 ], [ -22, %11 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_init_and_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 {
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #13
  tail call void @dump_stack() #13
  br label %16

16:                                               ; preds = %14, %9
  %17 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 6
  store volatile i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = load i8, ptr %10, align 4
  %21 = and i8 %20, -16
  %22 = or i8 %21, 1
  store i8 %22, ptr %10, align 4
  %23 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  store ptr %1, ptr %23, align 4
  br label %27

24:                                               ; preds = %7, %4
  %25 = phi ptr [ @.str, %4 ], [ @.str.1, %7 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef nonnull %25) #13
  tail call void @dump_stack() #13
  br label %27

27:                                               ; preds = %24, %16
  call void @llvm.va_start(ptr nonnull %5)
  %28 = load i32, ptr %5, align 4
  %29 = insertvalue [1 x i32] poison, i32 %28, 0
  %30 = call i32 @kobject_set_name_vargs(ptr noundef %0, ptr noundef %3, [1 x i32] %29) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %37

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  store ptr %2, ptr %35, align 4
  %36 = call fastcc i32 @kobject_add_internal(ptr noundef %0) #11
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %30, %32 ], [ %36, %34 ]
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_rename(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %102, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %11, ptr noundef nonnull %0) #11
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #11, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #11, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !11

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !12

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #11
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @kobject_put(ptr noundef nonnull %0)
  br label %102

28:                                               ; preds = %33, %23
  %29 = phi i32 [ %36, %33 ], [ 1, %23 ]
  %30 = phi ptr [ %38, %33 ], [ %0, %23 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %97, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @strlen(ptr noundef nonnull %31) #11
  %35 = add i32 %34, %29
  %36 = add i32 %35, 1
  %37 = getelementptr inbounds %struct.kobject, ptr %30, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %28

40:                                               ; preds = %33
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %97, label %42

42:                                               ; preds = %40
  %43 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %97, label %45

45:                                               ; preds = %45, %42
  %46 = phi i32 [ %52, %45 ], [ %35, %42 ]
  %47 = phi ptr [ %55, %45 ], [ %0, %42 ]
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @strlen(ptr noundef %48) #11
  %50 = sub i32 %46, %49
  %51 = getelementptr i8, ptr %43, i32 %50
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 1 %48, i32 %49, i1 false) #11
  %52 = add i32 %50, -1
  %53 = getelementptr i8, ptr %43, i32 %52
  store i8 47, ptr %53, align 1
  %54 = getelementptr inbounds %struct.kobject, ptr %47, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %45

57:                                               ; preds = %45
  %58 = tail call i32 @strlen(ptr noundef nonnull %43)
  %59 = add i32 %58, 15
  %60 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %59, i32 noundef 3264) #12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %97, label %62

62:                                               ; preds = %57
  %63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %60, ptr noundef nonnull @.str.5, ptr noundef nonnull %43)
  store ptr %60, ptr %3, align 8
  %64 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  store ptr null, ptr %64, align 4
  %65 = tail call ptr @kstrdup_const(ptr noundef %1, i32 noundef 3264) #11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %97, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %24, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.kobject, ptr %68, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.kobj_type, ptr %72, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = tail call ptr %76(ptr noundef nonnull %68) #11
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %79, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.kobj_type, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = tail call ptr %88(ptr noundef nonnull %0) #11
  br label %90

90:                                               ; preds = %84, %81, %78, %74, %70, %67
  %91 = phi ptr [ %89, %84 ], [ null, %81 ], [ null, %78 ], [ null, %74 ], [ null, %70 ], [ null, %67 ]
  %92 = tail call i32 @sysfs_rename_dir_ns(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %91) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load ptr, ptr %0, align 4
  store ptr %65, ptr %0, align 4
  %96 = call i32 @kobject_uevent_env(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %3) #11
  br label %97

97:                                               ; preds = %94, %90, %62, %57, %42, %40, %28
  %98 = phi ptr [ %43, %90 ], [ %43, %94 ], [ %43, %57 ], [ %43, %62 ], [ null, %40 ], [ null, %42 ], [ null, %28 ]
  %99 = phi i32 [ %92, %90 ], [ 0, %94 ], [ -12, %57 ], [ -12, %62 ], [ -12, %40 ], [ -12, %42 ], [ -12, %28 ]
  %100 = phi ptr [ %65, %90 ], [ %95, %94 ], [ null, %57 ], [ null, %62 ], [ null, %40 ], [ null, %42 ], [ null, %28 ]
  %101 = phi ptr [ %60, %90 ], [ %60, %94 ], [ null, %57 ], [ %60, %62 ], [ null, %40 ], [ null, %42 ], [ null, %28 ]
  call void @kfree_const(ptr noundef %100) #11
  call void @kfree(ptr noundef %101) #11
  call void @kfree(ptr noundef %98) #11
  call void @kobject_put(ptr noundef nonnull %0)
  br label %102

102:                                              ; preds = %97, %27, %2
  %103 = phi i32 [ %99, %97 ], [ -22, %27 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobject_get(ptr noundef returned %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %9, ptr noundef nonnull %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #11, !srcloc !9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #11, !srcloc !10
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !11

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !12

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #11
  br label %21

21:                                               ; preds = %19, %15, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kobject_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %40, %1
  %4 = phi ptr [ %32, %40 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 752, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %10, ptr noundef nonnull %4) #11
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #11, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #11, !srcloc !14
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = extractvalue { i32, i32, i32 } %13, 0
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %42, label %19, !prof !12

19:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #11
  br label %42

20:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %21 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = icmp eq ptr %22, null
  %25 = load i8, ptr %5, align 4
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call fastcc void @__kobject_del(ptr noundef nonnull %4) #11
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi ptr [ %30, %28 ], [ null, %20 ]
  br i1 %24, label %37, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %22, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void %34(ptr noundef nonnull %4) #11
  br label %37

37:                                               ; preds = %36, %33, %31
  %38 = icmp eq ptr %23, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @kfree_const(ptr noundef nonnull %23) #11
  br label %40

40:                                               ; preds = %39, %37
  %41 = icmp eq ptr %32, null
  br i1 %41, label %42, label %3

42:                                               ; preds = %40, %19, %16, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_rename_dir_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_move(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %142, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %11, ptr noundef nonnull %0) #11
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #11, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #11, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !11

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !12

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #11
  br label %23

23:                                               ; preds = %21, %17
  %24 = icmp eq ptr %1, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %31, ptr noundef nonnull %1) #11
  br label %32

32:                                               ; preds = %30, %25
  %33 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #11, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #11, !srcloc !10
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !11

37:                                               ; preds = %32
  %38 = add i32 %35, 1
  %39 = or i32 %38, %35
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %68, label %41, !prof !12

41:                                               ; preds = %37, %32
  %42 = phi i32 [ 2, %32 ], [ 1, %37 ]
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef %42) #11
  br label %68

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.kset, ptr %45, i32 0, i32 2
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.kset, ptr %45, i32 0, i32 2, i32 7
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load ptr, ptr %48, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %56, ptr noundef nonnull %48) #11
  br label %57

57:                                               ; preds = %55, %50
  %58 = getelementptr inbounds %struct.kset, ptr %45, i32 0, i32 2, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #11, !srcloc !9
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #11, !srcloc !10
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62, !prof !11

62:                                               ; preds = %57
  %63 = add i32 %60, 1
  %64 = or i32 %63, %60
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %68, label %66, !prof !12

66:                                               ; preds = %62, %57
  %67 = phi i32 [ 2, %57 ], [ 1, %62 ]
  tail call void @refcount_warn_saturate(ptr noundef %58, i32 noundef %67) #11
  br label %68

68:                                               ; preds = %66, %62, %47, %43, %41, %37
  %69 = phi ptr [ null, %43 ], [ null, %47 ], [ %48, %62 ], [ %48, %66 ], [ %1, %37 ], [ %1, %41 ]
  br label %70

70:                                               ; preds = %75, %68
  %71 = phi i32 [ 1, %68 ], [ %78, %75 ]
  %72 = phi ptr [ %0, %68 ], [ %80, %75 ]
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %137, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @strlen(ptr noundef nonnull %73) #11
  %77 = add i32 %76, %71
  %78 = add i32 %77, 1
  %79 = getelementptr inbounds %struct.kobject, ptr %72, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %70

82:                                               ; preds = %75
  %83 = icmp eq i32 %78, 0
  br i1 %83, label %137, label %84

84:                                               ; preds = %82
  %85 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %137, label %87

87:                                               ; preds = %87, %84
  %88 = phi i32 [ %94, %87 ], [ %77, %84 ]
  %89 = phi ptr [ %97, %87 ], [ %0, %84 ]
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 @strlen(ptr noundef %90) #11
  %92 = sub i32 %88, %91
  %93 = getelementptr i8, ptr %85, i32 %92
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %93, ptr align 1 %90, i32 %91, i1 false) #11
  %94 = add i32 %92, -1
  %95 = getelementptr i8, ptr %85, i32 %94
  store i8 47, ptr %95, align 1
  %96 = getelementptr inbounds %struct.kobject, ptr %89, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %87

99:                                               ; preds = %87
  %100 = tail call i32 @strlen(ptr noundef nonnull %85)
  %101 = add i32 %100, 15
  %102 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %101, i32 noundef 3264) #12
  %103 = icmp eq ptr %102, null
  br i1 %103, label %137, label %104

104:                                              ; preds = %99
  %105 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %102, ptr noundef nonnull @.str.5, ptr noundef nonnull %85)
  store ptr %102, ptr %3, align 8
  %106 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  store ptr null, ptr %106, align 4
  %107 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %130, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.kobject, ptr %108, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.kobj_type, ptr %112, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %130, label %118

118:                                              ; preds = %114
  %119 = tail call ptr %116(ptr noundef nonnull %108) #11
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %119, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.kobj_type, ptr %126, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = tail call ptr %128(ptr noundef nonnull %0) #11
  br label %130

130:                                              ; preds = %124, %121, %118, %114, %110, %104
  %131 = phi ptr [ %129, %124 ], [ null, %121 ], [ null, %118 ], [ null, %114 ], [ null, %110 ], [ null, %104 ]
  %132 = tail call i32 @sysfs_move_dir_ns(ptr noundef nonnull %0, ptr noundef %69, ptr noundef %131) #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load ptr, ptr %107, align 4
  store ptr %69, ptr %107, align 4
  tail call void @kobject_put(ptr noundef %135)
  %136 = call i32 @kobject_uevent_env(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %3) #11
  br label %137

137:                                              ; preds = %134, %130, %99, %84, %82, %70
  %138 = phi ptr [ %85, %130 ], [ %85, %134 ], [ %85, %99 ], [ null, %82 ], [ null, %84 ], [ null, %70 ]
  %139 = phi ptr [ %69, %130 ], [ null, %134 ], [ %69, %99 ], [ %69, %82 ], [ %69, %84 ], [ %69, %70 ]
  %140 = phi i32 [ %132, %130 ], [ 0, %134 ], [ -12, %99 ], [ -12, %82 ], [ -12, %84 ], [ -12, %70 ]
  %141 = phi ptr [ %102, %130 ], [ %102, %134 ], [ null, %99 ], [ null, %82 ], [ null, %84 ], [ null, %70 ]
  call void @kobject_put(ptr noundef %139)
  call void @kobject_put(ptr noundef nonnull %0)
  call void @kfree(ptr noundef %141) #11
  call void @kfree(ptr noundef %138) #11
  br label %142

142:                                              ; preds = %137, %2
  %143 = phi i32 [ %140, %137 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_move_dir_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kobject_del(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @__kobject_del(ptr noundef nonnull %0)
  tail call void @kobject_put(ptr noundef %5)
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__kobject_del(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kobj_type, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @sysfs_remove_groups(ptr noundef %0, ptr noundef %9) #11
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 12
  %14 = icmp eq i8 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 1) #11
  br label %17

17:                                               ; preds = %15, %10
  tail call void @sysfs_remove_dir(ptr noundef %0) #11
  tail call void @kernfs_put(ptr noundef %3) #11
  %18 = load i8, ptr %11, align 4
  %19 = and i8 %18, -3
  store i8 %19, ptr %11, align 4
  %20 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.kset, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %24) #11
  %25 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store volatile ptr %25, ptr %25, align 4
  store ptr %25, ptr %26, align 4
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr inbounds %struct.kset, ptr %30, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr inbounds %struct.kset, ptr %34, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %35) #11
  br label %36

36:                                               ; preds = %23, %17
  %37 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  store ptr null, ptr %37, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobject_get_unless_zero(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %17, %3
  %8 = phi i32 [ %15, %17 ], [ %5, %3 ]
  %9 = add i32 %8, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #11, !srcloc !9
  br label %10

10:                                               ; preds = %10, %7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %8, i32 %9, ptr elementtype(i32) %4) #11, !srcloc !20
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %19, label %17, !prof !12

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %14, %3
  %20 = phi i32 [ 0, %3 ], [ %8, %14 ], [ 0, %17 ]
  %21 = add i32 %20, 1
  %22 = or i32 %21, %20
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %25, label %24, !prof !12

24:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 0) #11
  br label %25

25:                                               ; preds = %24, %19
  %26 = icmp eq i32 %20, 0
  %27 = select i1 %26, ptr null, ptr %0
  br label %28

28:                                               ; preds = %25, %1
  %29 = phi ptr [ %27, %25 ], [ null, %1 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobject_create_and_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 7
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #13
  tail call void @dump_stack() #13
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 6
  store volatile i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 8
  %17 = load i8, ptr %7, align 8
  %18 = and i8 %17, -16
  %19 = or i8 %18, 1
  store i8 %19, ptr %7, align 8
  %20 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 4
  store ptr @dynamic_kobj_ktype, ptr %20, align 4
  %21 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %13
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.kobject_create_and_add, i32 noundef %21) #13
  tail call void @kobject_put(ptr noundef nonnull %4)
  br label %25

25:                                               ; preds = %23, %13, %2
  %26 = phi ptr [ null, %23 ], [ %4, %13 ], [ null, %2 ]
  ret ptr %26
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kset_init(ptr noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 6
  store volatile i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -16
  %11 = or i8 %10, 1
  store i8 %11, ptr %8, align 4
  br label %12

12:                                               ; preds = %4, %1
  store volatile ptr %0, ptr %0, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 1
  store i32 0, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kobj_attr_show(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kobj_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -5, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kobj_attr_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.kobj_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -5, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kset_register(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 6
  store volatile i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -16
  %10 = or i8 %9, 1
  store i8 %10, ptr %7, align 4
  store volatile ptr %0, ptr %0, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2
  %14 = tail call fastcc i32 @kobject_add_internal(ptr noundef %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = tail call i32 @kobject_uevent(ptr noundef %13, i32 noundef 0) #11
  br label %18

18:                                               ; preds = %16, %3, %1
  %19 = phi i32 [ 0, %16 ], [ -22, %1 ], [ %14, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kobject_add_internal(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %227, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %4, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull %0) #11
  br label %227

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.kobject, ptr %12, i32 0, i32 7
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load ptr, ptr %12, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %20, ptr noundef nonnull %12) #11
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds %struct.kobject, ptr %12, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #11, !srcloc !10
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !11

26:                                               ; preds = %21
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30, !prof !12

30:                                               ; preds = %26, %21
  %31 = phi i32 [ 2, %21 ], [ 1, %26 ]
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %31) #11
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %32
  %37 = load ptr, ptr %11, align 4
  br label %105

38:                                               ; preds = %10
  %39 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  br label %130

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.kset, ptr %40, i32 0, i32 2
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.kset, ptr %40, i32 0, i32 2, i32 7
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load ptr, ptr %46, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %54, ptr noundef nonnull %46) #11
  br label %55

55:                                               ; preds = %53, %48
  %56 = getelementptr inbounds %struct.kset, ptr %40, i32 0, i32 2, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #11, !srcloc !9
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #11, !srcloc !10
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60, !prof !11

60:                                               ; preds = %55
  %61 = add i32 %58, 1
  %62 = or i32 %61, %58
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %66, label %64, !prof !12

64:                                               ; preds = %60, %55
  %65 = phi i32 [ 2, %55 ], [ 1, %60 ]
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef %65) #11
  br label %66

66:                                               ; preds = %64, %60
  %67 = load ptr, ptr %39, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %103, label %69

69:                                               ; preds = %66, %45, %32
  %70 = phi ptr [ %46, %66 ], [ %12, %32 ], [ null, %45 ]
  %71 = phi ptr [ %39, %66 ], [ %33, %32 ], [ %39, %45 ]
  %72 = phi ptr [ %67, %66 ], [ %34, %32 ], [ %40, %45 ]
  %73 = getelementptr inbounds %struct.kset, ptr %72, i32 0, i32 2, i32 7
  %74 = load i8, ptr %73, align 4
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.kset, ptr %72, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %79, ptr noundef nonnull %78) #11
  br label %80

80:                                               ; preds = %77, %69
  %81 = getelementptr inbounds %struct.kset, ptr %72, i32 0, i32 2, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #11, !srcloc !9
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #11, !srcloc !10
  %83 = extractvalue { i32, i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85, !prof !11

85:                                               ; preds = %80
  %86 = add i32 %83, 1
  %87 = or i32 %86, %83
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %91, label %89, !prof !12

89:                                               ; preds = %85, %80
  %90 = phi i32 [ 2, %80 ], [ 1, %85 ]
  tail call void @refcount_warn_saturate(ptr noundef %81, i32 noundef %90) #11
  br label %91

91:                                               ; preds = %89, %85
  %92 = load ptr, ptr %71, align 4
  %93 = getelementptr inbounds %struct.kset, ptr %92, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %93) #11
  %94 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  %95 = load ptr, ptr %71, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  store ptr %94, ptr %96, align 4
  store ptr %95, ptr %94, align 4
  %98 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  store ptr %97, ptr %98, align 4
  store volatile ptr %94, ptr %97, align 4
  %99 = load ptr, ptr %71, align 4
  %100 = getelementptr inbounds %struct.kset, ptr %99, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %101 = load i16, ptr %100, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  br label %103

103:                                              ; preds = %91, %66
  %104 = phi ptr [ %46, %66 ], [ %70, %91 ]
  store ptr %104, ptr %11, align 4
  br label %105

105:                                              ; preds = %103, %36
  %106 = phi ptr [ %104, %103 ], [ %37, %36 ]
  %107 = phi ptr [ %104, %103 ], [ %12, %36 ]
  %108 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %106, null
  br i1 %110, label %130, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.kobject, ptr %106, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.kobj_type, ptr %113, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %130, label %119

119:                                              ; preds = %115
  %120 = tail call ptr %117(ptr noundef nonnull %106) #11
  %121 = icmp eq ptr %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %120, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr %108, align 4
  %127 = getelementptr inbounds %struct.kobj_type, ptr %126, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = tail call ptr %128(ptr noundef nonnull %0) #11
  br label %130

130:                                              ; preds = %125, %122, %119, %115, %111, %105, %42
  %131 = phi ptr [ %109, %125 ], [ %109, %122 ], [ %109, %119 ], [ %109, %115 ], [ %109, %111 ], [ %109, %105 ], [ %44, %42 ]
  %132 = phi ptr [ %108, %125 ], [ %108, %122 ], [ %108, %119 ], [ %108, %115 ], [ %108, %111 ], [ %108, %105 ], [ %43, %42 ]
  %133 = phi ptr [ %107, %125 ], [ %107, %122 ], [ %107, %119 ], [ %107, %115 ], [ %107, %111 ], [ %107, %105 ], [ null, %42 ]
  %134 = phi ptr [ %129, %125 ], [ null, %122 ], [ null, %119 ], [ null, %115 ], [ null, %111 ], [ null, %105 ], [ null, %42 ]
  %135 = tail call i32 @sysfs_create_dir_ns(ptr noundef nonnull %0, ptr noundef %134) #11
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %210

137:                                              ; preds = %130
  %138 = load ptr, ptr %132, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %158, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.kobj_type, ptr %138, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %158, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %142, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %158, label %153

147:                                              ; preds = %153
  %148 = add i32 %155, 1
  %149 = load ptr, ptr %141, align 4
  %150 = getelementptr ptr, ptr %149, i32 %148
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %147, %144
  %154 = phi ptr [ %151, %147 ], [ %145, %144 ]
  %155 = phi i32 [ %148, %147 ], [ 0, %144 ]
  %156 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %0, ptr noundef nonnull %154, ptr noundef null) #11
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %147, label %208

158:                                              ; preds = %147, %144, %140, %137
  %159 = icmp eq ptr %131, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.kobj_type, ptr %131, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = tail call i32 @sysfs_create_groups(ptr noundef nonnull %0, ptr noundef %162) #11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %208

165:                                              ; preds = %160, %158
  %166 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %167 = load ptr, ptr %166, align 4
  tail call void @kernfs_get(ptr noundef %167) #11
  %168 = load ptr, ptr %132, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %223, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.kobj_type, ptr %168, i32 0, i32 4
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %223, label %174

174:                                              ; preds = %170
  %175 = tail call ptr %172(ptr noundef nonnull %0) #11
  %176 = icmp eq ptr %175, null
  br i1 %176, label %223, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr %175, align 4
  switch i32 %178, label %180 [
    i32 0, label %179
    i32 1, label %181
  ], !prof !21

179:                                              ; preds = %177
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/kobject.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !22
  unreachable

180:                                              ; preds = %177
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/kobject.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #11, !srcloc !23
  unreachable

181:                                              ; preds = %177
  tail call void @_raw_spin_lock(ptr noundef nonnull @kobj_ns_type_lock) #11
  %182 = load ptr, ptr @kobj_ns_ops_tbl.0, align 4
  %183 = icmp eq ptr %182, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %184 = load i16, ptr @kobj_ns_type_lock, align 4
  %185 = add i16 %184, 1
  store i16 %185, ptr @kobj_ns_type_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  br i1 %183, label %186, label %187, !prof !11

186:                                              ; preds = %181
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/kobject.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #11, !srcloc !24
  unreachable

187:                                              ; preds = %181
  %188 = load ptr, ptr %166, align 4
  %189 = getelementptr inbounds %struct.kernfs_node, ptr %188, i32 0, i32 10
  %190 = load i16, ptr %189, align 8
  %191 = and i16 %190, 15
  %192 = icmp ne i16 %191, 1
  %193 = load i1, ptr @kernfs_enable_ns.__already_done, align 1
  %194 = xor i1 %193, true
  %195 = select i1 %192, i1 %194, i1 false
  br i1 %195, label %196, label %197, !prof !11

196:                                              ; preds = %187
  store i1 true, ptr @kernfs_enable_ns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 335, i32 noundef 9, ptr noundef null) #11
  br label %197

197:                                              ; preds = %196, %187
  %198 = getelementptr inbounds %struct.kernfs_node, ptr %188, i32 0, i32 7, i32 0, i32 1
  %199 = load volatile ptr, ptr %198, align 4
  %200 = icmp ne ptr %199, null
  %201 = load i1, ptr @kernfs_enable_ns.__already_done.17, align 1
  %202 = xor i1 %201, true
  %203 = select i1 %200, i1 %202, i1 false
  br i1 %203, label %204, label %205, !prof !11

204:                                              ; preds = %197
  store i1 true, ptr @kernfs_enable_ns.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 336, i32 noundef 9, ptr noundef null) #11
  br label %205

205:                                              ; preds = %204, %197
  %206 = load i16, ptr %189, align 8
  %207 = or i16 %206, 32
  store i16 %207, ptr %189, align 8
  br label %223

208:                                              ; preds = %160, %153
  %209 = phi i32 [ %163, %160 ], [ %156, %153 ]
  tail call void @sysfs_remove_dir(ptr noundef nonnull %0) #11
  br label %210

210:                                              ; preds = %208, %130
  %211 = phi i32 [ %135, %130 ], [ %209, %208 ]
  tail call fastcc void @kobj_kset_leave(ptr noundef nonnull %0)
  tail call void @kobject_put(ptr noundef %133)
  store ptr null, ptr %11, align 4
  %212 = icmp eq i32 %211, -17
  %213 = load ptr, ptr %0, align 4
  br i1 %212, label %214, label %216

214:                                              ; preds = %210
  %215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.kobject_add_internal, ptr noundef %213) #13
  br label %227

216:                                              ; preds = %210
  %217 = icmp eq ptr %133, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %216
  %219 = load ptr, ptr %133, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi ptr [ %219, %218 ], [ @.str.15, %216 ]
  %222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.kobject_add_internal, ptr noundef %213, i32 noundef %211, ptr noundef %221) #13
  br label %227

223:                                              ; preds = %205, %174, %170, %165
  %224 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %225 = load i8, ptr %224, align 4
  %226 = or i8 %225, 2
  store i8 %226, ptr %224, align 4
  br label %227

227:                                              ; preds = %223, %220, %214, %9, %1
  %228 = phi i32 [ -22, %9 ], [ -2, %1 ], [ -17, %214 ], [ %211, %220 ], [ 0, %223 ]
  ret i32 %228
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kset_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call fastcc void @__kobject_del(ptr noundef nonnull %4) #11
  tail call void @kobject_put(ptr noundef %8) #11
  br label %9

9:                                                ; preds = %6, %3
  tail call void @kobject_put(ptr noundef %4)
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kset_find_obj(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #11
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %45, label %6

6:                                                ; preds = %42, %2
  %7 = phi ptr [ %43, %42 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @strcmp(ptr noundef nonnull %9, ptr noundef %1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %7, i32 -4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %7, i32 24
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %31, %17
  %22 = phi i32 [ %29, %31 ], [ %19, %17 ]
  %23 = add i32 %22, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #11, !srcloc !9
  br label %24

24:                                               ; preds = %24, %21
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %22, i32 %23, ptr elementtype(i32) %18) #11, !srcloc !20
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  %29 = extractvalue { i32, i32 } %25, 1
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %33, label %31, !prof !12

31:                                               ; preds = %28
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %21

33:                                               ; preds = %31, %28, %17
  %34 = phi i32 [ 0, %17 ], [ 0, %31 ], [ %22, %28 ]
  %35 = add i32 %34, 1
  %36 = or i32 %35, %34
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %39, label %38, !prof !12

38:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 0) #11
  br label %39

39:                                               ; preds = %38, %33
  %40 = icmp eq i32 %34, 0
  %41 = select i1 %40, ptr null, ptr %15
  br label %45

42:                                               ; preds = %11, %6
  %43 = load ptr, ptr %7, align 4
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %45, label %6

45:                                               ; preds = %42, %39, %14, %2
  %46 = phi ptr [ %41, %39 ], [ null, %14 ], [ null, %2 ], [ null, %42 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %47 = load i16, ptr %3, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret ptr %46
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kset_create_and_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 52) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2
  %9 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef %0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %31

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 3
  store ptr %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2, i32 2
  store ptr %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2, i32 4
  store ptr @kset_ktype, ptr %15, align 8
  %16 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2, i32 3
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2, i32 6
  store volatile i32 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2, i32 1
  store volatile ptr %18, ptr %18, align 8
  %19 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2, i32 7
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, -16
  %23 = or i8 %22, 1
  store i8 %23, ptr %20, align 4
  store volatile ptr %5, ptr %5, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 1
  store i32 0, ptr %25, align 8
  %26 = tail call fastcc i32 @kobject_add_internal(ptr noundef %8) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = tail call i32 @kobject_uevent(ptr noundef %8, i32 noundef 0) #11
  br label %31

30:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %31

31:                                               ; preds = %30, %28, %11, %3
  %32 = phi ptr [ null, %30 ], [ %5, %28 ], [ null, %11 ], [ null, %3 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobj_ns_type_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @kobj_ns_type_lock) #11
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @kobj_ns_ops_tbl.0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store ptr %0, ptr @kobj_ns_ops_tbl.0, align 4
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ -22, %1 ], [ -16, %4 ], [ 0, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %10 = load i16, ptr @kobj_ns_type_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @kobj_ns_type_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobj_ns_type_registered(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @kobj_ns_type_lock) #11
  %2 = icmp eq i32 %0, 1
  %3 = load ptr, ptr @kobj_ns_ops_tbl.0, align 4
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %7 = load i16, ptr @kobj_ns_type_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @kobj_ns_type_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobj_child_ns_ops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kobj_type, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #11
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi ptr [ %12, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kobj_ns_current_may_mount(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @kobj_ns_type_lock) #11
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr @kobj_ns_ops_tbl.0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 %8() #11
  br label %10

10:                                               ; preds = %6, %3, %1
  %11 = phi i1 [ %9, %6 ], [ true, %3 ], [ true, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %12 = load i16, ptr @kobj_ns_type_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @kobj_ns_type_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobj_ns_grab_current(i32 noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @kobj_ns_type_lock) #11
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr @kobj_ns_ops_tbl.0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr %8() #11
  br label %10

10:                                               ; preds = %6, %3, %1
  %11 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %12 = load i16, ptr @kobj_ns_type_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @kobj_ns_type_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobj_ns_netlink(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @kobj_ns_type_lock) #11
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = load ptr, ptr @kobj_ns_ops_tbl.0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %1) #11
  br label %11

11:                                               ; preds = %7, %4, %2
  %12 = phi ptr [ %10, %7 ], [ null, %4 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %13 = load i16, ptr @kobj_ns_type_lock, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr @kobj_ns_type_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobj_ns_initial(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @kobj_ns_type_lock) #11
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr @kobj_ns_ops_tbl.0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr %8() #11
  br label %10

10:                                               ; preds = %6, %3, %1
  %11 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %12 = load i16, ptr @kobj_ns_type_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @kobj_ns_type_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kobj_ns_drop(i32 noundef %0, ptr noundef %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @kobj_ns_type_lock) #11
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = load ptr, ptr @kobj_ns_ops_tbl.0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %1) #11
  br label %12

12:                                               ; preds = %11, %7, %4, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %13 = load i16, ptr @kobj_ns_type_lock, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr @kobj_ns_type_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_dir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kobj_kset_leave(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kset, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %8, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.kset, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.kset, ptr %16, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %17) #11
  br label %18

18:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dynamic_kobj_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_dir_ns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kset_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kset_get_ownership(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %8 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.kobj_type, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void %11(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #11
  br label %14

14:                                               ; preds = %13, %7, %3
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{i64 655352, i64 2148145323, i64 2148145349, i64 2148145396, i64 2148145418, i64 2148145446, i64 2148145466}
!10 = !{i64 2148158993, i64 2148159025, i64 2148159054, i64 2148159088, i64 2148159119, i64 2148159142}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148259215}
!14 = !{i64 2148161350, i64 2148161382, i64 2148161411, i64 2148161445, i64 2148161476, i64 2148161499}
!15 = !{i64 2149345810}
!16 = !{i64 2149008715}
!17 = !{i64 2149004539}
!18 = !{i64 2149004614, i64 2149004641, i64 2149004688, i64 2149004710, i64 2149004738, i64 2149004758}
!19 = !{i64 2149031718}
!20 = !{i64 641415, i64 641439, i64 641460, i64 641477, i64 641494}
!21 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!22 = !{i64 2150348031, i64 2150352570, i64 2150348068, i64 2150348124, i64 2150348158, i64 2150348182, i64 2150348223, i64 2150348244, i64 2150348272, i64 2150348306}
!23 = !{i64 2150353118, i64 2150353596, i64 2150353155, i64 2150353211, i64 2150353245, i64 2150353269, i64 2150353310, i64 2150353331, i64 2150353359, i64 2150353393}
!24 = !{i64 2150354162, i64 2150354640, i64 2150354199, i64 2150354255, i64 2150354289, i64 2150354313, i64 2150354354, i64 2150354375, i64 2150354403, i64 2150354437}
