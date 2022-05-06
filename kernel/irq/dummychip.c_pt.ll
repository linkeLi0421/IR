; ModuleID = '/llk/IR/kernel/irq/dummychip.c_pt.bc'
source_filename = "../kernel/irq/dummychip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dummy_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22dummy_irq_chip\22\09\09\09\09\09"
module asm "__kstrtabns_dummy_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@no_irq_chip = dso_local local_unnamed_addr global %struct.irq_chip { ptr null, ptr @.str, ptr @noop_ret, ptr @noop, ptr @noop, ptr @noop, ptr @ack_bad, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@dummy_irq_chip = dso_local global %struct.irq_chip { ptr null, ptr @.str.1, ptr @noop_ret, ptr @noop, ptr @noop, ptr @noop, ptr @noop, ptr @noop, ptr null, ptr @noop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, align 4
@__kstrtab_dummy_irq_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_dummy_irq_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_dummy_irq_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dummy_irq_chip to i32), ptr @__kstrtab_dummy_irq_chip, ptr @__kstrtabns_dummy_irq_chip }, section "___ksymtab_gpl+dummy_irq_chip", align 4
@print_irq_desc.ratelimit = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 5, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.print_irq_desc = private unnamed_addr constant [15 x i8] c"print_irq_desc\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"irq %d, desc: %p, depth: %d, count: %d, unhandled: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"->handle_irq():  %p, %pS\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"->irq_data.chip(): %p, %pS\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"->action(): %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"->action->handler(): %p, %pS\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%14s set\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"IRQ_LEVEL\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"IRQ_PER_CPU\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"IRQ_NOPROBE\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"IRQ_NOREQUEST\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"IRQ_NOTHREAD\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"IRQ_NOAUTOEN\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"IRQS_AUTODETECT\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"IRQS_REPLAY\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"IRQS_WAITING\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"IRQS_PENDING\00", align 1
@irq_err_count = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"\012unexpected IRQ trap at vector %02x\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_dummy_irq_chip], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @noop_ret(ptr nocapture noundef readnone %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @noop(ptr nocapture noundef %0) #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ack_bad(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @___ratelimit(ptr noundef nonnull @print_irq_desc.ratelimit, ptr noundef nonnull @__func__.print_irq_desc) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %100, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 12
  %14 = load i32, ptr %13, align 32
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %5, ptr noundef %3, i32 noundef %10, i32 noundef %12, i32 noundef %14) #5
  %16 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %17, ptr noundef %17) #5
  %19 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %20, ptr noundef %20) #5
  %22 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 4
  %23 = load ptr, ptr %22, align 64
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %23) #5
  %25 = load ptr, ptr %22, align 64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %8
  %28 = load ptr, ptr %25, align 64
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %28, ptr noundef %28) #5
  br label %30

30:                                               ; preds = %27, %8
  %31 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %37 = load i32, ptr %31, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ %37, %35 ], [ %32, %30 ]
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #5
  %44 = load i32, ptr %31, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %44, %42 ], [ %39, %38 ]
  %47 = and i32 %46, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #5
  %51 = load i32, ptr %31, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ %51, %49 ], [ %46, %45 ]
  %54 = and i32 %53, 2048
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11) #5
  %58 = load i32, ptr %31, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %58, %56 ], [ %53, %52 ]
  %61 = and i32 %60, 65536
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12) #5
  %65 = load i32, ptr %31, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %65, %63 ], [ %60, %59 ]
  %68 = and i32 %67, 4096
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13) #5
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14) #5
  %79 = load i32, ptr %73, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = phi i32 [ %79, %77 ], [ %74, %72 ]
  %82 = and i32 %81, 64
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #5
  %86 = load i32, ptr %73, align 8
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i32 [ %86, %84 ], [ %81, %80 ]
  %89 = and i32 %88, 128
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16) #5
  %93 = load i32, ptr %73, align 8
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i32 [ %93, %91 ], [ %88, %87 ]
  %96 = and i32 %95, 512
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #5
  br label %100

100:                                              ; preds = %98, %94, %1
  %101 = load i32, ptr %4, align 4
  %102 = load i32, ptr @irq_err_count, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr @irq_err_count, align 4
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %101) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
