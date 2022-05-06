; ModuleID = '/llk/IR/drivers/staging/board/armadillo800eva.c_pt.bc'
source_filename = "../drivers/staging/board/armadillo800eva.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.board_staging_dev = type { ptr, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.board_staging_clk = type { ptr, ptr, ptr }
%struct.sh_mobile_lcdc_info = type { i32, [2 x %struct.sh_mobile_lcdc_chan_cfg], [4 x %struct.sh_mobile_lcdc_overlay_cfg] }
%struct.sh_mobile_lcdc_chan_cfg = type { i32, i32, i32, i32, i32, i32, ptr, i32, %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_bl_info, %struct.sh_mobile_lcdc_sys_bus_cfg, ptr }
%struct.sh_mobile_lcdc_panel_cfg = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.sh_mobile_lcdc_bl_info = type { ptr, i32, ptr }
%struct.sh_mobile_lcdc_sys_bus_cfg = type { i32, i32, i32 }
%struct.sh_mobile_lcdc_overlay_cfg = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_armadillo800eva__261_88_runtime_board_check6 = internal global ptr @runtime_board_check, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [24 x i8] c"renesas,armadillo800eva\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"arm,pl390\00", align 1
@armadillo800eva_devices = internal constant [1 x %struct.board_staging_dev] [%struct.board_staging_dev { ptr @lcdc0_device, ptr @lcdc0_clocks, i32 1, ptr @.str.2 }], section ".init.rodata", align 4
@lcdc0_device = internal global %struct.platform_device { ptr @.str.3, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lcdc0_info, ptr null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @lcdc0_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@lcdc0_clocks = internal constant [1 x %struct.board_staging_clk] [%struct.board_staging_clk { ptr @.str.6, ptr null, ptr @.str.7 }], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"/system-controller@e6180000/pm-domains/c5/a4lc@1\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"sh_mobile_lcdc_fb\00", align 1
@lcdc0_info = internal global %struct.sh_mobile_lcdc_info { i32 0, [2 x %struct.sh_mobile_lcdc_chan_cfg] [%struct.sh_mobile_lcdc_chan_cfg { i32 1, i32 1346520914, i32 0, i32 11, i32 5, i32 0, ptr @lcdc0_mode, i32 1, %struct.sh_mobile_lcdc_panel_cfg { i32 111, i32 68, ptr null, ptr null, ptr null, ptr null }, %struct.sh_mobile_lcdc_bl_info zeroinitializer, %struct.sh_mobile_lcdc_sys_bus_cfg zeroinitializer, ptr null }, %struct.sh_mobile_lcdc_chan_cfg zeroinitializer], [4 x %struct.sh_mobile_lcdc_overlay_cfg] zeroinitializer }, align 4
@lcdc0_resources = internal global [2 x %struct.resource] [%struct.resource { i32 -23855104, i32 -23838721, ptr @.str.5, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 209, i32 209, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@lcdc0_mode = internal global %struct.fb_videomode { ptr @.str.4, i32 0, i32 800, i32 480, i32 0, i32 88, i32 40, i32 20, i32 5, i32 128, i32 5, i32 0, i32 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"AMPIER/AM-800480\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"LCD0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lcdc0\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"sh_mobile_lcdc_fb.0\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_armadillo800eva__261_88_runtime_board_check6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @runtime_board_check() #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @armadillo800eva_init() #3
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @armadillo800eva_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @board_staging_gic_setup_xlate(ptr noundef nonnull @.str.1, i32 noundef 32) #2
  tail call void @board_staging_register_devices(ptr noundef nonnull @armadillo800eva_devices, i32 noundef 1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @board_staging_gic_setup_xlate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @board_staging_register_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { cold }

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
