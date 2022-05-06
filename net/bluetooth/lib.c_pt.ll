; ModuleID = '/llk/IR/net/bluetooth/lib.c_pt.bc'
source_filename = "../net/bluetooth/lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_baswap:\09\09\09\09\09"
module asm "\09.asciz \09\22baswap\22\09\09\09\09\09"
module asm "__kstrtabns_baswap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_to_errno\22\09\09\09\09\09"
module asm "__kstrtabns_bt_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_info:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_info\22\09\09\09\09\09"
module asm "__kstrtabns_bt_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_warn\22\09\09\09\09\09"
module asm "__kstrtabns_bt_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_err:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_err\22\09\09\09\09\09"
module asm "__kstrtabns_bt_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_warn_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_warn_ratelimited\22\09\09\09\09\09"
module asm "__kstrtabns_bt_warn_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_err_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_err_ratelimited\22\09\09\09\09\09"
module asm "__kstrtabns_bt_err_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }

@__kstrtab_baswap = external dso_local constant [0 x i8], align 1
@__kstrtabns_baswap = external dso_local constant [0 x i8], align 1
@__ksymtab_baswap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @baswap to i32), ptr @__kstrtab_baswap, ptr @__kstrtabns_baswap }, section "___ksymtab+baswap", align 4
@__kstrtab_bt_to_errno = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_to_errno = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_to_errno = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_to_errno to i32), ptr @__kstrtab_bt_to_errno, ptr @__kstrtabns_bt_to_errno }, section "___ksymtab+bt_to_errno", align 4
@.str = private unnamed_addr constant [17 x i8] c"\016Bluetooth: %pV\00", align 1
@__kstrtab_bt_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_info = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_info to i32), ptr @__kstrtab_bt_info, ptr @__kstrtabns_bt_info }, section "___ksymtab+bt_info", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"\014Bluetooth: %pV\00", align 1
@__kstrtab_bt_warn = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_warn = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_warn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_warn to i32), ptr @__kstrtab_bt_warn, ptr @__kstrtabns_bt_warn }, section "___ksymtab+bt_warn", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"\013Bluetooth: %pV\00", align 1
@__kstrtab_bt_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_err = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_err to i32), ptr @__kstrtab_bt_err, ptr @__kstrtabns_bt_err }, section "___ksymtab+bt_err", align 4
@bt_warn_ratelimited._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.bt_warn_ratelimited = private unnamed_addr constant [20 x i8] c"bt_warn_ratelimited\00", align 1
@__kstrtab_bt_warn_ratelimited = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_warn_ratelimited = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_warn_ratelimited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_warn_ratelimited to i32), ptr @__kstrtab_bt_warn_ratelimited, ptr @__kstrtabns_bt_warn_ratelimited }, section "___ksymtab+bt_warn_ratelimited", align 4
@bt_err_ratelimited._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.bt_err_ratelimited = private unnamed_addr constant [19 x i8] c"bt_err_ratelimited\00", align 1
@__kstrtab_bt_err_ratelimited = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_err_ratelimited = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_err_ratelimited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_err_ratelimited to i32), ptr @__kstrtab_bt_err_ratelimited, ptr @__kstrtabns_bt_err_ratelimited }, section "___ksymtab+bt_err_ratelimited", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_baswap, ptr @__ksymtab_bt_err, ptr @__ksymtab_bt_err_ratelimited, ptr @__ksymtab_bt_info, ptr @__ksymtab_bt_to_errno, ptr @__ksymtab_bt_warn, ptr @__ksymtab_bt_warn_ratelimited], section "llvm.metadata"
@switch.table.bt_to_errno = private unnamed_addr constant [61 x i32] [i32 0, i32 56, i32 107, i32 5, i32 112, i32 13, i32 52, i32 12, i32 110, i32 31, i32 31, i32 114, i32 16, i32 111, i32 111, i32 111, i32 110, i32 95, i32 22, i32 104, i32 104, i32 104, i32 103, i32 40, i32 13, i32 71, i32 93, i32 111, i32 38, i32 38, i32 71, i32 38, i32 95, i32 38, i32 38, i32 71, i32 71, i32 71, i32 38, i32 95, i32 38, i32 95, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 112], align 4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @baswap(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 5
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr %0, align 1
  %5 = getelementptr i8, ptr %1, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr i8, ptr %0, i32 1
  store i8 %6, ptr %7, align 1
  %8 = getelementptr i8, ptr %1, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i32 2
  store i8 %9, ptr %10, align 1
  %11 = getelementptr i8, ptr %1, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i32 3
  store i8 %12, ptr %13, align 1
  %14 = getelementptr i8, ptr %1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i32 4
  store i8 %15, ptr %16, align 1
  %17 = load i8, ptr %1, align 1
  %18 = getelementptr i8, ptr %0, i32 5
  store i8 %17, ptr %18, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @bt_to_errno(i16 noundef zeroext %0) #2 {
  %2 = icmp ult i16 %0, 61
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = sext i16 %0 to i32
  %5 = getelementptr inbounds [61 x i32], ptr @switch.table.bt_to_errno, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ 38, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_info(ptr noundef %0, ...) #3 {
  %2 = alloca %struct.va_format, align 8
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %2) #8
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_warn(ptr noundef %0, ...) #3 {
  %2 = alloca %struct.va_format, align 8
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #8
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_err(ptr noundef %0, ...) #3 {
  %2 = alloca %struct.va_format, align 8
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #8
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_warn_ratelimited(ptr noundef %0, ...) #3 {
  %2 = alloca %struct.va_format, align 8
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = call i32 @___ratelimit(ptr noundef nonnull @bt_warn_ratelimited._rs, ptr noundef nonnull @__func__.bt_warn_ratelimited) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #8
  br label %9

9:                                                ; preds = %7, %1
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_err_ratelimited(ptr noundef %0, ...) #3 {
  %2 = alloca %struct.va_format, align 8
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = call i32 @___ratelimit(ptr noundef nonnull @bt_err_ratelimited._rs, ptr noundef nonnull @__func__.bt_err_ratelimited) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #8
  br label %9

9:                                                ; preds = %7, %1
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
