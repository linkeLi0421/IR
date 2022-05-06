; ModuleID = '/llk/IR/drivers/net/phy/mdio-boardinfo.c_pt.bc'
source_filename = "../drivers/net/phy/mdio-boardinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdiobus_setup_mdiodev_from_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mdiobus_setup_mdiodev_from_board_info\22\09\09\09\09\09"
module asm "__kstrtabns_mdiobus_setup_mdiodev_from_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdiobus_register_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mdiobus_register_board_info\22\09\09\09\09\09"
module asm "__kstrtabns_mdiobus_register_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mdio_board_entry = type { %struct.list_head, %struct.mdio_board_info }
%struct.mdio_board_info = type { ptr, [32 x i8], i32, ptr }

@mdio_board_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mdio_board_lock, i64 12), ptr getelementptr (i8, ptr @mdio_board_lock, i64 12) } }, align 4
@mdio_board_list = internal global %struct.list_head { ptr @mdio_board_list, ptr @mdio_board_list }, align 4
@__kstrtab_mdiobus_setup_mdiodev_from_board_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdiobus_setup_mdiodev_from_board_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mdiobus_setup_mdiodev_from_board_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdiobus_setup_mdiodev_from_board_info to i32), ptr @__kstrtab_mdiobus_setup_mdiodev_from_board_info, ptr @__kstrtabns_mdiobus_setup_mdiodev_from_board_info }, section "___ksymtab+mdiobus_setup_mdiodev_from_board_info", align 4
@__kstrtab_mdiobus_register_board_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdiobus_register_board_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mdiobus_register_board_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdiobus_register_board_info to i32), ptr @__kstrtab_mdiobus_register_board_info, ptr @__kstrtabns_mdiobus_register_board_info }, section "___ksymtab+mdiobus_register_board_info", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_mdiobus_register_board_info, ptr @__ksymtab_mdiobus_setup_mdiodev_from_board_info], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdiobus_setup_mdiodev_from_board_info(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mdio_board_lock) #6
  %3 = load ptr, ptr @mdio_board_list, align 4
  %4 = icmp eq ptr %3, @mdio_board_list
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi ptr [ %3, %5 ], [ %9, %16 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdio_board_entry, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef nonnull @mdio_board_lock) #6
  %15 = tail call i32 %1(ptr noundef %0, ptr noundef %10) #6
  tail call void @mutex_lock(ptr noundef nonnull @mdio_board_lock) #6
  br label %16

16:                                               ; preds = %14, %7
  %17 = icmp eq ptr %9, @mdio_board_list
  br i1 %17, label %18, label %7

18:                                               ; preds = %16, %2
  tail call void @mutex_unlock(ptr noundef nonnull @mdio_board_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdiobus_register_board_info(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 52) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %22, label %5, !prof !8

5:                                                ; preds = %2
  %6 = extractvalue { i32, i1 } %3, 0
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %18, %11 ], [ 0, %9 ]
  %13 = phi ptr [ %19, %11 ], [ %7, %9 ]
  %14 = phi ptr [ %20, %11 ], [ %0, %9 ]
  %15 = getelementptr inbounds %struct.mdio_board_entry, ptr %13, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %15, ptr noundef align 4 dereferenceable(44) %14, i32 44, i1 false)
  tail call void @mutex_lock(ptr noundef nonnull @mdio_board_lock) #6
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mdio_board_list, i32 0, i32 1), align 4
  store ptr %13, ptr getelementptr inbounds (%struct.list_head, ptr @mdio_board_list, i32 0, i32 1), align 4
  store ptr @mdio_board_list, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %13, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @mdio_board_lock) #6
  %18 = add nuw i32 %12, 1
  %19 = getelementptr %struct.mdio_board_entry, ptr %13, i32 1
  %20 = getelementptr %struct.mdio_board_info, ptr %14, i32 1
  %21 = icmp eq i32 %18, %1
  br i1 %21, label %22, label %11

22:                                               ; preds = %11, %9, %5, %2
  %23 = phi i32 [ -12, %5 ], [ -12, %2 ], [ 0, %9 ], [ 0, %11 ]
  ret i32 %23
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
