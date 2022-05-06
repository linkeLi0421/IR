; ModuleID = '/llk/IR/drivers/char/tpm/eventlog/tpm2.c_pt.bc'
source_filename = "../drivers/char/tpm/eventlog/tpm2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tcg_pcr_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.tcg_pcr_event2_head = type { i32, i32, i32, [0 x %struct.tpm_digest] }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tcg_efi_specid_event_algs = type { i16, i16 }

@tpm2_binary_b_measurements_seqops = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @tpm2_bios_measurements_start, ptr @tpm2_bios_measurements_stop, ptr @tpm2_bios_measurements_next, ptr @tpm2_binary_bios_measurements_show }, align 4
@.str = private unnamed_addr constant [16 x i8] c"Spec ID Event03\00", align 1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tpm2_bios_measurements_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tcg_pcr_event, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 1
  %11 = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 32) #8
  %12 = load i64, ptr %1, align 8
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr i8, ptr %6, i32 %11
  %15 = icmp ult ptr %14, %8
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.tcg_pcr_event, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 1
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %10, 0
  %22 = select i1 %20, i1 %21, i1 false
  %23 = select i1 %22, ptr null, ptr inttoptr (i32 1 to ptr)
  br label %53

24:                                               ; preds = %2
  %25 = icmp sgt i64 %12, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %14, ptr noundef %6)
  %28 = getelementptr i8, ptr %14, i32 %27
  %29 = icmp uge ptr %28, %8
  %30 = icmp eq i32 %27, 0
  %31 = or i1 %30, %29
  br i1 %31, label %53, label %32

32:                                               ; preds = %26
  %33 = load i64, ptr %1, align 8
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi i64 [ %33, %32 ], [ %12, %24 ]
  %36 = phi ptr [ %14, %32 ], [ %6, %24 ]
  %37 = add i64 %35, -1
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %45, label %53

39:                                               ; preds = %45
  %40 = add i32 %46, 1
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr %1, align 8
  %43 = add i64 %42, -1
  %44 = icmp sgt i64 %43, %41
  br i1 %44, label %45, label %53

45:                                               ; preds = %39, %34
  %46 = phi i32 [ %40, %39 ], [ 0, %34 ]
  %47 = phi ptr [ %49, %39 ], [ %36, %34 ]
  %48 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %47, ptr noundef %6)
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = icmp uge ptr %49, %8
  %51 = icmp eq i32 %48, 0
  %52 = or i1 %51, %50
  br i1 %52, label %53, label %39

53:                                               ; preds = %45, %39, %34, %26, %17
  %54 = phi ptr [ null, %26 ], [ %23, %17 ], [ %36, %34 ], [ null, %45 ], [ %49, %39 ]
  ret ptr %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tpm2_bios_measurements_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #1 {
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tpm2_bios_measurements_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, ptr %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %5, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i64, ptr %2, align 8
  %10 = add i64 %9, 1
  store i64 %10, ptr %2, align 8
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tcg_pcr_event, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 1
  %16 = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 32) #8
  br label %20

17:                                               ; preds = %3
  %18 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %1, ptr noundef %11)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %16, %13 ], [ %18, %17 ]
  %22 = phi ptr [ %11, %13 ], [ %1, %17 ]
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = icmp ult ptr %23, %8
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %23, ptr noundef %11)
  %27 = getelementptr i8, ptr %23, i32 %26
  %28 = icmp uge ptr %27, %8
  %29 = icmp eq i32 %26, 0
  %30 = or i1 %29, %28
  %31 = select i1 %30, ptr null, ptr %23
  br label %32

32:                                               ; preds = %25, %20, %17
  %33 = phi ptr [ null, %17 ], [ null, %20 ], [ %31, %25 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm2_binary_bios_measurements_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tcg_pcr_event, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 1
  %11 = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 32) #8
  %12 = tail call i32 @seq_write(ptr noundef %0, ptr noundef %6, i32 noundef %11) #8
  br label %18

13:                                               ; preds = %2
  %14 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %1, ptr noundef %6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @seq_write(ptr noundef %0, ptr noundef %1, i32 noundef %14) #8
  br label %18

18:                                               ; preds = %16, %13, %8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calc_tpm2_event_size(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false) #8
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %0, i32 0, i32 2
  %6 = load volatile i32, ptr %5, align 1
  %7 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %0, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 1
  %9 = load i32, ptr %1, align 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 1
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 0, i32 2
  %17 = call i32 @bcmp(ptr noundef dereferenceable(20) %16, ptr noundef nonnull dereferenceable(20) %3, i32 20) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 0, i32 4
  %21 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %20, ptr noundef nonnull dereferenceable(16) @.str, i32 16) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 1, i32 2, i32 16
  %25 = load i32, ptr %24, align 1
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq i32 %6, %25
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %67

29:                                               ; preds = %23
  %30 = icmp eq i32 %6, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 1, i32 3
  br label %40

33:                                               ; preds = %53
  %34 = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %32, i32 0, i32 %46, i32 1
  %35 = load i16, ptr %34, align 1
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %44, i32 %36
  %38 = add nuw i32 %41, 1
  %39 = icmp eq i32 %38, %6
  br i1 %39, label %55, label %40

40:                                               ; preds = %33, %31
  %41 = phi i32 [ 0, %31 ], [ %38, %33 ]
  %42 = phi ptr [ %4, %31 ], [ %37, %33 ]
  %43 = load i16, ptr %42, align 1
  %44 = getelementptr i8, ptr %42, i32 2
  br label %45

45:                                               ; preds = %50, %40
  %46 = phi i32 [ 0, %40 ], [ %51, %50 ]
  %47 = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %32, i32 0, i32 %46
  %48 = load i16, ptr %47, align 1
  %49 = icmp eq i16 %43, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = add nuw i32 %46, 1
  %52 = icmp eq i32 %51, %6
  br i1 %52, label %67, label %45

53:                                               ; preds = %45
  %54 = icmp eq i32 %46, %6
  br i1 %54, label %67, label %33

55:                                               ; preds = %33, %29
  %56 = phi ptr [ %4, %29 ], [ %37, %33 ]
  %57 = getelementptr i8, ptr %56, i32 4
  %58 = load i32, ptr %56, align 1
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = ptrtoint ptr %59 to i32
  %61 = ptrtoint ptr %0 to i32
  %62 = sub i32 %60, %61
  %63 = icmp eq i32 %8, 0
  %64 = icmp eq i32 %58, 0
  %65 = select i1 %63, i1 %64, i1 false
  %66 = select i1 %65, i32 0, i32 %62
  br label %67

67:                                               ; preds = %55, %53, %50, %23, %19, %15, %11, %2
  %68 = phi i32 [ 0, %15 ], [ 0, %11 ], [ 0, %2 ], [ 0, %23 ], [ 0, %19 ], [ %66, %55 ], [ 0, %50 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
