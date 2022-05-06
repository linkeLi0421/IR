; ModuleID = '/llk/IR/net/devres.c_pt.bc'
source_filename = "../net/devres.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_alloc_etherdev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_alloc_etherdev_mqs\22\09\09\09\09\09"
module asm "__kstrtabns_devm_alloc_etherdev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_register_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_register_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_devm_register_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.105, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.105 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}

@.str = private unnamed_addr constant [17 x i8] c"devm_free_netdev\00", align 1
@__kstrtab_devm_alloc_etherdev_mqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_alloc_etherdev_mqs = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_alloc_etherdev_mqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_alloc_etherdev_mqs to i32), ptr @__kstrtab_devm_alloc_etherdev_mqs, ptr @__kstrtabns_devm_alloc_etherdev_mqs }, section "___ksymtab+devm_alloc_etherdev_mqs", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"net/devres.c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"devm_unregister_netdev\00", align 1
@__kstrtab_devm_register_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_register_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_register_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_register_netdev to i32), ptr @__kstrtab_devm_register_netdev, ptr @__kstrtabns_devm_register_netdev }, section "___ksymtab+devm_register_netdev", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_devm_alloc_etherdev_mqs, ptr @__ksymtab_devm_register_netdev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_free_netdev, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @alloc_etherdev_mqs(i32 noundef %1, i32 noundef %2, i32 noundef %3) #3
  store ptr %8, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #3
  br label %13

11:                                               ; preds = %7
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #3
  %12 = load ptr, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %10, %4
  %14 = phi ptr [ %12, %11 ], [ null, %10 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_free_netdev(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @free_netdev(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_register_netdev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @devm_free_netdev, ptr noundef nonnull @netdev_devres_match, ptr noundef %1) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 77, i32 noundef 9, ptr noundef null) #3
  br label %16

6:                                                ; preds = %2
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_unregister_netdev, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @register_netdev(ptr noundef %1) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @devres_free(ptr noundef nonnull %7) #3
  br label %16

13:                                               ; preds = %9
  store ptr %1, ptr %7, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @devres_add(ptr noundef %15, ptr noundef nonnull %7) #3
  br label %16

16:                                               ; preds = %13, %12, %6, %5
  %17 = phi i32 [ -22, %5 ], [ %10, %12 ], [ 0, %13 ], [ -12, %6 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @netdev_devres_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #2 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_unregister_netdev(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @unregister_netdev(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
