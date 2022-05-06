; ModuleID = '/llk/IR/net/ipv4/xfrm4_output.c_pt.bc'
source_filename = "../net/ipv4/xfrm4_output.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon.75, %union.anon.108, %union.anon.109, [48 x i8], %union.anon.110, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.112, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.108 = type { ptr }
%union.anon.109 = type { i64 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { i32, ptr }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.114, i32, i32, i32, i16, i16, %union.anon.116, %union.anon.117, %union.anon.118, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.114 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sock_common = type { %union.anon.12, %union.anon.14, %union.anon.15, i16, i8, i8, i32, %union.anon.17, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.126, [0 x i32], %union.anon.127, i16, i16, %union.anon.128, %struct.refcount_struct, [0 x i32], %union.anon.129 }
%union.anon.12 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { %struct.hlist_node }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_output(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @xfrm_output(ptr noundef %1, ptr noundef %2) #2
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm4_local_error(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 8192
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %11 = select i1 %6, ptr %9, ptr %10
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %8, i32 %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iphdr, ptr %14, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 2
  %20 = load i16, ptr %19, align 4
  tail call void @ip_local_error(ptr noundef %16, i32 noundef 90, i32 noundef %18, i16 noundef zeroext %20, i32 noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_local_error(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_output(ptr noundef, ptr noundef) local_unnamed_addr #1

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
