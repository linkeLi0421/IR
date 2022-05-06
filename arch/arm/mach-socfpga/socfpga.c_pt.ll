; ModuleID = '/llk/IR/arch/arm/mach-socfpga/socfpga.c_pt.bc'
source_filename = "../arch/arm/mach-socfpga/socfpga.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"Altera SOCFPGA\00", align 1
@altera_dt_match = internal global [2 x ptr] [ptr @.str.2, ptr null], align 4
@__mach_desc_SOCFPGA = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @altera_dt_match, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_init_irq, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_cyclone5_restart }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Altera SOCFPGA Arria10\00", align 1
@altera_a10_dt_match = internal global [2 x ptr] [ptr @.str.8, ptr null], align 4
@__mach_desc_SOCFPGA_A10 = internal constant %struct.machine_desc { i32 -1, ptr @.str.1, i32 0, ptr @altera_a10_dt_match, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_arria10_init_irq, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_arria10_restart }, section ".arch.info.init", align 4
@sys_manager_base_addr = dso_local local_unnamed_addr global ptr null, align 4
@rst_manager_base_addr = dso_local local_unnamed_addr global ptr null, align 4
@sdr_ctl_base_addr = dso_local local_unnamed_addr global ptr null, align 4
@socfpga_cpu1start_addr = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"altr,socfpga\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"altr,sys-mgr\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"cpu1-start-addr\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\013SMP: Need cpu1-start-addr in device tree.\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"altr,rst-mgr\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"altr,sdr-ctl\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"altr,socfpga-arria10\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__mach_desc_SOCFPGA, ptr @__mach_desc_SOCFPGA_A10], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @socfpga_init_irq() #0 section ".init.text" {
  tail call void @irqchip_init() #4
  tail call fastcc void @socfpga_sysmgr_init() #5
  tail call void @socfpga_reset_init() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @socfpga_cyclone5_restart(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @rst_manager_base_addr, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %6 = icmp eq i32 %0, 1
  %7 = select i1 %6, i32 2, i32 1
  %8 = or i32 %5, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr @rst_manager_base_addr, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @socfpga_arria10_init_irq() #0 section ".init.text" {
  tail call void @irqchip_init() #4
  tail call fastcc void @socfpga_sysmgr_init() #5
  tail call void @socfpga_reset_init() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @socfpga_arria10_restart(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @rst_manager_base_addr, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %6 = icmp eq i32 %0, 1
  %7 = select i1 %6, i32 2, i32 1
  %8 = or i32 %5, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr @rst_manager_base_addr, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @socfpga_sysmgr_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #4
  %2 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @socfpga_cpu1start_addr, i32 noundef 1, i32 noundef 0) #4
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %6

6:                                                ; preds = %4, %0
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #4, !srcloc !14
  %7 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %7(ptr noundef nonnull @socfpga_cpu1start_addr, i32 noundef 4) #4
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @socfpga_cpu1start_addr to i32), i32 -2130706432, i32 8454144) #7, !srcloc !15
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @socfpga_cpu1start_addr, i32 1) to i32), i32 -2130706432, i32 8454144) #7, !srcloc !15
  %10 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(i32 noundef %8, i32 noundef %9) #4
  br label %13

13:                                               ; preds = %12, %6
  %14 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #4
  store ptr %14, ptr @sys_manager_base_addr, align 4
  %15 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #4
  %16 = tail call ptr @of_iomap(ptr noundef %15, i32 noundef 0) #4
  store ptr %16, ptr @rst_manager_base_addr, align 4
  %17 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #4
  %18 = tail call ptr @of_iomap(ptr noundef %17, i32 noundef 0) #4
  store ptr %18, ptr @sdr_ctl_base_addr, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @socfpga_reset_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 4389765}
!9 = !{i64 2153348110}
!10 = !{i64 2153348320}
!11 = !{i64 4389347}
!12 = !{i64 2153348830}
!13 = !{i64 2153349038}
!14 = !{i64 2153343804}
!15 = !{i64 2148946004, i64 2148946027, i64 2148946059, i64 2148946091, i64 2148946129, i64 2148946159}
