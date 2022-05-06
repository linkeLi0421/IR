; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c"
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

@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@gm107_bar_func = internal constant %struct.nvkm_bar_func { ptr @gf100_bar_dtor, ptr @gf100_bar_oneinit, ptr null, %struct.anon { ptr @gf100_bar_bar1_init, ptr @gf100_bar_bar1_fini, ptr @gm107_bar_bar1_wait, ptr @gf100_bar_bar1_vmm }, %struct.anon { ptr @gf100_bar_bar2_init, ptr @gf100_bar_bar2_fini, ptr @gm107_bar_bar2_wait, ptr @gf100_bar_bar2_vmm }, ptr @g84_bar_flush }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_bar_bar1_wait(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %6

6:                                                ; preds = %12, %1
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 5904
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %6
  %13 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #4
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %6, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @dev_driver_string(ptr noundef %20) #4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load ptr, ptr %26, align 4
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi ptr [ %31, %30 ], [ %28, %15 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %21, ptr noundef %33) #4
  br label %34

34:                                               ; preds = %32, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm107_bar_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_bar_new_(ptr noundef nonnull @gm107_bar_func, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_bar_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_bar_dtor(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_bar_oneinit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_bar_bar1_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_bar_bar1_fini(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_bar_bar1_vmm(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_bar_bar2_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_bar_bar2_fini(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm107_bar_bar2_wait(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %6

6:                                                ; preds = %12, %1
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 5904
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %10 = and i32 %9, 12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %6
  %13 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #4
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %6, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @dev_driver_string(ptr noundef %20) #4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load ptr, ptr %26, align 4
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi ptr [ %31, %30 ], [ %28, %15 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %21, ptr noundef %33) #4
  br label %34

34:                                               ; preds = %32, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_bar_bar2_vmm(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_bar_flush(ptr noundef) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i64 3941012}
!10 = !{i64 2151480465}
