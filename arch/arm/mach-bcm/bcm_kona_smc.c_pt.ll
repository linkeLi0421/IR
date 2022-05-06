; ModuleID = '/llk/IR/arch/arm/mach-bcm/bcm_kona_smc.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/bcm_kona_smc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_kona_smc_data = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@bcm_kona_smc_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bcm,kona-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@bcm_smc_buffer = internal unnamed_addr global ptr null, align 4
@bcm_smc_buffer_phys = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\016Kona Secure API initialized\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @bcm_kona_smc_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #7
  store i64 0, ptr %1, align 8
  %2 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @bcm_kona_smc_ids, ptr noundef null) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %0
  %5 = call ptr @__of_get_address(ptr noundef nonnull %2, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %1, ptr noundef null) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %1, align 8
  %9 = add i64 %8, -4294967296
  %10 = icmp ult i64 %9, -4294967280
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %5, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = trunc i64 %8 to i32
  %17 = call ptr @ioremap(i32 noundef %13, i32 noundef %16) #7
  store ptr %17, ptr @bcm_smc_buffer, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  store i32 %13, ptr @bcm_smc_buffer_phys, align 4
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %21

21:                                               ; preds = %19, %15, %11, %7, %4, %0
  %22 = phi i32 [ 0, %19 ], [ -19, %0 ], [ -22, %4 ], [ -22, %7 ], [ -22, %11 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm_kona_smc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.bcm_kona_smc_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  store i32 %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %6, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %6, i32 0, i32 2
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %6, i32 0, i32 3
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %6, i32 0, i32 4
  store i32 %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %6, i32 0, i32 5
  store i32 0, ptr %11, align 4
  %12 = call i32 @smp_call_function_single(i32 noundef 0, ptr noundef nonnull @__bcm_kona_smc, ptr noundef nonnull %6, i32 noundef 1) #7
  %13 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bcm_kona_smc(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr @bcm_smc_buffer, align 4
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-bcm/bcm_kona_smc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

8:                                                ; preds = %1
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-bcm/bcm_kona_smc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !11
  unreachable

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i32, ptr %2, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 %13) #7, !srcloc !12
  %15 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i32, ptr %2, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #7, !srcloc !12
  %18 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i32, ptr %2, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %21 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %22) #7, !srcloc !12
  %23 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %23() #7
  %24 = load i32, ptr %0, align 4
  %25 = load i32, ptr @bcm_smc_buffer_phys, align 4
  %26 = tail call { i32, i32 } asm sideeffect ".ifnc $0,ip; .ifnc $0ip,fpr11; .ifnc $0ip,r11fp; .ifnc $0ip,ipr12; .ifnc $0ip,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r0; .ifnc $1r0,fpr11; .ifnc $1r0,r11fp; .ifnc $1r0,ipr12; .ifnc $1r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r5; .ifnc $3r5,fpr11; .ifnc $3r5,r11fp; .ifnc $3r5,ipr12; .ifnc $3r5,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $4,r6; .ifnc $4r6,fpr11; .ifnc $4r6,r11fp; .ifnc $4r6,ipr12; .ifnc $4r6,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.arch_extension sec\0A\09smc    #0\0A", "={r12},={r0},{r4},{r5},{r6},~{r1},~{r2},~{r3},~{r7},~{lr}"(i32 %24, i32 3, i32 %25) #7, !srcloc !14
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %30, label %29, !prof !8

29:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-bcm/bcm_kona_smc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #7, !srcloc !15
  unreachable

30:                                               ; preds = %11
  %31 = extractvalue { i32, i32 } %26, 1
  %32 = getelementptr inbounds %struct.bcm_kona_smc_data, ptr %0, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152297473, i64 2152297970, i64 2152297510, i64 2152297566, i64 2152297600, i64 2152297624, i64 2152297665, i64 2152297686, i64 2152297714, i64 2152297748}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152298514, i64 2152299011, i64 2152298551, i64 2152298607, i64 2152298641, i64 2152298665, i64 2152298706, i64 2152298727, i64 2152298755, i64 2152298789}
!12 = !{i64 1294332}
!13 = !{i64 2152299805}
!14 = !{i64 2152294249, i64 2152294529, i64 2152294863, i64 2152295197, i64 2152295531, i64 2152295865, i64 3754}
!15 = !{i64 2152296216, i64 2152296713, i64 2152296253, i64 2152296309, i64 2152296343, i64 2152296367, i64 2152296408, i64 2152296429, i64 2152296457, i64 2152296491}
