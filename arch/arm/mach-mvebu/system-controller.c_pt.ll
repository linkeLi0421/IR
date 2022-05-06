; ModuleID = '/llk/IR/arch/arm/mach-mvebu/system-controller.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/system-controller.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mvebu_system_controller = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@system_controller_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [74 x i8] c"\013Cannot restart, system-controller not available: check the device tree\0A\00", align 1
@mvebu_sc = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"marvell,armada380\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"marvell,armada375\00", align 1
@__initcall__kmod_system_controller__102_180_mvebu_system_controller_initearly = internal global ptr @mvebu_system_controller_init, section ".initcallearly.init", align 4
@system_controller_phys_base = internal unnamed_addr global i32 0, align 4
@of_system_controller_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-system-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_system_controller }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-xp-system-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_xp_system_controller }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-system-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_375_system_controller }, %struct.of_device_id zeroinitializer], align 4
@orion_system_controller = internal constant %struct.mvebu_system_controller { i32 264, i32 268, i32 4, i32 1, i32 0, i32 0, i32 0 }, align 4
@armada_370_xp_system_controller = internal constant %struct.mvebu_system_controller { i32 96, i32 100, i32 1, i32 1, i32 0, i32 56, i32 60 }, align 4
@armada_375_system_controller = internal constant %struct.mvebu_system_controller { i32 84, i32 88, i32 1, i32 1, i32 212, i32 56, i32 60 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_system_controller__102_180_mvebu_system_controller_initearly], section "llvm.metadata"

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mvebu_restart(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @system_controller_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %21

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr @mvebu_sc, align 4
  %9 = getelementptr inbounds %struct.mvebu_system_controller, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr @system_controller_base, align 4
  %12 = load i32, ptr %8, align 4
  %13 = getelementptr i8, ptr %11, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr @mvebu_sc, align 4
  %15 = getelementptr inbounds %struct.mvebu_system_controller, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr @system_controller_base, align 4
  %18 = getelementptr inbounds %struct.mvebu_system_controller, ptr %14, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #8, !srcloc !9
  br label %21

21:                                               ; preds = %7, %5
  br label %22

22:                                               ; preds = %22, %21
  br label %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_system_controller_get_soc_id(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #8
  %4 = icmp ne i32 %3, 0
  %5 = load ptr, ptr @system_controller_base, align 4
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load ptr, ptr @mvebu_sc, align 4
  %10 = getelementptr inbounds %struct.mvebu_system_controller, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %5, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %14 = lshr i32 %13, 16
  store i32 %14, ptr %0, align 4
  %15 = load ptr, ptr @system_controller_base, align 4
  %16 = load ptr, ptr @mvebu_sc, align 4
  %17 = getelementptr inbounds %struct.mvebu_system_controller, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 15
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %8, %2
  %24 = phi i32 [ 0, %8 ], [ -19, %2 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mvebu_system_controller_set_cpu_boot_addr(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @system_controller_base, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !14

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-mvebu/system-controller.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

7:                                                ; preds = %1
  %8 = load ptr, ptr @mvebu_sc, align 4
  %9 = getelementptr inbounds %struct.mvebu_system_controller, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-mvebu/system-controller.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

13:                                               ; preds = %7
  %14 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !17
  %17 = call i32 @mvebu_get_soc_id(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %3, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, ptr @system_controller_phys_base, align 4
  %24 = load ptr, ptr @mvebu_sc, align 4
  %25 = getelementptr inbounds %struct.mvebu_system_controller, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %23
  %28 = call i32 @mvebu_setup_boot_addr_wa(i32 noundef 41, i32 noundef 1, i32 noundef %27) #8
  br label %29

29:                                               ; preds = %22, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %30

30:                                               ; preds = %29, %13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %0 to i32
  %32 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %31, i32 -2130706432, i32 8454144) #9, !srcloc !19
  %33 = load ptr, ptr @system_controller_base, align 4
  %34 = load ptr, ptr @mvebu_sc, align 4
  %35 = getelementptr inbounds %struct.mvebu_system_controller, ptr %34, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %33, i32 %36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %32) #8, !srcloc !9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_system_controller_init() #5 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  store ptr null, ptr %1, align 4, !annotation !17
  %3 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_system_controller_table, ptr noundef nonnull %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !17
  %6 = call ptr @of_iomap(ptr noundef nonnull %3, i32 noundef 0) #8
  store ptr %6, ptr @system_controller_base, align 4
  %7 = call i32 @of_address_to_resource(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %2) #8
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @system_controller_phys_base, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr @mvebu_sc, align 4
  call void @of_node_put(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  br label %12

12:                                               ; preds = %5, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_get_soc_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_setup_boot_addr_wa(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

attributes #0 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 2150374974}
!9 = !{i64 2808569}
!10 = !{i64 2150375461}
!11 = !{i64 2808987}
!12 = !{i64 2150376089}
!13 = !{i64 2150376495}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2150376916, i64 2150377420, i64 2150376953, i64 2150377009, i64 2150377043, i64 2150377067, i64 2150377108, i64 2150377129, i64 2150377157, i64 2150377191}
!16 = !{i64 2150378030, i64 2150378534, i64 2150378067, i64 2150378123, i64 2150378157, i64 2150378181, i64 2150378222, i64 2150378243, i64 2150378271, i64 2150378305}
!17 = !{!"auto-init"}
!18 = !{i64 2150379783}
!19 = !{i64 2148887434, i64 2148887457, i64 2148887489, i64 2148887521, i64 2148887559, i64 2148887589}
