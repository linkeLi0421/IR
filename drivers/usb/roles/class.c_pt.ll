; ModuleID = '/llk/IR/drivers/usb/roles/class.c_pt.bc'
source_filename = "../drivers/usb/roles/class.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_set_role:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_set_role\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_set_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_get_role:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_get_role\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_get_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_get:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_get\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_usb_role_switch_get:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_usb_role_switch_get\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_usb_role_switch_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_put:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_put\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_find_by_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_find_by_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_find_by_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_string:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_string\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_register\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_set_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_set_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_set_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_role_switch_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_role_switch_get_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_usb_role_switch_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.usb_role_switch = type { %struct.device, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }

@__kstrtab_usb_role_switch_set_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_set_role = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_set_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_set_role to i32), ptr @__kstrtab_usb_role_switch_set_role, ptr @__kstrtabns_usb_role_switch_set_role }, section "___ksymtab_gpl+usb_role_switch_set_role", align 4
@__kstrtab_usb_role_switch_get_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_get_role = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_get_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_get_role to i32), ptr @__kstrtab_usb_role_switch_get_role, ptr @__kstrtabns_usb_role_switch_get_role }, section "___ksymtab_gpl+usb_role_switch_get_role", align 4
@.str = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"drivers/usb/roles/class.c\00", align 1
@__kstrtab_usb_role_switch_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_get = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_get to i32), ptr @__kstrtab_usb_role_switch_get, ptr @__kstrtabns_usb_role_switch_get }, section "___ksymtab_gpl+usb_role_switch_get", align 4
@__kstrtab_fwnode_usb_role_switch_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_usb_role_switch_get = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_usb_role_switch_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_usb_role_switch_get to i32), ptr @__kstrtab_fwnode_usb_role_switch_get, ptr @__kstrtabns_fwnode_usb_role_switch_get }, section "___ksymtab_gpl+fwnode_usb_role_switch_get", align 4
@__kstrtab_usb_role_switch_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_put = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_put to i32), ptr @__kstrtab_usb_role_switch_put, ptr @__kstrtabns_usb_role_switch_put }, section "___ksymtab_gpl+usb_role_switch_put", align 4
@role_class = internal unnamed_addr global ptr null, align 4
@__kstrtab_usb_role_switch_find_by_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_find_by_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_find_by_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_find_by_fwnode to i32), ptr @__kstrtab_usb_role_switch_find_by_fwnode, ptr @__kstrtabns_usb_role_switch_find_by_fwnode }, section "___ksymtab_gpl+usb_role_switch_find_by_fwnode", align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@usb_roles = internal constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@__kstrtab_usb_role_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_string = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_string to i32), ptr @__kstrtab_usb_role_string, ptr @__kstrtabns_usb_role_string }, section "___ksymtab_gpl+usb_role_string", align 4
@usb_role_switch_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"&sw->lock\00", align 1
@usb_role_dev_type = internal constant %struct.device_type { ptr @.str.8, ptr @usb_role_switch_groups, ptr @usb_role_switch_uevent, ptr null, ptr @usb_role_switch_release, ptr null }, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%s-role-switch\00", align 1
@__kstrtab_usb_role_switch_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_register = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_register to i32), ptr @__kstrtab_usb_role_switch_register, ptr @__kstrtabns_usb_role_switch_register }, section "___ksymtab_gpl+usb_role_switch_register", align 4
@__kstrtab_usb_role_switch_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_unregister to i32), ptr @__kstrtab_usb_role_switch_unregister, ptr @__kstrtabns_usb_role_switch_unregister }, section "___ksymtab_gpl+usb_role_switch_unregister", align 4
@__kstrtab_usb_role_switch_set_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_set_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_set_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_set_drvdata to i32), ptr @__kstrtab_usb_role_switch_set_drvdata, ptr @__kstrtabns_usb_role_switch_set_drvdata }, section "___ksymtab_gpl+usb_role_switch_set_drvdata", align 4
@__kstrtab_usb_role_switch_get_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_role_switch_get_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_role_switch_get_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_role_switch_get_drvdata to i32), ptr @__kstrtab_usb_role_switch_get_drvdata, ptr @__kstrtabns_usb_role_switch_get_drvdata }, section "___ksymtab_gpl+usb_role_switch_get_drvdata", align 4
@__initcall__kmod_roles__166_396_usb_roles_init4 = internal global ptr @usb_roles_init, section ".initcall4.init", align 4
@__exitcall_usb_roles_exit = internal global ptr @usb_roles_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [63 x i8] c"roles.author=Heikki Krogerus <heikki.krogerus@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [49 x i8] c"roles.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [35 x i8] c"roles.file=drivers/usb/roles/roles\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [21 x i8] c"roles.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [33 x i8] c"roles.description=USB Role Class\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"usb_role_switch\00", align 1
@usb_role_switch_groups = internal global [2 x ptr] [ptr @usb_role_switch_group, ptr null], align 4
@usb_role_switch_group = internal constant %struct.attribute_group { ptr null, ptr @usb_role_switch_is_visible, ptr null, ptr @usb_role_switch_attrs, ptr null }, align 4
@usb_role_switch_attrs = internal global [2 x ptr] [ptr @dev_attr_role, ptr null], align 4
@dev_attr_role = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @role_show, ptr @role_store }, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"USB_ROLE_SWITCH=%s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"failed to add uevent USB_ROLE_SWITCH\0A\00", align 1
@usb_roles_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"usb_role\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_usb_roles_exit, ptr @__initcall__kmod_roles__166_396_usb_roles_init4, ptr @__ksymtab_fwnode_usb_role_switch_get, ptr @__ksymtab_usb_role_string, ptr @__ksymtab_usb_role_switch_find_by_fwnode, ptr @__ksymtab_usb_role_switch_get, ptr @__ksymtab_usb_role_switch_get_drvdata, ptr @__ksymtab_usb_role_switch_get_role, ptr @__ksymtab_usb_role_switch_put, ptr @__ksymtab_usb_role_switch_register, ptr @__ksymtab_usb_role_switch_set_drvdata, ptr @__ksymtab_usb_role_switch_set_role, ptr @__ksymtab_usb_role_switch_unregister, ptr @usb_roles_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_role_switch_set_role(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef nonnull %0, i32 noundef %1) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 2
  store i32 %1, ptr %13, align 4
  %14 = tail call i32 @kobject_uevent(ptr noundef nonnull %0, i32 noundef 2) #10
  br label %15

15:                                               ; preds = %12, %6
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %16

16:                                               ; preds = %15, %2
  %17 = phi i32 [ %10, %15 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_role_switch_get_role(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(ptr noundef nonnull %0) #10
  br label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  tail call void @mutex_unlock(ptr noundef %6) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_role_switch_get(ptr noundef %0) #0 {
  %2 = tail call ptr @dev_fwnode(ptr noundef %0) #10
  %3 = tail call ptr @fwnode_get_parent(ptr noundef %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %3, ptr noundef nonnull @.str) #10
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = load ptr, ptr @role_class, align 4
  %9 = tail call ptr @class_find_device(ptr noundef %8, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @device_match_fwnode) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %14

11:                                               ; preds = %5, %1
  %12 = tail call ptr @dev_fwnode(ptr noundef %0) #10
  %13 = tail call ptr @fwnode_connection_find_match(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @usb_role_switch_match) #10
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.device_driver, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i1 @try_module_get(ptr noundef %25) #10
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 133, i32 noundef 9, ptr noundef null) #10
  br label %28

28:                                               ; preds = %27, %19, %14, %7
  %29 = phi ptr [ %15, %19 ], [ %15, %27 ], [ %15, %14 ], [ inttoptr (i32 -517 to ptr), %7 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @usb_role_switch_match(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i1 @fwnode_property_present(ptr noundef %0, ptr noundef nonnull %1) #10
  br i1 %6, label %7, label %12

7:                                                ; preds = %5, %3
  %8 = load ptr, ptr @role_class, align 4
  %9 = tail call ptr @class_find_device(ptr noundef %8, ptr noundef null, ptr noundef %0, ptr noundef nonnull @device_match_fwnode) #10
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr inttoptr (i32 -517 to ptr), ptr %9
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi ptr [ null, %5 ], [ %11, %7 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_usb_role_switch_get(ptr noundef %0) #0 {
  %2 = tail call ptr @fwnode_get_parent(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %2, ptr noundef nonnull @.str) #10
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = load ptr, ptr @role_class, align 4
  %8 = tail call ptr @class_find_device(ptr noundef %7, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull @device_match_fwnode) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %12

10:                                               ; preds = %4, %1
  %11 = tail call ptr @fwnode_connection_find_match(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @usb_role_switch_match) #10
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = icmp eq ptr %13, null
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.device_driver, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 @try_module_get(ptr noundef %23) #10
  br i1 %24, label %26, label %25, !prof !8

25:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef 9, ptr noundef null) #10
  br label %26

26:                                               ; preds = %25, %17, %12, %6
  %27 = phi ptr [ %13, %17 ], [ %13, %25 ], [ %13, %12 ], [ inttoptr (i32 -517 to ptr), %6 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_connection_find_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_role_switch_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @module_put(ptr noundef %11) #10
  tail call void @put_device(ptr noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_role_switch_find_by_fwnode(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @role_class, align 4
  %5 = tail call ptr @class_find_device(ptr noundef %4, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @device_match_fwnode) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @try_module_get(ptr noundef %13) #10
  br i1 %14, label %16, label %15, !prof !8

15:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 9, ptr noundef null) #10
  br label %16

16:                                               ; preds = %15, %7, %3, %1
  %17 = phi ptr [ null, %1 ], [ %5, %7 ], [ %5, %15 ], [ null, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @usb_role_string(i32 noundef %0) #3 {
  %2 = icmp ugt i32 %0, 2
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr [3 x ptr], ptr @usb_roles, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.2, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_role_switch_register(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 520) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_role_switch, ptr %10, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @usb_role_switch_register.__key) #10
  %14 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %1, i32 0, i32 6
  %15 = load i8, ptr %14, align 4, !range !9
  %16 = getelementptr inbounds %struct.usb_role_switch, ptr %10, i32 0, i32 8
  store i8 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_role_switch, ptr %10, i32 0, i32 3
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_role_switch, ptr %10, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %1, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_role_switch, ptr %10, i32 0, i32 5
  store ptr %24, ptr %25, align 8
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.usb_role_switch, ptr %10, i32 0, i32 6
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_role_switch, ptr %10, i32 0, i32 7
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  store ptr %0, ptr %31, align 4
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 26
  store ptr %32, ptr %33, align 4
  %34 = load ptr, ptr @role_class, align 4
  %35 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 31
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 4
  store ptr @usb_role_dev_type, ptr %36, align 8
  %37 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %1, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %1, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %12
  %44 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 4
  br label %49

49:                                               ; preds = %47, %43, %12
  %50 = phi ptr [ %41, %12 ], [ %48, %47 ], [ %45, %43 ]
  %51 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.4, ptr noundef %50) #10
  %52 = tail call i32 @device_register(ptr noundef nonnull %10) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  tail call void @put_device(ptr noundef nonnull %10) #10
  %55 = inttoptr i32 %52 to ptr
  br label %56

56:                                               ; preds = %54, %49, %8, %4, %2
  %57 = phi ptr [ %55, %54 ], [ %10, %49 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_role_switch_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @device_unregister(ptr noundef nonnull %0) #10
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usb_role_switch_set_drvdata(ptr nocapture noundef writeonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %1, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @usb_role_switch_get_drvdata(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usb_roles_init() #6 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @usb_roles_init.__key) #10
  store ptr %1, ptr @role_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %1 to i32
  %4 = select i1 %2, i32 %3, i32 0
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usb_roles_exit() #6 section ".exit.text" {
  %1 = load ptr, ptr @role_class, align 4
  tail call void @class_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_fwnode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_role_switch_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %13

13:                                               ; preds = %12, %8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_role_switch_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @usb_role_switch_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i16 [ %9, %7 ], [ 0, %3 ]
  ret i16 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @role_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef nonnull %0) #10
  br label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  tail call void @mutex_unlock(ptr noundef %8) #10
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ %18, %17 ], [ 0, %3 ]
  %21 = getelementptr [3 x ptr], ptr @usb_roles, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @role_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @usb_roles, i32 noundef 3, ptr noundef %2) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !10
  %9 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #10
  %10 = icmp eq i32 %9, 0
  %11 = load i8, ptr %5, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br i1 %13, label %14, label %30

14:                                               ; preds = %8, %4
  %15 = phi i32 [ %6, %4 ], [ 0, %8 ]
  %16 = icmp eq ptr %0, null
  %17 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 1
  call void @mutex_lock(ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef nonnull %0, i32 noundef %15) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.usb_role_switch, ptr %0, i32 0, i32 2
  store i32 %15, ptr %26, align 4
  %27 = call i32 @kobject_uevent(ptr noundef nonnull %0, i32 noundef 2) #10
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %3, %25 ], [ %23, %19 ]
  call void @mutex_unlock(ptr noundef %20) #10
  br label %30

30:                                               ; preds = %28, %14, %8
  %31 = phi i32 [ %3, %14 ], [ -22, %8 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
