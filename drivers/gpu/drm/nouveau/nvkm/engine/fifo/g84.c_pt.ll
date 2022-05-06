; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/g84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/g84.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.70 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.70 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@g84_fifo_gpfifo_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@g84_fifo = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr @nv50_fifo_dtor, ptr @nv50_fifo_oneinit, ptr null, ptr @nv50_fifo_init, ptr null, ptr @nv04_fifo_intr, ptr null, ptr @g84_fifo_engine_id, ptr @g84_fifo_id_engine, ptr @nv04_fifo_pause, ptr @nv04_fifo_start, ptr @g84_fifo_uevent_init, ptr @g84_fifo_uevent_fini, ptr null, ptr null, ptr null, [2 x ptr] [ptr @g84_fifo_gpfifo_oclass, ptr null] }, align 4
@.str = private unnamed_addr constant [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/g84.c\00", align 1
@switch.table.g84_fifo_engine_id = private unnamed_addr constant [24 x i32] [i32 6, i32 3, i32 5, i32 0, i32 7, i32 0, i32 1, i32 0, i32 0, i32 2, i32 0, i32 4, i32 2, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g84_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_fifo_new_(ptr noundef nonnull @g84_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_fifo_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fifo_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_intr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g84_fifo_engine_id(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -27
  %6 = icmp ult i32 %5, 24
  br i1 %6, label %8, label %7

7:                                                ; preds = %8, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #2
  br label %15

8:                                                ; preds = %2
  %9 = lshr i32 11024983, %5
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %7, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds [24 x i32], ptr @switch.table.g84_fifo_engine_id, i32 0, i32 %5
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ -1, %7 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @g84_fifo_id_engine(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %25 [
    i32 0, label %26
    i32 1, label %5
    i32 2, label %6
    i32 3, label %9
    i32 4, label %12
    i32 5, label %15
    i32 6, label %21
    i32 7, label %24
  ]

5:                                                ; preds = %2
  br label %26

6:                                                ; preds = %2
  %7 = tail call ptr @nvkm_device_engine(ptr noundef %4, i32 noundef 39, i32 noundef 0) #2
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %30

9:                                                ; preds = %2
  %10 = tail call ptr @nvkm_device_engine(ptr noundef %4, i32 noundef 28, i32 noundef 0) #2
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %30

12:                                               ; preds = %2
  %13 = tail call ptr @nvkm_device_engine(ptr noundef %4, i32 noundef 38, i32 noundef 0) #2
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %30

15:                                               ; preds = %2
  %16 = tail call ptr @nvkm_device_engine(ptr noundef %4, i32 noundef 49, i32 noundef 0) #2
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = tail call ptr @nvkm_device_engine(ptr noundef %4, i32 noundef 46, i32 noundef 0) #2
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %30

21:                                               ; preds = %2
  %22 = tail call ptr @nvkm_device_engine(ptr noundef %4, i32 noundef 40, i32 noundef 0) #2
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %30

24:                                               ; preds = %2
  br label %26

25:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #2
  br label %30

26:                                               ; preds = %24, %21, %18, %12, %9, %6, %5, %2
  %27 = phi i32 [ 31, %24 ], [ 33, %5 ], [ 48, %2 ], [ 36, %6 ], [ 35, %9 ], [ 50, %12 ], [ 29, %18 ], [ 27, %21 ]
  %28 = load ptr, ptr %3, align 4
  %29 = tail call ptr @nvkm_device_engine(ptr noundef %28, i32 noundef %27, i32 noundef 0) #2
  br label %30

30:                                               ; preds = %26, %25, %21, %18, %15, %12, %9, %6
  %31 = phi ptr [ null, %25 ], [ %29, %26 ], [ %7, %6 ], [ %10, %9 ], [ %13, %12 ], [ %16, %15 ], [ %19, %18 ], [ %22, %21 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_pause(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_start(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @g84_fifo_uevent_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %8 = or i32 %7, 1073741824
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @g84_fifo_uevent_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %8 = and i32 %7, -1073741825
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 3947655}
!9 = !{i64 2151487108}
!10 = !{i64 2151488330}
!11 = !{i64 3947237}
