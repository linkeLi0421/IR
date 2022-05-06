; ModuleID = '/llk/IR/crypto/lzo.c_pt.bc'
source_filename = "../crypto/lzo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scomp_alg = type { ptr, ptr, ptr, ptr, [48 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.compress_alg = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@scomp = internal global %struct.scomp_alg { ptr @lzo_alloc_ctx, ptr @lzo_free_ctx, ptr @lzo_scompress, ptr @lzo_sdecompress, [48 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"lzo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"lzo-scomp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@__initcall__kmod_lzo__220_158_lzo_mod_init4 = internal global ptr @lzo_mod_init, section ".initcall4.init", align 4
@__exitcall_lzo_mod_fini = internal global ptr @lzo_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file221 = internal constant [20 x i8] c"lzo.file=crypto/lzo\00", section ".modinfo", align 1
@__UNIQUE_ID_license222 = internal constant [16 x i8] c"lzo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description223 = internal constant [42 x i8] c"lzo.description=LZO Compression Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace224 = internal constant [14 x i8] c"lzo.alias=lzo\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto225 = internal constant [21 x i8] c"lzo.alias=crypto-lzo\00", section ".modinfo", align 1
@alg = internal global { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, [48 x i8] } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, i32 0, i32 4, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"lzo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"lzo-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, { %struct.compress_alg, [12 x i8] } { %struct.compress_alg { ptr @lzo_compress, ptr @lzo_decompress }, [12 x i8] undef }, ptr @lzo_init, ptr @lzo_exit, ptr null, ptr null, [48 x i8] undef }, align 64
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias_crypto225, ptr @__UNIQUE_ID_alias_userspace224, ptr @__UNIQUE_ID_description223, ptr @__UNIQUE_ID_file221, ptr @__UNIQUE_ID_license222, ptr @__exitcall_lzo_mod_fini, ptr @__initcall__kmod_lzo__220_158_lzo_mod_init4, ptr @lzo_mod_fini], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @lzo_mod_fini() #0 section ".exit.text" {
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #5
  tail call void @crypto_unregister_scomp(ptr noundef nonnull @scomp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_scomp(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @lzo_mod_init() #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @crypto_register_scomp(ptr noundef nonnull @scomp) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #5
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lzo_compress(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %9 = load i32, ptr %4, align 4
  store i32 %9, ptr %6, align 4
  %10 = call i32 @lzo1x_1_compress(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6, ptr noundef %8) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ 0, %12 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lzo_decompress(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %7 = load i32, ptr %4, align 4
  store i32 %7, ptr %6, align 4
  %8 = call i32 @lzo1x_decompress_safe(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 4
  store i32 %11, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ 0, %10 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lzo_init(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = tail call noalias ptr @kvmalloc_node(i32 noundef 16384, i32 noundef 3264, i32 noundef -1) #6
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr inttoptr (i32 -12 to ptr), ptr %3
  store ptr %5, ptr %2, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %7 = select i1 %6, i32 -12, i32 0
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lzo_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @kvfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_1_compress(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @lzo_alloc_ctx(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call noalias ptr @kvmalloc_node(i32 noundef 16384, i32 noundef 3264, i32 noundef -1) #6
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr inttoptr (i32 -12 to ptr), ptr %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lzo_free_ctx(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @kvfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lzo_scompress(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) #2 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  %8 = load i32, ptr %4, align 4
  store i32 %8, ptr %7, align 4
  %9 = call i32 @lzo1x_1_compress(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %5) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 4
  store i32 %12, ptr %4, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ 0, %11 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lzo_sdecompress(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  %8 = load i32, ptr %4, align 4
  store i32 %8, ptr %7, align 4
  %9 = call i32 @lzo1x_decompress_safe(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %7) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 4
  store i32 %12, ptr %4, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ 0, %11 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_scomp(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
