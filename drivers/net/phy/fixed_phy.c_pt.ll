; ModuleID = '/llk/IR/drivers/net/phy/fixed_phy.c_pt.bc'
source_filename = "../drivers/net/phy/fixed_phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_change_carrier:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_change_carrier\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_change_carrier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_set_link_update:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_set_link_update\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_set_link_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_add:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_add\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_register\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_register_with_gpiod:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_register_with_gpiod\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_register_with_gpiod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fixed_mdio_bus = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.fixed_phy = type { i32, ptr, %struct.fixed_phy_status, i8, ptr, %struct.list_head, ptr }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@platform_fmb = internal global %struct.fixed_mdio_bus { ptr null, %struct.list_head { ptr getelementptr (i8, ptr @platform_fmb, i64 4), ptr getelementptr (i8, ptr @platform_fmb, i64 4) } }, align 4
@__kstrtab_fixed_phy_change_carrier = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_change_carrier = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_change_carrier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_change_carrier to i32), ptr @__kstrtab_fixed_phy_change_carrier, ptr @__kstrtabns_fixed_phy_change_carrier }, section "___ksymtab_gpl+fixed_phy_change_carrier", align 4
@__kstrtab_fixed_phy_set_link_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_set_link_update = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_set_link_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_set_link_update to i32), ptr @__kstrtab_fixed_phy_set_link_update, ptr @__kstrtabns_fixed_phy_set_link_update }, section "___ksymtab_gpl+fixed_phy_set_link_update", align 4
@__kstrtab_fixed_phy_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_add = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_add to i32), ptr @__kstrtab_fixed_phy_add, ptr @__kstrtabns_fixed_phy_add }, section "___ksymtab_gpl+fixed_phy_add", align 4
@__kstrtab_fixed_phy_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_register to i32), ptr @__kstrtab_fixed_phy_register, ptr @__kstrtabns_fixed_phy_register }, section "___ksymtab_gpl+fixed_phy_register", align 4
@__kstrtab_fixed_phy_register_with_gpiod = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_register_with_gpiod = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_register_with_gpiod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_register_with_gpiod to i32), ptr @__kstrtab_fixed_phy_register_with_gpiod, ptr @__kstrtabns_fixed_phy_register_with_gpiod }, section "___ksymtab_gpl+fixed_phy_register_with_gpiod", align 4
@__kstrtab_fixed_phy_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_unregister to i32), ptr @__kstrtab_fixed_phy_unregister, ptr @__kstrtabns_fixed_phy_unregister }, section "___ksymtab_gpl+fixed_phy_unregister", align 4
@__initcall__kmod_fixed_phy__328_369_fixed_mdio_bus_init6 = internal global ptr @fixed_mdio_bus_init, section ".initcall6.init", align 4
@pdev = internal unnamed_addr global ptr null, align 4
@phy_fixed_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__exitcall_fixed_mdio_bus_exit = internal global ptr @fixed_mdio_bus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description329 = internal constant [74 x i8] c"fixed_phy.description=Fixed MDIO bus (MDIO bus emulation with fixed PHYs)\00", section ".modinfo", align 1
@__UNIQUE_ID_author330 = internal constant [31 x i8] c"fixed_phy.author=Vitaly Bordug\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [41 x i8] c"fixed_phy.file=drivers/net/phy/fixed_phy\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [22 x i8] c"fixed_phy.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [11 x i8] c"fixed-link\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"\013error getting GPIO for fixed link %pOF, proceed without\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Fixed MDIO bus\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Fixed MDIO Bus\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_fixed_mdio_bus_exit, ptr @__initcall__kmod_fixed_phy__328_369_fixed_mdio_bus_init6, ptr @__ksymtab_fixed_phy_add, ptr @__ksymtab_fixed_phy_change_carrier, ptr @__ksymtab_fixed_phy_register, ptr @__ksymtab_fixed_phy_register_with_gpiod, ptr @__ksymtab_fixed_phy_set_link_update, ptr @__ksymtab_fixed_phy_unregister, ptr @fixed_mdio_bus_exit], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fixed_phy_change_carrier(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 6
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %14, %16 ], [ getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), %10 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -36
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %11, align 8
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %12

21:                                               ; preds = %16
  %22 = xor i1 %1, true
  %23 = getelementptr i8, ptr %14, i32 -8
  %24 = zext i1 %22 to i8
  store i8 %24, ptr %23, align 4
  br label %25

25:                                               ; preds = %21, %12, %6, %2
  %26 = phi i32 [ 0, %21 ], [ -22, %6 ], [ -22, %2 ], [ -22, %12 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fixed_phy_set_link_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi ptr [ %12, %14 ], [ getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), %8 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -36
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %9, align 8
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %10

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %12, i32 -4
  store ptr %1, ptr %20, align 4
  %21 = getelementptr i8, ptr %12, i32 -32
  store ptr %0, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %10, %4, %2
  %23 = phi i32 [ 0, %19 ], [ -22, %4 ], [ -22, %2 ], [ -2, %10 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fixed_phy_add(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @swphy_validate_state(ptr noundef %2) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 48) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %0, -1
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr @platform_fmb, align 4
  %14 = getelementptr %struct.mii_bus, ptr %13, i32 0, i32 15, i32 %1
  store i32 %0, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %10
  store i32 %1, ptr %8, align 8
  %16 = getelementptr inbounds %struct.fixed_phy, ptr %8, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %16, ptr noundef align 4 dereferenceable(20) %2, i32 20, i1 false) #10
  %17 = getelementptr inbounds %struct.fixed_phy, ptr %8, i32 0, i32 6
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fixed_phy, ptr %8, i32 0, i32 5
  %19 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1, i32 1), align 4
  store ptr %18, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), ptr %18, align 4
  %20 = getelementptr inbounds %struct.fixed_phy, ptr %8, i32 0, i32 5, i32 1
  store ptr %19, ptr %20, align 8
  store volatile ptr %18, ptr %19, align 4
  br label %21

21:                                               ; preds = %15, %6, %3
  %22 = phi i32 [ 0, %15 ], [ %4, %3 ], [ -12, %6 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fixed_phy_register(i32 noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call fastcc ptr @__fixed_phy_register(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__fixed_phy_register(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = load ptr, ptr @platform_fmb, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %162, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 10
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %162

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %11
  %14 = icmp eq ptr %2, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %2, ptr noundef nonnull @.str) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 3
  %20 = tail call ptr @fwnode_gpiod_get_index(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.2) #10
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = ptrtoint ptr %20 to i32
  switch i32 %23, label %25 [
    i32 -517, label %24
    i32 -2, label %27
  ]

24:                                               ; preds = %22
  tail call void @of_node_put(ptr noundef nonnull %16) #10
  br label %162

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %16) #12
  br label %27

27:                                               ; preds = %25, %22, %18
  %28 = phi ptr [ null, %25 ], [ null, %22 ], [ %20, %18 ]
  tail call void @of_node_put(ptr noundef nonnull %16) #10
  br label %29

29:                                               ; preds = %27, %15, %13, %11
  %30 = phi ptr [ %3, %11 ], [ null, %13 ], [ null, %15 ], [ %28, %27 ]
  %31 = tail call i32 @ida_alloc_range(ptr noundef nonnull @phy_fixed_ida, i32 noundef 0, i32 noundef 31, i32 noundef 3264) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = inttoptr i32 %31 to ptr
  br label %162

35:                                               ; preds = %29
  %36 = tail call i32 @swphy_validate_state(ptr noundef %1) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 48) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = icmp eq i32 %0, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr @platform_fmb, align 4
  %46 = getelementptr %struct.mii_bus, ptr %45, i32 0, i32 15, i32 %31
  store i32 %0, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %42
  store i32 %31, ptr %40, align 8
  %48 = getelementptr inbounds %struct.fixed_phy, ptr %40, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %48, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false) #10
  %49 = getelementptr inbounds %struct.fixed_phy, ptr %40, i32 0, i32 6
  store ptr %30, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fixed_phy, ptr %40, i32 0, i32 3
  %51 = load i8, ptr %50, align 4, !range !8
  %52 = icmp ne i8 %51, 0
  %53 = icmp eq ptr %30, null
  %54 = or i1 %53, %52
  br i1 %54, label %62, label %55

55:                                               ; preds = %47
  %56 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %30) #10
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, ptr %48, align 8
  br label %62

59:                                               ; preds = %38, %35
  %60 = phi i32 [ -12, %38 ], [ %36, %35 ]
  tail call void @ida_free(ptr noundef nonnull @phy_fixed_ida, i32 noundef %31) #10
  %61 = inttoptr i32 %60 to ptr
  br label %162

62:                                               ; preds = %55, %47
  %63 = getelementptr inbounds %struct.fixed_phy, ptr %40, i32 0, i32 5
  %64 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1, i32 1), align 4
  store ptr %63, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), ptr %63, align 4
  %65 = getelementptr inbounds %struct.fixed_phy, ptr %40, i32 0, i32 5, i32 1
  store ptr %64, ptr %65, align 8
  store volatile ptr %63, ptr %64, align 4
  %66 = load ptr, ptr @platform_fmb, align 4
  %67 = tail call ptr @get_phy_device(ptr noundef %66, i32 noundef %31, i1 noundef zeroext false) #10
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %89

69:                                               ; preds = %62
  %70 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), align 4
  br label %71

71:                                               ; preds = %74, %69
  %72 = phi ptr [ %70, %69 ], [ %75, %74 ]
  %73 = icmp eq ptr %72, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %73, label %162, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr i8, ptr %72, i32 -36
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %31
  br i1 %78, label %79, label %71

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %72, i32 -36
  %81 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %82, ptr %83, align 4
  store volatile ptr %75, ptr %82, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %72, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %81, align 4
  %84 = getelementptr i8, ptr %72, i32 8
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  tail call void @gpiod_put(ptr noundef nonnull %85) #10
  br label %88

88:                                               ; preds = %87, %79
  tail call void @kfree(ptr noundef %80) #10
  tail call void @ida_free(ptr noundef nonnull @phy_fixed_ida, i32 noundef %31) #10
  br label %162

89:                                               ; preds = %62
  %90 = load i32, ptr %1, align 4
  %91 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 4
  %92 = trunc i32 %90 to i16
  %93 = load i16, ptr %91, align 8
  %94 = shl i16 %92, 13
  %95 = and i16 %94, 8192
  %96 = and i16 %93, -8193
  %97 = or i16 %95, %96
  store i16 %97, ptr %91, align 8
  %98 = load i32, ptr %1, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 8
  store i32 %102, ptr %103, align 8
  %104 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 9
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 11
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 12
  store i32 %111, ptr %112, align 8
  br label %113

113:                                              ; preds = %100, %89
  %114 = tail call ptr @of_node_get(ptr noundef %2) #10
  %115 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 25
  store ptr %2, ptr %115, align 8
  %116 = load i16, ptr %91, align 8
  %117 = or i16 %116, 4
  store i16 %117, ptr %91, align 8
  %118 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  switch i32 %119, label %120 [
    i32 1000, label %126
    i32 100, label %123
  ]

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 16
  %122 = load i32, ptr %121, align 4
  br label %134

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 16
  %125 = load i32, ptr %124, align 4
  br label %130

126:                                              ; preds = %113
  %127 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 16
  %128 = load i32, ptr %127, align 4
  %129 = or i32 %128, 48
  store i32 %129, ptr %127, align 4
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i32 [ %125, %123 ], [ %129, %126 ]
  %132 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 16
  %133 = or i32 %131, 12
  store i32 %133, ptr %132, align 4
  br label %134

134:                                              ; preds = %130, %120
  %135 = phi i32 [ %122, %120 ], [ %133, %130 ]
  %136 = getelementptr inbounds %struct.phy_device, ptr %67, i32 0, i32 16
  %137 = or i32 %135, 3
  store i32 %137, ptr %136, align 4
  tail call void @phy_advertise_supported(ptr noundef %67) #10
  %138 = tail call i32 @phy_device_register(ptr noundef %67) #10
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %162, label %140

140:                                              ; preds = %134
  tail call void @phy_device_free(ptr noundef %67) #10
  tail call void @of_node_put(ptr noundef %2) #10
  %141 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), align 4
  br label %142

142:                                              ; preds = %145, %140
  %143 = phi ptr [ %141, %140 ], [ %146, %145 ]
  %144 = icmp eq ptr %143, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %144, label %160, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %143, align 4
  %147 = getelementptr i8, ptr %143, i32 -36
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, %31
  br i1 %149, label %150, label %142

150:                                              ; preds = %145
  %151 = getelementptr i8, ptr %143, i32 -36
  %152 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %153, ptr %154, align 4
  store volatile ptr %146, ptr %153, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %143, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %152, align 4
  %155 = getelementptr i8, ptr %143, i32 8
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %150
  tail call void @gpiod_put(ptr noundef nonnull %156) #10
  br label %159

159:                                              ; preds = %158, %150
  tail call void @kfree(ptr noundef %151) #10
  tail call void @ida_free(ptr noundef nonnull @phy_fixed_ida, i32 noundef %31) #10
  br label %160

160:                                              ; preds = %159, %142
  %161 = inttoptr i32 %138 to ptr
  br label %162

162:                                              ; preds = %160, %134, %88, %71, %59, %33, %24, %7, %4
  %163 = phi ptr [ %34, %33 ], [ %61, %59 ], [ %161, %160 ], [ %67, %134 ], [ inttoptr (i32 -517 to ptr), %7 ], [ inttoptr (i32 -517 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %88 ], [ %20, %24 ], [ inttoptr (i32 -22 to ptr), %71 ]
  ret ptr %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fixed_phy_register_with_gpiod(i32 noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call fastcc ptr @__fixed_phy_register(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fixed_phy_unregister(ptr noundef %0) #2 {
  tail call void @phy_device_remove(ptr noundef %0) #10
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @of_node_put(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), align 4
  br label %7

7:                                                ; preds = %10, %1
  %8 = phi ptr [ %6, %1 ], [ %11, %10 ]
  %9 = icmp eq ptr %8, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %8, i32 -36
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %5
  br i1 %14, label %15, label %7

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %8, i32 -36
  %17 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %11, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %20 = getelementptr i8, ptr %8, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  tail call void @gpiod_put(ptr noundef nonnull %21) #10
  br label %24

24:                                               ; preds = %23, %15
  tail call void @kfree(ptr noundef %16) #10
  tail call void @ida_free(ptr noundef nonnull @phy_fixed_ida, i32 noundef %5) #10
  br label %25

25:                                               ; preds = %24, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fixed_mdio_bus_init() #4 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #10
  %2 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #10
  store ptr @.str.4, ptr %2, align 4
  %3 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false) #10
  %4 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #10
  store ptr %4, ptr @pdev, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = ptrtoint ptr %4 to i32
  br label %27

8:                                                ; preds = %0
  %9 = call ptr @mdiobus_alloc_size(i32 noundef 0) #10
  store ptr %9, ptr @platform_fmb, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 2
  store i64 13560708104481126, ptr %12, align 1
  %13 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 1
  store ptr @.str.6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 3
  store ptr @platform_fmb, ptr %14, align 8
  %15 = load ptr, ptr @pdev, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 9
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 4
  store ptr @fixed_mdio_read, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 5
  store ptr @fixed_mdio_write, ptr %19, align 8
  %20 = call i32 @__mdiobus_register(ptr noundef nonnull %9, ptr noundef null) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  %23 = load ptr, ptr @platform_fmb, align 4
  call void @mdiobus_free(ptr noundef %23) #10
  br label %24

24:                                               ; preds = %22, %8
  %25 = phi i32 [ %20, %22 ], [ -12, %8 ]
  %26 = load ptr, ptr @pdev, align 4
  call void @platform_device_unregister(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %24, %11, %6
  %28 = phi i32 [ %7, %6 ], [ %25, %24 ], [ 0, %11 ]
  ret i32 %28
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fixed_mdio_bus_exit() #4 section ".exit.text" {
  %1 = load ptr, ptr @platform_fmb, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #10
  %2 = load ptr, ptr @platform_fmb, align 4
  tail call void @mdiobus_free(ptr noundef %2) #10
  %3 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #10
  %4 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), align 4
  %5 = icmp eq ptr %4, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %0
  %7 = phi ptr [ %9, %6 ], [ %4, %0 ]
  %8 = getelementptr i8, ptr %7, i32 -36
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @kfree(ptr noundef %8) #10
  %13 = icmp eq ptr %9, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %0
  tail call void @ida_destroy(ptr noundef nonnull @phy_fixed_ida) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swphy_validate_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_phy_device(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_advertise_supported(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fixed_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.fixed_phy_status, align 4
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fixed_mdio_bus, ptr %6, i32 0, i32 1
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -36
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  %17 = getelementptr i8, ptr %10, i32 -8
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr i8, ptr %10, i32 -28
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %10, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %16
  %26 = getelementptr i8, ptr %10, i32 -32
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.phy_device, ptr %27, i32 0, i32 32
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 %23(ptr noundef %29, ptr noundef %21) #10
  %31 = load i8, ptr %17, align 4, !range !8
  br label %32

32:                                               ; preds = %25, %16
  %33 = phi i8 [ %31, %25 ], [ %18, %16 ]
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %10, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %37) #10
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %21, align 4
  br label %43

43:                                               ; preds = %39, %35, %32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef align 4 dereferenceable(20) %21, i32 20, i1 false)
  %44 = call i32 @swphy_read_reg(i32 noundef %2, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %45

45:                                               ; preds = %43, %8
  %46 = phi i32 [ %44, %43 ], [ 65535, %8 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fixed_mdio_write(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #8 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swphy_read_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
