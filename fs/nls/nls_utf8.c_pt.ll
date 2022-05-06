; ModuleID = '/llk/IR/fs/nls/nls_utf8.c_pt.bc'
source_filename = "../fs/nls/nls_utf8.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@table = internal global %struct.nls_table { ptr @.str, ptr null, ptr @uni2char, ptr @char2uni, ptr @identity, ptr @identity, ptr null, ptr null }, align 4
@__initcall__kmod_nls_utf8__100_65_init_nls_utf86 = internal global ptr @init_nls_utf8, section ".initcall6.init", align 4
@__exitcall_exit_nls_utf8 = internal global ptr @exit_nls_utf8, section ".exitcall.exit", align 4
@__UNIQUE_ID_file101 = internal constant [30 x i8] c"nls_utf8.file=fs/nls/nls_utf8\00", section ".modinfo", align 1
@__UNIQUE_ID_license102 = internal constant [30 x i8] c"nls_utf8.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@identity = internal global [256 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file101, ptr @__UNIQUE_ID_license102, ptr @__exitcall_exit_nls_utf8, ptr @__initcall__kmod_nls_utf8__100_65_init_nls_utf86, ptr @exit_nls_utf8], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_nls_utf8() #0 section ".exit.text" {
  %1 = tail call i32 @unregister_nls(ptr noundef nonnull @table) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_nls_utf8() #0 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %1 ]
  %3 = trunc i32 %2 to i8
  %4 = getelementptr [256 x i8], ptr @identity, i32 0, i32 %2
  store i8 %3, ptr %4, align 1
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp eq i32 %5, 256
  br i1 %6, label %7, label %1

7:                                                ; preds = %1
  %8 = tail call i32 @__register_nls(ptr noundef nonnull @table, ptr noundef null) #4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni2char(i16 noundef zeroext %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = zext i16 %0 to i32
  %7 = tail call i32 @utf32_to_utf8(i32 noundef %6, ptr noundef %1, i32 noundef %2) #4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i8 63, ptr %1, align 1
  br label %10

10:                                               ; preds = %9, %5, %3
  %11 = phi i32 [ -22, %9 ], [ -36, %3 ], [ %7, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @char2uni(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 @utf8_to_utf32(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #4
  %6 = icmp slt i32 %5, 0
  %7 = load i32, ptr %4, align 4
  %8 = icmp ugt i32 %7, 65535
  %9 = select i1 %6, i1 true, i1 %8
  %10 = trunc i32 %7 to i16
  %11 = select i1 %9, i16 63, i16 %10
  %12 = select i1 %9, i32 -22, i32 %5
  store i16 %11, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf32_to_utf8(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_to_utf32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_nls(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
