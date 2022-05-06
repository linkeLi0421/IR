; ModuleID = '/llk/IR/net/ipv6/tcpv6_offload.c_pt.bc'
source_filename = "../net/ipv6/tcpv6_offload.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.157, %union.anon.158, [48 x i8], %union.anon.159, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.161, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.157 = type { ptr }
%union.anon.158 = type { i64 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, ptr }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.163, i32, i32, i32, i16, i16, %union.anon.165, %union.anon.166, %union.anon.167, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.163 = type { i32 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.55 }
%union.anon.55 = type { [4 x i32] }
%struct.anon.164 = type { i16, i16 }

@tcpv6_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @tcp6_gso_segment, ptr @tcp6_gro_receive, ptr @tcp6_gro_complete }, i32 0 }, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tcpv6_offload_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @inet6_add_offload(ptr noundef nonnull @tcpv6_offload, i8 noundef zeroext 6) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tcp6_gso_segment(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp ugt i32 %14, 19
  br i1 %15, label %22, label %16, !prof !8

16:                                               ; preds = %9
  %17 = icmp ult i32 %11, 20
  br i1 %17, label %45, label %18, !prof !9

18:                                               ; preds = %16
  %19 = sub nuw nsw i32 20, %14
  %20 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %19) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %18, %9
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 96
  %26 = icmp eq i16 %25, 96
  br i1 %26, label %43, label %27, !prof !8

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %29, i32 %36
  %38 = getelementptr inbounds %struct.tcphdr, ptr %37, i32 0, i32 6
  store i16 0, ptr %38, align 4
  %39 = load i16, ptr %23, align 8
  %40 = or i16 %39, 96
  store i16 %40, ptr %23, align 8
  %41 = getelementptr inbounds %struct.ipv6hdr, ptr %33, i32 0, i32 5
  %42 = getelementptr inbounds %struct.ipv6hdr, ptr %33, i32 0, i32 6
  tail call fastcc void @__tcp_v6_send_check(ptr noundef %0, ptr noundef %41, ptr noundef %42)
  br label %43

43:                                               ; preds = %27, %22
  %44 = tail call ptr @tcp_gso_segment(ptr noundef %0, i64 noundef %1) #5
  br label %45

45:                                               ; preds = %43, %18, %16, %2
  %46 = phi ptr [ %44, %43 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %16 ]
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tcp6_gro_receive(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %118

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 96
  %10 = icmp eq i16 %9, 96
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %13 = load i32, ptr %12, align 8
  br label %29

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %19 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %17, %22
  %25 = add i32 %24, %23
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %14, %11
  %30 = phi i32 [ %13, %11 ], [ %27, %14 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %83, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %37 = load i16, ptr %36, align 2
  %38 = and i16 %37, 56
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = select i1 %43, ptr %45, ptr %42
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = ptrtoint ptr %52 to i32
  %54 = ptrtoint ptr %45 to i32
  %55 = sub i32 %53, %54
  %56 = getelementptr i8, ptr %46, i32 %55
  %57 = getelementptr inbounds %struct.ipv6hdr, ptr %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.ipv6hdr, ptr %56, i32 0, i32 6
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = sub i32 %60, %30
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %63 = tail call i32 @__csum_ipv6_magic(ptr noundef %57, ptr noundef %58, i32 noundef %62, i32 noundef 100663296, i32 noundef 0) #5
  %64 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %63) #6, !srcloc !10
  %65 = lshr i32 %64, 16
  %66 = or i32 %65, -65536
  %67 = load i16, ptr %36, align 2
  %68 = and i16 %67, 4
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %40
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %66
  %74 = icmp ult i32 %73, %72
  %75 = zext i1 %74 to i32
  %76 = add i32 %73, %75
  %77 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %76) #6, !srcloc !10
  %78 = icmp ugt i32 %77, -65537
  br i1 %78, label %83, label %79

79:                                               ; preds = %70, %40
  %80 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %66, ptr %80, align 4
  %81 = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %1) #5
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %79, %70, %35, %29, %14
  %84 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %85 = load i16, ptr %84, align 2
  %86 = trunc i16 %85 to i8
  %87 = and i8 %86, 56
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = add i8 %86, 56
  %91 = and i8 %90, 56
  %92 = zext i8 %91 to i16
  %93 = and i16 %85, -57
  %94 = or i16 %93, %92
  store i16 %94, ptr %84, align 2
  br label %118

95:                                               ; preds = %83
  %96 = load i16, ptr %7, align 8
  %97 = lshr i16 %96, 5
  %98 = trunc i16 %97 to i2
  switch i2 %98, label %118 [
    i2 1, label %99
    i2 0, label %111
  ]

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %101 = load i16, ptr %100, align 2
  %102 = trunc i16 %101 to i8
  %103 = and i8 %102, 12
  %104 = icmp eq i8 %103, 12
  br i1 %104, label %118, label %105

105:                                              ; preds = %99
  %106 = add i8 %102, 4
  %107 = and i8 %106, 12
  %108 = zext i8 %107 to i16
  %109 = and i16 %101, -13
  %110 = or i16 %109, %108
  store i16 %110, ptr %100, align 2
  br label %118

111:                                              ; preds = %95
  %112 = and i16 %96, -97
  %113 = or i16 %112, 32
  store i16 %113, ptr %7, align 8
  %114 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %115 = load i16, ptr %114, align 2
  %116 = and i16 %115, -13
  store i16 %116, ptr %114, align 2
  br label %118

117:                                              ; preds = %79
  store i16 1, ptr %3, align 4
  br label %120

118:                                              ; preds = %111, %105, %99, %95, %89, %2
  %119 = tail call ptr @tcp_gro_receive(ptr noundef %0, ptr noundef %1) #5
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi ptr [ %119, %118 ], [ null, %117 ]
  ret ptr %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp6_gro_complete(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %4, i32 %11
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = sub i32 %14, %1
  %16 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 5
  %17 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 6
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %19 = tail call i32 @__csum_ipv6_magic(ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef 100663296, i32 noundef 0) #5
  %20 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %19) #6, !srcloc !10
  %21 = xor i32 %20, -1
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i16
  %24 = xor i16 %23, -1
  %25 = getelementptr inbounds %struct.tcphdr, ptr %12, i32 0, i32 6
  store i16 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = or i32 %29, 16
  store i32 %30, ptr %28, align 8
  %31 = tail call i32 @tcp_gro_complete(ptr noundef %0) #5
  ret i32 %31
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__tcp_v6_send_check(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %13 = tail call i32 @__csum_ipv6_magic(ptr noundef %1, ptr noundef %2, i32 noundef %12, i32 noundef 100663296, i32 noundef 0) #5
  %14 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %13) #6, !srcloc !10
  %15 = xor i32 %14, -1
  %16 = lshr i32 %15, 16
  %17 = trunc i32 %16 to i16
  %18 = xor i16 %17, -1
  %19 = getelementptr inbounds %struct.tcphdr, ptr %9, i32 0, i32 6
  store i16 %18, ptr %19, align 4
  %20 = load i16, ptr %6, align 2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.anon.164, ptr %21, i32 0, i32 1
  store i16 16, ptr %22, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_gro_complete(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 5175949}
