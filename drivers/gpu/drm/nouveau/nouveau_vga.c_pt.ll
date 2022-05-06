; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_vga.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_vga.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.83, %struct.anon.84, %struct.anon.86, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.88, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.100 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.83 = type { ptr, i32, i32, i8 }
%struct.anon.84 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.85] }
%struct.anon.85 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.86 = type { i64, i64 }
%struct.anon.87 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.anon.88 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.89, i8 }
%union.anon.89 = type { %struct.anon.93 }
%struct.anon.93 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.95 = type { i32 }
%struct.anon.96 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.97 = type { i16, i16 }
%struct.anon.98 = type { i16, i16, i16, %struct.anon.99, i16 }
%struct.anon.99 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.72, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.82, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.72 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.82 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@pci_bus_type = external dso_local global %struct.bus_type, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_vga_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @nouveau_pmops_runtime() #3
  %5 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @pci_bus_type
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %6, i32 -136
  %12 = tail call i32 @vga_client_register(ptr noundef %11, ptr noundef nonnull @nouveau_vga_set_decode) #3
  %13 = getelementptr i8, ptr %6, i32 833
  %14 = load i40, ptr %13, align 1
  %15 = and i40 %14, 67108864
  %16 = icmp eq i40 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %28, %10
  %18 = phi ptr [ %26, %28 ], [ %11, %10 ]
  %19 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 49
  %30 = load i40, ptr %29, align 1
  %31 = and i40 %30, 67108864
  %32 = icmp eq i40 %31, 0
  br i1 %32, label %17, label %33

33:                                               ; preds = %28, %24, %17, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_pmops_runtime() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vga_client_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_vga_set_decode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 5
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = icmp ugt i16 %12, 75
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %1 to i32
  br i1 %18, label %22, label %20, !prof !8

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %17, i32 557152
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #3, !srcloc !10
  br label %37

22:                                               ; preds = %15
  tail call void @nvif_object_wr(ptr noundef %7, i32 noundef 4, i64 noundef 557152, i32 noundef %19) #3
  br label %37

23:                                               ; preds = %2
  %24 = icmp ugt i16 %12, 63
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  %28 = zext i1 %1 to i32
  br i1 %24, label %29, label %33

29:                                               ; preds = %23
  br i1 %27, label %32, label %30, !prof !8

30:                                               ; preds = %29
  %31 = getelementptr i8, ptr %26, i32 557140
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #3, !srcloc !10
  br label %37

32:                                               ; preds = %29
  tail call void @nvif_object_wr(ptr noundef %7, i32 noundef 4, i64 noundef 557140, i32 noundef %28) #3
  br label %37

33:                                               ; preds = %23
  br i1 %27, label %36, label %34, !prof !8

34:                                               ; preds = %33
  %35 = getelementptr i8, ptr %26, i32 6228
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %28) #3, !srcloc !10
  br label %37

36:                                               ; preds = %33
  tail call void @nvif_object_wr(ptr noundef %7, i32 noundef 4, i64 noundef 6228, i32 noundef %28) #3
  br label %37

37:                                               ; preds = %36, %34, %32, %30, %22, %20
  %38 = select i1 %1, i32 15, i32 12
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_vga_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @nouveau_pmops_runtime() #3
  %5 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @pci_bus_type
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %6, i32 -136
  %12 = tail call i32 @vga_client_register(ptr noundef %11, ptr noundef null) #3
  %13 = getelementptr i8, ptr %6, i32 833
  %14 = load i40, ptr %13, align 1
  %15 = and i40 %14, 67108864
  %16 = icmp eq i40 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %28, %10
  %18 = phi ptr [ %26, %28 ], [ %11, %10 ]
  %19 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 49
  %30 = load i40, ptr %29, align 1
  %31 = and i40 %30, 67108864
  %32 = icmp eq i40 %31, 0
  br i1 %32, label %17, label %33

33:                                               ; preds = %28, %24, %17, %10, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @nouveau_vga_lastclose(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!9 = !{i64 2148593492}
!10 = !{i64 380252}
