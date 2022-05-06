; ModuleID = '/llk/IR/drivers/firmware/trusted_foundations.c_pt.bc'
source_filename = "../drivers/firmware/trusted_foundations.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.l2x0_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.trusted_foundations_platform_data = type { i32, i32 }

@trusted_foundations_ops = internal constant %struct.firmware_ops { ptr @tf_prepare_idle, ptr null, ptr @tf_set_cpu_boot_addr, ptr null, ptr null, ptr @tf_init_cache, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [24 x i8] c"tlm,trusted-foundations\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tlm,version-major\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Trusted Foundation: missing version-major property\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"tlm,version-minor\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Trusted Foundation: missing version-minor property\0A\00", align 1
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@cpu_boot_addr = internal unnamed_addr global i32 0, align 4
@tf_idle_mode = internal unnamed_addr global i32 5, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@l2x0_saved_regs = external dso_local local_unnamed_addr global %struct.l2x0_regs, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @register_trusted_foundations(ptr nocapture readnone %0) local_unnamed_addr #0 {
  store ptr @trusted_foundations_ops, ptr @firmware_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_register_trusted_foundations() local_unnamed_addr #1 {
  %1 = alloca %struct.trusted_foundations_platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #6
  store i64 0, ptr %1, align 8, !annotation !8
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0) #6
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #7
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trusted_foundations_platform_data, ptr %1, i32 0, i32 1
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, ptr noundef %9, i32 noundef 1, i32 noundef 0) #6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.4) #7
  unreachable

13:                                               ; preds = %8
  store ptr @trusted_foundations_ops, ptr @firmware_ops, align 4
  br label %14

14:                                               ; preds = %13, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @trusted_foundations_registered() local_unnamed_addr #5 {
  %1 = load ptr, ptr @firmware_ops, align 4
  %2 = icmp eq ptr %1, @trusted_foundations_ops
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tf_prepare_idle(i32 noundef %0) #1 {
  switch i32 %0, label %13 [
    i32 0, label %2
    i32 1, label %4
    i32 2, label %6
    i32 3, label %8
    i32 4, label %10
    i32 5, label %12
  ]

2:                                                ; preds = %1
  %3 = load i32, ptr @cpu_boot_addr, align 4
  tail call void asm sideeffect ".arch_extension\09sec\0A\09stmfd\09sp!, {r4 - r11}\0A\09.ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r1; .ifnc $1r1,fpr11; .ifnc $1r1,r11fp; .ifnc $1r1,ipr12; .ifnc $1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09mov\09r3, #0\0A\09mov\09r4, #0\0A\09smc\09#0\0A\09ldmfd\09sp!, {r4 - r11}\0A\09", "{r0},{r1},{r2},~{memory},~{r3},~{r12},~{lr}"(i32 -4, i32 -29, i32 %3) #6, !srcloc !9
  br label %12

4:                                                ; preds = %1
  %5 = load i32, ptr @cpu_boot_addr, align 4
  tail call void asm sideeffect ".arch_extension\09sec\0A\09stmfd\09sp!, {r4 - r11}\0A\09.ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r1; .ifnc $1r1,fpr11; .ifnc $1r1,r11fp; .ifnc $1r1,ipr12; .ifnc $1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09mov\09r3, #0\0A\09mov\09r4, #0\0A\09smc\09#0\0A\09ldmfd\09sp!, {r4 - r11}\0A\09", "{r0},{r1},{r2},~{memory},~{r3},~{r12},~{lr}"(i32 -4, i32 -26, i32 %5) #6, !srcloc !9
  br label %12

6:                                                ; preds = %1
  %7 = load i32, ptr @cpu_boot_addr, align 4
  tail call void asm sideeffect ".arch_extension\09sec\0A\09stmfd\09sp!, {r4 - r11}\0A\09.ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r1; .ifnc $1r1,fpr11; .ifnc $1r1,r11fp; .ifnc $1r1,ipr12; .ifnc $1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09mov\09r3, #0\0A\09mov\09r4, #0\0A\09smc\09#0\0A\09ldmfd\09sp!, {r4 - r11}\0A\09", "{r0},{r1},{r2},~{memory},~{r3},~{r12},~{lr}"(i32 -4, i32 -27, i32 %7) #6, !srcloc !9
  br label %12

8:                                                ; preds = %1
  %9 = load i32, ptr @cpu_boot_addr, align 4
  tail call void asm sideeffect ".arch_extension\09sec\0A\09stmfd\09sp!, {r4 - r11}\0A\09.ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r1; .ifnc $1r1,fpr11; .ifnc $1r1,r11fp; .ifnc $1r1,ipr12; .ifnc $1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09mov\09r3, #0\0A\09mov\09r4, #0\0A\09smc\09#0\0A\09ldmfd\09sp!, {r4 - r11}\0A\09", "{r0},{r1},{r2},~{memory},~{r3},~{r12},~{lr}"(i32 -4, i32 -28, i32 %9) #6, !srcloc !9
  br label %12

10:                                               ; preds = %1
  %11 = load i32, ptr @cpu_boot_addr, align 4
  tail call void asm sideeffect ".arch_extension\09sec\0A\09stmfd\09sp!, {r4 - r11}\0A\09.ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r1; .ifnc $1r1,fpr11; .ifnc $1r1,r11fp; .ifnc $1r1,ipr12; .ifnc $1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09mov\09r3, #0\0A\09mov\09r4, #0\0A\09smc\09#0\0A\09ldmfd\09sp!, {r4 - r11}\0A\09", "{r0},{r1},{r2},~{memory},~{r3},~{r12},~{lr}"(i32 -4, i32 -25, i32 %11) #6, !srcloc !9
  br label %12

12:                                               ; preds = %10, %8, %6, %4, %2, %1
  store i32 %0, ptr @tf_idle_mode, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = phi i32 [ 0, %12 ], [ -22, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tf_set_cpu_boot_addr(i32 noundef %0, i32 noundef %1) #1 {
  store i32 %1, ptr @cpu_boot_addr, align 4
  tail call void asm sideeffect ".arch_extension\09sec\0A\09stmfd\09sp!, {r4 - r11}\0A\09.ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r1; .ifnc $1r1,fpr11; .ifnc $1r1,r11fp; .ifnc $1r1,ipr12; .ifnc $1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09mov\09r3, #0\0A\09mov\09r4, #0\0A\09smc\09#0\0A\09ldmfd\09sp!, {r4 - r11}\0A\09", "{r0},{r1},{r2},~{memory},~{r3},~{r12},~{lr}"(i32 -3584, i32 %1, i32 0) #6, !srcloc !9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tf_init_cache() #0 {
  store ptr @tf_cache_write_sec, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tf_cache_write_sec(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 256
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, ptr @tf_idle_mode, align 4
  %9 = icmp eq i32 %8, 3
  %10 = select i1 %9, i32 4, i32 1
  tail call void asm sideeffect ".arch_extension\09sec\0A\09stmfd\09sp!, {r4 - r11}\0A\09.ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r1; .ifnc $1r1,fpr11; .ifnc $1r1,r11fp; .ifnc $1r1,ipr12; .ifnc $1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09mov\09r3, #0\0A\09mov\09r4, #0\0A\09smc\09#0\0A\09ldmfd\09sp!, {r4 - r11}\0A\09", "{r0},{r1},{r2},~{memory},~{r3},~{r12},~{lr}"(i32 -3840, i32 %10, i32 %5) #6, !srcloc !9
  br label %15

11:                                               ; preds = %4
  %12 = and i32 %5, 65536
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 255, i32 65535
  tail call void asm sideeffect ".arch_extension\09sec\0A\09stmfd\09sp!, {r4 - r11}\0A\09.ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r1; .ifnc $1r1,fpr11; .ifnc $1r1,r11fp; .ifnc $1r1,ipr12; .ifnc $1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09mov\09r3, #0\0A\09mov\09r4, #0\0A\09smc\09#0\0A\09ldmfd\09sp!, {r4 - r11}\0A\09", "{r0},{r1},{r2},~{memory},~{r3},~{r12},~{lr}"(i32 -3840, i32 2, i32 %14) #6, !srcloc !9
  br label %15

15:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn nounwind }

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
!9 = !{i64 1010, i64 1032, i64 1062, i64 2151250800, i64 2151251134, i64 2151251468, i64 1147, i64 1166, i64 1181, i64 1211}
