; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-meson.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-meson.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
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
%struct.meson_dwmac = type { ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_meson__334_101_meson6_dwmac_driver_init6 = internal global ptr @meson6_dwmac_driver_init, section ".initcall6.init", align 4
@meson6_dwmac_driver = internal global %struct.platform_driver { ptr @meson6_dwmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson6_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_meson6_dwmac_driver_exit = internal global ptr @meson6_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [59 x i8] c"dwmac_meson.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [67 x i8] c"dwmac_meson.description=Amlogic Meson6 and Meson8 DWMAC glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [65 x i8] c"dwmac_meson.file=drivers/net/ethernet/stmicro/stmmac/dwmac-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [27 x i8] c"dwmac_meson.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"meson6-dwmac\00", align 1
@meson6_dwmac_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson6-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_meson6_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_meson__334_101_meson6_dwmac_driver_init6, ptr @meson6_dwmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson6_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson6_dwmac_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson6_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson6_dwmac_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson6_dwmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %3 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %2) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %7 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %6) #5
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %28

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 8, i32 noundef 3520) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #5
  %17 = getelementptr inbounds %struct.meson_dwmac, ptr %13, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 46
  store ptr %13, ptr %22, align 4
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 35
  store ptr @meson6_dwmac_fix_mac_speed, ptr %23, align 4
  %24 = call i32 @stmmac_dvr_probe(ptr noundef %12, ptr noundef %7, ptr noundef nonnull %2) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %19, %11
  %27 = phi i32 [ %20, %19 ], [ %24, %21 ], [ -12, %11 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %7) #5
  br label %28

28:                                               ; preds = %26, %21, %9, %1
  %29 = phi i32 [ %10, %9 ], [ %27, %26 ], [ %3, %1 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #5
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson6_dwmac_fix_mac_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.meson_dwmac, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  switch i32 %1, label %10 [
    i32 10, label %6
    i32 100, label %8
  ]

6:                                                ; preds = %2
  %7 = and i32 %5, -3
  br label %10

8:                                                ; preds = %2
  %9 = or i32 %5, 2
  br label %10

10:                                               ; preds = %8, %6, %2
  %11 = phi i32 [ %5, %2 ], [ %9, %8 ], [ %7, %6 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #5, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!9 = !{i64 5324707}
!10 = !{i64 2155981677}
!11 = !{i64 2155982026}
!12 = !{i64 5324289}
