; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_hwdb.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_hwdb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@etnaviv_chip_identities = internal unnamed_addr constant [4 x %struct.etnaviv_chip_identity] [%struct.etnaviv_chip_identity { i32 1024, i32 18002, i32 458753, i32 256, i32 0, i32 -1595285500, i32 -517365761, i32 -1106005479, i32 -837746672, i32 134217729, i32 131330, i32 1179648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 64, i32 128, i32 1, i32 8, i32 1024, i32 1, i32 256, i32 320, i32 0, i8 8 }, %struct.etnaviv_chip_identity { i32 28672, i32 25090, i32 458755, i32 0, i32 0, i32 -534217555, i32 -1052205313, i32 -17040679, i32 -342011969, i32 -301990675, i32 -619860025, i32 995803955, i32 -53550591, i32 67107439, i32 14749424, i32 8912956, i32 16448, i32 36, i32 8, i32 64, i32 512, i32 2, i32 16, i32 1024, i32 1, i32 512, i32 320, i32 0, i8 16 }, %struct.etnaviv_chip_identity { i32 28672, i32 25092, i32 -1, i32 -1, i32 0, i32 -534217587, i32 -1051156737, i32 -17040679, i32 -342011969, i32 -301990675, i32 -619860025, i32 995803955, i32 -53583872, i32 -263569, i32 14749427, i32 80216124, i32 16480, i32 36, i32 16, i32 64, i32 512, i32 2, i32 16, i32 1024, i32 1, i32 512, i32 320, i32 0, i8 16 }, %struct.etnaviv_chip_identity { i32 28672, i32 25108, i32 -1, i32 -1, i32 -1, i32 -534217555, i32 -1048994049, i32 -17040679, i32 -342011969, i32 -301990675, i32 -619860025, i32 -1151679693, i32 -57744896, i32 66845295, i32 15666928, i32 249294908, i32 -1878769072, i32 36, i32 16, i32 64, i32 1024, i32 4, i32 16, i32 1024, i32 2, i32 512, i32 320, i32 0, i8 16 }], align 4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @etnaviv_fill_identity_from_hwdb(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 2
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 3
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 4
  switch i32 %3, label %45 [
    i32 1024, label %8
    i32 28672, label %22
  ]

8:                                                ; preds = %1
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 18002
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 458753
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %42, %39, %31, %17
  %21 = phi ptr [ @etnaviv_chip_identities, %17 ], [ getelementptr inbounds ([4 x %struct.etnaviv_chip_identity], ptr @etnaviv_chip_identities, i32 0, i32 1), %31 ], [ getelementptr inbounds ([4 x %struct.etnaviv_chip_identity], ptr @etnaviv_chip_identities, i32 0, i32 2), %39 ], [ getelementptr inbounds ([4 x %struct.etnaviv_chip_identity], ptr @etnaviv_chip_identities, i32 0, i32 3), %42 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(116) %2, ptr noundef nonnull align 4 dereferenceable(116) %21, i32 116, i1 false)
  br label %45

22:                                               ; preds = %1
  %23 = load i32, ptr %4, align 4
  %24 = icmp eq i32 %23, 25090
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 458755
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, ptr %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, ptr %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %20, label %34

34:                                               ; preds = %31, %28
  %35 = load i32, ptr %4, align 4
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i32 [ %35, %34 ], [ %23, %22 ]
  %38 = icmp eq i32 %37, 25092
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, ptr %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %20, label %42

42:                                               ; preds = %39, %36
  %43 = load i32, ptr %4, align 4
  %44 = icmp eq i32 %43, 25108
  br i1 %44, label %20, label %45

45:                                               ; preds = %42, %25, %20, %17, %14, %11, %8, %1
  %46 = phi i1 [ true, %20 ], [ false, %42 ], [ false, %17 ], [ false, %14 ], [ false, %11 ], [ false, %8 ], [ false, %25 ], [ false, %1 ]
  ret i1 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }

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
