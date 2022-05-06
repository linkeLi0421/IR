; ModuleID = '/llk/IR/kernel/locking/osq_lock.c_pt.bc'
source_filename = "../kernel/locking/osq_lock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.optimistic_spin_node = type { ptr, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@osq_node = internal global %struct.optimistic_spin_node zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @osq_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #2, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @osq_node to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #4
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  %11 = getelementptr inbounds %struct.optimistic_spin_node, ptr %6, i32 0, i32 2
  store i32 0, ptr %11, align 4
  store ptr null, ptr %6, align 4
  %12 = getelementptr inbounds %struct.optimistic_spin_node, ptr %6, i32 0, i32 3
  store i32 %10, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !11
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %10, ptr %0) #4, !srcloc !12
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %82, label %16

16:                                               ; preds = %1
  %17 = add i32 %14, -1
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, ptrtoint (ptr @osq_node to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.optimistic_spin_node, ptr %6, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #4, !srcloc !14
  store volatile ptr %6, ptr %21, align 4
  %23 = load volatile i32, ptr %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %82

25:                                               ; preds = %29, %16
  %26 = load volatile i32, ptr %7, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !16
  %30 = load volatile i32, ptr %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %25, label %82

32:                                               ; preds = %48, %25
  %33 = phi ptr [ %49, %48 ], [ %21, %25 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #4, !srcloc !11
  br label %37

37:                                               ; preds = %37, %36
  %38 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %33, i32 %5, i32 0) #4, !srcloc !18
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37
  %42 = extractvalue { i32, i32 } %38, 1
  %43 = inttoptr i32 %42 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !19
  %44 = icmp eq ptr %43, %6
  br i1 %44, label %50, label %45

45:                                               ; preds = %41, %32
  %46 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !22
  %49 = load volatile ptr, ptr %22, align 4
  br label %32

50:                                               ; preds = %41
  %51 = load i32, ptr %8, align 8
  %52 = add i32 %51, 1
  %53 = icmp eq ptr %33, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.optimistic_spin_node, ptr %33, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i32 [ %56, %54 ], [ 0, %50 ]
  br label %59

59:                                               ; preds = %77, %57
  %60 = load volatile i32, ptr %0, align 4
  %61 = icmp eq i32 %60, %52
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !11
  br label %63

63:                                               ; preds = %63, %62
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %52, i32 %58, ptr elementtype(i32) %0) #4, !srcloc !23
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %63

67:                                               ; preds = %63
  %68 = extractvalue { i32, i32 } %64, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !24
  %69 = icmp eq i32 %68, %52
  br i1 %69, label %82, label %70

70:                                               ; preds = %67, %59
  %71 = load ptr, ptr %6, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #4, !srcloc !11
  %74 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #4, !srcloc !12
  %75 = extractvalue { i32, i32 } %74, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !26
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !28
  br label %59

78:                                               ; preds = %73
  %79 = extractvalue { i32, i32 } %74, 0
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.optimistic_spin_node, ptr %80, i32 0, i32 1
  store volatile ptr %33, ptr %81, align 4
  store volatile ptr %80, ptr %33, align 4
  br label %82

82:                                               ; preds = %78, %67, %45, %29, %16, %1
  %83 = phi i1 [ false, %78 ], [ true, %1 ], [ true, %16 ], [ false, %67 ], [ true, %45 ], [ true, %29 ]
  ret i1 %83
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @osq_wait_next(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #1 {
  %4 = tail call ptr @llvm.thread.pointer() #4
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.optimistic_spin_node, ptr %2, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %11, %9 ], [ 0, %3 ]
  br label %14

14:                                               ; preds = %32, %12
  %15 = load volatile i32, ptr %0, align 4
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !11
  br label %18

18:                                               ; preds = %18, %17
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %7, i32 %13, ptr elementtype(i32) %0) #4, !srcloc !23
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18
  %23 = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !24
  %24 = icmp eq i32 %23, %7
  br i1 %24, label %36, label %25

25:                                               ; preds = %22, %14
  %26 = load ptr, ptr %1, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #4, !srcloc !11
  %29 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %1) #4, !srcloc !12
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !28
  br label %14

33:                                               ; preds = %28
  %34 = extractvalue { i32, i32 } %29, 0
  %35 = inttoptr i32 %34 to ptr
  br label %36

36:                                               ; preds = %33, %22
  %37 = phi ptr [ %35, %33 ], [ null, %22 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @osq_unlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #4
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !11
  br label %6

6:                                                ; preds = %6, %1
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %5, i32 0, ptr elementtype(i32) %0) #4, !srcloc !23
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %30, label %13, !prof !30

13:                                               ; preds = %10
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #2, !srcloc !9
  %17 = add i32 %16, ptrtoint (ptr @osq_node to i32)
  %18 = inttoptr i32 %17 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #4, !srcloc !11
  %19 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %18) #4, !srcloc !12
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = inttoptr i32 %20 to ptr
  br label %27

24:                                               ; preds = %13
  %25 = tail call fastcc ptr @osq_wait_next(ptr noundef %0, ptr noundef %18, ptr noundef null)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %23, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.optimistic_spin_node, ptr %28, i32 0, i32 2
  store volatile i32 1, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %24, %10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind readonly }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }

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
!9 = !{i64 574486}
!10 = !{i64 2148439629}
!11 = !{i64 650108, i64 2148140079, i64 2148140105, i64 2148140152, i64 2148140174, i64 2148140202, i64 2148140222}
!12 = !{i64 658758, i64 658775, i64 658799, i64 658825, i64 658843}
!13 = !{i64 2148439973}
!14 = !{i64 2149859133}
!15 = !{i64 2149865223}
!16 = !{i64 2149865065}
!17 = !{i64 2149867161}
!18 = !{i64 661482, i64 661503, i64 661526, i64 661545, i64 661564}
!19 = !{i64 2149867549}
!20 = !{i64 2149873290}
!21 = !{i64 2149873539}
!22 = !{i64 2149873381}
!23 = !{i64 636171, i64 636195, i64 636216, i64 636233, i64 636250}
!24 = !{i64 2148264122}
!25 = !{i64 2149857605}
!26 = !{i64 2149857932}
!27 = !{i64 2149858181}
!28 = !{i64 2149858023}
!29 = !{i64 2148264507}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2149882141}
!32 = !{i64 2149882468}
