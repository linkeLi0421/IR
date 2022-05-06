; ModuleID = '/llk/IR/kernel/time/jiffies.c_pt.bc'
source_filename = "../kernel/time/jiffies.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_jiffies_64:\09\09\09\09\09"
module asm "\09.asciz \09\22get_jiffies_64\22\09\09\09\09\09"
module asm "__kstrtabns_get_jiffies_64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@jiffies_lock = dso_local local_unnamed_addr global %struct.raw_spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@jiffies_seq = dso_local global %struct.seqcount_raw_spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 64
@__kstrtab_get_jiffies_64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_jiffies_64 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_jiffies_64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_jiffies_64 to i32), ptr @__kstrtab_get_jiffies_64, ptr @__kstrtabns_get_jiffies_64 }, section "___ksymtab+get_jiffies_64", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies to i32), ptr @__kstrtab_jiffies, ptr @__kstrtabns_jiffies }, section "___ksymtab+jiffies", align 4
@__initcall__kmod_jiffies__154_69_init_jiffies_clocksource1 = internal global ptr @init_jiffies_clocksource, section ".initcall1.init", align 4
@clocksource_jiffies = internal global %struct.clocksource { ptr @jiffies_read, i64 4294967295, i32 -1734967296, i32 8, i64 0, i32 0, i32 32000000, i64 10, ptr @.str.1, %struct.list_head zeroinitializer, i32 1, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@refined_jiffies = internal global %struct.clocksource zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"refined-jiffies\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"jiffies\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_jiffies__154_69_init_jiffies_clocksource1, ptr @__ksymtab_get_jiffies_64, ptr @__ksymtab_jiffies], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @get_jiffies_64() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %2 = load volatile i32, ptr @jiffies_seq, align 64
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !9
  %6 = load volatile i32, ptr @jiffies_seq, align 64
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %2, %1 ], [ %6, %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %11 = load i64, ptr @jiffies_64, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %12 = load volatile i32, ptr @jiffies_seq, align 64
  %13 = icmp eq i32 %12, %10
  br i1 %13, label %14, label %1

14:                                               ; preds = %9
  ret i64 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_jiffies_clocksource() #1 section ".init.text" {
  %1 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clocksource_jiffies, i32 noundef 1, i32 noundef 0) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local ptr @clocksource_default_clock() local_unnamed_addr #1 section ".init.text" {
  ret ptr @clocksource_jiffies
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_refined_jiffies(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) @refined_jiffies, ptr noundef nonnull align 8 dereferenceable(104) @clocksource_jiffies, i32 104, i1 false)
  store ptr @.str, ptr getelementptr inbounds (%struct.clocksource, ptr @refined_jiffies, i32 0, i32 8), align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.clocksource, ptr @refined_jiffies, i32 0, i32 10), align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr getelementptr inbounds (%struct.clocksource, ptr @refined_jiffies, i32 0, i32 10), align 4
  %4 = add i32 %0, 50
  %5 = sdiv i32 %4, 100
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 8
  %8 = sdiv i32 %4, 200
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %7, %9
  %11 = icmp ult i64 %10, 4294967296
  br i1 %11, label %12, label %15, !prof !12

12:                                               ; preds = %1
  %13 = trunc i64 %10 to i32
  %14 = udiv i32 %13, %5
  br label %19

15:                                               ; preds = %1
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %10) #6, !srcloc !13
  %17 = extractvalue { i64, i64 } %16, 1
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ %14, %12 ], [ %18, %15 ]
  %21 = lshr i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 256000000000
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %23) #6, !srcloc !13
  %25 = extractvalue { i64, i64 } %24, 1
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 8
  store i32 %27, ptr getelementptr inbounds (%struct.clocksource, ptr @refined_jiffies, i32 0, i32 2), align 8
  %28 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @refined_jiffies, i32 noundef 1, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i64 @jiffies_read(ptr nocapture noundef readnone %0) #3 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2151105841}
!9 = !{i64 2151105683}
!10 = !{i64 2151105985}
!11 = !{i64 2149359385}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147724605, i64 2147724885, i64 2147725219, i64 2147725553}
