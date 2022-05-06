; ModuleID = '/llk/IR/net/ipv6/ip6_checksum.c_pt.bc'
source_filename = "../net/ipv6/ip6_checksum.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp6_csum_init:\09\09\09\09\09"
module asm "\09.asciz \09\22udp6_csum_init\22\09\09\09\09\09"
module asm "__kstrtabns_udp6_csum_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp6_set_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22udp6_set_csum\22\09\09\09\09\09"
module asm "__kstrtabns_udp6_set_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.122 = type { i16, i16 }

@__kstrtab_udp6_csum_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp6_csum_init = external dso_local constant [0 x i8], align 1
@__ksymtab_udp6_csum_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp6_csum_init to i32), ptr @__kstrtab_udp6_csum_init, ptr @__kstrtabns_udp6_csum_init }, section "___ksymtab+udp6_csum_init", align 4
@__kstrtab_udp6_set_csum = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp6_set_csum = external dso_local constant [0 x i8], align 1
@__ksymtab_udp6_set_csum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp6_set_csum to i32), ptr @__kstrtab_udp6_set_csum, ptr @__kstrtabns_udp6_set_csum }, section "___ksymtab+udp6_set_csum", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_udp6_csum_init, ptr @__ksymtab_udp6_set_csum], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp6_csum_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  store i8 0, ptr %4, align 2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store i16 %7, ptr %8, align 8
  %9 = icmp eq i32 %2, 136
  br i1 %9, label %10, label %48

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.udphdr, ptr %1, i32 0, i32 3
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %143, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.udphdr, ptr %1, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #3
  %18 = zext i16 %17 to i32
  %19 = icmp eq i16 %16, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %14
  %21 = icmp ult i16 %17, 8
  %22 = icmp ult i32 %6, %18
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %143, label %24

24:                                               ; preds = %20
  %25 = icmp ugt i32 %6, %18
  br i1 %25, label %26, label %48

26:                                               ; preds = %24
  store i8 1, ptr %4, align 2
  store i16 %17, ptr %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 96
  %30 = icmp eq i16 %29, 64
  %31 = and i16 %28, 32671
  %32 = select i1 %30, i16 %31, i16 %28
  %33 = and i16 %32, 32767
  store i16 %33, ptr %27, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %35, i32 %38
  %40 = getelementptr inbounds %struct.ipv6hdr, ptr %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.ipv6hdr, ptr %39, i32 0, i32 6
  %42 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %43 = tail call i32 @__csum_ipv6_magic(ptr noundef %40, ptr noundef %41, i32 noundef %42, i32 noundef -2013265920, i32 noundef 0) #3
  %44 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %43) #4, !srcloc !8
  %45 = lshr i32 %44, 16
  %46 = or i32 %45, -65536
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  br label %143

48:                                               ; preds = %24, %14, %3
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %50 = load i16, ptr %49, align 8
  %51 = and i16 %50, 32767
  store i16 %51, ptr %49, align 8
  %52 = getelementptr inbounds %struct.udphdr, ptr %1, i32 0, i32 3
  %53 = load i16, ptr %52, align 2
  %54 = lshr i16 %50, 5
  %55 = trunc i16 %54 to i2
  switch i2 %55, label %69 [
    i2 1, label %73
    i2 -1, label %56
  ]

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %63 = load ptr, ptr %62, align 8
  %64 = ptrtoint ptr %61 to i32
  %65 = ptrtoint ptr %63 to i32
  %66 = sub i32 %59, %64
  %67 = add i32 %66, %65
  %68 = icmp sgt i32 %67, -1
  br label %69

69:                                               ; preds = %56, %48
  %70 = phi i1 [ %68, %56 ], [ false, %48 ]
  %71 = icmp eq i16 %53, 0
  %72 = or i1 %71, %70
  br i1 %72, label %73, label %91

73:                                               ; preds = %69, %48
  %74 = or i16 %50, -32768
  store i16 %74, ptr %49, align 8
  %75 = and i16 %50, 96
  %76 = icmp eq i16 %75, 32
  br i1 %76, label %77, label %132

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %79 = load i16, ptr %78, align 2
  %80 = trunc i16 %79 to i8
  %81 = and i8 %80, 12
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = and i16 %74, -97
  store i16 %84, ptr %49, align 8
  br label %132

85:                                               ; preds = %77
  %86 = add i8 %80, 12
  %87 = and i8 %86, 12
  %88 = zext i8 %87 to i16
  %89 = and i16 %79, -13
  %90 = or i16 %89, %88
  store i16 %90, ptr %78, align 2
  br label %132

91:                                               ; preds = %69
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  %97 = getelementptr i8, ptr %93, i32 %96
  %98 = getelementptr inbounds %struct.ipv6hdr, ptr %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.ipv6hdr, ptr %97, i32 0, i32 6
  %100 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %101 = shl i32 %2, 24
  %102 = tail call i32 @__csum_ipv6_magic(ptr noundef %98, ptr noundef %99, i32 noundef %100, i32 noundef %101, i32 noundef 0) #3
  %103 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %102) #4, !srcloc !8
  %104 = lshr i32 %103, 16
  %105 = or i32 %104, -65536
  %106 = load i16, ptr %49, align 8
  %107 = and i16 %106, 96
  %108 = icmp eq i16 %107, 64
  br i1 %108, label %109, label %120

109:                                              ; preds = %91
  %110 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, %105
  %113 = icmp ult i32 %112, %111
  %114 = zext i1 %113 to i32
  %115 = add i32 %112, %114
  %116 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %115) #4, !srcloc !8
  %117 = icmp ugt i32 %116, -65537
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = or i16 %106, -32768
  store i16 %119, ptr %49, align 8
  br label %132

120:                                              ; preds = %109, %91
  %121 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %105, ptr %121, align 4
  %122 = load i32, ptr %5, align 8
  %123 = icmp ult i32 %122, 77
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #3
  %126 = icmp eq i16 %125, 0
  %127 = load i16, ptr %49, align 8
  %128 = select i1 %126, i16 -32768, i16 0
  %129 = and i16 %127, 32767
  %130 = or i16 %129, %128
  store i16 %130, ptr %49, align 8
  %131 = zext i16 %125 to i32
  br i1 %126, label %132, label %143

132:                                              ; preds = %124, %120, %118, %85, %83, %73
  %133 = phi i16 [ %106, %120 ], [ %74, %73 ], [ %84, %83 ], [ %74, %85 ], [ %119, %118 ], [ %130, %124 ]
  %134 = and i16 %133, -32672
  %135 = icmp eq i16 %134, 64
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %138 = load i16, ptr %137, align 2
  %139 = and i16 %138, 2
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = and i16 %133, -97
  store i16 %142, ptr %49, align 8
  br label %143

143:                                              ; preds = %141, %136, %132, %124, %26, %20, %10
  %144 = phi i32 [ 0, %26 ], [ %131, %124 ], [ 1, %136 ], [ 0, %141 ], [ 0, %132 ], [ 1, %10 ], [ 1, %20 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp6_set_csum(i1 noundef zeroext %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  br i1 %0, label %12, label %14

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  store i16 0, ptr %13, align 2
  br label %75

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 4
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  %22 = tail call i32 @__csum_ipv6_magic(ptr noundef %2, ptr noundef %3, i32 noundef %21, i32 noundef 285212672, i32 noundef 0) #3
  %23 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %22) #4, !srcloc !8
  %24 = xor i32 %23, -1
  %25 = lshr i32 %24, 16
  %26 = trunc i32 %25 to i16
  %27 = xor i16 %26, -1
  %28 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  store i16 %27, ptr %28, align 2
  br label %75

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %31 = load i16, ptr %30, align 8
  %32 = and i16 %31, 96
  %33 = icmp eq i16 %32, 96
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  store i16 0, ptr %35, align 2
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = load i16, ptr %8, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %36, i32 %42
  %44 = getelementptr inbounds %struct.anon.122, ptr %37, i32 0, i32 1
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %40, i32 %46
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = xor i32 %49, -1
  %51 = ptrtoint ptr %40 to i32
  %52 = ptrtoint ptr %43 to i32
  %53 = sub i32 %51, %52
  %54 = tail call i32 @csum_partial(ptr noundef %43, i32 noundef %53, i32 noundef %50) #3
  %55 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  %56 = tail call i32 @__csum_ipv6_magic(ptr noundef %2, ptr noundef %3, i32 noundef %55, i32 noundef 285212672, i32 noundef %54) #3
  %57 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %56) #4, !srcloc !8
  %58 = xor i32 %57, -1
  %59 = lshr i32 %58, 16
  %60 = trunc i32 %59 to i16
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %61, i16 -1, i16 %60
  store i16 %62, ptr %35, align 2
  br label %75

63:                                               ; preds = %29
  %64 = or i16 %31, 96
  store i16 %64, ptr %30, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i16 %9, ptr %65, align 4
  %66 = getelementptr inbounds %struct.anon.122, ptr %65, i32 0, i32 1
  store i16 6, ptr %66, align 2
  %67 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  %68 = tail call i32 @__csum_ipv6_magic(ptr noundef %2, ptr noundef %3, i32 noundef %67, i32 noundef 285212672, i32 noundef 0) #3
  %69 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %68) #4, !srcloc !8
  %70 = xor i32 %69, -1
  %71 = lshr i32 %70, 16
  %72 = trunc i32 %71 to i16
  %73 = xor i16 %72, -1
  %74 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  store i16 %73, ptr %74, align 2
  br label %75

75:                                               ; preds = %63, %34, %20, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

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
!8 = !{i64 5198181}
