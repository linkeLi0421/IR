; ModuleID = '/llk/IR/net/ipv4/protocol.c_pt.bc'
source_filename = "../net/ipv4/protocol.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_protos:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_protos\22\09\09\09\09\09"
module asm "__kstrtabns_inet_protos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_offloads:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_offloads\22\09\09\09\09\09"
module asm "__kstrtabns_inet_offloads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_add_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_add_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_inet_add_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_add_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_add_offload\22\09\09\09\09\09"
module asm "__kstrtabns_inet_add_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_del_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_del_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_inet_del_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_del_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_del_offload\22\09\09\09\09\09"
module asm "__kstrtabns_inet_del_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@inet_protos = dso_local global [256 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_inet_protos = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_protos = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_protos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_protos to i32), ptr @__kstrtab_inet_protos, ptr @__kstrtabns_inet_protos }, section "___ksymtab+inet_protos", align 4
@inet_offloads = dso_local global [256 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_inet_offloads = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_offloads = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_offloads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_offloads to i32), ptr @__kstrtab_inet_offloads, ptr @__kstrtabns_inet_offloads }, section "___ksymtab+inet_offloads", align 4
@__kstrtab_inet_add_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_add_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_add_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_add_protocol to i32), ptr @__kstrtab_inet_add_protocol, ptr @__kstrtabns_inet_add_protocol }, section "___ksymtab+inet_add_protocol", align 4
@__kstrtab_inet_add_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_add_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_add_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_add_offload to i32), ptr @__kstrtab_inet_add_offload, ptr @__kstrtabns_inet_add_offload }, section "___ksymtab+inet_add_offload", align 4
@__kstrtab_inet_del_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_del_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_del_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_del_protocol to i32), ptr @__kstrtab_inet_del_protocol, ptr @__kstrtabns_inet_del_protocol }, section "___ksymtab+inet_del_protocol", align 4
@__kstrtab_inet_del_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_del_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_del_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_del_offload to i32), ptr @__kstrtab_inet_del_offload, ptr @__kstrtabns_inet_del_offload }, section "___ksymtab+inet_del_offload", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_inet_add_offload, ptr @__ksymtab_inet_add_protocol, ptr @__ksymtab_inet_del_offload, ptr @__ksymtab_inet_del_protocol, ptr @__ksymtab_inet_offloads, ptr @__ksymtab_inet_protos], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_add_protocol(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %5 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #2, !srcloc !9
  br label %6

6:                                                ; preds = %6, %2
  %7 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %4, i32 0, i32 %5) #2, !srcloc !10
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !11
  %12 = icmp ne i32 %11, 0
  %13 = sext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_add_offload(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !12
  %5 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #2, !srcloc !9
  br label %6

6:                                                ; preds = %6, %2
  %7 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %4, i32 0, i32 %5) #2, !srcloc !10
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !13
  %12 = icmp ne i32 %11, 0
  %13 = sext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_del_protocol(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !14
  %5 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #2, !srcloc !9
  br label %6

6:                                                ; preds = %6, %2
  %7 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %4, i32 %5, i32 0) #2, !srcloc !10
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !15
  %13 = icmp ne ptr %12, %0
  %14 = sext i1 %13 to i32
  tail call void @synchronize_net() #2
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_del_offload(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !16
  %5 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #2, !srcloc !9
  br label %6

6:                                                ; preds = %6, %2
  %7 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %4, i32 %5, i32 0) #2, !srcloc !10
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !17
  %13 = icmp ne ptr %12, %0
  %14 = sext i1 %13 to i32
  tail call void @synchronize_net() #2
  ret i32 %14
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 2155488241}
!9 = !{i64 541795, i64 2148031766, i64 2148031792, i64 2148031839, i64 2148031861, i64 2148031889, i64 2148031909}
!10 = !{i64 553169, i64 553190, i64 553213, i64 553232, i64 553251}
!11 = !{i64 2155488629}
!12 = !{i64 2155490912}
!13 = !{i64 2155491300}
!14 = !{i64 2155493555}
!15 = !{i64 2155493943}
!16 = !{i64 2155496222}
!17 = !{i64 2155496610}
