; ModuleID = '/llk/IR/drivers/gpu/drm/pl111/pl111_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/pl111/pl111_debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.anon.82 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.73 = type { i32, ptr }
%struct.pl111_drm_dev_private = type { ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i32, i32, i32, ptr, %struct.clk_hw, %struct.spinlock, ptr, ptr, ptr, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@pl111_debugfs_list = internal constant [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str, ptr @pl111_debugfs_regs, i32 0, ptr null }], align 4
@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s (0x%04x): 0x%08x\0A\00", align 1
@pl111_reg_defs = internal unnamed_addr constant [13 x %struct.anon.82] [%struct.anon.82 { i32 0, ptr @.str.2 }, %struct.anon.82 { i32 4, ptr @.str.3 }, %struct.anon.82 { i32 8, ptr @.str.4 }, %struct.anon.82 { i32 12, ptr @.str.5 }, %struct.anon.82 { i32 16, ptr @.str.6 }, %struct.anon.82 { i32 20, ptr @.str.7 }, %struct.anon.82 { i32 24, ptr @.str.8 }, %struct.anon.82 { i32 28, ptr @.str.9 }, %struct.anon.82 { i32 32, ptr @.str.10 }, %struct.anon.82 { i32 36, ptr @.str.11 }, %struct.anon.82 { i32 40, ptr @.str.12 }, %struct.anon.82 { i32 44, ptr @.str.13 }, %struct.anon.82 { i32 48, ptr @.str.14 }], align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"CLCD_TIM0\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CLCD_TIM1\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CLCD_TIM2\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CLCD_TIM3\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"CLCD_UBAS\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"CLCD_LBAS\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"CLCD_PL111_CNTL\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"CLCD_PL111_IENB\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"CLCD_PL111_RIS\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"CLCD_PL111_MIS\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"CLCD_PL111_ICR\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"CLCD_PL111_UCUR\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"CLCD_PL111_LCUR\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pl111_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @pl111_debugfs_list, i32 noundef 1, ptr noundef %3, ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl111_debugfs_regs(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %9, i32 0, i32 5
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi i32 [ 0, %2 ], [ %20, %11 ]
  %13 = getelementptr [13 x %struct.anon.82], ptr @pl111_reg_defs, i32 0, i32 %12
  %14 = getelementptr [13 x %struct.anon.82], ptr @pl111_reg_defs, i32 0, i32 %12, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %13, align 4
  %17 = load ptr, ptr %10, align 8
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %15, i32 noundef %16, i32 noundef %19) #2
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %22, label %11

22:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 4699431}
!9 = !{i64 2155192831}
