; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bar/g84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/g84.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bar_func = type { ptr, ptr, ptr, %struct.anon, %struct.anon, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@.str = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bar/g84.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@g84_bar_func = internal constant %struct.nvkm_bar_func { ptr @nv50_bar_dtor, ptr @nv50_bar_oneinit, ptr @nv50_bar_init, %struct.anon { ptr @nv50_bar_bar1_init, ptr @nv50_bar_bar1_fini, ptr @nv50_bar_bar1_wait, ptr @nv50_bar_bar1_vmm }, %struct.anon { ptr @nv50_bar_bar2_init, ptr @nv50_bar_bar2_fini, ptr @nv50_bar_bar1_wait, ptr @nv50_bar_bar2_vmm }, ptr @g84_bar_flush }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g84_bar_flush(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 458752
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #4, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #4
  br label %10

10:                                               ; preds = %16, %1
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 458752
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %10
  %17 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #4
  %18 = icmp sgt i64 %17, -1
  br i1 %18, label %10, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.nvkm_timer, ptr %20, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @dev_driver_string(ptr noundef %24) #4
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.nvkm_timer, ptr %26, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load ptr, ptr %30, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi ptr [ %35, %34 ], [ %32, %19 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %25, ptr noundef %37) #4
  br label %38

38:                                               ; preds = %36, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g84_bar_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_bar_new_(ptr noundef nonnull @g84_bar_func, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 512, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_bar_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_bar_dtor(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_bar_oneinit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_bar_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_bar_bar1_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_bar_bar1_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_bar_bar1_wait(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_bar_bar1_vmm(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_bar_bar2_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_bar_bar2_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_bar_bar2_vmm(ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!8 = !{i64 2151481808}
!9 = !{i64 3940715}
!10 = !{!"auto-init"}
!11 = !{i64 3941133}
!12 = !{i64 2151480586}
