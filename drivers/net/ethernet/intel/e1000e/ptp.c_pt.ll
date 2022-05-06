; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/ptp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [52 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [50 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.113 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.113 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.91, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.91 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.timespec64 = type { i64, i32 }

@e1000e_ptp_clock_info = internal unnamed_addr constant %struct.ptp_clock_info { ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @e1000e_phc_adjfreq, ptr null, ptr @e1000e_phc_adjtime, ptr null, ptr @e1000e_phc_gettimex, ptr null, ptr @e1000e_phc_settime, ptr @e1000e_phc_enable, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pm\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"registered PHC clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"removed PHC\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_ptp_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 100
  store ptr null, ptr %2, align 64
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 16384
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 101
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %8, ptr noundef nonnull align 4 dereferenceable(108) @e1000e_ptp_clock_info, i32 108, i1 false)
  %9 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 101, i32 1
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 49
  %13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %12)
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %29 [
    i32 10, label %16
    i32 11, label %16
    i32 12, label %16
    i32 13, label %16
    i32 14, label %16
    i32 15, label %16
    i32 16, label %16
    i32 17, label %16
    i32 3, label %25
    i32 4, label %25
  ]

16:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7
  %17 = icmp ult i32 %15, 11
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 46624
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %7, %7
  br label %26

26:                                               ; preds = %25, %18, %16
  %27 = phi i32 [ 599999999, %25 ], [ 23999999, %18 ], [ 23999999, %16 ]
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 101, i32 2
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %7
  %30 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 93
  store i32 -32, ptr %30, align 4
  %31 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 93, i32 0, i32 1
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 93, i32 0, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 93, i32 0, i32 2
  store ptr @e1000e_systim_overflow_work, ptr %33, align 4
  %34 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 93, i32 1
  tail call void @init_timer_key(ptr noundef %34, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %35 = load ptr, ptr @system_wq, align 4
  %36 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %35, ptr noundef %30, i32 noundef 1440000) #8
  %37 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %38 = load ptr, ptr %37, align 32
  %39 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %40 = tail call ptr @ptp_clock_register(ptr noundef %8, ptr noundef %39) #8
  store ptr %40, ptr %2, align 64
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  store ptr null, ptr %2, align 64
  %43 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.1) #9
  br label %48

44:                                               ; preds = %29
  %45 = icmp eq ptr %40, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %47, ptr noundef nonnull @.str.2) #9
  br label %48

48:                                               ; preds = %46, %44, %42, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000e_systim_overflow_work(ptr noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr i8, ptr %0, i32 100
  %4 = tail call i64 @timecounter_read(ptr noundef %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  %5 = load ptr, ptr @system_wq, align 4
  %6 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %0, i32 noundef 1440000) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_ptp_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 93
  %8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 100
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %10) #8
  store ptr null, ptr %9, align 64
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %15, ptr noundef nonnull @.str.3) #9
  br label %16

16:                                               ; preds = %12, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_phc_adjfreq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -10272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.ptp_clock_info, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, %1
  %8 = icmp slt i32 %1, -999999999
  %9 = or i1 %8, %7
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -11396
  %12 = call i32 @e1000e_get_base_timinca(ptr noundef %11, ptr noundef nonnull %3) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = icmp slt i32 %1, 0
  %16 = call i32 @llvm.abs.i32(i32 %1, i1 true)
  %17 = getelementptr i8, ptr %0, i32 -76
  %18 = call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #8
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, 16777215
  %21 = zext i32 %20 to i64
  %22 = zext i32 %16 to i64
  %23 = mul nuw nsw i64 %21, %22
  %24 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %23, i32 0) #10, !srcloc !11
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = extractvalue { i64, i32 } %24, 1
  %27 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %23, i64 %25, i32 %26) #10, !srcloc !12
  %28 = extractvalue { i64, i32 } %27, 0
  %29 = lshr i64 %28, 29
  %30 = trunc i64 %29 to i32
  %31 = sub i32 0, %30
  %32 = select i1 %15, i32 %31, i32 %30
  %33 = add i32 %32, %20
  %34 = and i32 %19, -16777216
  %35 = or i32 %33, %34
  store i32 %35, ptr %3, align 4
  call void @__ew32(ptr noundef %4, i32 noundef 46600, i32 noundef %35) #8
  %36 = getelementptr i8, ptr %0, i32 132
  store i32 %16, ptr %36, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #8
  br label %37

37:                                               ; preds = %14, %10, %2
  %38 = phi i32 [ 0, %14 ], [ -22, %2 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_phc_adjtime(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -76
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %1
  store i64 %7, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_phc_gettimex(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr i8, ptr %0, i32 -11396
  %6 = getelementptr i8, ptr %0, i32 -76
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = tail call i64 @e1000e_read_systim(ptr noundef %5, ptr noundef %2) #8
  %9 = getelementptr i8, ptr %0, i32 -44
  %10 = tail call i64 @timecounter_cyc2time(ptr noundef %9, i64 noundef %8) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %10) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_phc_settime(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp sgt i64 %3, 9223372035
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %3, -9223372035
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = mul nsw i64 %3, 1000000000
  %9 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add i64 %8, %11
  br label %13

13:                                               ; preds = %7, %5, %2
  %14 = phi i64 [ %12, %7 ], [ 9223372036854775807, %2 ], [ -9223372036854775808, %5 ]
  %15 = getelementptr i8, ptr %0, i32 -76
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %17 = getelementptr i8, ptr %0, i32 -44
  %18 = getelementptr i8, ptr %0, i32 -68
  tail call void @timecounter_init(ptr noundef %17, ptr noundef %18, i64 noundef %14) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_phc_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_base_timinca(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @e1000e_read_systim(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 1590492}
!9 = !{i64 2155576299}
!10 = !{!"auto-init"}
!11 = !{i64 936618, i64 936645, i64 936667, i64 936695}
!12 = !{i64 937026, i64 937053, i64 937086, i64 937107, i64 937134, i64 937160}
