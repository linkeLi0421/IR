; ModuleID = '/llk/IR/drivers/usb/phy/phy.c_pt.bc'
source_filename = "../drivers/usb/phy/phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_set_charger_current:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_set_charger_current\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_set_charger_current:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_get_charger_current:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_get_charger_current\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_get_charger_current:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_set_charger_state:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_set_charger_state\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_set_charger_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_usb_get_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_usb_get_phy\22\09\09\09\09\09"
module asm "__kstrtabns_devm_usb_get_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_phy\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_usb_get_phy_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_usb_get_phy_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_devm_usb_get_phy_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_usb_get_phy_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_usb_get_phy_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_devm_usb_get_phy_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_usb_put_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_usb_put_phy\22\09\09\09\09\09"
module asm "__kstrtabns_devm_usb_put_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_put_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_put_phy\22\09\09\09\09\09"
module asm "__kstrtabns_usb_put_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_phy\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_phy_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_phy_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_phy_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_remove_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_remove_phy\22\09\09\09\09\09"
module asm "__kstrtabns_usb_remove_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_set_event:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_set_event\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_set_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_devm = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_usb_phy_set_charger_current = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_set_charger_current = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_set_charger_current = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_set_charger_current to i32), ptr @__kstrtab_usb_phy_set_charger_current, ptr @__kstrtabns_usb_phy_set_charger_current }, section "___ksymtab_gpl+usb_phy_set_charger_current", align 4
@__kstrtab_usb_phy_get_charger_current = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_get_charger_current = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_get_charger_current = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_get_charger_current to i32), ptr @__kstrtab_usb_phy_get_charger_current, ptr @__kstrtabns_usb_phy_get_charger_current }, section "___ksymtab_gpl+usb_phy_get_charger_current", align 4
@__kstrtab_usb_phy_set_charger_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_set_charger_state = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_set_charger_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_set_charger_state to i32), ptr @__kstrtab_usb_phy_set_charger_state, ptr @__kstrtabns_usb_phy_set_charger_state }, section "___ksymtab_gpl+usb_phy_set_charger_state", align 4
@.str = private unnamed_addr constant [21 x i8] c"devm_usb_phy_release\00", align 1
@__kstrtab_devm_usb_get_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_usb_get_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_usb_get_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_usb_get_phy to i32), ptr @__kstrtab_devm_usb_get_phy, ptr @__kstrtabns_devm_usb_get_phy }, section "___ksymtab_gpl+devm_usb_get_phy", align 4
@phy_lock = internal global %struct.spinlock zeroinitializer, align 4
@phy_list = internal global %struct.list_head { ptr @phy_list, ptr @phy_list }, align 4
@__kstrtab_usb_get_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_phy to i32), ptr @__kstrtab_usb_get_phy, ptr @__kstrtabns_usb_get_phy }, section "___ksymtab_gpl+usb_get_phy", align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"devm_usb_phy_release2\00", align 1
@__kstrtab_devm_usb_get_phy_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_usb_get_phy_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_usb_get_phy_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_usb_get_phy_by_node to i32), ptr @__kstrtab_devm_usb_get_phy_by_node, ptr @__kstrtabns_devm_usb_get_phy_by_node }, section "___ksymtab_gpl+devm_usb_get_phy_by_node", align 4
@__kstrtab_devm_usb_get_phy_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_usb_get_phy_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_usb_get_phy_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_usb_get_phy_by_phandle to i32), ptr @__kstrtab_devm_usb_get_phy_by_phandle, ptr @__kstrtabns_devm_usb_get_phy_by_phandle }, section "___ksymtab_gpl+devm_usb_get_phy_by_phandle", align 4
@devm_usb_put_phy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"drivers/usb/phy/phy.c\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s %s: couldn't find PHY resource\0A\00", align 1
@__kstrtab_devm_usb_put_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_usb_put_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_usb_put_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_usb_put_phy to i32), ptr @__kstrtab_devm_usb_put_phy, ptr @__kstrtabns_devm_usb_put_phy }, section "___ksymtab_gpl+devm_usb_put_phy", align 4
@__kstrtab_usb_put_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_put_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_put_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_put_phy to i32), ptr @__kstrtab_usb_put_phy, ptr @__kstrtabns_usb_put_phy }, section "___ksymtab_gpl+usb_put_phy", align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"not accepting initialized PHY %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"transceiver type %s already exists\0A\00", align 1
@__kstrtab_usb_add_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_phy to i32), ptr @__kstrtab_usb_add_phy, ptr @__kstrtabns_usb_add_phy }, section "___ksymtab_gpl+usb_add_phy", align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"no device provided for PHY\0A\00", align 1
@usb_phy_dev_type = internal global %struct.device_type { ptr @.str.19, ptr null, ptr @usb_phy_uevent, ptr null, ptr null, ptr null }, align 4
@__kstrtab_usb_add_phy_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_phy_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_phy_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_phy_dev to i32), ptr @__kstrtab_usb_add_phy_dev, ptr @__kstrtabns_usb_add_phy_dev }, section "___ksymtab_gpl+usb_add_phy_dev", align 4
@__kstrtab_usb_remove_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_remove_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_remove_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_remove_phy to i32), ptr @__kstrtab_usb_remove_phy, ptr @__kstrtabns_usb_remove_phy }, section "___ksymtab_gpl+usb_remove_phy", align 4
@__kstrtab_usb_phy_set_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_set_event = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_set_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_set_event to i32), ptr @__kstrtab_usb_phy_set_event, ptr @__kstrtabns_usb_phy_set_event }, section "___ksymtab_gpl+usb_phy_set_event", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Unknown USB charger state: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"No separate ID extcon device\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"register VBUS notifier failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"register extcon USB SDP failed.\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"register extcon USB CDP failed.\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"register extcon USB DCP failed.\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"register extcon USB ACA failed.\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"register ID notifier failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"USB2 PHY\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"USB3 PHY\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"UNKNOWN PHY TYPE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"usb_phy\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_STATE=%s\00", align 1
@usb_chger_state = internal unnamed_addr constant [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.21 = private unnamed_addr constant [20 x i8] c"USB_CHARGER_TYPE=%s\00", align 1
@usb_chger_type = internal unnamed_addr constant [5 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"USB_CHARGER_DEFAULT\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"USB_CHARGER_PRESENT\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"USB_CHARGER_ABSENT\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"USB_CHARGER_UNKNOWN_TYPE\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_SDP_TYPE\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_DCP_TYPE\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_CDP_TYPE\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_ACA_TYPE\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_devm_usb_get_phy, ptr @__ksymtab_devm_usb_get_phy_by_node, ptr @__ksymtab_devm_usb_get_phy_by_phandle, ptr @__ksymtab_devm_usb_put_phy, ptr @__ksymtab_usb_add_phy, ptr @__ksymtab_usb_add_phy_dev, ptr @__ksymtab_usb_get_phy, ptr @__ksymtab_usb_phy_get_charger_current, ptr @__ksymtab_usb_phy_set_charger_current, ptr @__ksymtab_usb_phy_set_charger_state, ptr @__ksymtab_usb_phy_set_event, ptr @__ksymtab_usb_put_phy, ptr @__ksymtab_usb_remove_phy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_phy_set_charger_current(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %33 [
    i32 1, label %5
    i32 2, label %11
    i32 3, label %17
    i32 4, label %23
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 900)
  store i32 %10, ptr %6, align 4
  br label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @llvm.umin.i32(i32 %1, i32 5000)
  store i32 %16, ptr %12, align 4
  br label %29

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @llvm.umin.i32(i32 %1, i32 5000)
  store i32 %22, ptr %18, align 4
  br label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @llvm.umin.i32(i32 %1, i32 5000)
  store i32 %28, ptr %24, align 4
  br label %29

29:                                               ; preds = %27, %21, %15, %9
  %30 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %30) #10
  br label %33

33:                                               ; preds = %29, %23, %17, %11, %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @usb_phy_get_charger_current(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %26 [
    i32 1, label %6
    i32 2, label %11
    i32 3, label %16
    i32 4, label %21
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  %9 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 1
  %10 = load i32, ptr %9, align 4
  br label %27

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %1, align 4
  %14 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 3
  %15 = load i32, ptr %14, align 4
  br label %27

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 4
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %1, align 4
  %19 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 5
  %20 = load i32, ptr %19, align 4
  br label %27

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 6
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 7
  %25 = load i32, ptr %24, align 4
  br label %27

26:                                               ; preds = %3
  store i32 0, ptr %1, align 4
  br label %27

27:                                               ; preds = %26, %21, %16, %11, %6
  %28 = phi i32 [ 0, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
  store i32 %28, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_phy_set_charger_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  store i32 %1, ptr %3, align 4
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 %8(ptr noundef %0) #10
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %13, %12 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr @system_wq, align 4
  %19 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %17) #10
  br label %20

20:                                               ; preds = %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_usb_get_phy(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_usb_phy_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @phy_lock) #10
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ @phy_list, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @phy_list
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -136
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %9, i32 -148
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.device_driver, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 @try_module_get(ptr noundef %23) #10
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load ptr, ptr %16, align 4
  %27 = tail call ptr @get_device(ptr noundef %26) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %6) #10
  store ptr %16, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #10
  br label %30

28:                                               ; preds = %18, %15, %7
  %29 = phi ptr [ %16, %15 ], [ inttoptr (i32 -19 to ptr), %18 ], [ inttoptr (i32 -19 to ptr), %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %6) #10
  tail call void @devres_free(ptr noundef nonnull %3) #10
  br label %30

30:                                               ; preds = %28, %25, %2
  %31 = phi ptr [ %29, %28 ], [ %16, %25 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_usb_phy_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @put_device(ptr noundef %6) #10
  tail call void @module_put(ptr noundef %10) #10
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_get_phy(i32 noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @phy_lock) #10
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @phy_list, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @phy_list
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -136
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -148
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device_driver, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 @try_module_get(ptr noundef %19) #10
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load ptr, ptr %12, align 4
  %23 = tail call ptr @get_device(ptr noundef %22) #10
  br label %24

24:                                               ; preds = %21, %14, %11, %3
  %25 = phi ptr [ %12, %21 ], [ inttoptr (i32 -19 to ptr), %14 ], [ %12, %11 ], [ inttoptr (i32 -19 to ptr), %3 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %2) #10
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_usb_get_phy_by_node(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_usb_phy_release2, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @phy_lock) #10
  %8 = tail call zeroext i1 @of_device_is_available(ptr noundef %1) #10
  br i1 %8, label %9, label %22

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %11, %13 ], [ @phy_list, %6 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @phy_list
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -148
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %9

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %11, i32 -148
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %9, %6
  %23 = phi ptr [ %20, %19 ], [ inttoptr (i32 -19 to ptr), %6 ], [ inttoptr (i32 -517 to ptr), %9 ]
  tail call void @devres_free(ptr noundef nonnull %4) #10
  br label %40

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.device_driver, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #10
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @devres_free(ptr noundef nonnull %4) #10
  br label %40

31:                                               ; preds = %24
  %32 = icmp eq ptr %2, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = getelementptr i8, ptr %11, i32 -12
  %35 = tail call i32 @atomic_notifier_chain_register(ptr noundef %34, ptr noundef nonnull %2) #10
  br label %36

36:                                               ; preds = %33, %31
  store ptr %20, ptr %4, align 4
  %37 = getelementptr inbounds %struct.phy_devm, ptr %4, i32 0, i32 1
  store ptr %2, ptr %37, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #10
  %38 = load ptr, ptr %20, align 4
  %39 = tail call ptr @get_device(ptr noundef %38) #10
  br label %40

40:                                               ; preds = %36, %30, %22
  %41 = phi ptr [ %23, %22 ], [ %20, %36 ], [ inttoptr (i32 -19 to ptr), %30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %7) #10
  br label %42

42:                                               ; preds = %40, %3
  %43 = phi ptr [ %41, %40 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_usb_phy_release2(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.phy_devm, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 18
  %9 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %8, ptr noundef nonnull %4) #10
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.device_driver, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @put_device(ptr noundef %14) #10
  tail call void @module_put(ptr noundef %18) #10
  br label %19

19:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = zext i8 %2 to i32
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #10, !annotation !8
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %6, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %9, ptr noundef nonnull %4) #10
  %11 = icmp ne i32 %10, 0
  %12 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %13 = icmp eq ptr %12, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = call ptr @devm_usb_get_phy_by_node(ptr noundef %0, ptr noundef nonnull %12, ptr noundef null)
  call void @of_node_put(ptr noundef nonnull %12) #10
  br label %17

17:                                               ; preds = %15, %8, %3
  %18 = phi ptr [ %16, %15 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -19 to ptr), %8 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_usb_put_phy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @devm_usb_phy_release, ptr noundef nonnull @devm_usb_phy_match, ptr noundef %1) #10
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @devm_usb_put_phy.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %17, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @devm_usb_put_phy.__already_done, align 1
  %9 = tail call ptr @dev_driver_string(ptr noundef %0) #10
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 632, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %9, ptr noundef %16) #10
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_usb_phy_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #4 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_put_phy(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @put_device(ptr noundef %4) #10
  tail call void @module_put(ptr noundef %8) #10
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_phy(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef %9) #11
  br label %51

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 15
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16
  store i32 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 1
  store i32 500, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 2
  store i32 500, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 3
  store i32 5000, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 4
  store i32 1500, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 5
  store i32 5000, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 6
  store i32 1500, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 7
  store i32 5000, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17
  store i32 -32, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17, i32 2
  store ptr @usb_phy_notify_charger_work, ptr %24, align 4
  %25 = tail call fastcc i32 @usb_add_extcon(ptr noundef %0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18, i32 1
  store ptr null, ptr %29, align 4
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @phy_lock) #10
  br label %31

31:                                               ; preds = %35, %27
  %32 = phi ptr [ @phy_list, %27 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, @phy_list
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %33, i32 -136
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %39, label %31

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 4
  %41 = icmp eq i32 %1, 2
  %42 = select i1 %41, ptr @.str.17, ptr @.str.18
  %43 = icmp eq i32 %1, 1
  %44 = select i1 %43, ptr @.str.16, ptr %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.5, ptr noundef nonnull %44) #11
  br label %49

45:                                               ; preds = %31
  store i32 %1, ptr %3, align 4
  %46 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 21
  %47 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phy_list, i32 0, i32 1), align 4
  store ptr %46, ptr getelementptr inbounds (%struct.list_head, ptr @phy_list, i32 0, i32 1), align 4
  store ptr @phy_list, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 21, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %46, ptr %47, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i32 [ -16, %39 ], [ 0, %45 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %30) #10
  br label %51

51:                                               ; preds = %49, %10, %6
  %52 = phi i32 [ -22, %6 ], [ %50, %49 ], [ %25, %10 ]
  ret i32 %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_add_extcon(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef null) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %8, i32 noundef 0) #10
  %10 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 9
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i32
  br label %79

14:                                               ; preds = %7
  %15 = load ptr, ptr %0, align 4
  %16 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %15, i32 noundef 1) #10
  %17 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 10
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  store ptr null, ptr %17, align 4
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.9) #11
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = tail call i32 @devm_extcon_register_notifier(ptr noundef %26, ptr noundef %27, i32 noundef 1, ptr noundef %22) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10) #11
  br label %79

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 13
  store ptr @usb_phy_get_charger_type, ptr %33, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = load ptr, ptr %10, align 4
  %36 = tail call i32 @devm_extcon_register_notifier(ptr noundef %34, ptr noundef %35, i32 noundef 5, ptr noundef %33) #10
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %0, align 4
  br i1 %37, label %40, label %39

39:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.11) #11
  br label %79

40:                                               ; preds = %32
  %41 = load ptr, ptr %10, align 4
  %42 = tail call i32 @devm_extcon_register_notifier(ptr noundef %38, ptr noundef %41, i32 noundef 7, ptr noundef %33) #10
  %43 = icmp eq i32 %42, 0
  %44 = load ptr, ptr %0, align 4
  br i1 %43, label %46, label %45

45:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.12) #11
  br label %79

46:                                               ; preds = %40
  %47 = load ptr, ptr %10, align 4
  %48 = tail call i32 @devm_extcon_register_notifier(ptr noundef %44, ptr noundef %47, i32 noundef 6, ptr noundef %33) #10
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr %0, align 4
  br i1 %49, label %52, label %51

51:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.13) #11
  br label %79

52:                                               ; preds = %46
  %53 = load ptr, ptr %10, align 4
  %54 = tail call i32 @devm_extcon_register_notifier(ptr noundef %50, ptr noundef %53, i32 noundef 8, ptr noundef %33) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.14) #11
  br label %79

58:                                               ; preds = %52, %25
  %59 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 12
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %17, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load ptr, ptr %10, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %66, %65 ], [ %63, %62 ]
  %69 = load ptr, ptr %0, align 4
  %70 = tail call i32 @devm_extcon_register_notifier(ptr noundef %69, ptr noundef %68, i32 noundef 2, ptr noundef %59) #10
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.15) #11
  br label %79

74:                                               ; preds = %67, %58, %1
  %75 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 13
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call fastcc void @__usb_phy_get_charger_type(ptr noundef %0)
  br label %79

79:                                               ; preds = %78, %74, %72, %56, %51, %45, %39, %30, %12
  %80 = phi i32 [ %13, %12 ], [ %28, %30 ], [ %36, %39 ], [ %42, %45 ], [ %48, %51 ], [ %54, %56 ], [ %70, %72 ], [ 0, %78 ], [ 0, %74 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_phy_dev(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef nonnull @.str.6) #11
  br label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 15
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16
  store i32 2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 1
  store i32 500, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 2
  store i32 500, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 3
  store i32 5000, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 4
  store i32 1500, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 5
  store i32 5000, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 6
  store i32 1500, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 16, i32 7
  store i32 5000, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17
  store i32 -32, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17, i32 1
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17, i32 2
  store ptr @usb_phy_notify_charger_work, ptr %19, align 4
  %20 = tail call fastcc i32 @usb_add_extcon(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 4
  store ptr @usb_phy_dev_type, ptr %24, align 8
  %25 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18, i32 1
  store ptr null, ptr %26, align 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @phy_lock) #10
  %28 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 21
  %29 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phy_list, i32 0, i32 1), align 4
  store ptr %28, ptr getelementptr inbounds (%struct.list_head, ptr @phy_list, i32 0, i32 1), align 4
  store ptr @phy_list, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 21, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %28, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %27) #10
  br label %31

31:                                               ; preds = %22, %5, %4
  %32 = phi i32 [ 0, %22 ], [ -22, %4 ], [ %20, %5 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_remove_phy(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @phy_lock) #10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 21
  %6 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 21, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  br label %10

10:                                               ; preds = %4, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %2) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usb_phy_set_event(ptr nocapture noundef writeonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 4
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_phy_notify_charger_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -120
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %24 [
    i32 1, label %5
    i32 2, label %15
  ]

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = shl i32 %8, 3
  %12 = add i32 %11, -28
  %13 = getelementptr i8, ptr %0, i32 %12
  %14 = load i32, ptr %13, align 4
  br label %26

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 -32
  store i32 2, ptr %16, align 4
  %17 = getelementptr i8, ptr %0, i32 -28
  store i32 500, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 -24
  store i32 500, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 -20
  store i32 5000, ptr %19, align 4
  %20 = getelementptr i8, ptr %0, i32 -16
  store i32 1500, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 -12
  store i32 5000, ptr %21, align 4
  %22 = getelementptr i8, ptr %0, i32 -8
  store i32 1500, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 -4
  store i32 5000, ptr %23, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef %4) #11
  br label %32

26:                                               ; preds = %15, %10, %5
  %27 = phi i32 [ 0, %15 ], [ 0, %5 ], [ %14, %10 ]
  %28 = getelementptr i8, ptr %0, i32 16
  %29 = tail call i32 @atomic_notifier_call_chain(ptr noundef %28, i32 noundef %27, ptr noundef %2) #10
  %30 = load ptr, ptr %2, align 4
  %31 = tail call i32 @kobject_uevent(ptr noundef %30, i32 noundef 2) #10
  br label %32

32:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_phy_get_charger_type(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -68
  tail call fastcc void @__usb_phy_get_charger_type(ptr noundef %4)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__usb_phy_get_charger_type(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @extcon_get_state(ptr noundef %3, i32 noundef 5) #10
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  store i32 1, ptr %7, align 4
  br label %27

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @extcon_get_state(ptr noundef %9, i32 noundef 7) #10
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  store i32 3, ptr %13, align 4
  br label %27

14:                                               ; preds = %8
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 @extcon_get_state(ptr noundef %15, i32 noundef 6) #10
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  store i32 2, ptr %19, align 4
  br label %27

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 @extcon_get_state(ptr noundef %21, i32 noundef 8) #10
  %23 = icmp sgt i32 %22, 0
  %24 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 14
  br i1 %23, label %25, label %26

25:                                               ; preds = %20
  store i32 4, ptr %24, align 4
  br label %27

26:                                               ; preds = %20
  store i32 0, ptr %24, align 4
  br label %27

27:                                               ; preds = %26, %25, %18, %12, %6
  %28 = phi i32 [ 1, %12 ], [ 1, %25 ], [ 2, %26 ], [ 1, %18 ], [ 1, %6 ]
  %29 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %30) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_phy_uevent(ptr noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca [50 x i8], align 1
  %4 = alloca [50 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %3, i8 0, i32 50, i1 false)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %4, i8 0, i32 50, i1 false)
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @phy_lock) #10
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi ptr [ @phy_list, %2 ], [ %8, %11 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @phy_list
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %5) #10
  br label %35

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %8, i32 -148
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %6

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %8, i32 -148
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @phy_lock, i32 noundef %5) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %8, i32 -64
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr [3 x ptr], ptr @usb_chger_state, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 50, ptr noundef nonnull @.str.20, ptr noundef %22)
  %24 = getelementptr i8, ptr %8, i32 -68
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [5 x ptr], ptr @usb_chger_type, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 50, ptr noundef nonnull @.str.21, ptr noundef %27)
  %29 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull %3) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull %4) #10
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 -12
  br label %35

35:                                               ; preds = %31, %18, %15, %10
  %36 = phi i32 [ -19, %15 ], [ -12, %18 ], [ %34, %31 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %3) #10
  ret i32 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
