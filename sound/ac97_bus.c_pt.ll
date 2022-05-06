; ModuleID = '/llk/IR/sound/ac97_bus.c_pt.bc'
source_filename = "../sound/ac97_bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ac97_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ac97_reset\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ac97_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ac97_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22ac97_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_ac97_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.68, i8, i8, %struct.device, ptr, [2 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { i32, [28 x i8] }
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
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_snd_ac97_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ac97_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ac97_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ac97_reset to i32), ptr @__kstrtab_snd_ac97_reset, ptr @__kstrtabns_snd_ac97_reset }, section "___ksymtab_gpl+snd_ac97_reset", align 4
@.str = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@ac97_bus_type = dso_local global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac97_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_ac97_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_ac97_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_ac97_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ac97_bus_type to i32), ptr @__kstrtab_ac97_bus_type, ptr @__kstrtabns_ac97_bus_type }, section "___ksymtab+ac97_bus_type", align 4
@__UNIQUE_ID_license225 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_license225, ptr @__ksymtab_ac97_bus_type, ptr @__ksymtab_snd_ac97_reset], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ac97_reset(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  br i1 %1, label %8, label %34

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0) #4
  %13 = load ptr, ptr %5, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i16 %16(ptr noundef %0, i16 noundef zeroext 124) #4
  %18 = zext i16 %17 to i32
  %19 = shl nuw i32 %18, 16
  %20 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 13
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call zeroext i16 %24(ptr noundef %0, i16 noundef zeroext 126) #4
  %26 = zext i16 %25 to i32
  %27 = load i32, ptr %20, align 4
  %28 = or i32 %27, %26
  store i32 %28, ptr %20, align 4
  switch i32 %28, label %29 [
    i32 0, label %34
    i32 -1, label %34
  ]

29:                                               ; preds = %12
  %30 = icmp eq i32 %2, 0
  %31 = and i32 %28, %3
  %32 = icmp eq i32 %31, %2
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %66, label %34

34:                                               ; preds = %29, %12, %12, %8, %4
  %35 = load ptr, ptr %7, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void %35(ptr noundef %0) #4
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %7, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef %0) #4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr %5, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call zeroext i16 %47(ptr noundef %0, i16 noundef zeroext 124) #4
  %49 = zext i16 %48 to i32
  %50 = shl nuw i32 %49, 16
  %51 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 13
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %5, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = tail call zeroext i16 %55(ptr noundef %0, i16 noundef zeroext 126) #4
  %57 = zext i16 %56 to i32
  %58 = load i32, ptr %51, align 4
  %59 = or i32 %58, %57
  store i32 %59, ptr %51, align 4
  switch i32 %59, label %60 [
    i32 0, label %66
    i32 -1, label %66
  ]

60:                                               ; preds = %43
  %61 = icmp eq i32 %2, 0
  %62 = and i32 %59, %3
  %63 = icmp eq i32 %62, %2
  %64 = select i1 %61, i1 true, i1 %63
  %65 = select i1 %64, i32 0, i32 -19
  br label %66

66:                                               ; preds = %60, %43, %43, %29
  %67 = phi i32 [ 1, %29 ], [ -19, %43 ], [ -19, %43 ], [ %65, %60 ]
  ret i32 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ac97_bus_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @ac97_bus_type) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @ac97_bus_type) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
