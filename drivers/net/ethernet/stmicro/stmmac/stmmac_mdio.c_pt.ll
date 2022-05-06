; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.114, %struct.anon.115 }
%struct.anon.114 = type { i32, i32, i32 }
%struct.anon.115 = type { i32, i32, i32, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }

@.str = private unnamed_addr constant [11 x i8] c"snps,reset\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"snps,reset-delays-us\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"No xPCS found\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stmmac\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unsupported phy_addr (max=%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Cannot register the MDIO bus\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"No PHY found\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_mdio_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i32], align 4
  %3 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1580
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %4, i32 1576
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  %15 = load ptr, ptr %9, align 8
  %16 = tail call ptr @devm_gpiod_get_optional(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef 3) #7
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %9, align 8
  %20 = call i32 @device_property_read_u32_array(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 3) #7
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add i32 %21, 999
  %25 = udiv i32 %24, 1000
  call void @msleep(i32 noundef %25) #7
  br label %26

26:                                               ; preds = %23, %18
  call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 1) #7
  %27 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = add i32 %28, 999
  %32 = udiv i32 %31, 1000
  call void @msleep(i32 noundef %32) #7
  br label %33

33:                                               ; preds = %30, %26
  call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 0) #7
  %34 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = add i32 %35, 999
  %39 = udiv i32 %38, 1000
  call void @msleep(i32 noundef %39) #7
  br label %40

40:                                               ; preds = %37, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br label %43

41:                                               ; preds = %14
  %42 = ptrtoint ptr %16 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br label %53

43:                                               ; preds = %40, %1
  %44 = getelementptr i8, ptr %4, i32 12096
  %45 = load ptr, ptr %44, align 64
  %46 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %45, i32 0, i32 58
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  %50 = getelementptr i8, ptr %4, i32 1568
  %51 = load ptr, ptr %50, align 32
  %52 = getelementptr i8, ptr %51, i32 %8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #7, !srcloc !9
  br label %53

53:                                               ; preds = %49, %43, %41
  %54 = phi i32 [ %42, %41 ], [ 0, %49 ], [ 0, %43 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_xpcs_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %10 = tail call ptr @mdio_device_create(ptr noundef %0, i32 noundef %9) #7
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @xpcs_create(ptr noundef %10, i32 noundef %7) #7
  %14 = icmp eq ptr %13, null
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @mdio_device_free(ptr noundef %10) #7
  br label %22

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %3, i32 1580
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mac_device_info, ptr %20, i32 0, i32 7
  store ptr %13, ptr %21, align 4
  br label %25

22:                                               ; preds = %17, %8
  %23 = add nuw nsw i32 %9, 1
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %8

25:                                               ; preds = %22, %18
  %26 = getelementptr i8, ptr %3, i32 1580
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mac_device_info, ptr %27, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %3, i32 1576
  %33 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.2) #8
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i32 [ -19, %31 ], [ 0, %25 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdio_device_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xpcs_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_mdio_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 12096
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %118, label %11

11:                                               ; preds = %1
  %12 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %118, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %19, ptr noundef nonnull align 4 dereferenceable(128) %16, i32 128, i1 false)
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 1
  store ptr @.str.3, ptr %21, align 4
  %22 = load ptr, ptr %2, align 64
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 58
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 19
  store i32 3, ptr %27, align 4
  %28 = load ptr, ptr %2, align 64
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %28, %26 ], [ %22, %20 ]
  %31 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %30, i32 0, i32 64
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 4
  br i1 %33, label %42, label %35

35:                                               ; preds = %29
  store ptr @stmmac_xgmac2_mdio_read, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 5
  store ptr @stmmac_xgmac2_mdio_write, ptr %36, align 8
  %37 = load ptr, ptr %2, align 64
  %38 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef 3) #8
  br label %44

42:                                               ; preds = %29
  store ptr @stmmac_mdio_read, ptr %34, align 4
  %43 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 5
  store ptr @stmmac_mdio_write, ptr %43, align 8
  br label %44

44:                                               ; preds = %42, %41, %35
  %45 = phi i32 [ 4, %41 ], [ 4, %35 ], [ 32, %42 ]
  %46 = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %5, i32 0, i32 5
  %47 = load i8, ptr %46, align 4, !range !10
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 6
  store ptr @stmmac_mdio_reset, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 2
  %53 = load ptr, ptr %21, align 4
  %54 = load ptr, ptr %2, align 64
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %52, i32 noundef 61, ptr noundef nonnull @.str.5, ptr noundef %53, i32 noundef %55)
  %57 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 3
  store ptr %0, ptr %57, align 8
  %58 = load i32, ptr %5, align 4
  %59 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 13
  store i32 %58, ptr %59, align 8
  %60 = getelementptr i8, ptr %0, i32 1576
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 9
  store ptr %61, ptr %62, align 4
  %63 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %12, ptr noundef %7) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #8
  br label %116

66:                                               ; preds = %51
  %67 = load ptr, ptr %2, align 64
  %68 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %67, i32 0, i32 64
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = tail call i32 @stmmac_xgmac2_mdio_read(ptr noundef nonnull %12, i32 noundef 0, i32 noundef 1073741824)
  %73 = load ptr, ptr %2, align 64
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi ptr [ %73, %71 ], [ %67, %66 ]
  %76 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %75, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = icmp ne ptr %77, null
  %79 = icmp ne ptr %7, null
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %114, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %5, i32 0, i32 4
  br label %83

83:                                               ; preds = %109, %81
  %84 = phi i1 [ false, %109 ], [ true, %81 ]
  %85 = phi i32 [ %110, %109 ], [ 0, %81 ]
  br label %86

86:                                               ; preds = %106, %83
  %87 = phi i32 [ %107, %106 ], [ %85, %83 ]
  %88 = tail call ptr @mdiobus_get_phy(ptr noundef nonnull %12, i32 noundef %87) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %106, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %15, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, ptr %82, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr %struct.mii_bus, ptr %12, i32 0, i32 15, i32 %87
  store i32 %94, ptr %97, align 4
  %98 = load i32, ptr %82, align 4
  %99 = getelementptr inbounds %struct.phy_device, ptr %88, i32 0, i32 21
  store i32 %98, ptr %99, align 4
  br label %100

100:                                              ; preds = %96, %93, %90
  %101 = load ptr, ptr %2, align 64
  %102 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  store i32 %87, ptr %102, align 4
  br label %109

106:                                              ; preds = %86
  %107 = add nuw nsw i32 %87, 1
  %108 = icmp eq i32 %107, %45
  br i1 %108, label %112, label %86

109:                                              ; preds = %105, %100
  tail call void @phy_attached_info(ptr noundef nonnull %88) #7
  %110 = add nuw nsw i32 %87, 1
  %111 = icmp eq i32 %110, %45
  br i1 %111, label %114, label %83

112:                                              ; preds = %106
  br i1 %84, label %113, label %114

113:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.7) #8
  tail call void @mdiobus_unregister(ptr noundef nonnull %12) #7
  br label %116

114:                                              ; preds = %112, %109, %74
  %115 = getelementptr i8, ptr %0, i32 11020
  store ptr %12, ptr %115, align 4
  br label %118

116:                                              ; preds = %113, %65
  %117 = phi i32 [ %63, %65 ], [ -19, %113 ]
  tail call void @mdiobus_free(ptr noundef nonnull %12) #7
  br label %118

118:                                              ; preds = %116, %114, %11, %1
  %119 = phi i32 [ %117, %116 ], [ 0, %114 ], [ 0, %1 ], [ -12, %11 ]
  ret i32 %119
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_xgmac2_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1580
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mac_device_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mac_device_info, ptr %7, i32 0, i32 8, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %5, i32 1576
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #7, !srcloc !12
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #7, !srcloc !13
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %156, label %22

22:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %156

23:                                               ; preds = %3
  %24 = tail call i64 @ktime_get() #7
  %25 = add i64 %24, 10000000
  %26 = getelementptr i8, ptr %5, i32 1568
  %27 = load ptr, ptr %26, align 32
  %28 = getelementptr i8, ptr %27, i32 %11
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %30 = and i32 %29, 4194304
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %39, %23
  %33 = tail call i64 @ktime_get() #7
  %34 = icmp sgt i64 %33, %25
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load ptr, ptr %26, align 32
  %37 = getelementptr i8, ptr %36, i32 %11
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %45

39:                                               ; preds = %32
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %40 = load ptr, ptr %26, align 32
  %41 = getelementptr i8, ptr %40, i32 %11
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %43 = and i32 %42, 4194304
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %32

45:                                               ; preds = %39, %35, %23
  %46 = phi i32 [ %38, %35 ], [ %29, %23 ], [ %42, %39 ]
  %47 = and i32 %46, 4194304
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %152

49:                                               ; preds = %45
  %50 = and i32 %2, 1073741824
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %26, align 32
  %54 = getelementptr i8, ptr %53, i32 544
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %56 = shl nuw i32 1, %1
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %59 = load ptr, ptr %26, align 32
  %60 = getelementptr i8, ptr %59, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #7, !srcloc !9
  %61 = shl i32 %1, 16
  %62 = and i32 %2, 65535
  %63 = or i32 %62, %61
  %64 = shl i32 %2, 5
  %65 = and i32 %64, -2097152
  %66 = or i32 %63, %65
  br label %81

67:                                               ; preds = %49
  %68 = icmp sgt i32 %1, 3
  br i1 %68, label %152, label %69

69:                                               ; preds = %67
  %70 = load ptr, ptr %26, align 32
  %71 = getelementptr i8, ptr %70, i32 544
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %73 = and i32 %72, -16
  %74 = shl nuw nsw i32 1, %1
  %75 = or i32 %73, %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %76 = load ptr, ptr %26, align 32
  %77 = getelementptr i8, ptr %76, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #7, !srcloc !9
  %78 = shl i32 %1, 16
  %79 = and i32 %2, 31
  %80 = or i32 %79, %78
  br label %81

81:                                               ; preds = %69, %52
  %82 = phi i32 [ %66, %52 ], [ %80, %69 ]
  %83 = phi i32 [ 4390912, %52 ], [ 4653056, %69 ]
  %84 = getelementptr i8, ptr %5, i32 12648
  %85 = load i32, ptr %84, align 8
  %86 = load ptr, ptr %6, align 4
  %87 = getelementptr inbounds %struct.mac_device_info, ptr %86, i32 0, i32 8, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %85, %88
  %90 = getelementptr inbounds %struct.mac_device_info, ptr %86, i32 0, i32 8, i32 7
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %89, %91
  %93 = or i32 %83, %92
  %94 = tail call i64 @ktime_get() #7
  %95 = add i64 %94, 10000000
  %96 = load ptr, ptr %26, align 32
  %97 = getelementptr i8, ptr %96, i32 %11
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %99 = and i32 %98, 4194304
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %108, %81
  %102 = tail call i64 @ktime_get() #7
  %103 = icmp sgt i64 %102, %95
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load ptr, ptr %26, align 32
  %106 = getelementptr i8, ptr %105, i32 %11
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  br label %114

108:                                              ; preds = %101
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %109 = load ptr, ptr %26, align 32
  %110 = getelementptr i8, ptr %109, i32 %11
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %112 = and i32 %111, 4194304
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %101

114:                                              ; preds = %108, %104, %81
  %115 = phi i32 [ %107, %104 ], [ %98, %81 ], [ %111, %108 ]
  %116 = and i32 %115, 4194304
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %114
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %119 = load ptr, ptr %26, align 32
  %120 = getelementptr i8, ptr %119, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %82) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %121 = load ptr, ptr %26, align 32
  %122 = getelementptr i8, ptr %121, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %93) #7, !srcloc !9
  %123 = tail call i64 @ktime_get() #7
  %124 = add i64 %123, 10000000
  %125 = load ptr, ptr %26, align 32
  %126 = getelementptr i8, ptr %125, i32 %11
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %128 = and i32 %127, 4194304
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %143, label %130

130:                                              ; preds = %137, %118
  %131 = tail call i64 @ktime_get() #7
  %132 = icmp sgt i64 %131, %124
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load ptr, ptr %26, align 32
  %135 = getelementptr i8, ptr %134, i32 %11
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  br label %143

137:                                              ; preds = %130
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %138 = load ptr, ptr %26, align 32
  %139 = getelementptr i8, ptr %138, i32 %11
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %141 = and i32 %140, 4194304
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %130

143:                                              ; preds = %137, %133, %118
  %144 = phi i32 [ %136, %133 ], [ %127, %118 ], [ %140, %137 ]
  %145 = and i32 %144, 4194304
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load ptr, ptr %26, align 32
  %149 = getelementptr i8, ptr %148, i32 %11
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %151 = and i32 %150, 65535
  br label %152

152:                                              ; preds = %147, %143, %114, %67, %45
  %153 = phi i32 [ %151, %147 ], [ -16, %45 ], [ -16, %114 ], [ -16, %143 ], [ -19, %67 ]
  %154 = load ptr, ptr %12, align 8
  %155 = tail call i32 @__pm_runtime_idle(ptr noundef %154, i32 noundef 5) #7
  br label %156

156:                                              ; preds = %152, %22, %16
  %157 = phi i32 [ %153, %152 ], [ %14, %16 ], [ %14, %22 ]
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_xgmac2_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1580
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mac_device_info, ptr %8, i32 0, i32 8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 1576
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #7, !srcloc !12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 0, i32 -1, ptr elementtype(i32) %19) #7, !srcloc !13
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %154, label %23

23:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %154

24:                                               ; preds = %4
  %25 = tail call i64 @ktime_get() #7
  %26 = add i64 %25, 10000000
  %27 = getelementptr i8, ptr %6, i32 1568
  %28 = load ptr, ptr %27, align 32
  %29 = getelementptr i8, ptr %28, i32 %12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %31 = and i32 %30, 4194304
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %40, %24
  %34 = tail call i64 @ktime_get() #7
  %35 = icmp sgt i64 %34, %26
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load ptr, ptr %27, align 32
  %38 = getelementptr i8, ptr %37, i32 %12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  br label %46

40:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %41 = load ptr, ptr %27, align 32
  %42 = getelementptr i8, ptr %41, i32 %12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %44 = and i32 %43, 4194304
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %33

46:                                               ; preds = %40, %36, %24
  %47 = phi i32 [ %39, %36 ], [ %30, %24 ], [ %43, %40 ]
  %48 = and i32 %47, 4194304
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %150

50:                                               ; preds = %46
  %51 = and i32 %2, 1073741824
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %27, align 32
  %55 = getelementptr i8, ptr %54, i32 544
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %57 = shl nuw i32 1, %1
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %60 = load ptr, ptr %27, align 32
  %61 = getelementptr i8, ptr %60, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #7, !srcloc !9
  %62 = shl i32 %1, 16
  %63 = and i32 %2, 65535
  %64 = or i32 %63, %62
  %65 = shl i32 %2, 5
  %66 = and i32 %65, -2097152
  %67 = or i32 %64, %66
  br label %82

68:                                               ; preds = %50
  %69 = icmp sgt i32 %1, 3
  br i1 %69, label %150, label %70

70:                                               ; preds = %68
  %71 = load ptr, ptr %27, align 32
  %72 = getelementptr i8, ptr %71, i32 544
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %74 = and i32 %73, -16
  %75 = shl nuw nsw i32 1, %1
  %76 = or i32 %74, %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %77 = load ptr, ptr %27, align 32
  %78 = getelementptr i8, ptr %77, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #7, !srcloc !9
  %79 = shl i32 %1, 16
  %80 = and i32 %2, 31
  %81 = or i32 %80, %79
  br label %82

82:                                               ; preds = %70, %53
  %83 = phi i32 [ %67, %53 ], [ %81, %70 ]
  %84 = phi i32 [ 4194304, %53 ], [ 4456448, %70 ]
  %85 = getelementptr i8, ptr %6, i32 12648
  %86 = load i32, ptr %85, align 8
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr inbounds %struct.mac_device_info, ptr %87, i32 0, i32 8, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = shl i32 %86, %89
  %91 = getelementptr inbounds %struct.mac_device_info, ptr %87, i32 0, i32 8, i32 7
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %90, %92
  %94 = zext i16 %3 to i32
  %95 = or i32 %84, %94
  %96 = or i32 %95, %93
  %97 = or i32 %96, 65536
  %98 = tail call i64 @ktime_get() #7
  %99 = add i64 %98, 10000000
  %100 = load ptr, ptr %27, align 32
  %101 = getelementptr i8, ptr %100, i32 %12
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %103 = and i32 %102, 4194304
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %112, %82
  %106 = tail call i64 @ktime_get() #7
  %107 = icmp sgt i64 %106, %99
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load ptr, ptr %27, align 32
  %110 = getelementptr i8, ptr %109, i32 %12
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  br label %118

112:                                              ; preds = %105
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %113 = load ptr, ptr %27, align 32
  %114 = getelementptr i8, ptr %113, i32 %12
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %116 = and i32 %115, 4194304
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %105

118:                                              ; preds = %112, %108, %82
  %119 = phi i32 [ %111, %108 ], [ %102, %82 ], [ %115, %112 ]
  %120 = and i32 %119, 4194304
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %123 = load ptr, ptr %27, align 32
  %124 = getelementptr i8, ptr %123, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %83) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %125 = load ptr, ptr %27, align 32
  %126 = getelementptr i8, ptr %125, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %97) #7, !srcloc !9
  %127 = tail call i64 @ktime_get() #7
  %128 = add i64 %127, 10000000
  %129 = load ptr, ptr %27, align 32
  %130 = getelementptr i8, ptr %129, i32 %12
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  %132 = and i32 %131, 4194304
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %137, %122
  %135 = tail call i64 @ktime_get() #7
  %136 = icmp sgt i64 %135, %128
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %138 = load ptr, ptr %27, align 32
  %139 = getelementptr i8, ptr %138, i32 %12
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  %141 = and i32 %140, 4194304
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %149, label %134

143:                                              ; preds = %134
  %144 = load ptr, ptr %27, align 32
  %145 = getelementptr i8, ptr %144, i32 %12
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !36
  %147 = and i32 %146, 4194304
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143, %137, %122
  br label %150

150:                                              ; preds = %149, %143, %118, %68, %46
  %151 = phi i32 [ -16, %46 ], [ -16, %118 ], [ -19, %68 ], [ 0, %149 ], [ -110, %143 ]
  %152 = load ptr, ptr %13, align 8
  %153 = tail call i32 @__pm_runtime_idle(ptr noundef %152, i32 noundef 5) #7
  br label %154

154:                                              ; preds = %150, %23, %17
  %155 = phi i32 [ %151, %150 ], [ %15, %17 ], [ %15, %23 ]
  ret i32 %155
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1580
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mac_device_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mac_device_info, ptr %7, i32 0, i32 8, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %5, i32 1576
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #7, !srcloc !12
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #7, !srcloc !13
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %133, label %22

22:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %133

23:                                               ; preds = %3
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.mac_device_info, ptr %24, i32 0, i32 8, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %1, %26
  %28 = getelementptr inbounds %struct.mac_device_info, ptr %24, i32 0, i32 8, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %27, %29
  %31 = getelementptr inbounds %struct.mac_device_info, ptr %24, i32 0, i32 8, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %2, %32
  %34 = getelementptr inbounds %struct.mac_device_info, ptr %24, i32 0, i32 8, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %33, %35
  %37 = or i32 %36, %30
  %38 = getelementptr i8, ptr %5, i32 12648
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.mac_device_info, ptr %24, i32 0, i32 8, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %39, %41
  %43 = getelementptr inbounds %struct.mac_device_info, ptr %24, i32 0, i32 8, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %42, %44
  %46 = or i32 %37, %45
  %47 = or i32 %46, 1
  %48 = getelementptr i8, ptr %5, i32 12096
  %49 = load ptr, ptr %48, align 64
  %50 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %49, i32 0, i32 58
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %23
  %54 = or i32 %46, 13
  %55 = and i32 %2, 1073741824
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = or i32 %46, 15
  %59 = xor i32 %35, -1
  %60 = and i32 %58, %59
  %61 = ashr i32 %2, 16
  %62 = shl i32 %61, %32
  %63 = and i32 %62, %35
  %64 = or i32 %60, %63
  %65 = shl i32 %2, 16
  %66 = or i32 %14, %65
  br label %67

67:                                               ; preds = %57, %53, %23
  %68 = phi i32 [ %66, %57 ], [ %14, %53 ], [ %14, %23 ]
  %69 = phi i32 [ %64, %57 ], [ %54, %53 ], [ %47, %23 ]
  %70 = tail call i64 @ktime_get() #7
  %71 = add i64 %70, 10000000
  %72 = getelementptr i8, ptr %5, i32 1568
  %73 = load ptr, ptr %72, align 32
  %74 = getelementptr i8, ptr %73, i32 %9
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %85, %67
  %79 = tail call i64 @ktime_get() #7
  %80 = icmp sgt i64 %79, %71
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load ptr, ptr %72, align 32
  %83 = getelementptr i8, ptr %82, i32 %9
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !38
  br label %91

85:                                               ; preds = %78
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %86 = load ptr, ptr %72, align 32
  %87 = getelementptr i8, ptr %86, i32 %9
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %78

91:                                               ; preds = %85, %81, %67
  %92 = phi i32 [ %84, %81 ], [ %75, %67 ], [ %88, %85 ]
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %96 = load ptr, ptr %72, align 32
  %97 = getelementptr i8, ptr %96, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %68) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %98 = load ptr, ptr %72, align 32
  %99 = getelementptr i8, ptr %98, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %69) #7, !srcloc !9
  %100 = tail call i64 @ktime_get() #7
  %101 = add i64 %100, 10000000
  %102 = load ptr, ptr %72, align 32
  %103 = getelementptr i8, ptr %102, i32 %9
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %114, %95
  %108 = tail call i64 @ktime_get() #7
  %109 = icmp sgt i64 %108, %101
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load ptr, ptr %72, align 32
  %112 = getelementptr i8, ptr %111, i32 %9
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !42
  br label %120

114:                                              ; preds = %107
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %115 = load ptr, ptr %72, align 32
  %116 = getelementptr i8, ptr %115, i32 %9
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %107

120:                                              ; preds = %114, %110, %95
  %121 = phi i32 [ %113, %110 ], [ %104, %95 ], [ %117, %114 ]
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load ptr, ptr %72, align 32
  %126 = getelementptr i8, ptr %125, i32 %11
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !43
  %128 = and i32 %127, 65535
  br label %129

129:                                              ; preds = %124, %120, %91
  %130 = phi i32 [ %128, %124 ], [ -16, %91 ], [ -16, %120 ]
  %131 = load ptr, ptr %12, align 8
  %132 = tail call i32 @__pm_runtime_idle(ptr noundef %131, i32 noundef 5) #7
  br label %133

133:                                              ; preds = %129, %22, %16
  %134 = phi i32 [ %130, %129 ], [ %14, %16 ], [ %14, %22 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1580
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mac_device_info, ptr %8, i32 0, i32 8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = zext i16 %3 to i32
  %14 = getelementptr i8, ptr %6, i32 1576
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load ptr, ptr %14, align 8
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #7, !srcloc !12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 -1, ptr elementtype(i32) %20) #7, !srcloc !13
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %130, label %24

24:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %130

25:                                               ; preds = %4
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.mac_device_info, ptr %26, i32 0, i32 8, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %1, %28
  %30 = getelementptr inbounds %struct.mac_device_info, ptr %26, i32 0, i32 8, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %29, %31
  %33 = getelementptr inbounds %struct.mac_device_info, ptr %26, i32 0, i32 8, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %2, %34
  %36 = getelementptr inbounds %struct.mac_device_info, ptr %26, i32 0, i32 8, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %35, %37
  %39 = or i32 %38, %32
  %40 = getelementptr i8, ptr %6, i32 12648
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.mac_device_info, ptr %26, i32 0, i32 8, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %41, %43
  %45 = getelementptr inbounds %struct.mac_device_info, ptr %26, i32 0, i32 8, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %44, %46
  %48 = or i32 %39, %47
  %49 = getelementptr i8, ptr %6, i32 12096
  %50 = load ptr, ptr %49, align 64
  %51 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %50, i32 0, i32 58
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %25
  %55 = or i32 %48, 5
  %56 = and i32 %2, 1073741824
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = or i32 %48, 7
  %60 = xor i32 %37, -1
  %61 = and i32 %59, %60
  %62 = ashr i32 %2, 16
  %63 = shl i32 %62, %34
  %64 = and i32 %63, %37
  %65 = or i32 %61, %64
  %66 = shl i32 %2, 16
  %67 = or i32 %66, %13
  br label %70

68:                                               ; preds = %25
  %69 = or i32 %48, 3
  br label %70

70:                                               ; preds = %68, %58, %54
  %71 = phi i32 [ %65, %58 ], [ %55, %54 ], [ %69, %68 ]
  %72 = phi i32 [ %67, %58 ], [ %13, %54 ], [ %13, %68 ]
  %73 = tail call i64 @ktime_get() #7
  %74 = add i64 %73, 10000000
  %75 = getelementptr i8, ptr %6, i32 1568
  %76 = load ptr, ptr %75, align 32
  %77 = getelementptr i8, ptr %76, i32 %10
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !44
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %88, %70
  %82 = tail call i64 @ktime_get() #7
  %83 = icmp sgt i64 %82, %74
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load ptr, ptr %75, align 32
  %86 = getelementptr i8, ptr %85, i32 %10
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !45
  br label %94

88:                                               ; preds = %81
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %89 = load ptr, ptr %75, align 32
  %90 = getelementptr i8, ptr %89, i32 %10
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !44
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %81

94:                                               ; preds = %88, %84, %70
  %95 = phi i32 [ %87, %84 ], [ %78, %70 ], [ %91, %88 ]
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %99 = load ptr, ptr %75, align 32
  %100 = getelementptr i8, ptr %99, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %72) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %101 = load ptr, ptr %75, align 32
  %102 = getelementptr i8, ptr %101, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %71) #7, !srcloc !9
  %103 = tail call i64 @ktime_get() #7
  %104 = add i64 %103, 10000000
  %105 = load ptr, ptr %75, align 32
  %106 = getelementptr i8, ptr %105, i32 %10
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !48
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %113, %98
  %111 = tail call i64 @ktime_get() #7
  %112 = icmp sgt i64 %111, %104
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %114 = load ptr, ptr %75, align 32
  %115 = getelementptr i8, ptr %114, i32 %10
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !48
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %110

119:                                              ; preds = %110
  %120 = load ptr, ptr %75, align 32
  %121 = getelementptr i8, ptr %120, i32 %10
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !49
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119, %113, %98
  br label %126

126:                                              ; preds = %125, %119, %94
  %127 = phi i32 [ -16, %94 ], [ 0, %125 ], [ -110, %119 ]
  %128 = load ptr, ptr %14, align 8
  %129 = tail call i32 @__pm_runtime_idle(ptr noundef %128, i32 noundef 5) #7
  br label %130

130:                                              ; preds = %126, %24, %18
  %131 = phi i32 [ %127, %126 ], [ %16, %18 ], [ %16, %24 ]
  ret i32 %131
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_mdio_unregister(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 11020
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 1580
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mac_device_info, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 4
  tail call void @mdio_device_free(ptr noundef %12) #7
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.mac_device_info, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @xpcs_destroy(ptr noundef %15) #7
  %16 = load ptr, ptr %2, align 4
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi ptr [ %16, %11 ], [ %3, %5 ]
  tail call void @mdiobus_unregister(ptr noundef %18) #7
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 3
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %2, align 4
  tail call void @mdiobus_free(ptr noundef %21) #7
  store ptr null, ptr %2, align 4
  br label %22

22:                                               ; preds = %17, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xpcs_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2156176811}
!9 = !{i64 400821}
!10 = !{i8 0, i8 2}
!11 = !{i64 2148136973}
!12 = !{i64 636080, i64 2148126051, i64 2148126077, i64 2148126124, i64 2148126146, i64 2148126174, i64 2148126194}
!13 = !{i64 622649, i64 622674, i64 622696, i64 622712, i64 622724, i64 622744, i64 622768, i64 622784, i64 622796}
!14 = !{i64 2148137099}
!15 = !{i64 401239}
!16 = !{i64 2156151625}
!17 = !{i64 2156151977}
!18 = !{i64 2156148043}
!19 = !{i64 2156148328}
!20 = !{i64 2156148848}
!21 = !{i64 2156149829}
!22 = !{i64 2156153686}
!23 = !{i64 2156154038}
!24 = !{i64 2156154240}
!25 = !{i64 2156154573}
!26 = !{i64 2156156284}
!27 = !{i64 2156156636}
!28 = !{i64 2156156995}
!29 = !{i64 2156159319}
!30 = !{i64 2156159671}
!31 = !{i64 2156161380}
!32 = !{i64 2156161732}
!33 = !{i64 2156161934}
!34 = !{i64 2156162267}
!35 = !{i64 2156163978}
!36 = !{i64 2156164330}
!37 = !{i64 2156166585}
!38 = !{i64 2156166946}
!39 = !{i64 2156167145}
!40 = !{i64 2156167478}
!41 = !{i64 2156169052}
!42 = !{i64 2156169413}
!43 = !{i64 2156169772}
!44 = !{i64 2156172717}
!45 = !{i64 2156173078}
!46 = !{i64 2156173277}
!47 = !{i64 2156173610}
!48 = !{i64 2156175184}
!49 = !{i64 2156175545}
