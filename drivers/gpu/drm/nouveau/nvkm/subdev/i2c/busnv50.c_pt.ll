; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/busnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/busnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_bus_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_pad = type { ptr, ptr, i32, i32, %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv50_i2c_bus = type { %struct.nvkm_i2c_bus, i32, i32 }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@nv50_i2c_bus_new.addr = internal unnamed_addr constant [10 x i32] [i32 57656, i32 57680, i32 57704, i32 57728, i32 57940, i32 57972, i32 59236, i32 59264, i32 59292, i32 59320], align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: bus %d unknown\0A\00", align 1
@nv50_i2c_bus_func = internal constant %struct.nvkm_i2c_bus_func { ptr @nv50_i2c_bus_init, ptr @nv50_i2c_bus_drive_scl, ptr @nv50_i2c_bus_drive_sda, ptr @nv50_i2c_bus_sense_scl, ptr @nv50_i2c_bus_sense_sda, ptr @nvkm_i2c_bit_xfer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_i2c_bus_new(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = zext i8 %2 to i32
  %6 = icmp ugt i8 %2, 9
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %5) #4
  br label %29

19:                                               ; preds = %4
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 712) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  store ptr %21, ptr %3, align 4
  %24 = tail call i32 @nvkm_i2c_bus_ctor(ptr noundef nonnull @nv50_i2c_bus_func, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %21) #6
  %25 = getelementptr [10 x i32], ptr @nv50_i2c_bus_new.addr, i32 0, i32 %5
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %21, i32 0, i32 1
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %21, i32 0, i32 2
  store i32 7, ptr %28, align 4
  br label %29

29:                                               ; preds = %23, %19, %13, %7
  %30 = phi i32 [ 0, %23 ], [ -19, %13 ], [ -19, %7 ], [ -12, %19 ]
  ret i32 %30
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_i2c_bus_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %0, i32 0, i32 2
  store i32 7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 7) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_i2c_bus_drive_scl(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 254
  %13 = or i32 %11, 1
  %14 = select i1 %9, i32 %12, i32 %13
  store i32 %14, ptr %10, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %14) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_i2c_bus_drive_sda(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 253
  %13 = or i32 %11, 2
  %14 = select i1 %9, i32 %12, i32 %13
  store i32 %14, ptr %10, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %14) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_i2c_bus_sense_scl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_i2c_bus_sense_sda(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nv50_i2c_bus, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 1
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bit_xfer(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
!8 = !{i64 2151491023}
!9 = !{i64 3949930}
!10 = !{i64 3950348}
!11 = !{i64 2151489801}
