; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_mixer.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_mixer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.sti_mixer = type { ptr, ptr, i32, %struct.drm_crtc, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@__UNIQUE_ID_bkgcolor264 = internal constant [53 x i8] c"parm=bkgcolor:Value of the background color 0xRRGGBB\00", section ".modinfo", align 1
@__param_str_bkgcolor = internal constant [9 x i8] c"bkgcolor\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bkg_color = internal global i32 0, align 4
@__param_bkgcolor = internal constant %struct.kernel_param { ptr @__param_str_bkgcolor, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @bkg_color } }, section "__param", align 4
@__UNIQUE_ID_bkgcolortype265 = internal constant [22 x i8] c"parmtype=bkgcolor:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"MAIN_MIXER\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"AUX_MIXER\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"<UNKNOWN MIXER>\00", align 1
@mixer0_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.12, ptr @mixer_dbg_show, i32 0, ptr null }], align 4
@mixer1_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.40, ptr @mixer_dbg_show, i32 0, ptr null }], align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Unknown plane %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s %s depth=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"%s active video area xdo:%d ydo:%d xds:%d yds:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Can't find layer mask\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Failed to allocated memory for mixer\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"%s created. Regs=%p\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"mixer_main\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"%s: (vaddr = 0x%p)\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\0A  %-25s 0x%08X\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_CTL\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_BKC\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_BCO\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_BCS\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_AVO\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_AVS\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_CRB\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_ACT\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_MBP\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"GAM_MIXER_MX0\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"BKG\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"VID0\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"VID1\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"GDP0\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"GDP1\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"GDP2\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"GDP3\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"\09Enabled: \00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"CURS \00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Nothing\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"\09Depth: \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c" < \00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"-0x%08X\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"mixer_aux\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_bkgcolor264, ptr @__UNIQUE_ID_bkgcolortype265, ptr @__param_bkgcolor], section "llvm.metadata"
@switch.table.mixer_dbg_show.45 = private unnamed_addr constant [6 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @sti_mixer_to_str(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 1
  %5 = select i1 %4, ptr @.str.1, ptr @.str.2
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, ptr @.str, ptr %5
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_mixer_debugfs_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %11 [
    i32 0, label %6
    i32 1, label %5
  ]

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi ptr [ @mixer1_debugfs_files, %5 ], [ @mixer0_debugfs_files, %2 ]
  %8 = getelementptr inbounds %struct.drm_info_list, ptr %7, i32 0, i32 3
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull %7, i32 noundef 1, ptr noundef %10, ptr noundef %1) #3
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_mixer_set_background_status(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %6 = and i32 %5, -2
  %7 = zext i1 %1 to i32
  %8 = or i32 %6, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_mixer_set_plane_depth(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sti_plane, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %13 [
    i32 256, label %14
    i32 257, label %9
    i32 258, label %10
    i32 259, label %11
    i32 512, label %12
    i32 768, label %57
  ]

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %8) #3
  br label %57

14:                                               ; preds = %12, %11, %10, %9, %2
  %15 = phi i32 [ 1, %12 ], [ 6, %11 ], [ 5, %10 ], [ 4, %9 ], [ 3, %2 ]
  %16 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %20 = and i32 %19, 7
  %21 = icmp eq i32 %20, %15
  br i1 %21, label %39, label %22

22:                                               ; preds = %14
  %23 = and i32 %19, 56
  %24 = shl nuw nsw i32 %15, 3
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = and i32 %19, 448
  %28 = shl nuw nsw i32 %15, 6
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = and i32 %19, 3584
  %32 = shl nuw nsw i32 %15, 9
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = and i32 %19, 28672
  %36 = shl nuw nsw i32 %15, 12
  %37 = icmp eq i32 %35, %36
  %38 = select i1 %37, i32 28672, i32 229376
  br label %39

39:                                               ; preds = %34, %30, %26, %22, %14
  %40 = phi i32 [ 7, %14 ], [ 56, %22 ], [ 448, %26 ], [ 3584, %30 ], [ %38, %34 ]
  %41 = mul i32 %6, 3
  %42 = shl i32 7, %41
  %43 = or i32 %40, %42
  %44 = shl i32 %15, %41
  %45 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %47, ptr @.str.1, ptr @.str.2
  %49 = icmp eq i32 %46, 0
  %50 = select i1 %49, ptr @.str, ptr %48
  %51 = tail call ptr @sti_plane_to_str(ptr noundef %1) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull %50, ptr noundef %51, i32 noundef %6) #3
  %52 = xor i32 %43, -1
  %53 = and i32 %19, %52
  %54 = or i32 %53, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr i8, ptr %55, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #3, !srcloc !11
  br label %57

57:                                               ; preds = %39, %13, %2
  %58 = phi i32 [ 1, %13 ], [ 0, %39 ], [ 0, %2 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_mixer_active_video_area(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %1, i32 noundef 0) #3
  %4 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %1, i32 noundef %7) #3
  %9 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %1, i32 noundef 0) #3
  %10 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %1, i32 noundef %13) #3
  %15 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 1
  %18 = select i1 %17, ptr @.str.1, ptr @.str.2
  %19 = icmp eq i32 %16, 0
  %20 = select i1 %19, ptr @.str, ptr %18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull %20, i32 noundef %9, i32 noundef %3, i32 noundef %14, i32 noundef %8) #3
  %21 = shl i32 %3, 16
  %22 = or i32 %9, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %23 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #3, !srcloc !11
  %26 = shl i32 %8, 16
  %27 = or i32 %14, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #3, !srcloc !11
  %30 = load i32, ptr @bkg_color, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #3, !srcloc !11
  %33 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %1, i32 noundef 0) #3
  %34 = load i16, ptr %4, align 2
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %35, -1
  %37 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %1, i32 noundef %36) #3
  %38 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %1, i32 noundef 0) #3
  %39 = load i16, ptr %10, align 4
  %40 = zext i16 %39 to i32
  %41 = add nsw i32 %40, -1
  %42 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %1, i32 noundef %41) #3
  %43 = shl i32 %33, 16
  %44 = or i32 %38, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %45 = load ptr, ptr %23, align 4
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #3, !srcloc !11
  %47 = shl i32 %37, 16
  %48 = or i32 %42, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %49 = load ptr, ptr %23, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #3, !srcloc !11
  %51 = load ptr, ptr %23, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %53 = or i32 %52, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %54 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #3, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_mixer_set_plane_status(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = select i1 %2, ptr @.str.7, ptr @.str.8
  %5 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, ptr @.str.1, ptr @.str.2
  %9 = icmp eq i32 %6, 0
  %10 = select i1 %9, ptr @.str, ptr %8
  %11 = tail call ptr @sti_plane_to_str(ptr noundef %1) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %10, ptr noundef %11) #3
  %12 = getelementptr inbounds %struct.sti_plane, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  switch i32 %13, label %20 [
    i32 1024, label %21
    i32 256, label %14
    i32 257, label %15
    i32 258, label %16
    i32 259, label %17
    i32 512, label %18
    i32 768, label %19
  ]

14:                                               ; preds = %3
  br label %21

15:                                               ; preds = %3
  br label %21

16:                                               ; preds = %3
  br label %21

17:                                               ; preds = %3
  br label %21

18:                                               ; preds = %3
  br label %21

19:                                               ; preds = %3
  br label %21

20:                                               ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #3
  br label %31

21:                                               ; preds = %19, %18, %17, %16, %15, %14, %3
  %22 = phi i32 [ 1, %3 ], [ 8, %14 ], [ 16, %15 ], [ 32, %16 ], [ 64, %17 ], [ 2, %18 ], [ 512, %19 ]
  %23 = getelementptr inbounds %struct.sti_mixer, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %26 = xor i32 %22, -1
  %27 = and i32 %25, %26
  %28 = select i1 %2, i32 %22, i32 0
  %29 = or i32 %27, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %30 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #3, !srcloc !11
  br label %31

31:                                               ; preds = %21, %20
  %32 = phi i32 [ 0, %21 ], [ -22, %20 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @sti_mixer_create(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 776, i32 noundef 3520) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #3
  br label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sti_mixer, ptr %5, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  store ptr %0, ptr %5, align 8
  %10 = getelementptr inbounds %struct.sti_mixer, ptr %5, i32 0, i32 2
  store i32 %2, ptr %10, align 8
  %11 = icmp eq i32 %2, 1
  %12 = select i1 %11, ptr @.str.1, ptr @.str.2
  %13 = icmp eq i32 %2, 0
  %14 = select i1 %13, ptr @.str, ptr %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef nonnull %14, ptr noundef %3) #3
  br label %15

15:                                               ; preds = %8, %7
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_mixer, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, ptr @.str.1, ptr @.str.2
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %13, ptr @.str, ptr %12
  %15 = getelementptr inbounds %struct.sti_mixer, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %14, ptr noundef %16) #3
  %17 = load ptr, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %18) #3
  %19 = load ptr, ptr %15, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #3
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25) #3
  br label %24

24:                                               ; preds = %23, %2
  %25 = phi i32 [ 1, %23 ], [ 0, %2 ]
  %26 = and i32 %20, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26) #3
  %29 = add nuw nsw i32 %25, 1
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ %25, %24 ]
  %32 = and i32 %20, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #3
  %35 = add nuw nsw i32 %31, 1
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %35, %34 ], [ %31, %30 ]
  %38 = and i32 %20, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28) #3
  %41 = add nuw nsw i32 %37, 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %41, %40 ], [ %37, %36 ]
  %44 = and i32 %20, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29) #3
  %47 = add nuw nsw i32 %43, 1
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ %43, %42 ]
  %50 = and i32 %20, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #3
  %53 = add nuw nsw i32 %49, 1
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %53, %52 ], [ %49, %48 ]
  %56 = and i32 %20, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #3
  %59 = add nuw nsw i32 %55, 1
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %59, %58 ], [ %55, %54 ]
  %62 = and i32 %20, 512
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = icmp eq i32 %61, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %64, %60
  %67 = phi ptr [ @.str.34, %60 ], [ @.str.35, %64 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %67) #3
  br label %68

68:                                               ; preds = %66, %64
  %69 = load ptr, ptr %15, align 4
  %70 = getelementptr i8, ptr %69, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %71) #3
  %72 = load ptr, ptr %15, align 4
  %73 = getelementptr i8, ptr %72, i32 12
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i32 noundef %74) #3
  %75 = load ptr, ptr %15, align 4
  %76 = getelementptr i8, ptr %75, i32 16
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.18, i32 noundef %77) #3
  %78 = load ptr, ptr %15, align 4
  %79 = getelementptr i8, ptr %78, i32 40
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %80) #3
  %81 = load ptr, ptr %15, align 4
  %82 = getelementptr i8, ptr %81, i32 44
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %83) #3
  %84 = load ptr, ptr %15, align 4
  %85 = getelementptr i8, ptr %84, i32 52
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.21, i32 noundef %86) #3
  %87 = load ptr, ptr %15, align 4
  %88 = getelementptr i8, ptr %87, i32 52
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.36) #3
  %90 = and i32 %89, 7
  %91 = add nsw i32 %90, -1
  %92 = icmp ult i32 %91, 6
  br i1 %92, label %93, label %96

93:                                               ; preds = %68
  %94 = getelementptr inbounds [6 x ptr], ptr @switch.table.mixer_dbg_show.45, i32 0, i32 %91
  %95 = load ptr, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %68
  %97 = phi ptr [ %95, %93 ], [ @.str.37, %68 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %97) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #3
  %98 = lshr i32 %89, 3
  %99 = and i32 %98, 7
  %100 = add nsw i32 %99, -1
  %101 = icmp ult i32 %100, 6
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = getelementptr inbounds [6 x ptr], ptr @switch.table.mixer_dbg_show.45, i32 0, i32 %100
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = phi ptr [ %104, %102 ], [ @.str.37, %96 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %106) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #3
  %107 = lshr i32 %89, 6
  %108 = and i32 %107, 7
  %109 = add nsw i32 %108, -1
  %110 = icmp ult i32 %109, 6
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = getelementptr inbounds [6 x ptr], ptr @switch.table.mixer_dbg_show.45, i32 0, i32 %109
  %113 = load ptr, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %105
  %115 = phi ptr [ %113, %111 ], [ @.str.37, %105 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %115) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #3
  %116 = lshr i32 %89, 9
  %117 = and i32 %116, 7
  %118 = add nsw i32 %117, -1
  %119 = icmp ult i32 %118, 6
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = getelementptr inbounds [6 x ptr], ptr @switch.table.mixer_dbg_show.45, i32 0, i32 %118
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi ptr [ %122, %120 ], [ @.str.37, %114 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %124) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #3
  %125 = lshr i32 %89, 12
  %126 = and i32 %125, 7
  %127 = add nsw i32 %126, -1
  %128 = icmp ult i32 %127, 6
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = getelementptr inbounds [6 x ptr], ptr @switch.table.mixer_dbg_show.45, i32 0, i32 %127
  %131 = load ptr, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %123
  %133 = phi ptr [ %131, %129 ], [ @.str.37, %123 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %133) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #3
  %134 = lshr i32 %89, 15
  %135 = and i32 %134, 7
  %136 = add nsw i32 %135, -1
  %137 = icmp ult i32 %136, 6
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = getelementptr inbounds [6 x ptr], ptr @switch.table.mixer_dbg_show.45, i32 0, i32 %136
  %140 = load ptr, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %132
  %142 = phi ptr [ %140, %138 ], [ @.str.37, %132 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %142) #3
  %143 = load ptr, ptr %15, align 4
  %144 = getelementptr i8, ptr %143, i32 56
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22, i32 noundef %145) #3
  %146 = load ptr, ptr %15, align 4
  %147 = getelementptr i8, ptr %146, i32 60
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.23, i32 noundef %148) #3
  %149 = load ptr, ptr %15, align 4
  %150 = getelementptr i8, ptr %149, i32 128
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.24, i32 noundef %151) #3
  %152 = load ptr, ptr %15, align 4
  %153 = getelementptr i8, ptr %152, i32 132
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %154) #3
  %155 = getelementptr i8, ptr %152, i32 136
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %156) #3
  %157 = getelementptr i8, ptr %152, i32 140
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %158) #3
  %159 = getelementptr i8, ptr %152, i32 144
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %160) #3
  %161 = getelementptr i8, ptr %152, i32 148
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %162) #3
  %163 = getelementptr i8, ptr %152, i32 152
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %164) #3
  %165 = getelementptr i8, ptr %152, i32 156
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %166) #3
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 5578301}
!9 = !{i64 2155036535}
!10 = !{i64 2155036892}
!11 = !{i64 5577883}
!12 = !{i64 2155037361}
