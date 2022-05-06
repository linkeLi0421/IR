; ModuleID = '/llk/IR/drivers/crypto/caam/pkc_desc.c_pt.bc'
source_filename = "../drivers/crypto/caam/pkc_desc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsa_pub_pdb = type { i32, i32, i32, i32, i32, i32 }
%struct.rsa_priv_f1_pdb = type { i32, i32, i32, i32, i32 }
%struct.rsa_priv_f2_pdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rsa_priv_f3_pdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @init_rsa_pub_desc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @caam_ptr_sz, align 4
  %4 = shl i32 %3, 16
  %5 = add i32 %4, 245760
  %6 = and i32 %5, 1333723136
  %7 = or i32 %6, -1333788671
  %8 = load i8, ptr @caam_little_end, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #2
  %11 = select i1 %9, i32 %10, i32 %7
  store i32 %11, ptr %0, align 4
  %12 = load i32, ptr %1, align 4
  %13 = load i8, ptr @caam_little_end, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = lshr i32 %11, 24
  %16 = select i1 %14, i32 %15, i32 %11
  %17 = and i32 %16, 127
  %18 = getelementptr i32, ptr %0, i32 %17
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #2
  %20 = select i1 %14, i32 %19, i32 %12
  store i32 %20, ptr %18, align 4
  %21 = load i32, ptr %0, align 4
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #2
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = add i32 %25, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #2
  %28 = select i1 %23, i32 %27, i32 %26
  store i32 %28, ptr %0, align 4
  %29 = getelementptr inbounds %struct.rsa_pub_pdb, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i8, ptr @caam_little_end, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = lshr i32 %28, 24
  %34 = select i1 %32, i32 %33, i32 %28
  %35 = and i32 %34, 127
  %36 = getelementptr i32, ptr %0, i32 %35
  %37 = tail call i32 @llvm.bswap.i32(i32 %30) #2
  %38 = select i1 %32, i32 %37, i32 %30
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr %0, align 4
  %40 = load i8, ptr @caam_little_end, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #2
  %43 = select i1 %41, i32 %42, i32 %39
  %44 = load i32, ptr @caam_ptr_sz, align 4
  %45 = lshr i32 %44, 2
  %46 = add i32 %43, %45
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #2
  %48 = select i1 %41, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = getelementptr inbounds %struct.rsa_pub_pdb, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  %57 = tail call i32 @llvm.bswap.i32(i32 %50) #2
  %58 = select i1 %52, i32 %57, i32 %50
  store i32 %58, ptr %56, align 4
  %59 = load i32, ptr %0, align 4
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #2
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = load i32, ptr @caam_ptr_sz, align 4
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #2
  %68 = select i1 %61, i32 %67, i32 %66
  store i32 %68, ptr %0, align 4
  %69 = getelementptr inbounds %struct.rsa_pub_pdb, ptr %1, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = load i8, ptr @caam_little_end, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = lshr i32 %68, 24
  %74 = select i1 %72, i32 %73, i32 %68
  %75 = and i32 %74, 127
  %76 = getelementptr i32, ptr %0, i32 %75
  %77 = tail call i32 @llvm.bswap.i32(i32 %70) #2
  %78 = select i1 %72, i32 %77, i32 %70
  store i32 %78, ptr %76, align 4
  %79 = load i32, ptr %0, align 4
  %80 = load i8, ptr @caam_little_end, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #2
  %83 = select i1 %81, i32 %82, i32 %79
  %84 = load i32, ptr @caam_ptr_sz, align 4
  %85 = lshr i32 %84, 2
  %86 = add i32 %83, %85
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #2
  %88 = select i1 %81, i32 %87, i32 %86
  store i32 %88, ptr %0, align 4
  %89 = getelementptr inbounds %struct.rsa_pub_pdb, ptr %1, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %88, 24
  %94 = select i1 %92, i32 %93, i32 %88
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %90) #2
  %98 = select i1 %92, i32 %97, i32 %90
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #2
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #2
  %108 = select i1 %101, i32 %107, i32 %106
  store i32 %108, ptr %0, align 4
  %109 = getelementptr inbounds %struct.rsa_pub_pdb, ptr %1, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = load i8, ptr @caam_little_end, align 1, !range !8
  %112 = icmp eq i8 %111, 0
  %113 = lshr i32 %108, 24
  %114 = select i1 %112, i32 %113, i32 %108
  %115 = and i32 %114, 127
  %116 = getelementptr i32, ptr %0, i32 %115
  %117 = tail call i32 @llvm.bswap.i32(i32 %110) #2
  %118 = select i1 %112, i32 %117, i32 %110
  store i32 %118, ptr %116, align 4
  %119 = load i32, ptr %0, align 4
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #2
  %123 = select i1 %121, i32 %122, i32 %119
  %124 = add i32 %123, 1
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #2
  %126 = select i1 %121, i32 %125, i32 %124
  store i32 %126, ptr %0, align 4
  %127 = load i8, ptr @caam_little_end, align 1, !range !8
  %128 = icmp eq i8 %127, 0
  %129 = lshr i32 %126, 24
  %130 = select i1 %128, i32 %129, i32 %126
  %131 = and i32 %130, 127
  %132 = getelementptr i32, ptr %0, i32 %131
  %133 = select i1 %128, i32 6272, i32 -2145910784
  store i32 %133, ptr %132, align 4
  %134 = load i32, ptr %0, align 4
  %135 = load i8, ptr @caam_little_end, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = tail call i32 @llvm.bswap.i32(i32 %134) #2
  %138 = select i1 %136, i32 %137, i32 %134
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #2
  %141 = select i1 %136, i32 %140, i32 %139
  store i32 %141, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @init_rsa_priv_f1_desc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @caam_ptr_sz, align 4
  %4 = shl i32 %3, 16
  %5 = add i32 %4, 180224
  %6 = and i32 %5, 1333723136
  %7 = or i32 %6, -1333788671
  %8 = load i8, ptr @caam_little_end, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #2
  %11 = select i1 %9, i32 %10, i32 %7
  store i32 %11, ptr %0, align 4
  %12 = load i32, ptr %1, align 4
  %13 = load i8, ptr @caam_little_end, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = lshr i32 %11, 24
  %16 = select i1 %14, i32 %15, i32 %11
  %17 = and i32 %16, 127
  %18 = getelementptr i32, ptr %0, i32 %17
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #2
  %20 = select i1 %14, i32 %19, i32 %12
  store i32 %20, ptr %18, align 4
  %21 = load i32, ptr %0, align 4
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #2
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = add i32 %25, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #2
  %28 = select i1 %23, i32 %27, i32 %26
  store i32 %28, ptr %0, align 4
  %29 = getelementptr inbounds %struct.rsa_priv_f1_pdb, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i8, ptr @caam_little_end, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = lshr i32 %28, 24
  %34 = select i1 %32, i32 %33, i32 %28
  %35 = and i32 %34, 127
  %36 = getelementptr i32, ptr %0, i32 %35
  %37 = tail call i32 @llvm.bswap.i32(i32 %30) #2
  %38 = select i1 %32, i32 %37, i32 %30
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr %0, align 4
  %40 = load i8, ptr @caam_little_end, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #2
  %43 = select i1 %41, i32 %42, i32 %39
  %44 = load i32, ptr @caam_ptr_sz, align 4
  %45 = lshr i32 %44, 2
  %46 = add i32 %43, %45
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #2
  %48 = select i1 %41, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = getelementptr inbounds %struct.rsa_priv_f1_pdb, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  %57 = tail call i32 @llvm.bswap.i32(i32 %50) #2
  %58 = select i1 %52, i32 %57, i32 %50
  store i32 %58, ptr %56, align 4
  %59 = load i32, ptr %0, align 4
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #2
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = load i32, ptr @caam_ptr_sz, align 4
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #2
  %68 = select i1 %61, i32 %67, i32 %66
  store i32 %68, ptr %0, align 4
  %69 = getelementptr inbounds %struct.rsa_priv_f1_pdb, ptr %1, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = load i8, ptr @caam_little_end, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = lshr i32 %68, 24
  %74 = select i1 %72, i32 %73, i32 %68
  %75 = and i32 %74, 127
  %76 = getelementptr i32, ptr %0, i32 %75
  %77 = tail call i32 @llvm.bswap.i32(i32 %70) #2
  %78 = select i1 %72, i32 %77, i32 %70
  store i32 %78, ptr %76, align 4
  %79 = load i32, ptr %0, align 4
  %80 = load i8, ptr @caam_little_end, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #2
  %83 = select i1 %81, i32 %82, i32 %79
  %84 = load i32, ptr @caam_ptr_sz, align 4
  %85 = lshr i32 %84, 2
  %86 = add i32 %83, %85
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #2
  %88 = select i1 %81, i32 %87, i32 %86
  store i32 %88, ptr %0, align 4
  %89 = getelementptr inbounds %struct.rsa_priv_f1_pdb, ptr %1, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %88, 24
  %94 = select i1 %92, i32 %93, i32 %88
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %90) #2
  %98 = select i1 %92, i32 %97, i32 %90
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #2
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #2
  %108 = select i1 %101, i32 %107, i32 %106
  store i32 %108, ptr %0, align 4
  %109 = load i8, ptr @caam_little_end, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  %111 = lshr i32 %108, 24
  %112 = select i1 %110, i32 %111, i32 %108
  %113 = and i32 %112, 127
  %114 = getelementptr i32, ptr %0, i32 %113
  %115 = select i1 %110, i32 6528, i32 -2145845248
  store i32 %115, ptr %114, align 4
  %116 = load i32, ptr %0, align 4
  %117 = load i8, ptr @caam_little_end, align 1, !range !8
  %118 = icmp eq i8 %117, 0
  %119 = tail call i32 @llvm.bswap.i32(i32 %116) #2
  %120 = select i1 %118, i32 %119, i32 %116
  %121 = add i32 %120, 1
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #2
  %123 = select i1 %118, i32 %122, i32 %121
  store i32 %123, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @init_rsa_priv_f2_desc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @caam_ptr_sz, align 4
  %4 = mul i32 %3, 114688
  %5 = add i32 %4, 245760
  %6 = and i32 %5, 1333723136
  %7 = or i32 %6, -1333788671
  %8 = load i8, ptr @caam_little_end, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #2
  %11 = select i1 %9, i32 %10, i32 %7
  store i32 %11, ptr %0, align 4
  %12 = load i32, ptr %1, align 4
  %13 = load i8, ptr @caam_little_end, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = lshr i32 %11, 24
  %16 = select i1 %14, i32 %15, i32 %11
  %17 = and i32 %16, 127
  %18 = getelementptr i32, ptr %0, i32 %17
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #2
  %20 = select i1 %14, i32 %19, i32 %12
  store i32 %20, ptr %18, align 4
  %21 = load i32, ptr %0, align 4
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #2
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = add i32 %25, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #2
  %28 = select i1 %23, i32 %27, i32 %26
  store i32 %28, ptr %0, align 4
  %29 = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i8, ptr @caam_little_end, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = lshr i32 %28, 24
  %34 = select i1 %32, i32 %33, i32 %28
  %35 = and i32 %34, 127
  %36 = getelementptr i32, ptr %0, i32 %35
  %37 = tail call i32 @llvm.bswap.i32(i32 %30) #2
  %38 = select i1 %32, i32 %37, i32 %30
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr %0, align 4
  %40 = load i8, ptr @caam_little_end, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #2
  %43 = select i1 %41, i32 %42, i32 %39
  %44 = load i32, ptr @caam_ptr_sz, align 4
  %45 = lshr i32 %44, 2
  %46 = add i32 %43, %45
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #2
  %48 = select i1 %41, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  %57 = tail call i32 @llvm.bswap.i32(i32 %50) #2
  %58 = select i1 %52, i32 %57, i32 %50
  store i32 %58, ptr %56, align 4
  %59 = load i32, ptr %0, align 4
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #2
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = load i32, ptr @caam_ptr_sz, align 4
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #2
  %68 = select i1 %61, i32 %67, i32 %66
  store i32 %68, ptr %0, align 4
  %69 = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %1, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = load i8, ptr @caam_little_end, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = lshr i32 %68, 24
  %74 = select i1 %72, i32 %73, i32 %68
  %75 = and i32 %74, 127
  %76 = getelementptr i32, ptr %0, i32 %75
  %77 = tail call i32 @llvm.bswap.i32(i32 %70) #2
  %78 = select i1 %72, i32 %77, i32 %70
  store i32 %78, ptr %76, align 4
  %79 = load i32, ptr %0, align 4
  %80 = load i8, ptr @caam_little_end, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #2
  %83 = select i1 %81, i32 %82, i32 %79
  %84 = load i32, ptr @caam_ptr_sz, align 4
  %85 = lshr i32 %84, 2
  %86 = add i32 %83, %85
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #2
  %88 = select i1 %81, i32 %87, i32 %86
  store i32 %88, ptr %0, align 4
  %89 = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %1, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %88, 24
  %94 = select i1 %92, i32 %93, i32 %88
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %90) #2
  %98 = select i1 %92, i32 %97, i32 %90
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #2
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #2
  %108 = select i1 %101, i32 %107, i32 %106
  store i32 %108, ptr %0, align 4
  %109 = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %1, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = load i8, ptr @caam_little_end, align 1, !range !8
  %112 = icmp eq i8 %111, 0
  %113 = lshr i32 %108, 24
  %114 = select i1 %112, i32 %113, i32 %108
  %115 = and i32 %114, 127
  %116 = getelementptr i32, ptr %0, i32 %115
  %117 = tail call i32 @llvm.bswap.i32(i32 %110) #2
  %118 = select i1 %112, i32 %117, i32 %110
  store i32 %118, ptr %116, align 4
  %119 = load i32, ptr %0, align 4
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #2
  %123 = select i1 %121, i32 %122, i32 %119
  %124 = load i32, ptr @caam_ptr_sz, align 4
  %125 = lshr i32 %124, 2
  %126 = add i32 %123, %125
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #2
  %128 = select i1 %121, i32 %127, i32 %126
  store i32 %128, ptr %0, align 4
  %129 = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %1, i32 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = load i8, ptr @caam_little_end, align 1, !range !8
  %132 = icmp eq i8 %131, 0
  %133 = lshr i32 %128, 24
  %134 = select i1 %132, i32 %133, i32 %128
  %135 = and i32 %134, 127
  %136 = getelementptr i32, ptr %0, i32 %135
  %137 = tail call i32 @llvm.bswap.i32(i32 %130) #2
  %138 = select i1 %132, i32 %137, i32 %130
  store i32 %138, ptr %136, align 4
  %139 = load i32, ptr %0, align 4
  %140 = load i8, ptr @caam_little_end, align 1, !range !8
  %141 = icmp eq i8 %140, 0
  %142 = tail call i32 @llvm.bswap.i32(i32 %139) #2
  %143 = select i1 %141, i32 %142, i32 %139
  %144 = load i32, ptr @caam_ptr_sz, align 4
  %145 = lshr i32 %144, 2
  %146 = add i32 %143, %145
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #2
  %148 = select i1 %141, i32 %147, i32 %146
  store i32 %148, ptr %0, align 4
  %149 = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %1, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = lshr i32 %148, 24
  %154 = select i1 %152, i32 %153, i32 %148
  %155 = and i32 %154, 127
  %156 = getelementptr i32, ptr %0, i32 %155
  %157 = tail call i32 @llvm.bswap.i32(i32 %150) #2
  %158 = select i1 %152, i32 %157, i32 %150
  store i32 %158, ptr %156, align 4
  %159 = load i32, ptr %0, align 4
  %160 = load i8, ptr @caam_little_end, align 1, !range !8
  %161 = icmp eq i8 %160, 0
  %162 = tail call i32 @llvm.bswap.i32(i32 %159) #2
  %163 = select i1 %161, i32 %162, i32 %159
  %164 = load i32, ptr @caam_ptr_sz, align 4
  %165 = lshr i32 %164, 2
  %166 = add i32 %163, %165
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #2
  %168 = select i1 %161, i32 %167, i32 %166
  store i32 %168, ptr %0, align 4
  %169 = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %1, i32 0, i32 8
  %170 = load i32, ptr %169, align 4
  %171 = load i8, ptr @caam_little_end, align 1, !range !8
  %172 = icmp eq i8 %171, 0
  %173 = lshr i32 %168, 24
  %174 = select i1 %172, i32 %173, i32 %168
  %175 = and i32 %174, 127
  %176 = getelementptr i32, ptr %0, i32 %175
  %177 = tail call i32 @llvm.bswap.i32(i32 %170) #2
  %178 = select i1 %172, i32 %177, i32 %170
  store i32 %178, ptr %176, align 4
  %179 = load i32, ptr %0, align 4
  %180 = load i8, ptr @caam_little_end, align 1, !range !8
  %181 = icmp eq i8 %180, 0
  %182 = tail call i32 @llvm.bswap.i32(i32 %179) #2
  %183 = select i1 %181, i32 %182, i32 %179
  %184 = add i32 %183, 1
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #2
  %186 = select i1 %181, i32 %185, i32 %184
  store i32 %186, ptr %0, align 4
  %187 = load i8, ptr @caam_little_end, align 1, !range !8
  %188 = icmp eq i8 %187, 0
  %189 = lshr i32 %186, 24
  %190 = select i1 %188, i32 %189, i32 %186
  %191 = and i32 %190, 127
  %192 = getelementptr i32, ptr %0, i32 %191
  %193 = select i1 %188, i32 16783744, i32 -2145845247
  store i32 %193, ptr %192, align 4
  %194 = load i32, ptr %0, align 4
  %195 = load i8, ptr @caam_little_end, align 1, !range !8
  %196 = icmp eq i8 %195, 0
  %197 = tail call i32 @llvm.bswap.i32(i32 %194) #2
  %198 = select i1 %196, i32 %197, i32 %194
  %199 = add i32 %198, 1
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #2
  %201 = select i1 %196, i32 %200, i32 %199
  store i32 %201, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @init_rsa_priv_f3_desc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @caam_ptr_sz, align 4
  %4 = mul i32 %3, 147456
  %5 = add i32 %4, 245760
  %6 = and i32 %5, 1333723136
  %7 = or i32 %6, -1333788671
  %8 = load i8, ptr @caam_little_end, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #2
  %11 = select i1 %9, i32 %10, i32 %7
  store i32 %11, ptr %0, align 4
  %12 = load i32, ptr %1, align 4
  %13 = load i8, ptr @caam_little_end, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = lshr i32 %11, 24
  %16 = select i1 %14, i32 %15, i32 %11
  %17 = and i32 %16, 127
  %18 = getelementptr i32, ptr %0, i32 %17
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #2
  %20 = select i1 %14, i32 %19, i32 %12
  store i32 %20, ptr %18, align 4
  %21 = load i32, ptr %0, align 4
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #2
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = add i32 %25, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #2
  %28 = select i1 %23, i32 %27, i32 %26
  store i32 %28, ptr %0, align 4
  %29 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i8, ptr @caam_little_end, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = lshr i32 %28, 24
  %34 = select i1 %32, i32 %33, i32 %28
  %35 = and i32 %34, 127
  %36 = getelementptr i32, ptr %0, i32 %35
  %37 = tail call i32 @llvm.bswap.i32(i32 %30) #2
  %38 = select i1 %32, i32 %37, i32 %30
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr %0, align 4
  %40 = load i8, ptr @caam_little_end, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #2
  %43 = select i1 %41, i32 %42, i32 %39
  %44 = load i32, ptr @caam_ptr_sz, align 4
  %45 = lshr i32 %44, 2
  %46 = add i32 %43, %45
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #2
  %48 = select i1 %41, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  %57 = tail call i32 @llvm.bswap.i32(i32 %50) #2
  %58 = select i1 %52, i32 %57, i32 %50
  store i32 %58, ptr %56, align 4
  %59 = load i32, ptr %0, align 4
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #2
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = load i32, ptr @caam_ptr_sz, align 4
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #2
  %68 = select i1 %61, i32 %67, i32 %66
  store i32 %68, ptr %0, align 4
  %69 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = load i8, ptr @caam_little_end, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = lshr i32 %68, 24
  %74 = select i1 %72, i32 %73, i32 %68
  %75 = and i32 %74, 127
  %76 = getelementptr i32, ptr %0, i32 %75
  %77 = tail call i32 @llvm.bswap.i32(i32 %70) #2
  %78 = select i1 %72, i32 %77, i32 %70
  store i32 %78, ptr %76, align 4
  %79 = load i32, ptr %0, align 4
  %80 = load i8, ptr @caam_little_end, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #2
  %83 = select i1 %81, i32 %82, i32 %79
  %84 = load i32, ptr @caam_ptr_sz, align 4
  %85 = lshr i32 %84, 2
  %86 = add i32 %83, %85
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #2
  %88 = select i1 %81, i32 %87, i32 %86
  store i32 %88, ptr %0, align 4
  %89 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %88, 24
  %94 = select i1 %92, i32 %93, i32 %88
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %90) #2
  %98 = select i1 %92, i32 %97, i32 %90
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #2
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #2
  %108 = select i1 %101, i32 %107, i32 %106
  store i32 %108, ptr %0, align 4
  %109 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = load i8, ptr @caam_little_end, align 1, !range !8
  %112 = icmp eq i8 %111, 0
  %113 = lshr i32 %108, 24
  %114 = select i1 %112, i32 %113, i32 %108
  %115 = and i32 %114, 127
  %116 = getelementptr i32, ptr %0, i32 %115
  %117 = tail call i32 @llvm.bswap.i32(i32 %110) #2
  %118 = select i1 %112, i32 %117, i32 %110
  store i32 %118, ptr %116, align 4
  %119 = load i32, ptr %0, align 4
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #2
  %123 = select i1 %121, i32 %122, i32 %119
  %124 = load i32, ptr @caam_ptr_sz, align 4
  %125 = lshr i32 %124, 2
  %126 = add i32 %123, %125
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #2
  %128 = select i1 %121, i32 %127, i32 %126
  store i32 %128, ptr %0, align 4
  %129 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = load i8, ptr @caam_little_end, align 1, !range !8
  %132 = icmp eq i8 %131, 0
  %133 = lshr i32 %128, 24
  %134 = select i1 %132, i32 %133, i32 %128
  %135 = and i32 %134, 127
  %136 = getelementptr i32, ptr %0, i32 %135
  %137 = tail call i32 @llvm.bswap.i32(i32 %130) #2
  %138 = select i1 %132, i32 %137, i32 %130
  store i32 %138, ptr %136, align 4
  %139 = load i32, ptr %0, align 4
  %140 = load i8, ptr @caam_little_end, align 1, !range !8
  %141 = icmp eq i8 %140, 0
  %142 = tail call i32 @llvm.bswap.i32(i32 %139) #2
  %143 = select i1 %141, i32 %142, i32 %139
  %144 = load i32, ptr @caam_ptr_sz, align 4
  %145 = lshr i32 %144, 2
  %146 = add i32 %143, %145
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #2
  %148 = select i1 %141, i32 %147, i32 %146
  store i32 %148, ptr %0, align 4
  %149 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = lshr i32 %148, 24
  %154 = select i1 %152, i32 %153, i32 %148
  %155 = and i32 %154, 127
  %156 = getelementptr i32, ptr %0, i32 %155
  %157 = tail call i32 @llvm.bswap.i32(i32 %150) #2
  %158 = select i1 %152, i32 %157, i32 %150
  store i32 %158, ptr %156, align 4
  %159 = load i32, ptr %0, align 4
  %160 = load i8, ptr @caam_little_end, align 1, !range !8
  %161 = icmp eq i8 %160, 0
  %162 = tail call i32 @llvm.bswap.i32(i32 %159) #2
  %163 = select i1 %161, i32 %162, i32 %159
  %164 = load i32, ptr @caam_ptr_sz, align 4
  %165 = lshr i32 %164, 2
  %166 = add i32 %163, %165
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #2
  %168 = select i1 %161, i32 %167, i32 %166
  store i32 %168, ptr %0, align 4
  %169 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 8
  %170 = load i32, ptr %169, align 4
  %171 = load i8, ptr @caam_little_end, align 1, !range !8
  %172 = icmp eq i8 %171, 0
  %173 = lshr i32 %168, 24
  %174 = select i1 %172, i32 %173, i32 %168
  %175 = and i32 %174, 127
  %176 = getelementptr i32, ptr %0, i32 %175
  %177 = tail call i32 @llvm.bswap.i32(i32 %170) #2
  %178 = select i1 %172, i32 %177, i32 %170
  store i32 %178, ptr %176, align 4
  %179 = load i32, ptr %0, align 4
  %180 = load i8, ptr @caam_little_end, align 1, !range !8
  %181 = icmp eq i8 %180, 0
  %182 = tail call i32 @llvm.bswap.i32(i32 %179) #2
  %183 = select i1 %181, i32 %182, i32 %179
  %184 = load i32, ptr @caam_ptr_sz, align 4
  %185 = lshr i32 %184, 2
  %186 = add i32 %183, %185
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #2
  %188 = select i1 %181, i32 %187, i32 %186
  store i32 %188, ptr %0, align 4
  %189 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 9
  %190 = load i32, ptr %189, align 4
  %191 = load i8, ptr @caam_little_end, align 1, !range !8
  %192 = icmp eq i8 %191, 0
  %193 = lshr i32 %188, 24
  %194 = select i1 %192, i32 %193, i32 %188
  %195 = and i32 %194, 127
  %196 = getelementptr i32, ptr %0, i32 %195
  %197 = tail call i32 @llvm.bswap.i32(i32 %190) #2
  %198 = select i1 %192, i32 %197, i32 %190
  store i32 %198, ptr %196, align 4
  %199 = load i32, ptr %0, align 4
  %200 = load i8, ptr @caam_little_end, align 1, !range !8
  %201 = icmp eq i8 %200, 0
  %202 = tail call i32 @llvm.bswap.i32(i32 %199) #2
  %203 = select i1 %201, i32 %202, i32 %199
  %204 = load i32, ptr @caam_ptr_sz, align 4
  %205 = lshr i32 %204, 2
  %206 = add i32 %203, %205
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #2
  %208 = select i1 %201, i32 %207, i32 %206
  store i32 %208, ptr %0, align 4
  %209 = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %1, i32 0, i32 10
  %210 = load i32, ptr %209, align 4
  %211 = load i8, ptr @caam_little_end, align 1, !range !8
  %212 = icmp eq i8 %211, 0
  %213 = lshr i32 %208, 24
  %214 = select i1 %212, i32 %213, i32 %208
  %215 = and i32 %214, 127
  %216 = getelementptr i32, ptr %0, i32 %215
  %217 = tail call i32 @llvm.bswap.i32(i32 %210) #2
  %218 = select i1 %212, i32 %217, i32 %210
  store i32 %218, ptr %216, align 4
  %219 = load i32, ptr %0, align 4
  %220 = load i8, ptr @caam_little_end, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  %222 = tail call i32 @llvm.bswap.i32(i32 %219) #2
  %223 = select i1 %221, i32 %222, i32 %219
  %224 = add i32 %223, 1
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #2
  %226 = select i1 %221, i32 %225, i32 %224
  store i32 %226, ptr %0, align 4
  %227 = load i8, ptr @caam_little_end, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = lshr i32 %226, 24
  %230 = select i1 %228, i32 %229, i32 %226
  %231 = and i32 %230, 127
  %232 = getelementptr i32, ptr %0, i32 %231
  %233 = select i1 %228, i32 33560960, i32 -2145845246
  store i32 %233, ptr %232, align 4
  %234 = load i32, ptr %0, align 4
  %235 = load i8, ptr @caam_little_end, align 1, !range !8
  %236 = icmp eq i8 %235, 0
  %237 = tail call i32 @llvm.bswap.i32(i32 %234) #2
  %238 = select i1 %236, i32 %237, i32 %234
  %239 = add i32 %238, 1
  %240 = tail call i32 @llvm.bswap.i32(i32 %239) #2
  %241 = select i1 %236, i32 %240, i32 %239
  store i32 %241, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
