; ModuleID = '/llk/IR/mm/init-mm.c_pt.bc'
source_filename = "../mm/init-mm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }

@swapper_pg_dir = external dso_local global [2048 x [2 x i32]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_mm = dso_local global <{ %struct.anon, [1 x i32] }> <{ %struct.anon { ptr null, %struct.rb_root zeroinitializer, i64 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @swapper_pg_dir, %struct.atomic_t zeroinitializer, %struct.atomic_t { i32 2 }, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 0, %struct.spinlock zeroinitializer, %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_mm, i64 80), ptr getelementptr (i8, ptr @init_mm, i64 80) } }, %struct.list_head { ptr getelementptr (i8, ptr @init_mm, i64 88), ptr getelementptr (i8, ptr @init_mm, i64 88) }, i32 0, i32 0, i32 0, i32 0, %struct.atomic64_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, %struct.seqcount zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [42 x i32] zeroinitializer, %struct.mm_rss_stat zeroinitializer, ptr null, %struct.mm_context_t zeroinitializer, i32 0, %struct.spinlock zeroinitializer, ptr null, ptr @init_user_ns, ptr null, %struct.atomic_t zeroinitializer, %struct.uprobes_state zeroinitializer, %struct.work_struct zeroinitializer, i32 0 }, [1 x i32] zeroinitializer }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @setup_initial_init_mm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = ptrtoint ptr %0 to i32
  store i32 %5, ptr getelementptr inbounds (<{ %struct.anon, [1 x i32] }>, ptr @init_mm, i32 0, i32 0, i32 28), align 8
  %6 = ptrtoint ptr %1 to i32
  store i32 %6, ptr getelementptr inbounds (<{ %struct.anon, [1 x i32] }>, ptr @init_mm, i32 0, i32 0, i32 29), align 4
  %7 = ptrtoint ptr %2 to i32
  store i32 %7, ptr getelementptr inbounds (<{ %struct.anon, [1 x i32] }>, ptr @init_mm, i32 0, i32 0, i32 31), align 4
  %8 = ptrtoint ptr %3 to i32
  store i32 %8, ptr getelementptr inbounds (<{ %struct.anon, [1 x i32] }>, ptr @init_mm, i32 0, i32 0, i32 33), align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
