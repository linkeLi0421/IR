; ModuleID = '/llk/IR/drivers/firmware/smccc/smccc.c_pt.bc'
source_filename = "../drivers/firmware/smccc/smccc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_smccc_1_1_get_conduit:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_smccc_1_1_get_conduit\22\09\09\09\09\09"
module asm "__kstrtabns_arm_smccc_1_1_get_conduit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_smccc_get_version:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_smccc_get_version\22\09\09\09\09\09"
module asm "__kstrtabns_arm_smccc_get_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@smccc_trng_available = dso_local local_unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@smccc_has_sve_hint = dso_local local_unnamed_addr global i64 0, section ".data..ro_after_init", align 8
@smccc_version = internal unnamed_addr global i32 65536, align 4
@smccc_conduit = internal unnamed_addr global i32 0, align 4
@__kstrtab_arm_smccc_1_1_get_conduit = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_smccc_1_1_get_conduit = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_smccc_1_1_get_conduit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_smccc_1_1_get_conduit to i32), ptr @__kstrtab_arm_smccc_1_1_get_conduit, ptr @__kstrtabns_arm_smccc_1_1_get_conduit }, section "___ksymtab_gpl+arm_smccc_1_1_get_conduit", align 4
@__kstrtab_arm_smccc_get_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_smccc_get_version = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_smccc_get_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_smccc_get_version to i32), ptr @__kstrtab_arm_smccc_get_version, ptr @__kstrtabns_arm_smccc_get_version }, section "___ksymtab_gpl+arm_smccc_get_version", align 4
@__initcall__kmod_smccc__162_61_smccc_devices_init6 = internal global ptr @smccc_devices_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [11 x i8] c"smccc_trng\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\013smccc: smccc_trng: could not register device: %ld\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_smccc__162_61_smccc_devices_init6, ptr @__ksymtab_arm_smccc_1_1_get_conduit, ptr @__ksymtab_arm_smccc_get_version], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @arm_smccc_version_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  store i32 %0, ptr @smccc_version, align 4
  store i32 %1, ptr @smccc_conduit, align 4
  store i8 0, ptr @smccc_trng_available, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @arm_smccc_1_1_get_conduit() #1 {
  %1 = load i32, ptr @smccc_version, align 4
  %2 = icmp ult i32 %1, 65537
  %3 = load i32, ptr @smccc_conduit, align 4
  %4 = select i1 %2, i32 0, i32 %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @arm_smccc_get_version() #1 {
  %1 = load i32, ptr @smccc_version, align 4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @smccc_devices_init() #2 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = load i8, ptr @smccc_trng_available, align 1, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #7
  %5 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #7
  store ptr @.str, ptr %5, align 4
  %6 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false) #7
  %8 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = ptrtoint ptr %8 to i32
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11) #8
  br label %13

13:                                               ; preds = %10, %4, %0
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
