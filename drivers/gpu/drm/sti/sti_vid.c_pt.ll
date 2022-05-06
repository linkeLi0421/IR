; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_vid.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_vid.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sti_vid = type { ptr, ptr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@vid_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.1, ptr @vid_dbg_show, i32 0, ptr null }], align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for VID\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vid\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"VID: (vaddr= 0x%p)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\0A  %-25s 0x%08X\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"VID_CTL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"VID_ALP\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"VID_CLF\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"VID_VPO\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"VID_VPS\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"VID_KEY1\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"VID_KEY2\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"VID_MPR0\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"VID_MPR1\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"VID_MPR2\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"VID_MPR3\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"VID_MST\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"VID_BC\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"VID_TINT\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"VID_CSAT\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"NOT \00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"ignored on main mixer - \00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"ignored on aux mixer\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"\09xdo:%4d\09ydo:%4d\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"\09xds:%4d\09yds:%4d\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"\09BUFFER UNDERFLOW!\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vid_debugfs_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr %0, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @vid_debugfs_files, i32 0, i32 0, i32 3), align 4
  %3 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @vid_debugfs_files, i32 noundef 1, ptr noundef %4, ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_vid_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 12
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 12, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = sub i32 %14, %7
  %16 = tail call i32 @llvm.umin.i32(i32 %11, i32 %15)
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 12, i32 6
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = sub i32 %21, %9
  %23 = tail call i32 @llvm.umin.i32(i32 %18, i32 %22)
  %24 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %16, 1
  %27 = and i32 %26, -2
  %28 = add i32 %23, 1
  %29 = and i32 %28, -2
  %30 = getelementptr inbounds %struct.sti_vid, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %33 = and i32 %32, 1073741823
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %34 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #3, !srcloc !11
  %35 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %5, i32 noundef %9) #3
  %36 = add i32 %9, -1
  %37 = add i32 %36, %29
  %38 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %5, i32 noundef %37) #3
  %39 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %5, i32 noundef %7) #3
  %40 = add i32 %7, -1
  %41 = add i32 %40, %27
  %42 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %5, i32 noundef %41) #3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %43 = shl i32 %35, 16
  %44 = or i32 %39, %43
  %45 = load ptr, ptr %30, align 4
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %47 = shl i32 %38, 16
  %48 = or i32 %42, %47
  %49 = load ptr, ptr %30, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #3, !srcloc !11
  %51 = icmp ugt i32 %25, 47185919
  tail call void asm sideeffect "dsb st", "~{memory}"() #3
  tail call void @arm_heavy_mb() #3
  %52 = load ptr, ptr %30, align 4
  %53 = getelementptr i8, ptr %52, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 176160768) #3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3
  tail call void @arm_heavy_mb() #3
  %54 = load ptr, ptr %30, align 4
  %55 = getelementptr i8, ptr %54, i32 52
  br i1 %51, label %56, label %61

56:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 180682752) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %57 = load ptr, ptr %30, align 4
  %58 = getelementptr i8, ptr %57, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 118818117) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %59 = load ptr, ptr %30, align 4
  %60 = getelementptr i8, ptr %59, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 2792) #3, !srcloc !11
  br label %66

61:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 179240960) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %62 = load ptr, ptr %30, align 4
  %63 = getelementptr i8, ptr %62, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 156108628) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %64 = load ptr, ptr %30, align 4
  %65 = getelementptr i8, ptr %64, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 2781) #3, !srcloc !11
  br label %66

66:                                               ; preds = %61, %56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_vid_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sti_vid, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %5 = or i32 %4, -1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sti_vid_create(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 12, i32 noundef 3520) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %15

8:                                                ; preds = %4
  store ptr %0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.sti_vid, ptr %5, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sti_vid, ptr %5, i32 0, i32 2
  store i32 %2, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -1073741817) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %11 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 128) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %12 = getelementptr i8, ptr %3, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 32768) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %13 = getelementptr i8, ptr %3, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %14 = getelementptr i8, ptr %3, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 128) #3, !srcloc !11
  br label %15

15:                                               ; preds = %8, %7
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vid_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_vid, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %10) #3
  %11 = load ptr, ptr %9, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %12) #3
  %13 = load ptr, ptr %9, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !26
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #3
  %15 = and i32 %14, 1073741824
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.19) #3
  br label %18

18:                                               ; preds = %17, %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.20) #3
  %19 = icmp sgt i32 %14, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.19) #3
  br label %21

21:                                               ; preds = %20, %18
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.21) #3
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %24) #3
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef %27) #3
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !29
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, i32 noundef %30) #3
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !30
  %34 = and i32 %33, 4095
  %35 = lshr i32 %33, 16
  %36 = and i32 %35, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %34, i32 noundef %36) #3
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, i32 noundef %39) #3
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr i8, ptr %40, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !32
  %43 = and i32 %42, 4095
  %44 = lshr i32 %42, 16
  %45 = and i32 %44, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %43, i32 noundef %45) #3
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr i8, ptr %46, i32 40
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, i32 noundef %48) #3
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr i8, ptr %49, i32 44
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %51) #3
  %52 = load ptr, ptr %9, align 4
  %53 = getelementptr i8, ptr %52, i32 48
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, i32 noundef %54) #3
  %55 = load ptr, ptr %9, align 4
  %56 = getelementptr i8, ptr %55, i32 52
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, i32 noundef %57) #3
  %58 = load ptr, ptr %9, align 4
  %59 = getelementptr i8, ptr %58, i32 56
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef %60) #3
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr i8, ptr %61, i32 60
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !38
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, i32 noundef %63) #3
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr i8, ptr %64, i32 104
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !39
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef %66) #3
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr i8, ptr %67, i32 104
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %21
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.24) #3
  br label %73

73:                                               ; preds = %72, %21
  %74 = load ptr, ptr %9, align 4
  %75 = getelementptr i8, ptr %74, i32 112
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, i32 noundef %76) #3
  %77 = load ptr, ptr %9, align 4
  %78 = getelementptr i8, ptr %77, i32 116
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, i32 noundef %79) #3
  %80 = load ptr, ptr %9, align 4
  %81 = getelementptr i8, ptr %80, i32 120
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !43
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef %82) #3
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 4704103}
!9 = !{i64 2155036782}
!10 = !{i64 2155037143}
!11 = !{i64 4703685}
!12 = !{i64 2155037474}
!13 = !{i64 2155037833}
!14 = !{i64 2155038898}
!15 = !{i64 2155039247}
!16 = !{i64 2155040294}
!17 = !{i64 2155040643}
!18 = !{i64 2155041121}
!19 = !{i64 2155041482}
!20 = !{i64 2155042377}
!21 = !{i64 2155043020}
!22 = !{i64 2155043369}
!23 = !{i64 2155043718}
!24 = !{i64 2155044067}
!25 = !{i64 2154994911}
!26 = !{i64 2154995247}
!27 = !{i64 2154995671}
!28 = !{i64 2154996095}
!29 = !{i64 2154996519}
!30 = !{i64 2154996855}
!31 = !{i64 2154997279}
!32 = !{i64 2154997615}
!33 = !{i64 2154998040}
!34 = !{i64 2154998465}
!35 = !{i64 2154998890}
!36 = !{i64 2154999315}
!37 = !{i64 2154999740}
!38 = !{i64 2155000165}
!39 = !{i64 2155000589}
!40 = !{i64 2155000925}
!41 = !{i64 2155001348}
!42 = !{i64 2155001773}
!43 = !{i64 2155002198}
