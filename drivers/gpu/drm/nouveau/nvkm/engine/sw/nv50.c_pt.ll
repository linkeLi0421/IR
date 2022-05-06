; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/sw/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sw/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sw_chan_sclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_sw_chan_func = type { ptr, ptr }
%struct.nv50_sw_chan = type { %struct.nvkm_sw_chan, %struct.anon.131 }
%struct.nvkm_sw_chan = type { ptr, %struct.nvkm_object, ptr, ptr, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.131 = type { [4 x %struct.nvkm_notify], i32, i64, i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.nvif_notify_head_req_v0 = type { i8, i8, [6 x i8] }
%struct.nvkm_sw = type { ptr, %struct.nvkm_engine, %struct.list_head }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.124 }
%struct.anon.124 = type { %struct.spinlock, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@nv50_sw = internal constant { ptr, [2 x %struct.nvkm_sw_chan_sclass] } { ptr @nv50_sw_chan_new, [2 x %struct.nvkm_sw_chan_sclass] [%struct.nvkm_sw_chan_sclass { ptr @nvkm_nvsw_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 -6, ptr null, ptr null } }, %struct.nvkm_sw_chan_sclass zeroinitializer] }, align 4
@nv50_sw_chan = internal constant %struct.nvkm_sw_chan_func { ptr @nv50_sw_chan_dtor, ptr @nv50_sw_chan_mthd }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv50_sw_chan_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_sw_chan, ptr %0, i32 0, i32 1
  tail call void @nvkm_notify_fini(ptr noundef %2) #4
  %3 = getelementptr %struct.nv50_sw_chan, ptr %0, i32 0, i32 1, i32 0, i32 1
  tail call void @nvkm_notify_fini(ptr noundef %3) #4
  %4 = getelementptr %struct.nv50_sw_chan, ptr %0, i32 0, i32 1, i32 0, i32 2
  tail call void @nvkm_notify_fini(ptr noundef %4) #4
  %5 = getelementptr %struct.nv50_sw_chan, ptr %0, i32 0, i32 1, i32 0, i32 3
  tail call void @nvkm_notify_fini(ptr noundef %5) #4
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_sw_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_sw_new_(ptr noundef nonnull @nv50_sw, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sw_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_sw_chan_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.nvif_notify_head_req_v0, align 1
  %6 = getelementptr inbounds %struct.nvkm_sw, ptr %0, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 50
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 376) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %11, i32 0, i32 1
  store ptr %14, ptr %3, align 4
  %15 = tail call i32 @nvkm_sw_chan_ctor(ptr noundef nonnull @nv50_sw_chan, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %11) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_disp, ptr %9, i32 0, i32 7, i32 2
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %9, i32 0, i32 7
  %20 = icmp eq ptr %9, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.nv50_sw_chan, ptr %11, i32 0, i32 1
  %25 = load i32, ptr %18, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %31, label %37

27:                                               ; preds = %31
  %28 = add nuw nsw i32 %32, 1
  %29 = load i32, ptr %18, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %21
  %32 = phi i32 [ %28, %27 ], [ 0, %21 ]
  store i8 0, ptr %5, align 1
  %33 = trunc i32 %32 to i8
  store i8 %33, ptr %22, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %23, i8 0, i32 6, i1 false)
  %34 = getelementptr [4 x %struct.nvkm_notify], ptr %24, i32 0, i32 %32
  %35 = call i32 @nvkm_notify_init(ptr noundef null, ptr noundef %19, ptr noundef nonnull @nv50_sw_chan_vblsem_release, i1 noundef zeroext false, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 8, ptr noundef %34) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %27, label %37

37:                                               ; preds = %31, %27, %21, %17, %13, %4
  %38 = phi i32 [ -12, %4 ], [ %15, %13 ], [ 0, %17 ], [ 0, %21 ], [ %35, %31 ], [ 0, %27 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_nvsw_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sw_chan_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_sw_chan_vblsem_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, -56
  %5 = add i32 %4, -128
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_sw, ptr %8, i32 0, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %14, i32 0, i32 4
  %16 = load i64, ptr %15, align 8
  %17 = lshr i64 %16, 12
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 5892
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #4, !srcloc !9
  %22 = getelementptr inbounds %struct.nv50_sw_chan, ptr %6, i32 0, i32 1
  %23 = getelementptr inbounds %struct.anon.131, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, -2147483648
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 5904
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !9
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 36
  %29 = load ptr, ptr %28, align 4
  tail call void @nvkm_bar_flush(ptr noundef %29) #4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 16
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 80
  %33 = getelementptr inbounds %struct.anon.131, ptr %22, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load ptr, ptr %19, align 4
  br i1 %32, label %37, label %43

37:                                               ; preds = %1
  %38 = getelementptr i8, ptr %36, i32 5488
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %35) #4, !srcloc !9
  %39 = getelementptr inbounds %struct.anon.131, ptr %22, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  %41 = load ptr, ptr %19, align 4
  %42 = getelementptr i8, ptr %41, i32 5492
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #4, !srcloc !9
  br label %49

43:                                               ; preds = %1
  %44 = getelementptr i8, ptr %36, i32 393232
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %35) #4, !srcloc !9
  %45 = getelementptr inbounds %struct.anon.131, ptr %22, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = load ptr, ptr %19, align 4
  %48 = getelementptr i8, ptr %47, i32 393236
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #4, !srcloc !9
  br label %49

49:                                               ; preds = %43, %37
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv50_sw_chan_mthd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %2, label %25 [
    i32 396, label %5
    i32 1024, label %7
    i32 1028, label %10
    i32 1032, label %12
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.nv50_sw_chan, ptr %0, i32 0, i32 1, i32 1
  store i32 %3, ptr %6, align 8
  br label %25

7:                                                ; preds = %4
  %8 = zext i32 %3 to i64
  %9 = getelementptr inbounds %struct.nv50_sw_chan, ptr %0, i32 0, i32 1, i32 2
  store i64 %8, ptr %9, align 8
  br label %25

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nv50_sw_chan, ptr %0, i32 0, i32 1, i32 3
  store i32 %3, ptr %11, align 8
  br label %25

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %0, i32 0, i32 1, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_engine, ptr %14, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 50
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 7, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %3
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.nv50_sw_chan, ptr %0, i32 0, i32 1
  %24 = getelementptr [4 x %struct.nvkm_notify], ptr %23, i32 0, i32 %3
  tail call void @nvkm_notify_get(ptr noundef %24) #4
  br label %25

25:                                               ; preds = %22, %12, %10, %7, %5, %4
  %26 = phi i1 [ true, %22 ], [ true, %10 ], [ true, %7 ], [ true, %5 ], [ false, %4 ], [ false, %12 ]
  ret i1 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 2151484579}
!9 = !{i64 3943486}
