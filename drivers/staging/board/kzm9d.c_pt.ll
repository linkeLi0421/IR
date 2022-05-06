; ModuleID = '/llk/IR/drivers/staging/board/kzm9d.c_pt.bc'
source_filename = "../drivers/staging/board/kzm9d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__initcall__kmod_kzm9d__162_26_runtime_board_check6 = internal global ptr @runtime_board_check, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [14 x i8] c"renesas,kzm9d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"arm,pl390\00", align 1
@usbs1_res = internal global [2 x %struct.resource] [%struct.resource { i32 -494927872, i32 -494919681, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 159, i32 159, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], section ".init.data", align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"emxx_udc\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_kzm9d__162_26_runtime_board_check6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @runtime_board_check() #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @kzm9d_init() #5
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kzm9d_init() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = tail call i32 @board_staging_gic_setup_xlate(ptr noundef nonnull @.str.1, i32 noundef 32) #4
  %3 = tail call zeroext i1 @board_staging_dt_node_available(ptr noundef nonnull @usbs1_res, i32 noundef 2) #4
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  tail call void @board_staging_gic_fixup_resources(ptr noundef nonnull @usbs1_res, i32 noundef 2) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #4
  %5 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #4
  store ptr @.str.2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  store ptr @usbs1_res, ptr %7, align 4
  %8 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 6
  store i32 2, ptr %8, align 8
  %9 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #4
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @board_staging_gic_setup_xlate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @board_staging_dt_node_available(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @board_staging_gic_fixup_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }
attributes #5 = { cold }

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
