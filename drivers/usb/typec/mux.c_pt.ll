; ModuleID = '/llk/IR/drivers/usb/typec/mux.c_pt.bc'
source_filename = "../drivers/usb/typec/mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_typec_switch_get:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_typec_switch_get\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_typec_switch_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_switch_put:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_switch_put\22\09\09\09\09\09"
module asm "__kstrtabns_typec_switch_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_switch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_switch_register\22\09\09\09\09\09"
module asm "__kstrtabns_typec_switch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_switch_set:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_switch_set\22\09\09\09\09\09"
module asm "__kstrtabns_typec_switch_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_switch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_switch_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_typec_switch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_switch_set_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_switch_set_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_typec_switch_set_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_switch_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_switch_get_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_typec_switch_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_typec_mux_get:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_typec_mux_get\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_typec_mux_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_mux_put:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_mux_put\22\09\09\09\09\09"
module asm "__kstrtabns_typec_mux_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_mux_set:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_mux_set\22\09\09\09\09\09"
module asm "__kstrtabns_typec_mux_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_mux_register:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_mux_register\22\09\09\09\09\09"
module asm "__kstrtabns_typec_mux_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_mux_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_mux_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_typec_mux_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_mux_set_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_mux_set_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_typec_mux_set_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_mux_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_mux_get_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_typec_mux_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.typec_switch_desc = type { ptr, ptr, ptr, ptr }
%struct.typec_switch = type { %struct.device, ptr }
%struct.typec_mux = type { %struct.device, ptr }
%struct.typec_mux_desc = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"orientation-switch\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/usb/typec/mux.c\00", align 1
@__kstrtab_fwnode_typec_switch_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_typec_switch_get = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_typec_switch_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_typec_switch_get to i32), ptr @__kstrtab_fwnode_typec_switch_get, ptr @__kstrtabns_fwnode_typec_switch_get }, section "___ksymtab_gpl+fwnode_typec_switch_get", align 4
@__kstrtab_typec_switch_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_switch_put = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_switch_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_switch_put to i32), ptr @__kstrtab_typec_switch_put, ptr @__kstrtabns_typec_switch_put }, section "___ksymtab_gpl+typec_switch_put", align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"orientation_switch\00", align 1
@typec_switch_dev_type = dso_local constant %struct.device_type { ptr @.str.2, ptr null, ptr null, ptr null, ptr @typec_switch_release, ptr null }, align 4
@typec_mux_class = dso_local global %struct.class { ptr @.str.9, ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s-switch\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to register switch (%d)\0A\00", align 1
@__kstrtab_typec_switch_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_switch_register = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_switch_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_switch_register to i32), ptr @__kstrtab_typec_switch_register, ptr @__kstrtabns_typec_switch_register }, section "___ksymtab_gpl+typec_switch_register", align 4
@__kstrtab_typec_switch_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_switch_set = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_switch_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_switch_set to i32), ptr @__kstrtab_typec_switch_set, ptr @__kstrtabns_typec_switch_set }, section "___ksymtab_gpl+typec_switch_set", align 4
@__kstrtab_typec_switch_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_switch_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_switch_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_switch_unregister to i32), ptr @__kstrtab_typec_switch_unregister, ptr @__kstrtabns_typec_switch_unregister }, section "___ksymtab_gpl+typec_switch_unregister", align 4
@__kstrtab_typec_switch_set_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_switch_set_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_switch_set_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_switch_set_drvdata to i32), ptr @__kstrtab_typec_switch_set_drvdata, ptr @__kstrtabns_typec_switch_set_drvdata }, section "___ksymtab_gpl+typec_switch_set_drvdata", align 4
@__kstrtab_typec_switch_get_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_switch_get_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_switch_get_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_switch_get_drvdata to i32), ptr @__kstrtab_typec_switch_get_drvdata, ptr @__kstrtabns_typec_switch_get_drvdata }, section "___ksymtab_gpl+typec_switch_get_drvdata", align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"mode-switch\00", align 1
@__kstrtab_fwnode_typec_mux_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_typec_mux_get = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_typec_mux_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_typec_mux_get to i32), ptr @__kstrtab_fwnode_typec_mux_get, ptr @__kstrtabns_fwnode_typec_mux_get }, section "___ksymtab_gpl+fwnode_typec_mux_get", align 4
@__kstrtab_typec_mux_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_mux_put = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_mux_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_mux_put to i32), ptr @__kstrtab_typec_mux_put, ptr @__kstrtabns_typec_mux_put }, section "___ksymtab_gpl+typec_mux_put", align 4
@__kstrtab_typec_mux_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_mux_set = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_mux_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_mux_set to i32), ptr @__kstrtab_typec_mux_set, ptr @__kstrtabns_typec_mux_set }, section "___ksymtab_gpl+typec_mux_set", align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"mode_switch\00", align 1
@typec_mux_dev_type = dso_local constant %struct.device_type { ptr @.str.6, ptr null, ptr null, ptr null, ptr @typec_mux_release, ptr null }, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%s-mux\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to register mux (%d)\0A\00", align 1
@__kstrtab_typec_mux_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_mux_register = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_mux_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_mux_register to i32), ptr @__kstrtab_typec_mux_register, ptr @__kstrtabns_typec_mux_register }, section "___ksymtab_gpl+typec_mux_register", align 4
@__kstrtab_typec_mux_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_mux_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_mux_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_mux_unregister to i32), ptr @__kstrtab_typec_mux_unregister, ptr @__kstrtabns_typec_mux_unregister }, section "___ksymtab_gpl+typec_mux_unregister", align 4
@__kstrtab_typec_mux_set_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_mux_set_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_mux_set_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_mux_set_drvdata to i32), ptr @__kstrtab_typec_mux_set_drvdata, ptr @__kstrtabns_typec_mux_set_drvdata }, section "___ksymtab_gpl+typec_mux_set_drvdata", align 4
@__kstrtab_typec_mux_get_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_mux_get_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_mux_get_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_mux_get_drvdata to i32), ptr @__kstrtab_typec_mux_get_drvdata, ptr @__kstrtabns_typec_mux_get_drvdata }, section "___ksymtab_gpl+typec_mux_get_drvdata", align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"typec_mux\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"accessory\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"svid\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_fwnode_typec_mux_get, ptr @__ksymtab_fwnode_typec_switch_get, ptr @__ksymtab_typec_mux_get_drvdata, ptr @__ksymtab_typec_mux_put, ptr @__ksymtab_typec_mux_register, ptr @__ksymtab_typec_mux_set, ptr @__ksymtab_typec_mux_set_drvdata, ptr @__ksymtab_typec_mux_unregister, ptr @__ksymtab_typec_switch_get_drvdata, ptr @__ksymtab_typec_switch_put, ptr @__ksymtab_typec_switch_register, ptr @__ksymtab_typec_switch_set, ptr @__ksymtab_typec_switch_set_drvdata, ptr @__ksymtab_typec_switch_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_typec_switch_get(ptr noundef %0) #0 {
  %2 = tail call ptr @fwnode_connection_find_match(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @typec_switch_match) #7
  %3 = icmp eq ptr %2, null
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @try_module_get(ptr noundef %12) #7
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 71, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %14, %6, %1
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_connection_find_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @typec_switch_match(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i1 @fwnode_property_present(ptr noundef %0, ptr noundef nonnull %1) #7
  br i1 %6, label %7, label %11

7:                                                ; preds = %5, %3
  %8 = tail call ptr @class_find_device(ptr noundef nonnull @typec_mux_class, ptr noundef null, ptr noundef %0, ptr noundef nonnull @switch_fwnode_match) #7
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr inttoptr (i32 -517 to ptr), ptr %8
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ null, %5 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_switch_put(ptr noundef %0) #0 {
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
  tail call void @module_put(ptr noundef %11) #7
  tail call void @put_device(ptr noundef nonnull %0) #7
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @typec_switch_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_switch_register(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.typec_switch_desc, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 480) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.typec_switch, ptr %10, i32 0, i32 1
  store ptr %13, ptr %14, align 8
  tail call void @device_initialize(ptr noundef nonnull %10) #7
  %15 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 26
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 31
  store ptr @typec_mux_class, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 4
  store ptr @typec_switch_dev_type, ptr %19, align 8
  %20 = getelementptr inbounds %struct.typec_switch_desc, ptr %1, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.typec_switch_desc, ptr %1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 4
  br label %32

32:                                               ; preds = %30, %26, %12
  %33 = phi ptr [ %24, %12 ], [ %31, %30 ], [ %28, %26 ]
  %34 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.3, ptr noundef %33) #7
  %35 = tail call i32 @device_add(ptr noundef nonnull %10) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %35) #9
  tail call void @put_device(ptr noundef nonnull %10) #7
  %38 = inttoptr i32 %35 to ptr
  br label %39

39:                                               ; preds = %37, %32, %8, %4, %2
  %40 = phi ptr [ %38, %37 ], [ %10, %32 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_switch_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.typec_switch, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 %8(ptr noundef nonnull %0, i32 noundef %1) #7
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_switch_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @device_unregister(ptr noundef nonnull %0) #7
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @typec_switch_set_drvdata(ptr nocapture noundef writeonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %1, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @typec_switch_get_drvdata(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_typec_mux_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @fwnode_connection_find_match(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @typec_mux_match) #7
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @try_module_get(ptr noundef %13) #7
  br i1 %14, label %16, label %15, !prof !8

15:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 270, i32 noundef 9, ptr noundef null) #7
  br label %16

16:                                               ; preds = %15, %7, %2
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @typec_mux_match(ptr noundef %0, ptr noundef readnone %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call zeroext i1 @fwnode_property_present(ptr noundef %0, ptr noundef nonnull @.str.10) #7
  br i1 %8, label %33, label %37

9:                                                ; preds = %5
  %10 = tail call i32 @fwnode_property_read_u16_array(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0) #7
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %37, label %12

12:                                               ; preds = %9
  %13 = shl nuw i32 %10, 1
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @fwnode_property_read_u16_array(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %14, i32 noundef %10) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i16, ptr %2, align 4
  br label %26

21:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #7
  %22 = inttoptr i32 %17 to ptr
  br label %37

23:                                               ; preds = %26
  %24 = add nuw nsw i32 %27, 1
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %32, label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ 0, %19 ], [ %24, %23 ]
  %28 = getelementptr i16, ptr %14, i32 %27
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, %20
  br i1 %30, label %31, label %23

31:                                               ; preds = %26
  tail call void @kfree(ptr noundef nonnull %14) #7
  br label %33

32:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %14) #7
  br label %37

33:                                               ; preds = %31, %7, %3
  %34 = tail call ptr @class_find_device(ptr noundef nonnull @typec_mux_class, ptr noundef null, ptr noundef %0, ptr noundef nonnull @mux_fwnode_match) #7
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr inttoptr (i32 -517 to ptr), ptr %34
  br label %37

37:                                               ; preds = %33, %32, %21, %12, %9, %7
  %38 = phi ptr [ %22, %21 ], [ null, %32 ], [ null, %7 ], [ null, %9 ], [ inttoptr (i32 -12 to ptr), %12 ], [ %36, %33 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_mux_put(ptr noundef %0) #0 {
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
  tail call void @module_put(ptr noundef %11) #7
  tail call void @put_device(ptr noundef nonnull %0) #7
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_mux_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.typec_mux, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 %8(ptr noundef nonnull %0, ptr noundef %1) #7
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @typec_mux_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_mux_register(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.typec_mux_desc, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 480) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.typec_mux, ptr %10, i32 0, i32 1
  store ptr %13, ptr %14, align 8
  tail call void @device_initialize(ptr noundef nonnull %10) #7
  %15 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 26
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 31
  store ptr @typec_mux_class, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 4
  store ptr @typec_mux_dev_type, ptr %19, align 8
  %20 = getelementptr inbounds %struct.typec_mux_desc, ptr %1, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.typec_mux_desc, ptr %1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 4
  br label %32

32:                                               ; preds = %30, %26, %12
  %33 = phi ptr [ %24, %12 ], [ %31, %30 ], [ %28, %26 ]
  %34 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.7, ptr noundef %33) #7
  %35 = tail call i32 @device_add(ptr noundef nonnull %10) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %35) #9
  tail call void @put_device(ptr noundef nonnull %10) #7
  %38 = inttoptr i32 %35 to ptr
  br label %39

39:                                               ; preds = %37, %32, %8, %4, %2
  %40 = phi ptr [ %38, %37 ], [ %10, %32 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_mux_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @device_unregister(ptr noundef nonnull %0) #7
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @typec_mux_set_drvdata(ptr nocapture noundef writeonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %1, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @typec_mux_get_drvdata(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @switch_fwnode_match(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @typec_switch_dev_type
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call ptr @dev_fwnode(ptr noundef %0) #7
  %8 = icmp eq ptr %7, %1
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mux_fwnode_match(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @typec_mux_dev_type
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call ptr @dev_fwnode(ptr noundef %0) #7
  %8 = icmp eq ptr %7, %1
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
