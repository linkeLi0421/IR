; ModuleID = '/llk/IR/net/ipv4/netlink.c_pt.bc'
source_filename = "../net/ipv4/netlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtm_getroute_parse_ip_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22rtm_getroute_parse_ip_proto\22\09\09\09\09\09"
module asm "__kstrtabns_rtm_getroute_parse_ip_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@rtm_getroute_parse_ip_proto.__msg = internal constant [21 x i8] c"Unsupported ip proto\00", align 1
@__kstrtab_rtm_getroute_parse_ip_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtm_getroute_parse_ip_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_rtm_getroute_parse_ip_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtm_getroute_parse_ip_proto to i32), ptr @__kstrtab_rtm_getroute_parse_ip_proto, ptr @__kstrtabns_rtm_getroute_parse_ip_proto }, section "___ksymtab_gpl+rtm_getroute_parse_ip_proto", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_rtm_getroute_parse_ip_proto], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtm_getroute_parse_ip_proto(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2, ptr noundef writeonly %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %1, align 1
  switch i8 %6, label %11 [
    i8 6, label %14
    i8 17, label %14
    i8 1, label %7
    i8 58, label %9
  ]

7:                                                ; preds = %4
  %8 = icmp eq i8 %2, 2
  br i1 %8, label %14, label %11

9:                                                ; preds = %4
  %10 = icmp eq i8 %2, 10
  br i1 %10, label %14, label %11

11:                                               ; preds = %9, %7, %4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_getroute_parse_ip_proto.__msg) #2
  %12 = icmp eq ptr %3, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  store ptr @rtm_getroute_parse_ip_proto.__msg, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %11, %9, %7, %4, %4
  %15 = phi i32 [ 0, %4 ], [ 0, %4 ], [ 0, %7 ], [ 0, %9 ], [ -95, %13 ], [ -95, %11 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

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
