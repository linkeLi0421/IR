; ModuleID = '/llk/IR/drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.bcmgenet_priv = type { ptr, i32, ptr, ptr, ptr, i32, [17 x %struct.bcmgenet_tx_ring], ptr, ptr, i32, i32, [16 x %struct.bcmgenet_rxnfc_rule], %struct.list_head, [17 x %struct.bcmgenet_rx_ring], ptr, i8, %struct.wait_queue_head, i8, ptr, ptr, ptr, i16, ptr, i8, i32, i32, i32, i8, %struct.work_struct, i32, i32, i32, i8, %struct.spinlock, i32, i8, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x i8], i8, %struct.bcmgenet_mib_counters, %struct.ethtool_eee }
%struct.bcmgenet_tx_ring = type { %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bcmgenet_rxnfc_rule = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i32 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.bcmgenet_rx_ring = type { %struct.napi_struct, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.bcmgenet_net_dim, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_net_dim = type { i16, i16, i32, i32, %struct.dim }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.bcmgenet_mib_counters = type { %struct.bcmgenet_rx_counters, %struct.bcmgenet_tx_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_rx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_pkt_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_tx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bcmgenet_hw_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"unsupported mode: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"polling wol mode timeout\0A\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @bcmgenet_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 16352
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  br i1 %8, label %10, label %12

10:                                               ; preds = %2
  store i32 0, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %11, align 4
  br label %21

12:                                               ; preds = %2
  store i32 224, ptr %9, align 4
  %13 = getelementptr i8, ptr %0, i32 16364
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %16, i8 0, i32 6, i1 false)
  %17 = and i32 %14, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %0, i32 16368
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %16, ptr noundef align 8 dereferenceable(6) %20, i32 6, i1 false)
  br label %21

21:                                               ; preds = %19, %12, %10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_set_wol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr i8, ptr %0, i32 16352
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -225
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = and i32 %12, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %0, i32 16368
  %20 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %19, ptr noundef align 4 dereferenceable(6) %20, i32 6, i1 false)
  %21 = load i32, ptr %11, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %21, %18 ], [ %12, %15 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext true) #7
  %27 = getelementptr i8, ptr %0, i32 16324
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %0, i32 16320
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 @irq_set_irq_wake(i32 noundef %32, i32 noundef 1) #7
  br label %34

34:                                               ; preds = %30, %25
  store i8 0, ptr %27, align 4
  br label %45

35:                                               ; preds = %22
  %36 = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext false) #7
  %37 = getelementptr i8, ptr %0, i32 16324
  %38 = load i8, ptr %37, align 4, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %0, i32 16320
  %42 = load i32, ptr %41, align 8
  %43 = tail call i32 @irq_set_irq_wake(i32 noundef %42, i32 noundef 0) #7
  br label %44

44:                                               ; preds = %40, %35
  store i8 1, ptr %37, align 4
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, ptr %11, align 4
  %47 = getelementptr i8, ptr %0, i32 16364
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %45, %10, %2
  %49 = phi i32 [ 0, %45 ], [ -524, %2 ], [ -22, %10 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_wol_power_down_cfg(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 2
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 37
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 16384
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %187, label %11

11:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %1) #8
  br label %187

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 2056
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %16 = and i32 %15, -8195
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !10
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  %29 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 42
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 96
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %12
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr i8, ptr %34, i32 3616
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !9
  %37 = or i32 %36, 1
  %38 = load i32, ptr %29, align 4
  %39 = and i32 %38, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 43
  %43 = load i16, ptr %42, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #7
  %45 = zext i16 %44 to i32
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr i8, ptr %46, i32 3620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #7, !srcloc !10
  %48 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 43, i32 2
  %49 = load i32, ptr %48, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr i8, ptr %51, i32 3624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #7, !srcloc !10
  %53 = or i32 %36, 134217729
  br label %54

54:                                               ; preds = %41, %33
  %55 = phi i32 [ %53, %41 ], [ %37, %33 ]
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr i8, ptr %56, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #7, !srcloc !10
  br label %58

58:                                               ; preds = %54, %12
  %59 = load ptr, ptr %0, align 8
  %60 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %61, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %59, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !9
  %66 = load i32, ptr %29, align 4
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 12
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %88, label %73

73:                                               ; preds = %84, %69
  %74 = phi ptr [ %86, %84 ], [ %71, %69 ]
  %75 = phi i32 [ %85, %84 ], [ 0, %69 ]
  %76 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %74, i32 0, i32 1, i32 5
  %77 = load i64, ptr %76, align 8
  %78 = icmp eq i64 %77, -2
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %74, i32 0, i32 1, i32 6
  %81 = load i32, ptr %80, align 8
  %82 = shl nuw i32 1, %81
  %83 = or i32 %82, %75
  br label %84

84:                                               ; preds = %79, %73
  %85 = phi i32 [ %83, %79 ], [ %75, %73 ]
  %86 = load ptr, ptr %74, align 8
  %87 = icmp eq ptr %86, %70
  br i1 %87, label %88, label %73

88:                                               ; preds = %84, %69
  %89 = phi i32 [ 0, %69 ], [ %85, %84 ]
  %90 = and i32 %65, -6
  %91 = or i32 %90, 4
  %92 = load ptr, ptr %0, align 8
  %93 = load ptr, ptr %60, align 8
  %94 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %93, i32 0, i32 11
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr i8, ptr %92, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %91) #7, !srcloc !10
  br label %97

97:                                               ; preds = %88, %58
  %98 = phi i32 [ %89, %88 ], [ 0, %58 ]
  %99 = load ptr, ptr %3, align 8
  %100 = load ptr, ptr %0, align 8
  %101 = getelementptr i8, ptr %100, i32 780
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #7, !srcloc !9
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %152

105:                                              ; preds = %97
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #7
  %107 = load ptr, ptr %0, align 8
  %108 = getelementptr i8, ptr %107, i32 780
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #7, !srcloc !9
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %152

112:                                              ; preds = %105
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #7
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr i8, ptr %114, i32 780
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #7, !srcloc !9
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %152

119:                                              ; preds = %112
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #7
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr i8, ptr %121, i32 780
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #7, !srcloc !9
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %119
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #7
  %128 = load ptr, ptr %0, align 8
  %129 = getelementptr i8, ptr %128, i32 780
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #7, !srcloc !9
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %126
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #7
  %135 = load ptr, ptr %0, align 8
  %136 = getelementptr i8, ptr %135, i32 780
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #7, !srcloc !9
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %133
  tail call void (ptr, ptr, ...) @netdev_crit(ptr noundef %99, ptr noundef nonnull @.str.2) #8
  %141 = load ptr, ptr %0, align 8
  %142 = getelementptr i8, ptr %141, i32 3616
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #7, !srcloc !9
  %144 = and i32 %143, -134217730
  %145 = load ptr, ptr %0, align 8
  %146 = getelementptr i8, ptr %145, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #7, !srcloc !10
  %147 = load ptr, ptr %0, align 8
  %148 = load ptr, ptr %60, align 8
  %149 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %148, i32 0, i32 11
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr i8, ptr %147, i32 %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %65) #7, !srcloc !10
  br label %187

152:                                              ; preds = %133, %126, %119, %112, %105, %97
  %153 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 41
  %154 = load ptr, ptr %153, align 8
  %155 = tail call i32 @clk_prepare(ptr noundef %154) #7
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = tail call i32 @clk_enable(ptr noundef %154) #7
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  tail call void @clk_unprepare(ptr noundef %154) #7
  br label %161

161:                                              ; preds = %160, %157, %152
  %162 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 44
  store i8 1, ptr %162, align 2
  %163 = icmp eq i32 %98, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %0, align 8
  %166 = load ptr, ptr %60, align 8
  %167 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %166, i32 0, i32 11
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr i8, ptr %165, i32 %168
  %170 = getelementptr i8, ptr %169, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %98) #7, !srcloc !10
  %171 = load ptr, ptr %0, align 8
  %172 = load ptr, ptr %60, align 8
  %173 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %172, i32 0, i32 11
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr i8, ptr %171, i32 %174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 5) #7, !srcloc !10
  br label %176

176:                                              ; preds = %164, %161
  %177 = phi i32 [ 7168, %164 ], [ 4096, %161 ]
  %178 = load ptr, ptr %0, align 8
  %179 = getelementptr i8, ptr %178, i32 2056
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #7, !srcloc !9
  %181 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 35
  store i8 1, ptr %181, align 8
  %182 = or i32 %180, 66
  %183 = load ptr, ptr %0, align 8
  %184 = getelementptr i8, ptr %183, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #7, !srcloc !10
  %185 = load ptr, ptr %0, align 8
  %186 = getelementptr i8, ptr %185, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %177) #7, !srcloc !10
  br label %187

187:                                              ; preds = %176, %140, %11, %6
  %188 = phi i32 [ -110, %140 ], [ 0, %176 ], [ -22, %11 ], [ -22, %6 ]
  ret i32 %188
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcmgenet_wol_power_up_cfg(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 2
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 37
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %1) #8
  br label %63

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 44
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %63, label %16

16:                                               ; preds = %12
  store i8 0, ptr %13, align 2
  %17 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 41
  %18 = load ptr, ptr %17, align 8
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 35
  store i8 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 42
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 96
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 3616
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !9
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %24
  %31 = and i32 %27, -134217730
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #7, !srcloc !10
  %34 = load i32, ptr %20, align 4
  br label %35

35:                                               ; preds = %30, %16
  %36 = phi i32 [ %34, %30 ], [ %21, %16 ]
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %42, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %40, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !9
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %39
  %50 = and i32 %46, -6
  %51 = load ptr, ptr %0, align 8
  %52 = load ptr, ptr %41, align 8
  %53 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %52, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %51, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %50) #7, !srcloc !10
  br label %56

56:                                               ; preds = %49, %35
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr i8, ptr %57, i32 2056
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !9
  %60 = and i32 %59, -65
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr i8, ptr %61, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #7, !srcloc !10
  br label %63

63:                                               ; preds = %56, %39, %24, %12, %9, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 3462968}
!10 = !{i64 3462550}
