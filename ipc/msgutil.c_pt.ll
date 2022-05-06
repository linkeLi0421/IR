; ModuleID = '/llk/IR/ipc/msgutil.c_pt.bc'
source_filename = "../ipc/msgutil.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.user_namespace = type opaque
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.msg_msg = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msg_msgseg = type { ptr }

@mq_lock = dso_local local_unnamed_addr global %struct.spinlock zeroinitializer, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@init_ipc_ns = dso_local local_unnamed_addr global %struct.ipc_namespace { [3 x %struct.ipc_ids] zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.notifier_block zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @init_user_ns, ptr null, %struct.llist_node zeroinitializer, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr null, i32 -268435457, %struct.refcount_struct { %struct.atomic_t { i32 1 } } } }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @load_msg(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.umin.i32(i32 %1, i32 4072) #7
  %4 = add nuw nsw i32 %3, 24
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef 4197568) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %85, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.msg_msg, ptr %5, i32 0, i32 3
  store ptr null, ptr %8, align 16
  %9 = getelementptr inbounds %struct.msg_msg, ptr %5, i32 0, i32 4
  store ptr null, ptr %9, align 4
  %10 = sub i32 %1, %3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %20, %7
  %13 = phi i32 [ %21, %20 ], [ %10, %7 ]
  %14 = phi ptr [ %18, %20 ], [ %8, %7 ]
  %15 = tail call i32 @__cond_resched() #7
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 4092) #7
  %17 = add nuw nsw i32 %16, 4
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 4197568) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  store ptr %18, ptr %14, align 4
  store ptr null, ptr %18, align 64
  %21 = sub i32 %13, %16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %12

23:                                               ; preds = %12
  %24 = load ptr, ptr %8, align 16
  tail call void @kfree(ptr noundef nonnull %5) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %85, label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %28, %26 ], [ %24, %23 ]
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @__cond_resched() #7
  tail call void @kfree(ptr noundef nonnull %27) #7
  %30 = icmp eq ptr %28, null
  br i1 %30, label %85, label %26

31:                                               ; preds = %20, %7
  %32 = getelementptr %struct.msg_msg, ptr %5, i32 1
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %3, i32 -1090519040) #9, !srcloc !8
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43, !prof !9

36:                                               ; preds = %31
  %37 = tail call ptr @llvm.thread.pointer() #7
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #10, !srcloc !10
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %42 = tail call i32 @arm_copy_from_user(ptr noundef %32, ptr noundef %0, i32 noundef %3) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %43

43:                                               ; preds = %36, %31
  %44 = phi i32 [ %42, %36 ], [ %3, %31 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46, !prof !9

46:                                               ; preds = %43
  %47 = sub i32 %3, %44
  %48 = getelementptr i8, ptr %32, i32 %47
  tail call void @llvm.memset.p0.i32(ptr align 1 %48, i8 0, i32 %44, i1 false) #7
  br label %77

49:                                               ; preds = %71, %43
  %50 = phi i32 [ %59, %71 ], [ %3, %43 ]
  %51 = phi ptr [ %54, %71 ], [ %8, %43 ]
  %52 = phi i32 [ %57, %71 ], [ %1, %43 ]
  %53 = phi ptr [ %58, %71 ], [ %0, %43 ]
  %54 = load ptr, ptr %51, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %85, label %56

56:                                               ; preds = %49
  %57 = sub i32 %52, %50
  %58 = getelementptr i8, ptr %53, i32 %50
  %59 = tail call i32 @llvm.umin.i32(i32 %57, i32 4092)
  %60 = getelementptr %struct.msg_msgseg, ptr %54, i32 1
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %58, i32 %59, i32 -1090519040) #9, !srcloc !8
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71, !prof !9

64:                                               ; preds = %56
  %65 = tail call ptr @llvm.thread.pointer() #7
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #10, !srcloc !10
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %70 = tail call i32 @arm_copy_from_user(ptr noundef %60, ptr noundef %58, i32 noundef %59) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %71

71:                                               ; preds = %64, %56
  %72 = phi i32 [ %70, %64 ], [ %59, %56 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %49, label %74, !prof !9

74:                                               ; preds = %71
  %75 = sub i32 %59, %72
  %76 = getelementptr i8, ptr %60, i32 %75
  tail call void @llvm.memset.p0.i32(ptr align 1 %76, i8 0, i32 %72, i1 false) #7
  br label %77

77:                                               ; preds = %74, %46
  %78 = load ptr, ptr %8, align 16
  tail call void @kfree(ptr noundef nonnull %5) #7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %80, %77
  %81 = phi ptr [ %82, %80 ], [ %78, %77 ]
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @__cond_resched() #7
  tail call void @kfree(ptr noundef nonnull %81) #7
  %84 = icmp eq ptr %82, null
  br i1 %84, label %85, label %80

85:                                               ; preds = %80, %77, %49, %26, %23, %2
  %86 = phi ptr [ inttoptr (i32 -14 to ptr), %77 ], [ inttoptr (i32 -12 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %23 ], [ inttoptr (i32 -14 to ptr), %80 ], [ %5, %49 ], [ inttoptr (i32 -12 to ptr), %26 ]
  ret ptr %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_msg(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msg_msg, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__cond_resched() #7
  tail call void @kfree(ptr noundef nonnull %6) #7
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @copy_msg(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret ptr inttoptr (i32 -38 to ptr)
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @store_msg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.umin.i32(i32 %2, i32 4072)
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %4, i32 -1090519040) #9, !srcloc !13
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr %struct.msg_msg, ptr %1, i32 1
  %10 = tail call ptr @llvm.thread.pointer() #7
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #10, !srcloc !10
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %15 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %9, i32 noundef %4) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %4, %3 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.msg_msg, ptr %1, i32 0, i32 3
  br label %21

21:                                               ; preds = %43, %19
  %22 = phi ptr [ %20, %19 ], [ %26, %43 ]
  %23 = phi i32 [ %4, %19 ], [ %31, %43 ]
  %24 = phi i32 [ %2, %19 ], [ %29, %43 ]
  %25 = phi ptr [ %0, %19 ], [ %30, %43 ]
  %26 = load ptr, ptr %22, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %21
  %29 = sub i32 %24, %23
  %30 = getelementptr i8, ptr %25, i32 %23
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 4092)
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %31, i32 -1090519040) #9, !srcloc !13
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = getelementptr %struct.msg_msgseg, ptr %26, i32 1
  %37 = tail call ptr @llvm.thread.pointer() #7
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #10, !srcloc !10
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %42 = tail call i32 @arm_copy_to_user(ptr noundef %30, ptr noundef %36, i32 noundef %31) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i32 [ %42, %35 ], [ %31, %28 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %21, label %46

46:                                               ; preds = %43, %21, %16
  %47 = phi i32 [ -1, %16 ], [ 0, %21 ], [ -1, %43 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!8 = !{i64 2151093428, i64 2151093453}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 3589540}
!11 = !{i64 3589737}
!12 = !{i64 2151075016}
!13 = !{i64 2151094006, i64 2151094031}
