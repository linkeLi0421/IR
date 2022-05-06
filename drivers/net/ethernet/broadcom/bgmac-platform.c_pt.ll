; ModuleID = '/llk/IR/drivers/net/ethernet/broadcom/bgmac-platform.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bgmac-platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bgmac = type { %union.anon.113, ptr, ptr, i32, ptr, %struct.napi_struct, ptr, [4 x %struct.bgmac_dma_ring], [1 x %struct.bgmac_dma_ring], i8, [43 x i32], [31 x i32], i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bgmac_dma_ring = type { i32, i32, ptr, i32, i32, i16, i8, [512 x %struct.bgmac_slot_info] }
%struct.bgmac_slot_info = type { %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }

@__initcall__kmod_bgmac_platform__332_302_bgmac_enet_driver_init6 = internal global ptr @bgmac_enet_driver_init, section ".initcall6.init", align 4
@bgmac_enet_driver = internal global %struct.platform_driver { ptr @bgmac_probe, ptr @bgmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bgmac_of_enet_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bgmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bgmac_enet_driver_exit = internal global ptr @bgmac_enet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file333 = internal constant [65 x i8] c"bgmac_platform.file=drivers/net/ethernet/broadcom/bgmac-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [27 x i8] c"bgmac_platform.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"bgmac-enet\00", align 1
@bgmac_of_enet_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,amac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-amac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-amac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@bgmac_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bgmac_suspend, ptr @bgmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"MAC address not present in device tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"amac_base\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"idm_base\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nicpm_base\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"drivers/net/ethernet/broadcom/bgmac-platform.c\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"PHY connection failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Unsupported speed. Defaulting to 1000Mb\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_license334, ptr @__exitcall_bgmac_enet_driver_exit, ptr @__initcall__kmod_bgmac_platform__332_302_bgmac_enet_driver_init6, ptr @bgmac_enet_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bgmac_enet_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bgmac_enet_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bgmac_enet_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bgmac_enet_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @bgmac_alloc(ptr noundef %3) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %71, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 1085451
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 1
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 2
  store ptr %3, ptr %14, align 8
  %15 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @of_get_ethdev_address(ptr noundef %5, ptr noundef %16) #6
  switch i32 %17, label %18 [
    i32 -517, label %71
    i32 0, label %19
  ]

18:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %19

19:                                               ; preds = %18, %8
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %21 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 12
  store i32 %20, ptr %21, align 8
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  store ptr %24, ptr %6, align 8
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = ptrtoint ptr %24 to i32
  br label %71

28:                                               ; preds = %23
  %29 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %29) #6
  %33 = getelementptr inbounds %struct.anon.114, ptr %6, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  br label %71

37:                                               ; preds = %31
  %38 = load i32, ptr %10, align 4
  %39 = and i32 %38, -1048577
  store i32 %39, ptr %10, align 4
  br label %40

40:                                               ; preds = %37, %28
  %41 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.4) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %41) #6
  %45 = getelementptr inbounds %struct.anon.114, ptr %6, i32 0, i32 2
  store ptr %44, ptr %45, align 8
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  br label %71

49:                                               ; preds = %43, %40
  %50 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 19
  store ptr @platform_bgmac_read, ptr %50, align 4
  %51 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 20
  store ptr @platform_bgmac_write, ptr %51, align 8
  %52 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 21
  store ptr @platform_bgmac_idm_read, ptr %52, align 4
  %53 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 22
  store ptr @platform_bgmac_idm_write, ptr %53, align 8
  %54 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 23
  store ptr @platform_bgmac_clk_enabled, ptr %54, align 4
  %55 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 24
  store ptr @platform_bgmac_clk_enable, ptr %55, align 8
  %56 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 25
  store ptr @platform_bgmac_cco_ctl_maskset, ptr %56, align 4
  %57 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 26
  store ptr @platform_bgmac_get_bus_clock, ptr %57, align 8
  %58 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 27
  store ptr @platform_bgmac_cmn_maskset32, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %59 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %60 = icmp ne i32 %59, 0
  %61 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %62 = icmp eq ptr %61, null
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i32, ptr %10, align 4
  %66 = or i32 %65, 16384
  store i32 %66, ptr %10, align 4
  br label %67

67:                                               ; preds = %64, %49
  %68 = phi ptr [ @bgmac_phy_connect_direct, %64 ], [ @platform_phy_connect, %49 ]
  %69 = getelementptr inbounds %struct.bgmac, ptr %6, i32 0, i32 28
  store ptr %68, ptr %69, align 8
  %70 = call i32 @bgmac_enet_probe(ptr noundef nonnull %6) #6
  br label %71

71:                                               ; preds = %67, %47, %35, %26, %19, %8, %1
  %72 = phi i32 [ %27, %26 ], [ %36, %35 ], [ %48, %47 ], [ %70, %67 ], [ -12, %1 ], [ %17, %8 ], [ %20, %19 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @bgmac_enet_remove(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bgmac_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_bgmac_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = zext i16 %1 to i32
  %5 = getelementptr i8, ptr %3, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_bgmac_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr %0, align 8
  %5 = zext i16 %1 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_bgmac_idm_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.anon.114, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = zext i16 %1 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_bgmac_idm_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr inbounds %struct.anon.114, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = zext i16 %1 to i32
  %7 = getelementptr i8, ptr %5, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %2) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @platform_bgmac_clk_enabled(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.anon.114, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i16 noundef zeroext 1032) #6
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = tail call i32 %12(ptr noundef %0, i16 noundef zeroext 2048) #6
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %11, %5, %1
  %17 = phi i1 [ true, %1 ], [ false, %5 ], [ %15, %11 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_bgmac_clk_enable(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.anon.114, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, i16 noundef zeroext 2048) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 22
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef %0, i16 noundef zeroext 2048, i32 noundef 0) #6
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i32 %14(ptr noundef %0, i16 noundef zeroext 2048) #6
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  br label %17

17:                                               ; preds = %11, %6
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 %18(ptr noundef %0, i16 noundef zeroext 1032) #6
  %20 = and i32 %1, 63614
  %21 = or i32 %20, %19
  %22 = or i32 %21, 1
  %23 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 22
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef %0, i16 noundef zeroext 1032, i32 noundef %22) #6
  %25 = load ptr, ptr %7, align 4
  %26 = tail call i32 %25(ptr noundef %0, i16 noundef zeroext 1032) #6
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #6
  br label %28

28:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_bgmac_cco_ctl_maskset(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 100, i32 noundef 9, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_bgmac_get_bus_clock(ptr nocapture noundef readnone %0) #2 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 106, i32 noundef 9, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_bgmac_cmn_maskset32(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #2 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 115, i32 noundef 9, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_phy_connect(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.anon.114, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %4, ptr @bgmac_adjust_link, ptr @bgmac_nicpm_speed_set
  %12 = tail call ptr @of_phy_get_and_connect(ptr noundef %6, ptr noundef %10, ptr noundef nonnull %11) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.bgmac, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.7) #7
  br label %17

17:                                               ; preds = %14, %1
  %18 = phi i32 [ -19, %14 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_phy_connect_direct(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_enet_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgmac_nicpm_speed_set(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1946157056) #6, !srcloc !12
  %8 = getelementptr i8, ptr %0, i32 1432
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 120
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  switch i32 %13, label %14 [
    i32 1000, label %17
    i32 100, label %15
    i32 10, label %16
  ]

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #7
  br label %17

15:                                               ; preds = %5
  br label %17

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %16, %15, %14, %5
  %18 = phi i32 [ 831971328, %16 ], [ 831972352, %15 ], [ 831973376, %5 ], [ 831973376, %14 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !12
  %21 = load ptr, ptr %8, align 8
  tail call void @bgmac_adjust_link(ptr noundef %21) #6
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bgmac_adjust_link(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bgmac_enet_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @bgmac_enet_suspend(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgmac_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @bgmac_enet_resume(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_enet_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_enet_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 3837051}
!10 = !{i64 2155864105}
!11 = !{i64 2155864300}
!12 = !{i64 3836633}
!13 = !{i64 2155864811}
!14 = !{i64 2155865010}
!15 = !{i64 2155868350}
!16 = !{i64 2155868796}
