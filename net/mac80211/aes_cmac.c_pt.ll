; ModuleID = '/llk/IR/net/mac80211/aes_cmac.c_pt.bc'
source_filename = "../net/mac80211/aes_cmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@zero = internal constant [16 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_aes_cmac(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [376 x i8], align 8
  %7 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(376) %6, i8 0, i32 376, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !8
  store ptr %0, ptr %6, align 8
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -128
  %16 = load ptr, ptr %15, align 64
  %17 = call i32 %16(ptr noundef nonnull %6) #4
  br label %18

18:                                               ; preds = %12, %5
  %19 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 20) #4
  %20 = load i16, ptr %1, align 2
  %21 = and i16 %20, 252
  %22 = icmp eq i16 %21, 128
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef nonnull @zero, i32 noundef 8) #4
  %25 = getelementptr i8, ptr %2, i32 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ -16, %23 ], [ -8, %18 ]
  %28 = phi ptr [ %25, %23 ], [ %2, %18 ]
  %29 = add i32 %27, %3
  %30 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %28, i32 noundef %29) #4
  %31 = call i32 @crypto_shash_finup(ptr noundef nonnull %6, ptr noundef nonnull @zero, i32 noundef 8, ptr noundef nonnull %7) #4
  %32 = load i64, ptr %7, align 8
  store i64 %32, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %6) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_aes_cmac_256(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [376 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(376) %6, i8 0, i32 376, i1 false), !annotation !8
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -128
  %15 = load ptr, ptr %14, align 64
  %16 = call i32 %15(ptr noundef nonnull %6) #4
  br label %17

17:                                               ; preds = %11, %5
  %18 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 20) #4
  %19 = load i16, ptr %1, align 2
  %20 = and i16 %19, 252
  %21 = icmp eq i16 %20, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef nonnull @zero, i32 noundef 8) #4
  %24 = getelementptr i8, ptr %2, i32 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ -24, %22 ], [ -16, %17 ]
  %27 = phi ptr [ %24, %22 ], [ %2, %17 ]
  %28 = add i32 %26, %3
  %29 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %27, i32 noundef %28) #4
  %30 = call i32 @crypto_shash_finup(ptr noundef nonnull %6, ptr noundef nonnull @zero, i32 noundef 16, ptr noundef %4) #4
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %6) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_aes_cmac_key_setup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @crypto_shash_setkey(ptr noundef %3, ptr noundef %0, i32 noundef %1) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %9) #4
  %10 = inttoptr i32 %6 to ptr
  br label %11

11:                                               ; preds = %8, %5, %2
  %12 = phi ptr [ %10, %8 ], [ %3, %2 ], [ %3, %5 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_aes_cmac_key_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{!"auto-init"}
