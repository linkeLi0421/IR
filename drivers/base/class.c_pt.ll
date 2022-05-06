; ModuleID = '/llk/IR/drivers/base/class.c_pt.bc'
source_filename = "../drivers/base/class.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___class_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__class_register\22\09\09\09\09\09"
module asm "__kstrtabns___class_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___class_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__class_create\22\09\09\09\09\09"
module asm "__kstrtabns___class_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_dev_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22class_dev_iter_init\22\09\09\09\09\09"
module asm "__kstrtabns_class_dev_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_dev_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22class_dev_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns_class_dev_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_dev_iter_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22class_dev_iter_exit\22\09\09\09\09\09"
module asm "__kstrtabns_class_dev_iter_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22class_for_each_device\22\09\09\09\09\09"
module asm "__kstrtabns_class_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22class_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_class_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_show_class_attr_string:\09\09\09\09\09"
module asm "\09.asciz \09\22show_class_attr_string\22\09\09\09\09\09"
module asm "__kstrtabns_show_class_attr_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_compat_register:\09\09\09\09\09"
module asm "\09.asciz \09\22class_compat_register\22\09\09\09\09\09"
module asm "__kstrtabns_class_compat_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_compat_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22class_compat_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_class_compat_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_compat_create_link:\09\09\09\09\09"
module asm "\09.asciz \09\22class_compat_create_link\22\09\09\09\09\09"
module asm "__kstrtabns_class_compat_create_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_compat_remove_link:\09\09\09\09\09"
module asm "\09.asciz \09\22class_compat_remove_link\22\09\09\09\09\09"
module asm "__kstrtabns_class_compat_remove_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_create_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22class_create_file_ns\22\09\09\09\09\09"
module asm "__kstrtabns_class_create_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_remove_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22class_remove_file_ns\22\09\09\09\09\09"
module asm "__kstrtabns_class_remove_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22class_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_class_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22class_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_class_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_interface_register:\09\09\09\09\09"
module asm "\09.asciz \09\22class_interface_register\22\09\09\09\09\09"
module asm "__kstrtabns_class_interface_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_class_interface_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22class_interface_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_class_interface_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, %struct.kset, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.class_dev_iter = type { %struct.klist_iter, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.class_attribute_string = type { %struct.class_attribute, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@.str = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sysfs_dev_char_kobj = external dso_local local_unnamed_addr global ptr, align 4
@class_kset = internal unnamed_addr global ptr null, align 4
@class_ktype = internal global %struct.kobj_type { ptr @class_release, ptr @class_sysfs_ops, ptr null, ptr null, ptr @class_child_ns_type, ptr null, ptr null }, align 4
@__kstrtab___class_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___class_register = external dso_local constant [0 x i8], align 1
@__ksymtab___class_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__class_register to i32), ptr @__kstrtab___class_register, ptr @__kstrtabns___class_register }, section "___ksymtab_gpl+__class_register", align 4
@__kstrtab___class_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___class_create = external dso_local constant [0 x i8], align 1
@__ksymtab___class_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__class_create to i32), ptr @__kstrtab___class_create, ptr @__kstrtabns___class_create }, section "___ksymtab_gpl+__class_create", align 4
@__kstrtab_class_dev_iter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_dev_iter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_class_dev_iter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_dev_iter_init to i32), ptr @__kstrtab_class_dev_iter_init, ptr @__kstrtabns_class_dev_iter_init }, section "___ksymtab_gpl+class_dev_iter_init", align 4
@__kstrtab_class_dev_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_dev_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab_class_dev_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_dev_iter_next to i32), ptr @__kstrtab_class_dev_iter_next, ptr @__kstrtabns_class_dev_iter_next }, section "___ksymtab_gpl+class_dev_iter_next", align 4
@__kstrtab_class_dev_iter_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_dev_iter_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_class_dev_iter_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_dev_iter_exit to i32), ptr @__kstrtab_class_dev_iter_exit, ptr @__kstrtabns_class_dev_iter_exit }, section "___ksymtab_gpl+class_dev_iter_exit", align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"drivers/base/class.c\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s called for class '%s' before it was initialized\00", align 1
@__func__.class_for_each_device = private unnamed_addr constant [22 x i8] c"class_for_each_device\00", align 1
@__kstrtab_class_for_each_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_for_each_device = external dso_local constant [0 x i8], align 1
@__ksymtab_class_for_each_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_for_each_device to i32), ptr @__kstrtab_class_for_each_device, ptr @__kstrtabns_class_for_each_device }, section "___ksymtab_gpl+class_for_each_device", align 4
@__func__.class_find_device = private unnamed_addr constant [18 x i8] c"class_find_device\00", align 1
@__kstrtab_class_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_class_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_find_device to i32), ptr @__kstrtab_class_find_device, ptr @__kstrtabns_class_find_device }, section "___ksymtab_gpl+class_find_device", align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__kstrtab_show_class_attr_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_show_class_attr_string = external dso_local constant [0 x i8], align 1
@__ksymtab_show_class_attr_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @show_class_attr_string to i32), ptr @__kstrtab_show_class_attr_string, ptr @__kstrtabns_show_class_attr_string }, section "___ksymtab_gpl+show_class_attr_string", align 4
@__kstrtab_class_compat_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_compat_register = external dso_local constant [0 x i8], align 1
@__ksymtab_class_compat_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_compat_register to i32), ptr @__kstrtab_class_compat_register, ptr @__kstrtabns_class_compat_register }, section "___ksymtab_gpl+class_compat_register", align 4
@__kstrtab_class_compat_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_compat_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_class_compat_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_compat_unregister to i32), ptr @__kstrtab_class_compat_unregister, ptr @__kstrtabns_class_compat_unregister }, section "___ksymtab_gpl+class_compat_unregister", align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@__kstrtab_class_compat_create_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_compat_create_link = external dso_local constant [0 x i8], align 1
@__ksymtab_class_compat_create_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_compat_create_link to i32), ptr @__kstrtab_class_compat_create_link, ptr @__kstrtabns_class_compat_create_link }, section "___ksymtab_gpl+class_compat_create_link", align 4
@__kstrtab_class_compat_remove_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_compat_remove_link = external dso_local constant [0 x i8], align 1
@__ksymtab_class_compat_remove_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_compat_remove_link to i32), ptr @__kstrtab_class_compat_remove_link, ptr @__kstrtabns_class_compat_remove_link }, section "___ksymtab_gpl+class_compat_remove_link", align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@__kstrtab_class_create_file_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_create_file_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_class_create_file_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_create_file_ns to i32), ptr @__kstrtab_class_create_file_ns, ptr @__kstrtabns_class_create_file_ns }, section "___ksymtab_gpl+class_create_file_ns", align 4
@__kstrtab_class_remove_file_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_remove_file_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_class_remove_file_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_remove_file_ns to i32), ptr @__kstrtab_class_remove_file_ns, ptr @__kstrtabns_class_remove_file_ns }, section "___ksymtab_gpl+class_remove_file_ns", align 4
@__kstrtab_class_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_class_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_unregister to i32), ptr @__kstrtab_class_unregister, ptr @__kstrtabns_class_unregister }, section "___ksymtab_gpl+class_unregister", align 4
@__kstrtab_class_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_class_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_destroy to i32), ptr @__kstrtab_class_destroy, ptr @__kstrtabns_class_destroy }, section "___ksymtab_gpl+class_destroy", align 4
@__kstrtab_class_interface_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_interface_register = external dso_local constant [0 x i8], align 1
@__ksymtab_class_interface_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_interface_register to i32), ptr @__kstrtab_class_interface_register, ptr @__kstrtabns_class_interface_register }, section "___ksymtab_gpl+class_interface_register", align 4
@__kstrtab_class_interface_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_class_interface_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_class_interface_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @class_interface_unregister to i32), ptr @__kstrtab_class_interface_unregister, ptr @__kstrtabns_class_interface_unregister }, section "___ksymtab_gpl+class_interface_unregister", align 4
@class_sysfs_ops = internal constant %struct.sysfs_ops { ptr @class_attr_show, ptr @class_attr_store }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab___class_create, ptr @__ksymtab___class_register, ptr @__ksymtab_class_compat_create_link, ptr @__ksymtab_class_compat_register, ptr @__ksymtab_class_compat_remove_link, ptr @__ksymtab_class_compat_unregister, ptr @__ksymtab_class_create_file_ns, ptr @__ksymtab_class_destroy, ptr @__ksymtab_class_dev_iter_exit, ptr @__ksymtab_class_dev_iter_init, ptr @__ksymtab_class_dev_iter_next, ptr @__ksymtab_class_find_device, ptr @__ksymtab_class_for_each_device, ptr @__ksymtab_class_interface_register, ptr @__ksymtab_class_interface_unregister, ptr @__ksymtab_class_remove_file_ns, ptr @__ksymtab_class_unregister, ptr @__ksymtab_show_class_attr_string], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @class_create_file_ns(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 2
  %9 = tail call i32 @sysfs_create_file_ns(ptr noundef %8, ptr noundef %1, ptr noundef %2) #7
  br label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ %9, %5 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @class_remove_file_ns(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %8, ptr noundef %1, ptr noundef %2) #7
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__class_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 220) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 5
  tail call void @klist_init(ptr noundef %7, ptr noundef nonnull @klist_class_dev_get, ptr noundef nonnull @klist_class_dev_put) #7
  %8 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 2
  store volatile ptr %8, ptr %8, align 8
  %9 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 10
  tail call void @kset_init(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %1) #7
  %12 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %0, align 4
  %14 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #7
  br label %49

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr @sysfs_dev_char_kobj, align 4
  store ptr %22, ptr %18, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr @class_kset, align 4
  %25 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 2, i32 3
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 2, i32 4
  store ptr @class_ktype, ptr %26, align 8
  %27 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 11
  store ptr %0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 14
  store ptr %4, ptr %28, align 4
  %29 = tail call i32 @kset_register(ptr noundef nonnull %4) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %4) #7
  br label %49

32:                                               ; preds = %23
  %33 = icmp eq ptr %0, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %28, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.kset, ptr %35, i32 0, i32 2
  %39 = tail call ptr @kobject_get(ptr noundef %38) #7
  br label %40

40:                                               ; preds = %37, %34, %32
  %41 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %28, align 4
  %44 = getelementptr inbounds %struct.kset, ptr %43, i32 0, i32 2
  %45 = tail call i32 @sysfs_create_groups(ptr noundef %44, ptr noundef %42) #7
  br i1 %33, label %49, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %28, align 4
  %48 = getelementptr inbounds %struct.kset, ptr %47, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %48) #7
  br label %49

49:                                               ; preds = %46, %40, %31, %16, %2
  %50 = phi i32 [ %14, %16 ], [ %29, %31 ], [ -12, %2 ], [ %45, %40 ], [ %45, %46 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @klist_class_dev_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @get_device(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @klist_class_dev_put(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 32
  %3 = load ptr, ptr %2, align 4
  tail call void @put_device(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kset_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @class_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2
  tail call void @sysfs_remove_groups(ptr noundef %6, ptr noundef %3) #7
  %7 = load ptr, ptr %4, align 4
  tail call void @kset_unregister(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__class_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 60) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  store ptr %1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.class, ptr %5, i32 0, i32 1
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.class, ptr %5, i32 0, i32 7
  store ptr @class_create_release, ptr %9, align 4
  %10 = tail call i32 @__class_register(ptr noundef nonnull %5, ptr noundef %2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %10, %7 ], [ -12, %3 ]
  tail call void @kfree(ptr noundef %5) #7
  %14 = inttoptr i32 %13 to ptr
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %5, %7 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @class_create_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @class_destroy(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.kset, ptr %9, i32 0, i32 2
  tail call void @sysfs_remove_groups(ptr noundef %10, ptr noundef %7) #7
  %11 = load ptr, ptr %8, align 4
  tail call void @kset_unregister(ptr noundef %11) #7
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @class_dev_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device_private, ptr %8, i32 0, i32 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.subsys_private, ptr %13, i32 0, i32 5
  tail call void @klist_iter_init_node(ptr noundef %14, ptr noundef %0, ptr noundef %11) #7
  %15 = getelementptr inbounds %struct.class_dev_iter, ptr %0, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @class_dev_iter_next(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.class_dev_iter, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %11, %1
  %4 = tail call ptr @klist_next(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %3

15:                                               ; preds = %11, %6, %3
  %16 = phi ptr [ null, %3 ], [ %8, %11 ], [ %8, %6 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @class_dev_iter_exit(ptr noundef %0) #0 {
  tail call void @klist_iter_exit(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @class_for_each_device(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.class_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.class_for_each_device, ptr noundef %12) #7
  br label %43

13:                                               ; preds = %7
  %14 = icmp eq ptr %1, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device_private, ptr %17, i32 0, i32 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi ptr [ %18, %15 ], [ null, %13 ]
  %21 = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %21, ptr noundef nonnull %5, ptr noundef %20) #7
  %22 = getelementptr inbounds %struct.class_dev_iter, ptr %5, i32 0, i32 1
  store ptr null, ptr %22, align 4
  br label %23

23:                                               ; preds = %35, %19
  %24 = call ptr @klist_next(ptr noundef nonnull %5) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %24, i32 32
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %22, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %29, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %38, %31
  br label %23

36:                                               ; preds = %31, %26
  %37 = icmp eq ptr %28, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = call i32 %3(ptr noundef nonnull %28, ptr noundef %2) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %35, label %41

41:                                               ; preds = %38, %36, %23
  %42 = phi i32 [ 0, %23 ], [ %39, %38 ], [ 0, %36 ]
  call void @klist_iter_exit(ptr noundef nonnull %5) #7
  br label %43

43:                                               ; preds = %41, %11, %4
  %44 = phi i32 [ %42, %41 ], [ -22, %11 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @class_find_device(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.class_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.class, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 410, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.class_find_device, ptr noundef %12) #7
  br label %45

13:                                               ; preds = %7
  %14 = icmp eq ptr %1, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device_private, ptr %17, i32 0, i32 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi ptr [ %18, %15 ], [ null, %13 ]
  %21 = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %21, ptr noundef nonnull %5, ptr noundef %20) #7
  %22 = getelementptr inbounds %struct.class_dev_iter, ptr %5, i32 0, i32 1
  store ptr null, ptr %22, align 4
  br label %23

23:                                               ; preds = %35, %19
  %24 = call ptr @klist_next(ptr noundef nonnull %5) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %24, i32 32
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %22, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %29, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %38, %31
  br label %23

36:                                               ; preds = %31, %26
  %37 = icmp eq ptr %28, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = call i32 %3(ptr noundef nonnull %28, ptr noundef %2) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %35, label %41

41:                                               ; preds = %38
  %42 = call ptr @get_device(ptr noundef nonnull %28) #7
  br label %43

43:                                               ; preds = %41, %36, %23
  %44 = phi ptr [ %28, %41 ], [ null, %23 ], [ null, %36 ]
  call void @klist_iter_exit(ptr noundef nonnull %5) #7
  br label %45

45:                                               ; preds = %43, %11, %4
  %46 = phi ptr [ %44, %43 ], [ null, %11 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @class_interface_register(ptr noundef %0) #0 {
  %2 = alloca %struct.class_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.class_interface, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.kset, ptr %10, i32 0, i32 2
  %14 = tail call ptr @kobject_get(ptr noundef %13) #7
  %15 = load ptr, ptr %9, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %15, %12 ], [ null, %8 ]
  %18 = getelementptr inbounds %struct.subsys_private, ptr %17, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #7
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.subsys_private, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.subsys_private, ptr %19, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr %0, ptr %21, align 4
  store ptr %20, ptr %0, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %0, ptr %22, align 4
  %24 = getelementptr inbounds %struct.class_interface, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %16
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds %struct.subsys_private, ptr %28, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %29, ptr noundef nonnull %2, ptr noundef null) #7
  %30 = getelementptr inbounds %struct.class_dev_iter, ptr %2, i32 0, i32 1
  store ptr null, ptr %30, align 4
  br label %31

31:                                               ; preds = %43, %27
  %32 = call ptr @klist_next(ptr noundef nonnull %2) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %32, i32 32
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %30, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 4
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %46, %39
  br label %31

44:                                               ; preds = %39, %34
  %45 = icmp eq ptr %36, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %24, align 4
  %48 = call i32 %47(ptr noundef nonnull %36, ptr noundef nonnull %0) #7
  br label %43

49:                                               ; preds = %44, %31
  call void @klist_iter_exit(ptr noundef nonnull %2) #7
  br label %50

50:                                               ; preds = %49, %16
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr inbounds %struct.subsys_private, ptr %51, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %52) #7
  br label %53

53:                                               ; preds = %50, %4, %1
  %54 = phi i32 [ 0, %50 ], [ -19, %4 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @class_interface_unregister(ptr noundef %0) #0 {
  %2 = alloca %struct.class_dev_iter, align 4
  %3 = getelementptr inbounds %struct.class_interface, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.class, ptr %4, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.subsys_private, ptr %8, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %10, align 4
  %14 = getelementptr inbounds %struct.class_interface, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds %struct.subsys_private, ptr %18, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %19, ptr noundef nonnull %2, ptr noundef null) #7
  %20 = getelementptr inbounds %struct.class_dev_iter, ptr %2, i32 0, i32 1
  store ptr null, ptr %20, align 4
  br label %21

21:                                               ; preds = %33, %17
  %22 = call ptr @klist_next(ptr noundef nonnull %2) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %22, i32 32
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %20, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 4
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %27, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %36, %29
  br label %21

34:                                               ; preds = %29, %24
  %35 = icmp eq ptr %26, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %14, align 4
  call void %37(ptr noundef nonnull %26, ptr noundef %0) #7
  br label %33

38:                                               ; preds = %34, %21
  call void @klist_iter_exit(ptr noundef nonnull %2) #7
  br label %39

39:                                               ; preds = %38, %6
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds %struct.subsys_private, ptr %40, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %41) #7
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.kset, ptr %42, i32 0, i32 2
  call void @kobject_put(ptr noundef %43) #7
  br label %44

44:                                               ; preds = %39, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @show_class_attr_string(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.class_attribute_string, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %5) #7
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @class_compat_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @class_kset, align 4
  %7 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 2
  %8 = tail call ptr @kobject_create_and_add(ptr noundef %0, ptr noundef %7) #7
  store ptr %8, ptr %3, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = phi ptr [ null, %10 ], [ null, %1 ], [ %3, %5 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @class_compat_unregister(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @kobject_put(ptr noundef %2) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @class_compat_create_link(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 4
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = tail call i32 @sysfs_create_link(ptr noundef %4, ptr noundef %1, ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = icmp eq ptr %2, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %14
  %17 = tail call i32 @sysfs_create_link(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.5) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %1, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %21, %19 ]
  tail call void @sysfs_remove_link(ptr noundef %20, ptr noundef %26) #7
  br label %27

27:                                               ; preds = %25, %16, %14, %10
  %28 = phi i32 [ %12, %10 ], [ %17, %25 ], [ 0, %16 ], [ 0, %14 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @class_compat_remove_link(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @sysfs_remove_link(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  br label %6

6:                                                ; preds = %5, %3
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load ptr, ptr %1, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  tail call void @sysfs_remove_link(ptr noundef %7, ptr noundef %14) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @classes_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #7
  store ptr %1, ptr @class_kset, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @class_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 204
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %3) #7
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr i8, ptr %0, i32 -12
  tail call void @kfree(ptr noundef %9) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @class_child_ns_type(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 204
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @class_attr_show(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.class_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 204
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %5(ptr noundef %9, ptr noundef %1, ptr noundef %2) #7
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @class_attr_store(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.class_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 204
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -5, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
