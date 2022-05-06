; ModuleID = '/llk/IR/net/core/ptp_classifier.c_pt.bc'
source_filename = "../net/core/ptp_classifier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_classify_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_classify_raw\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_classify_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_parse_header:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_parse_header\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_parse_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.anon.83, [0 x %struct.sock_filter] }
%struct.anon.83 = type {}
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sock_fprog_kern = type { i16, ptr }

@ptp_insns = internal global ptr null, section ".data..read_mostly", align 4
@__kstrtab_ptp_classify_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_classify_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_classify_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_classify_raw to i32), ptr @__kstrtab_ptp_classify_raw, ptr @__kstrtabns_ptp_classify_raw }, section "___ksymtab_gpl+ptp_classify_raw", align 4
@__kstrtab_ptp_parse_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_parse_header = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_parse_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_parse_header to i32), ptr @__kstrtab_ptp_parse_header, ptr @__kstrtabns_ptp_parse_header }, section "___ksymtab_gpl+ptp_parse_header", align 4
@ptp_classifier_init.ptp_filter = internal global [66 x %struct.sock_filter] [%struct.sock_filter { i16 40, i8 0, i8 0, i32 12 }, %struct.sock_filter { i16 21, i8 0, i8 12, i32 2048 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 23 }, %struct.sock_filter { i16 21, i8 0, i8 9, i32 17 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 20 }, %struct.sock_filter { i16 69, i8 7, i8 0, i32 8191 }, %struct.sock_filter { i16 177, i8 0, i8 0, i32 14 }, %struct.sock_filter { i16 72, i8 0, i8 0, i32 16 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 319 }, %struct.sock_filter { i16 72, i8 0, i8 0, i32 22 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 16 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 9, i32 34525 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 20 }, %struct.sock_filter { i16 21, i8 0, i8 6, i32 17 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 56 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 319 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 62 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 32 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 32, i32 33024 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 16 }, %struct.sock_filter { i16 21, i8 0, i8 7, i32 35063 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 18 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 8 }, %struct.sock_filter { i16 21, i8 0, i8 35, i32 0 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 18 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 192 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 12, i32 2048 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 27 }, %struct.sock_filter { i16 21, i8 0, i8 9, i32 17 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 24 }, %struct.sock_filter { i16 69, i8 7, i8 0, i32 8191 }, %struct.sock_filter { i16 177, i8 0, i8 0, i32 18 }, %struct.sock_filter { i16 72, i8 0, i8 0, i32 20 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 319 }, %struct.sock_filter { i16 72, i8 0, i8 0, i32 26 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 144 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 8, i32 34525 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 24 }, %struct.sock_filter { i16 21, i8 0, i8 6, i32 17 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 60 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 319 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 66 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 160 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 7, i32 35063 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 14 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 8 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 0 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 14 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 64 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }], section ".init.data", align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ptp_classify_raw, ptr @__ksymtab_ptp_parse_header], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_classify_raw(ptr noundef %0) #0 {
  %2 = load ptr, ptr @ptp_insns, align 4
  %3 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %33, !prof !9

5:                                                ; preds = %1
  %6 = tail call i64 @sched_clock() #6
  %7 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 1
  %8 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %7) #6
  %11 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #5, !srcloc !10
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.bpf_prog_stats, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !11
  %21 = load i32, ptr %19, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %19, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  %23 = load i64, ptr %18, align 8
  %24 = add i64 %23, 1
  store i64 %24, ptr %18, align 8
  %25 = getelementptr inbounds %struct.bpf_prog_stats, ptr %18, i32 0, i32 1
  %26 = tail call i64 @sched_clock() #6
  %27 = sub i64 %26, %6
  %28 = and i64 %27, 4294967295
  %29 = load i64, ptr %25, align 8
  %30 = add i64 %28, %29
  store i64 %30, ptr %25, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !13
  %31 = load i32, ptr %19, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %19, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #6, !srcloc !14
  br label %38

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 1
  %35 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %34) #6
  br label %38

38:                                               ; preds = %33, %5
  %39 = phi i32 [ %10, %5 ], [ %37, %33 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ptp_parse_header(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = lshr i32 %1, 5
  %10 = and i32 %9, 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = and i32 %1, 112
  switch i32 %12, label %34 [
    i32 16, label %13
    i32 32, label %21
    i32 64, label %23
  ]

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %11, i32 14
  %15 = load i8, ptr %14, align 4
  %16 = shl i8 %15, 2
  %17 = and i8 %16, 60
  %18 = add nuw nsw i8 %17, 8
  %19 = zext i8 %18 to i32
  %20 = getelementptr i8, ptr %11, i32 %19
  br label %23

21:                                               ; preds = %2
  %22 = getelementptr i8, ptr %11, i32 48
  br label %23

23:                                               ; preds = %21, %13, %2
  %24 = phi ptr [ %11, %2 ], [ %22, %21 ], [ %20, %13 ]
  %25 = getelementptr i8, ptr %24, i32 48
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = icmp ugt ptr %25, %30
  %32 = getelementptr i8, ptr %24, i32 14
  %33 = select i1 %31, ptr null, ptr %32
  br label %34

34:                                               ; preds = %23, %2
  %35 = phi ptr [ null, %2 ], [ %33, %23 ]
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ptp_classifier_init() local_unnamed_addr #3 section ".init.text" {
  %1 = alloca %struct.sock_fprog_kern, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #6
  store i64 66, ptr %1, align 8, !annotation !15
  %2 = getelementptr inbounds %struct.sock_fprog_kern, ptr %1, i32 0, i32 1
  store ptr @ptp_classifier_init.ptp_filter, ptr %2, align 4
  %3 = call i32 @bpf_prog_create(ptr noundef nonnull @ptp_insns, ptr noundef nonnull %1) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !16

5:                                                ; preds = %0
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/ptp_classifier.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #6, !srcloc !17
  unreachable

6:                                                ; preds = %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 468942}
!11 = !{i64 450242, i64 450303}
!12 = !{i64 2149661076}
!13 = !{i64 2149661377}
!14 = !{i64 453259}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2155546775, i64 2155547265, i64 2155546812, i64 2155546868, i64 2155546902, i64 2155546926, i64 2155546967, i64 2155546988, i64 2155547016, i64 2155547050}
