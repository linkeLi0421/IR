; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbcon_ud.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon_ud.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fbcon_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%union.anon.68 = type { ptr }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fbcon_display = type { ptr, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, ptr }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @fbcon_rotate_ud(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @ud_bmove, ptr %0, align 4
  %2 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 1
  store ptr @ud_clear, ptr %2, align 4
  %3 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 2
  store ptr @ud_putcs, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 3
  store ptr @ud_clear_margins, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 4
  store ptr @ud_cursor, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 5
  store ptr @ud_update_start, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ud_bmove(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
  %9 = alloca %struct.fb_copyarea, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %6, %2
  %15 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, %14
  %19 = sub i32 %11, %18
  %20 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  %21 = add i32 %7, %3
  %22 = load i32, ptr %15, align 4
  %23 = mul i32 %22, %21
  %24 = sub i32 %13, %23
  %25 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  %26 = add i32 %6, %4
  %27 = mul i32 %17, %26
  %28 = sub i32 %11, %27
  %29 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = add i32 %7, %5
  %31 = mul i32 %22, %30
  %32 = sub i32 %13, %31
  store i32 %32, ptr %9, align 4
  %33 = mul i32 %17, %6
  %34 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = mul i32 %22, %7
  %36 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fb_ops, ptr %38, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  call void %40(ptr noundef %1, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ud_clear(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca %struct.fb_fillrect, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i16 %9, 0
  %15 = select i1 %14, i32 12, i32 13
  %16 = icmp eq ptr %0, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 2048
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = lshr i32 %25, %15
  br label %51

27:                                               ; preds = %17
  %28 = icmp eq ptr %1, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 9, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 8, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %31, i32 %33) #7
  %35 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 10, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %34) #7
  %38 = shl i32 4095, %37
  %39 = and i32 %38, 255
  %40 = xor i32 %39, 255
  %41 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 2048
  %47 = icmp eq i16 %46, 0
  %48 = select i1 %43, i32 0, i32 %40
  %49 = select i1 %43, i32 %40, i32 0
  %50 = select i1 %47, i32 %49, i32 %48
  br label %51

51:                                               ; preds = %29, %27, %22, %6
  %52 = phi i32 [ %26, %22 ], [ %50, %29 ], [ 0, %6 ], [ 0, %27 ]
  %53 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  %54 = add i32 %4, %2
  %55 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %56 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, %54
  %59 = sub i32 %11, %58
  %60 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 1
  store i32 %59, ptr %60, align 4
  %61 = add i32 %5, %3
  %62 = load i32, ptr %55, align 4
  %63 = mul i32 %62, %61
  %64 = sub i32 %13, %63
  store i32 %64, ptr %7, align 4
  %65 = mul i32 %62, %5
  %66 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = mul i32 %57, %4
  %68 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 3
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 5
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.fb_ops, ptr %71, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  call void %73(ptr noundef %1, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ud_putcs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
  %9 = alloca %struct.fb_image, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #7
  %10 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %10, i8 0, i32 48, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 7
  %16 = lshr i32 %15, 3
  %17 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %16, %18
  %20 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10
  %21 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = udiv i32 %22, %19
  %24 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  %27 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = and i32 %14, 7
  %31 = load i16, ptr %2, align 2
  %32 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %33 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %34 = tail call i32 @fb_get_color_depth(ptr noundef %32, ptr noundef %33) #7
  %35 = icmp eq i32 %34, 1
  %36 = zext i16 %31 to i32
  %37 = lshr i32 %36, 10
  %38 = and i32 %37, 3
  %39 = lshr i32 %36, 7
  %40 = and i32 %39, 4
  %41 = or i32 %38, %40
  %42 = select i1 %35, i32 %41, i32 0
  %43 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 23
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %239, label %46

46:                                               ; preds = %8
  %47 = load i32, ptr %32, align 4
  %48 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 4
  store i32 %6, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 5
  store i32 %7, ptr %51, align 4
  %52 = load i32, ptr %17, align 4
  %53 = mul i32 %52, %4
  %54 = add i32 %52, %53
  %55 = sub i32 %49, %54
  %56 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  %57 = add i32 %5, %3
  %58 = load i32, ptr %13, align 4
  %59 = mul i32 %58, %57
  %60 = sub i32 %47, %59
  store i32 %60, ptr %9, align 4
  %61 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 3
  store i32 %52, ptr %61, align 4
  %62 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 6
  store i8 1, ptr %62, align 4
  %63 = icmp eq i32 %42, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %46
  %65 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %239, label %67

67:                                               ; preds = %64, %46
  %68 = phi ptr [ %65, %64 ], [ null, %46 ]
  %69 = icmp eq i32 %3, 0
  br i1 %69, label %236, label %70

70:                                               ; preds = %67
  %71 = add i32 %3, -1
  %72 = getelementptr i16, ptr %2, i32 %71
  %73 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 2
  %74 = sub i32 0, %25
  %75 = sub i32 0, %28
  %76 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 7
  %77 = icmp eq i32 %30, 0
  %78 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %79 = and i32 %42, 1
  %80 = icmp ne i32 %79, 0
  %81 = and i32 %42, 4
  %82 = icmp eq i32 %81, 0
  %83 = shl i32 %42, 30
  %84 = ashr i32 %83, 31
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  br label %87

87:                                               ; preds = %232, %70
  %88 = phi i32 [ %52, %70 ], [ %235, %232 ]
  %89 = phi ptr [ %72, %70 ], [ %234, %232 ]
  %90 = phi i32 [ %3, %70 ], [ %230, %232 ]
  %91 = call i32 @llvm.umin.i32(i32 %90, i32 %23)
  %92 = load i32, ptr %13, align 4
  %93 = mul i32 %92, %91
  store i32 %93, ptr %73, align 4
  %94 = add i32 %93, 7
  %95 = lshr i32 %94, 3
  %96 = add i32 %26, %95
  %97 = and i32 %96, %74
  %98 = mul i32 %97, %88
  %99 = add i32 %29, %98
  %100 = and i32 %99, %75
  %101 = call ptr @fb_get_buffer_offset(ptr noundef %1, ptr noundef %20, i32 noundef %100) #7
  store ptr %101, ptr %76, align 4
  %102 = load i16, ptr %78, align 4
  %103 = icmp eq i16 %102, 0
  %104 = select i1 %103, i32 255, i32 511
  %105 = load i32, ptr %13, align 4
  br i1 %77, label %106, label %167

106:                                              ; preds = %87
  %107 = lshr i32 %105, 3
  %108 = icmp eq i32 %91, 0
  br i1 %108, label %223, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %11, align 4
  %111 = getelementptr inbounds %struct.fbcon_ops, ptr %110, i32 0, i32 23
  %112 = icmp eq i32 %107, 1
  br label %113

113:                                              ; preds = %164, %109
  %114 = phi i32 [ %91, %109 ], [ %117, %164 ]
  %115 = phi ptr [ %101, %109 ], [ %165, %164 ]
  %116 = phi ptr [ %89, %109 ], [ %119, %164 ]
  %117 = add i32 %114, -1
  %118 = load ptr, ptr %111, align 4
  %119 = getelementptr i16, ptr %116, i32 -1
  %120 = load i16, ptr %116, align 2
  %121 = zext i16 %120 to i32
  %122 = and i32 %104, %121
  %123 = mul i32 %122, %19
  %124 = getelementptr i8, ptr %118, i32 %123
  br i1 %63, label %149, label %125

125:                                              ; preds = %113
  %126 = load i32, ptr %17, align 4
  %127 = icmp ult i32 %126, 10
  %128 = select i1 %127, i32 1, i32 2
  %129 = load i32, ptr %13, align 4
  %130 = add i32 %129, 7
  %131 = lshr i32 %130, 3
  %132 = mul i32 %131, %126
  %133 = mul nuw nsw i32 %131, %128
  %134 = icmp eq i32 %132, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %135, %125
  %136 = phi i32 [ %147, %135 ], [ 0, %125 ]
  %137 = getelementptr i8, ptr %124, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = icmp slt i32 %136, %133
  %140 = select i1 %80, i1 %139, i1 false
  %141 = select i1 %140, i8 -1, i8 %138
  %142 = shl i8 %141, 1
  %143 = select i1 %82, i8 0, i8 %142
  %144 = or i8 %143, %141
  %145 = xor i8 %144, %85
  %146 = getelementptr i8, ptr %68, i32 %136
  store i8 %145, ptr %146, align 1
  %147 = add nuw i32 %136, 1
  %148 = icmp eq i32 %147, %132
  br i1 %148, label %149, label %135

149:                                              ; preds = %135, %125, %113
  %150 = phi ptr [ %124, %113 ], [ %68, %125 ], [ %68, %135 ]
  %151 = load i32, ptr %61, align 4
  br i1 %112, label %152, label %163, !prof !9

152:                                              ; preds = %149
  %153 = icmp eq i32 %151, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %154, %152
  %155 = phi i32 [ %158, %154 ], [ %151, %152 ]
  %156 = phi ptr [ %161, %154 ], [ %115, %152 ]
  %157 = phi ptr [ %159, %154 ], [ %150, %152 ]
  %158 = add i32 %155, -1
  %159 = getelementptr i8, ptr %157, i32 1
  %160 = load i8, ptr %157, align 1
  store i8 %160, ptr %156, align 1
  %161 = getelementptr i8, ptr %156, i32 %97
  %162 = icmp eq i32 %158, 0
  br i1 %162, label %164, label %154

163:                                              ; preds = %149
  call void @fb_pad_aligned_buffer(ptr noundef %115, i32 noundef %97, ptr noundef %150, i32 noundef %107, i32 noundef %151) #7
  br label %164

164:                                              ; preds = %163, %154, %152
  %165 = getelementptr i8, ptr %115, i32 %16
  %166 = icmp eq i32 %117, 0
  br i1 %166, label %223, label %113

167:                                              ; preds = %87
  %168 = and i32 %105, 7
  %169 = lshr i32 %105, 3
  %170 = icmp eq i32 %91, 0
  br i1 %170, label %223, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %11, align 4
  %173 = getelementptr inbounds %struct.fbcon_ops, ptr %172, i32 0, i32 23
  br label %174

174:                                              ; preds = %212, %171
  %175 = phi i32 [ %91, %171 ], [ %180, %212 ]
  %176 = phi i32 [ 8, %171 ], [ %221, %212 ]
  %177 = phi i32 [ 0, %171 ], [ %220, %212 ]
  %178 = phi ptr [ %101, %171 ], [ %219, %212 ]
  %179 = phi ptr [ %89, %171 ], [ %182, %212 ]
  %180 = add i32 %175, -1
  %181 = load ptr, ptr %173, align 4
  %182 = getelementptr i16, ptr %179, i32 -1
  %183 = load i16, ptr %179, align 2
  %184 = zext i16 %183 to i32
  %185 = and i32 %104, %184
  %186 = mul i32 %185, %19
  %187 = getelementptr i8, ptr %181, i32 %186
  br i1 %63, label %212, label %188

188:                                              ; preds = %174
  %189 = load i32, ptr %17, align 4
  %190 = icmp ult i32 %189, 10
  %191 = select i1 %190, i32 1, i32 2
  %192 = load i32, ptr %13, align 4
  %193 = add i32 %192, 7
  %194 = lshr i32 %193, 3
  %195 = mul i32 %194, %189
  %196 = mul nuw nsw i32 %194, %191
  %197 = icmp eq i32 %195, 0
  br i1 %197, label %212, label %198

198:                                              ; preds = %198, %188
  %199 = phi i32 [ %210, %198 ], [ 0, %188 ]
  %200 = getelementptr i8, ptr %187, i32 %199
  %201 = load i8, ptr %200, align 1
  %202 = icmp slt i32 %199, %196
  %203 = select i1 %80, i1 %202, i1 false
  %204 = select i1 %203, i8 -1, i8 %201
  %205 = shl i8 %204, 1
  %206 = select i1 %82, i8 0, i8 %205
  %207 = or i8 %206, %204
  %208 = xor i8 %207, %85
  %209 = getelementptr i8, ptr %68, i32 %199
  store i8 %208, ptr %209, align 1
  %210 = add nuw i32 %199, 1
  %211 = icmp eq i32 %210, %195
  br i1 %211, label %212, label %198

212:                                              ; preds = %198, %188, %174
  %213 = phi ptr [ %187, %174 ], [ %68, %188 ], [ %68, %198 ]
  %214 = load i32, ptr %61, align 4
  call void @fb_pad_unaligned_buffer(ptr noundef %178, i32 noundef %97, ptr noundef %213, i32 noundef %169, i32 noundef %214, i32 noundef %176, i32 noundef %177, i32 noundef %168) #7
  %215 = add nuw nsw i32 %177, %168
  %216 = icmp ult i32 %215, 8
  %217 = sext i1 %216 to i32
  %218 = add nsw i32 %16, %217
  %219 = getelementptr i8, ptr %178, i32 %218
  %220 = and i32 %215, 7
  %221 = sub nuw nsw i32 8, %220
  %222 = icmp eq i32 %180, 0
  br i1 %222, label %223, label %174

223:                                              ; preds = %212, %167, %164, %106
  %224 = load ptr, ptr %86, align 4
  %225 = getelementptr inbounds %struct.fb_ops, ptr %224, i32 0, i32 13
  %226 = load ptr, ptr %225, align 4
  call void %226(ptr noundef %1, ptr noundef nonnull %9) #7
  %227 = load i32, ptr %73, align 4
  %228 = load i32, ptr %9, align 4
  %229 = add i32 %228, %227
  store i32 %229, ptr %9, align 4
  %230 = sub i32 %90, %91
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %223
  %233 = sub i32 0, %91
  %234 = getelementptr i16, ptr %89, i32 %233
  %235 = load i32, ptr %61, align 4
  br label %87

236:                                              ; preds = %223, %67
  %237 = icmp eq ptr %68, null
  br i1 %237, label %239, label %238, !prof !9

238:                                              ; preds = %236
  call void @kfree(ptr noundef nonnull %68) #7
  br label %239

239:                                              ; preds = %238, %236, %64, %8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ud_clear_margins(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.fb_fillrect, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %7
  %15 = sub i32 %11, %14
  %16 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, %9
  %21 = sub i32 %17, %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 16, i1 false), !annotation !8
  %22 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 4
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 5
  store i32 0, ptr %23, align 4
  %24 = icmp slt i32 %15, 1
  %25 = icmp ne i32 %3, 0
  %26 = or i1 %25, %24
  br i1 %26, label %38, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %5, align 4
  %30 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 2
  store i32 %15, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fb_ops, ptr %35, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  call void %37(ptr noundef %1, ptr noundef nonnull %5) #7
  br label %38

38:                                               ; preds = %27, %4
  %39 = icmp sgt i32 %21, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %5, align 4
  %46 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 3
  store i32 %21, ptr %46, align 4
  %47 = load i32, ptr %10, align 4
  %48 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.fb_ops, ptr %50, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  call void %52(ptr noundef %1, ptr noundef nonnull %5) #7
  br label %53

53:                                               ; preds = %40, %38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ud_cursor(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.fb_cursor, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 7
  %12 = lshr i32 %11, 3
  %13 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fbcon_display, ptr %14, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fbcon_display, ptr %14, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = sext i16 %21 to i32
  %23 = add i32 %17, %22
  %24 = icmp slt i32 %23, %19
  %25 = select i1 %24, i32 0, i32 %19
  %26 = sub i32 %25, %23
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 23
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %306, label %36

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, i32 255, i32 511
  %41 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %42 = load i32, ptr %41, align 4
  %43 = inttoptr i32 %42 to ptr
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %47 = tail call i32 @fb_get_color_depth(ptr noundef %31, ptr noundef %46) #7
  %48 = icmp eq i32 %47, 1
  %49 = lshr i32 %45, 10
  %50 = and i32 %49, 3
  %51 = lshr i32 %45, 7
  %52 = and i32 %51, 4
  %53 = or i32 %50, %52
  %54 = select i1 %48, i32 %53, i32 0
  %55 = load ptr, ptr %33, align 4
  %56 = and i32 %40, %45
  %57 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %56, %12
  %60 = mul i32 %59, %58
  %61 = getelementptr i8, ptr %55, i32 %60
  %62 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5
  %63 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %61
  br i1 %65, label %66, label %70

66:                                               ; preds = %36
  %67 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66, %36
  store ptr %61, ptr %63, align 4
  store i16 1, ptr %6, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = icmp eq i32 %54, 0
  br i1 %72, label %115, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %57, align 4
  %75 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 %74) #7
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %306, label %77, !prof !10

77:                                               ; preds = %73
  %78 = extractvalue { i32, i1 } %75, 0
  %79 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 2592) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %306, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 22
  %83 = load ptr, ptr %82, align 4
  tail call void @kfree(ptr noundef %83) #7
  store ptr %79, ptr %82, align 4
  %84 = load i32, ptr %57, align 4
  %85 = icmp ult i32 %84, 10
  %86 = select i1 %85, i32 1, i32 2
  %87 = load i32, ptr %9, align 4
  %88 = add i32 %87, 7
  %89 = lshr i32 %88, 3
  %90 = mul i32 %89, %84
  %91 = mul nuw nsw i32 %89, %86
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %115, label %93

93:                                               ; preds = %81
  %94 = and i32 %54, 1
  %95 = icmp ne i32 %94, 0
  %96 = and i32 %54, 4
  %97 = icmp eq i32 %96, 0
  %98 = shl i32 %54, 30
  %99 = ashr i32 %98, 31
  %100 = trunc i32 %99 to i8
  br label %101

101:                                              ; preds = %101, %93
  %102 = phi i32 [ 0, %93 ], [ %113, %101 ]
  %103 = getelementptr i8, ptr %61, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = icmp slt i32 %102, %91
  %106 = select i1 %95, i1 %105, i1 false
  %107 = select i1 %106, i8 -1, i8 %104
  %108 = shl i8 %107, 1
  %109 = select i1 %97, i8 0, i8 %108
  %110 = or i8 %109, %107
  %111 = xor i8 %110, %100
  %112 = getelementptr i8, ptr %79, i32 %102
  store i8 %111, ptr %112, align 1
  %113 = add nuw i32 %102, 1
  %114 = icmp eq i32 %113, %90
  br i1 %114, label %115, label %101

115:                                              ; preds = %101, %81, %71
  %116 = phi ptr [ %61, %71 ], [ %79, %81 ], [ %79, %101 ]
  %117 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, %3
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, %4
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124, %120, %115
  store i32 %3, ptr %117, align 4
  %129 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  store i32 %4, ptr %129, align 4
  %130 = load i16, ptr %6, align 4
  %131 = or i16 %130, 8
  store i16 %131, ptr %6, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = load i32, ptr %57, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = load i32, ptr %9, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %142, %137, %132
  store i32 %135, ptr %133, align 4
  %147 = load i32, ptr %9, align 4
  %148 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  store i32 %147, ptr %148, align 4
  %149 = load i16, ptr %6, align 4
  %150 = or i16 %149, 32
  store i16 %150, ptr %6, align 4
  %151 = load i32, ptr %57, align 4
  %152 = load i32, ptr %9, align 4
  br label %153

153:                                              ; preds = %146, %142
  %154 = phi i32 [ %152, %146 ], [ %139, %142 ]
  %155 = phi i32 [ %151, %146 ], [ %134, %142 ]
  %156 = mul i32 %26, %155
  %157 = sub i32 %30, %155
  %158 = add i32 %157, %156
  %159 = load i32, ptr %15, align 4
  %160 = mul i32 %154, %159
  %161 = add i32 %154, %160
  %162 = sub i32 %32, %161
  %163 = load i32, ptr %62, align 4
  %164 = icmp eq i32 %163, %162
  br i1 %164, label %165, label %173

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, %158
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169, %165, %153
  store i32 %162, ptr %62, align 4
  %174 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  store i32 %158, ptr %174, align 4
  %175 = load i16, ptr %6, align 4
  %176 = or i16 %175, 2
  store i16 %176, ptr %6, align 4
  br label %177

177:                                              ; preds = %173, %169
  %178 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4
  %179 = load i16, ptr %178, align 4
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4, i32 1
  %183 = load i16, ptr %182, align 2
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i16, ptr %6, align 4
  br label %194

191:                                              ; preds = %185, %181, %177
  store i16 0, ptr %178, align 4
  %192 = load i16, ptr %6, align 4
  %193 = or i16 %192, 4
  store i16 %193, ptr %6, align 4
  br label %194

194:                                              ; preds = %191, %189
  %195 = phi i16 [ %190, %189 ], [ %193, %191 ]
  %196 = and i16 %195, 32
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load i32, ptr %27, align 4
  %200 = load ptr, ptr %13, align 4
  %201 = getelementptr inbounds %struct.fbcon_display, ptr %200, i32 0, i32 5
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %199, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %259, label %212

212:                                              ; preds = %208, %204, %198, %194
  %213 = load i32, ptr %57, align 4
  %214 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 %213) #7
  %215 = extractvalue { i32, i1 } %214, 1
  br i1 %215, label %306, label %216, !prof !10

216:                                              ; preds = %212
  %217 = extractvalue { i32, i1 } %214, 0
  %218 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %217, i32 noundef 2592) #8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %306, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %222 = load ptr, ptr %221, align 4
  tail call void @kfree(ptr noundef %222) #7
  store ptr %218, ptr %221, align 4
  %223 = load i32, ptr %27, align 4
  %224 = load ptr, ptr %13, align 4
  %225 = getelementptr inbounds %struct.fbcon_display, ptr %224, i32 0, i32 5
  store i32 %223, ptr %225, align 4
  %226 = or i16 %195, 16
  store i16 %226, ptr %6, align 4
  %227 = load ptr, ptr %13, align 4
  %228 = getelementptr inbounds %struct.fbcon_display, ptr %227, i32 0, i32 5
  %229 = load i32, ptr %228, align 4
  %230 = and i32 %229, 15
  switch i32 %230, label %245 [
    i32 1, label %247
    i32 2, label %231
    i32 3, label %235
    i32 4, label %238
    i32 5, label %241
  ]

231:                                              ; preds = %220
  %232 = load i32, ptr %57, align 4
  %233 = icmp ult i32 %232, 10
  %234 = select i1 %233, i32 1, i32 2
  br label %247

235:                                              ; preds = %220
  %236 = load i32, ptr %57, align 4
  %237 = udiv i32 %236, 3
  br label %247

238:                                              ; preds = %220
  %239 = load i32, ptr %57, align 4
  %240 = lshr i32 %239, 1
  br label %247

241:                                              ; preds = %220
  %242 = load i32, ptr %57, align 4
  %243 = shl i32 %242, 1
  %244 = udiv i32 %243, 3
  br label %247

245:                                              ; preds = %220
  %246 = load i32, ptr %57, align 4
  br label %247

247:                                              ; preds = %245, %241, %238, %235, %231, %220
  %248 = phi i32 [ %246, %245 ], [ %244, %241 ], [ %240, %238 ], [ %237, %235 ], [ %234, %231 ], [ 0, %220 ]
  %249 = mul i32 %248, %12
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %247
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %218, i8 -1, i32 %249, i1 false)
  br label %252

252:                                              ; preds = %251, %247
  %253 = load i32, ptr %57, align 4
  %254 = sub i32 %253, %248
  %255 = mul i32 %254, %12
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = getelementptr i8, ptr %218, i32 %249
  call void @llvm.memset.p0.i32(ptr align 1 %258, i8 0, i32 %255, i1 false)
  br label %259

259:                                              ; preds = %257, %252, %208
  %260 = icmp eq i32 %2, 2
  %261 = trunc i32 %28 to i16
  %262 = lshr i16 %261, 4
  %263 = and i16 %262, 1
  %264 = xor i16 %263, 1
  %265 = select i1 %260, i16 0, i16 %264
  %266 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 1
  store i16 %265, ptr %266, align 2
  %267 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5
  %268 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 7
  store ptr %116, ptr %268, align 4
  %269 = load i32, ptr %117, align 4
  %270 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 4
  store i32 %269, ptr %270, align 4
  %271 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 5
  store i32 %272, ptr %273, align 4
  %274 = load i32, ptr %62, align 4
  store i32 %274, ptr %267, align 4
  %275 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 1
  store i32 %276, ptr %277, align 4
  %278 = load i32, ptr %133, align 4
  %279 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 3
  store i32 %278, ptr %279, align 4
  %280 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 2
  store i32 %281, ptr %282, align 4
  %283 = load i16, ptr %178, align 4
  %284 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4
  store i16 %283, ptr %284, align 4
  %285 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4, i32 1
  %286 = load i16, ptr %285, align 2
  %287 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4, i32 1
  store i16 %286, ptr %287, align 2
  %288 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 3
  store ptr %289, ptr %290, align 4
  %291 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 1
  store i16 %265, ptr %291, align 2
  %292 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 6
  store i8 1, ptr %292, align 4
  %293 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 2
  store i16 1, ptr %293, align 4
  %294 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.fb_ops, ptr %295, i32 0, i32 14
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %259
  %300 = call i32 %297(ptr noundef %1, ptr noundef nonnull %6) #7
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %299, %259
  %303 = call i32 @soft_cursor(ptr noundef %1, ptr noundef nonnull %6) #7
  br label %304

304:                                              ; preds = %302, %299
  %305 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  store i32 0, ptr %305, align 4
  br label %306

306:                                              ; preds = %304, %216, %212, %77, %73, %5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ud_update_start(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 0, %9
  %11 = icmp slt i32 %10, 0
  %12 = sub i32 %5, %9
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7
  %15 = sub i32 0, %7
  store i32 %15, ptr %6, align 4
  store i32 %13, ptr %8, align 4
  %16 = tail call i32 @fb_pan_display(ptr noundef %0, ptr noundef %14) #7
  %17 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 4
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 5
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %8, align 4
  %21 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 25
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 25
  store i32 %22, ptr %23, align 4
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_get_buffer_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_color_depth(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_aligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_unaligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @soft_cursor(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
