; ModuleID = '/llk/IR/drivers/net/can/dev/dev.c_pt.bc'
source_filename = "../drivers/net/can/dev/dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_get_state_str:\09\09\09\09\09"
module asm "\09.asciz \09\22can_get_state_str\22\09\09\09\09\09"
module asm "__kstrtabns_can_get_state_str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_change_state:\09\09\09\09\09"
module asm "\09.asciz \09\22can_change_state\22\09\09\09\09\09"
module asm "__kstrtabns_can_change_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_bus_off:\09\09\09\09\09"
module asm "\09.asciz \09\22can_bus_off\22\09\09\09\09\09"
module asm "__kstrtabns_can_bus_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_candev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_candev_mqs\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_candev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22free_candev\22\09\09\09\09\09"
module asm "__kstrtabns_free_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22can_change_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_can_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_open_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22open_candev\22\09\09\09\09\09"
module asm "__kstrtabns_open_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_can_transceiver:\09\09\09\09\09"
module asm "\09.asciz \09\22of_can_transceiver\22\09\09\09\09\09"
module asm "__kstrtabns_of_can_transceiver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_close_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22close_candev\22\09\09\09\09\09"
module asm "__kstrtabns_close_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22register_candev\22\09\09\09\09\09"
module asm "__kstrtabns_register_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_candev\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_safe_candev_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22safe_candev_priv\22\09\09\09\09\09"
module asm "__kstrtabns_safe_candev_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.can_frame = type { i32, %union.anon.135, i8, i8, i8, [8 x i8] }
%union.anon.135 = type { i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.130 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}

@__UNIQUE_ID_description420 = internal constant [48 x i8] c"can_dev.description=CAN device driver interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file421 = internal constant [41 x i8] c"can_dev.file=drivers/net/can/dev/can-dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [23 x i8] c"can_dev.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [55 x i8] c"can_dev.author=Wolfgang Grandegger <wg@grandegger.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"Error Active\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Error Warning\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Error Passive\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Bus Off\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Sleeping\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@__kstrtab_can_get_state_str = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_get_state_str = external dso_local constant [0 x i8], align 1
@__ksymtab_can_get_state_str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_get_state_str to i32), ptr @__kstrtab_can_get_state_str, ptr @__kstrtabns_can_get_state_str }, section "___ksymtab_gpl+can_get_state_str", align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: oops, state did not change\00", align 1
@__func__.can_change_state = private unnamed_addr constant [17 x i8] c"can_change_state\00", align 1
@__kstrtab_can_change_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_change_state = external dso_local constant [0 x i8], align 1
@__ksymtab_can_change_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_change_state to i32), ptr @__kstrtab_can_change_state, ptr @__kstrtabns_can_change_state }, section "___ksymtab_gpl+can_change_state", align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"bus-off, scheduling restart in %d ms\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"bus-off\0A\00", align 1
@__kstrtab_can_bus_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_bus_off = external dso_local constant [0 x i8], align 1
@__ksymtab_can_bus_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_bus_off to i32), ptr @__kstrtab_can_bus_off, ptr @__kstrtabns_can_bus_off }, section "___ksymtab_gpl+can_bus_off", align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"can%d\00", align 1
@__kstrtab_alloc_candev_mqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_candev_mqs = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_candev_mqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_candev_mqs to i32), ptr @__kstrtab_alloc_candev_mqs, ptr @__kstrtabns_alloc_candev_mqs }, section "___ksymtab_gpl+alloc_candev_mqs", align 4
@__kstrtab_free_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_free_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_candev to i32), ptr @__kstrtab_free_candev, ptr @__kstrtabns_free_candev }, section "___ksymtab_gpl+free_candev", align 4
@__kstrtab_can_change_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_change_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_can_change_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_change_mtu to i32), ptr @__kstrtab_can_change_mtu, ptr @__kstrtabns_can_change_mtu }, section "___ksymtab_gpl+can_change_mtu", align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"bit-timing not yet defined\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"incorrect/missing data bit-timing\0A\00", align 1
@__kstrtab_open_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_open_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_open_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @open_candev to i32), ptr @__kstrtab_open_candev, ptr @__kstrtabns_open_candev }, section "___ksymtab_gpl+open_candev", align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"can-transceiver\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"max-bitrate\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"Invalid value for transceiver max bitrate. Ignoring bitrate limit.\0A\00", align 1
@__kstrtab_of_can_transceiver = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_can_transceiver = external dso_local constant [0 x i8], align 1
@__ksymtab_of_can_transceiver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_can_transceiver to i32), ptr @__kstrtab_of_can_transceiver, ptr @__kstrtabns_of_can_transceiver }, section "___ksymtab_gpl+of_can_transceiver", align 4
@__kstrtab_close_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_close_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_close_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @close_candev to i32), ptr @__kstrtab_close_candev, ptr @__kstrtabns_close_candev }, section "___ksymtab_gpl+close_candev", align 4
@can_link_ops = external dso_local global %struct.rtnl_link_ops, align 4
@__kstrtab_register_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_register_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_candev to i32), ptr @__kstrtab_register_candev, ptr @__kstrtabns_register_candev }, section "___ksymtab_gpl+register_candev", align 4
@__kstrtab_unregister_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_candev to i32), ptr @__kstrtab_unregister_candev, ptr @__kstrtabns_unregister_candev }, section "___ksymtab_gpl+unregister_candev", align 4
@__kstrtab_safe_candev_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_safe_candev_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_safe_candev_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @safe_candev_priv to i32), ptr @__kstrtab_safe_candev_priv, ptr @__kstrtabns_safe_candev_priv }, section "___ksymtab_gpl+safe_candev_priv", align 4
@__initcall__kmod_can_dev__426_523_can_dev_init6 = internal global ptr @can_dev_init, section ".initcall6.init", align 4
@__exitcall_can_dev_exit = internal global ptr @can_dev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias427 = internal constant [28 x i8] c"can_dev.alias=rtnl-link-can\00", section ".modinfo", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Error %d during restart\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"include/linux/netdevice.h\00", align 1
@.str.18 = private unnamed_addr constant [77 x i8] c"Overwriting already set ml_priv_type (%u) with different ml_priv_type (%u)!\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Overwriting already set ml_priv and ml_priv_type is ML_PRIV_NONE!\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"termination\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Cannot get termination-gpios\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"termination-ohms\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Cannot get termination-ohms: %pe\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Invalid termination-ohms value (%u > %u)\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"\016CAN device driver interface\0A\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias427, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description420, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_can_dev_exit, ptr @__initcall__kmod_can_dev__426_523_can_dev_init6, ptr @__ksymtab_alloc_candev_mqs, ptr @__ksymtab_can_bus_off, ptr @__ksymtab_can_change_mtu, ptr @__ksymtab_can_change_state, ptr @__ksymtab_can_get_state_str, ptr @__ksymtab_close_candev, ptr @__ksymtab_free_candev, ptr @__ksymtab_of_can_transceiver, ptr @__ksymtab_open_candev, ptr @__ksymtab_register_candev, ptr @__ksymtab_safe_candev_priv, ptr @__ksymtab_unregister_candev, ptr @can_dev_exit], section "llvm.metadata"
@switch.table.can_get_state_str = private unnamed_addr constant [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @can_get_state_str(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [6 x ptr], ptr @switch.table.can_get_state_str, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.6, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_change_state(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = tail call i32 @llvm.umax.i32(i32 %2, i32 %3)
  %6 = getelementptr i8, ptr %0, i32 1576
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.can_change_state) #10
  br label %50

10:                                               ; preds = %4
  %11 = icmp ult i32 %7, %5
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = add i32 %5, -1
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = shl i32 %13, 2
  %17 = add i32 %16, 1416
  %18 = getelementptr i8, ptr %0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %15, %12, %10
  store i32 %5, ptr %6, align 4
  %22 = icmp eq ptr %1, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %21
  %24 = icmp eq i32 %5, 3
  %25 = load i32, ptr %1, align 8
  br i1 %24, label %26, label %28, !prof !8

26:                                               ; preds = %23
  %27 = or i32 %25, 64
  store i32 %27, ptr %1, align 8
  br label %50

28:                                               ; preds = %23
  %29 = or i32 %25, 4
  store i32 %29, ptr %1, align 8
  %30 = icmp uge i32 %2, %3
  %31 = icmp ult i32 %2, 3
  %32 = and i1 %30, %31
  %33 = trunc i32 %2 to i24
  %34 = shl i24 %33, 3
  %35 = lshr i24 2099264, %34
  %36 = trunc i24 %35 to i8
  %37 = select i1 %32, i8 %36, i8 0
  %38 = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = or i8 %39, %37
  %41 = icmp ule i32 %2, %3
  %42 = icmp ult i32 %3, 3
  %43 = and i1 %41, %42
  %44 = trunc i32 %3 to i24
  %45 = shl i24 %44, 3
  %46 = lshr i24 1049664, %45
  %47 = trunc i24 %46 to i8
  %48 = select i1 %43, i8 %47, i8 0
  %49 = or i8 %48, %40
  store i8 %49, ptr %38, align 1
  br label %50

50:                                               ; preds = %28, %26, %21, %9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_restart_now(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 1588
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 1576
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 1592
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #11
  tail call fastcc void @can_restart(ptr noundef %0)
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi i32 [ 0, %9 ], [ -22, %1 ], [ -16, %5 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @can_restart(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store ptr null, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/dev/dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

8:                                                ; preds = %1
  tail call void @can_flush_echo_skb(ptr noundef %0) #11
  %9 = call ptr @alloc_can_err_skb(ptr noundef %0, ptr noundef nonnull %2) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 4
  %13 = load i32, ptr %12, align 8
  %14 = or i32 %13, 256
  store i32 %14, ptr %12, align 8
  %15 = call i32 @netif_rx_ni(ptr noundef nonnull %9) #11
  br label %16

16:                                               ; preds = %11, %8
  %17 = getelementptr i8, ptr %0, i32 1432
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr i8, ptr %0, i32 1644
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(ptr noundef %0, i32 noundef 1) #11
  call void @netif_carrier_on(ptr noundef %0) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %22) #10
  br label %25

25:                                               ; preds = %24, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_bus_off(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1588
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %3) #10
  br label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  br label %7

7:                                                ; preds = %6, %5
  tail call void @netif_carrier_off(ptr noundef %0) #11
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 1592
  %12 = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #11
  %13 = load ptr, ptr @system_wq, align 4
  %14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %11, i32 noundef %12) #11
  br label %15

15:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @can_setup(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  store i16 280, ptr %2, align 16
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 16, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  store i16 0, ptr %4, align 2
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 91
  store i32 10, ptr %6, align 16
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  store i32 128, ptr %7, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  store i64 8, ptr %8, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_candev_mqs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = add i32 %0, 31
  %6 = and i32 %5, -32
  %7 = add i32 %6, 12312
  %8 = icmp eq i32 %1, 0
  %9 = add i32 %6, 12315
  %10 = and i32 %9, -8
  %11 = shl i32 %1, 2
  %12 = add i32 %10, %11
  %13 = select i1 %8, i32 %7, i32 %12
  %14 = tail call ptr @alloc_netdev_mqs(i32 noundef %13, ptr noundef nonnull @.str.10, i8 noundef zeroext 0, ptr noundef nonnull @can_setup, i32 noundef %2, i32 noundef %3) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %4
  %17 = getelementptr i8, ptr %14, i32 1408
  store ptr %14, ptr %17, align 4
  %18 = getelementptr i8, ptr %17, i32 %6
  %19 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 109
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %22, label %24, !prof !8

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 2432, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %20, i32 noundef 1) #11
  %23 = load i32, ptr %19, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi i32 [ %23, %22 ], [ %20, %16 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 108
  %29 = load ptr, ptr %28, align 32
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !11

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 2434, i32 noundef 9, ptr noundef nonnull @.str.19) #11
  br label %32

32:                                               ; preds = %31, %27, %24
  %33 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 108
  store ptr %18, ptr %33, align 32
  store i32 1, ptr %19, align 4
  br i1 %8, label %40, label %34

34:                                               ; preds = %32
  %35 = getelementptr i8, ptr %14, i32 1568
  store i32 %1, ptr %35, align 4
  %36 = mul i32 %1, -4
  %37 = add i32 %13, %36
  %38 = getelementptr i8, ptr %17, i32 %37
  %39 = getelementptr i8, ptr %14, i32 1572
  store ptr %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %34, %32
  %41 = getelementptr i8, ptr %14, i32 1576
  store i32 4, ptr %41, align 4
  %42 = getelementptr i8, ptr %14, i32 1592
  store i32 -32, ptr %42, align 4
  %43 = getelementptr i8, ptr %14, i32 1596
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr i8, ptr %14, i32 1600
  store ptr %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %14, i32 1604
  store ptr @can_restart_work, ptr %45, align 4
  %46 = getelementptr i8, ptr %14, i32 1608
  tail call void @init_timer_key(ptr noundef %46, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  br label %47

47:                                               ; preds = %40, %4
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @can_restart_work(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -184
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @can_restart(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_candev(ptr noundef %0) #1 {
  tail call void @free_netdev(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @can_change_mtu(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 1580
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1584
  %6 = load i32, ptr %5, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %4, %7
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  switch i32 %1, label %30 [
    i32 16, label %14
    i32 72, label %19
  ]

14:                                               ; preds = %13
  %15 = and i32 %8, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = and i32 %4, -33
  br label %27

19:                                               ; preds = %13
  %20 = and i32 %6, 32
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %8, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = or i32 %4, 32
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi i32 [ %26, %25 ], [ %18, %17 ]
  store i32 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %19, %14, %13, %2
  %31 = phi i32 [ 0, %27 ], [ -16, %2 ], [ -22, %14 ], [ -22, %19 ], [ -22, %13 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @open_candev(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1444
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  br label %24

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1580
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 1476
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = icmp ult i32 %13, %3
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #10
  br label %24

18:                                               ; preds = %11, %6
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @netif_carrier_on(ptr noundef %0) #11
  br label %24

24:                                               ; preds = %23, %18, %17, %5
  %25 = phi i32 [ -22, %17 ], [ -22, %5 ], [ 0, %23 ], [ 0, %18 ]
  ret i32 %25
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_can_transceiver(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.13) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1540
  %10 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.14, ptr noundef %9, i32 noundef 1, i32 noundef 0) #11
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #11
  tail call void @of_node_put(ptr noundef nonnull %6) #11
  switch i32 %11, label %15 [
    i32 0, label %12
    i32 -22, label %16
  ]

12:                                               ; preds = %8
  %13 = load i32, ptr %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  br label %16

16:                                               ; preds = %15, %12, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @close_candev(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1592
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #11
  tail call void @can_flush_echo_skb(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_flush_echo_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_candev(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1552
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %0, i32 1548
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %5, %8
  br i1 %9, label %10, label %63

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 1648
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %12, null
  %14 = xor i1 %5, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 1528
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  %19 = getelementptr i8, ptr %0, i32 1524
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = xor i1 %18, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %15
  %24 = getelementptr i8, ptr %0, i32 1532
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = getelementptr i8, ptr %0, i32 1536
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = xor i1 %26, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %23
  br i1 %5, label %32, label %60

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %34 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !9
  %35 = tail call ptr @devm_gpiod_get_optional(ptr noundef %34, ptr noundef nonnull @.str.20, i32 noundef 3) #11
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = icmp eq ptr %35, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %37
  %40 = call i32 @device_property_read_u32_array(ptr noundef %34, ptr noundef nonnull @.str.22, ptr noundef nonnull %2, i32 noundef 1) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = inttoptr i32 %40 to ptr
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %43) #10
  br label %54

44:                                               ; preds = %39
  %45 = load i32, ptr %2, align 4
  %46 = icmp ugt i32 %45, 65535
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %45, i32 noundef 65535) #10
  br label %54

48:                                               ; preds = %44
  store i32 2, ptr %6, align 4
  %49 = getelementptr i8, ptr %0, i32 1564
  store ptr %49, ptr %3, align 4
  %50 = getelementptr i8, ptr %0, i32 1560
  store ptr %35, ptr %50, align 4
  store i16 0, ptr %49, align 4
  %51 = trunc i32 %45 to i16
  %52 = getelementptr i8, ptr %0, i32 1566
  store i16 %51, ptr %52, align 2
  store ptr @can_set_termination, ptr %11, align 4
  br label %53

53:                                               ; preds = %48, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %60

54:                                               ; preds = %47, %42
  %55 = phi i32 [ -22, %47 ], [ %40, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %63

56:                                               ; preds = %32
  %57 = ptrtoint ptr %35 to i32
  %58 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %34, i32 noundef %57, ptr noundef nonnull @.str.21) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %53, %31
  %61 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 114
  store ptr @can_link_ops, ptr %61, align 4
  call void @netif_carrier_off(ptr noundef %0) #11
  %62 = call i32 @register_netdev(ptr noundef %0) #11
  br label %63

63:                                               ; preds = %60, %56, %54, %23, %15, %10, %1
  %64 = phi i32 [ %62, %60 ], [ -22, %10 ], [ -22, %1 ], [ -22, %15 ], [ -22, %23 ], [ %58, %56 ], [ %55, %54 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_candev(ptr noundef %0) #1 {
  tail call void @unregister_netdev(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @safe_candev_priv(ptr noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %3 = load i16, ptr %2, align 16
  %4 = icmp eq i16 %3, 280
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 114
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @can_link_ops
  %9 = getelementptr i8, ptr %0, i32 1408
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  ret ptr %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @can_dev_init() #8 section ".init.text" {
  %1 = tail call i32 @can_netlink_register() #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @can_dev_exit() #8 section ".exit.text" {
  tail call void @can_netlink_unregister() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_netlink_unregister() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_set_termination(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1566
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, %1
  %6 = zext i1 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 1560
  %8 = load ptr, ptr %7, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef %6) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_netlink_register() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2155557494, i64 2155557984, i64 2155557531, i64 2155557587, i64 2155557621, i64 2155557645, i64 2155557686, i64 2155557707, i64 2155557735, i64 2155557769}
!11 = !{!"branch_weights", i32 2000, i32 1}
