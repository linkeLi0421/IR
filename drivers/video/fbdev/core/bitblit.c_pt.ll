; ModuleID = '/llk/IR/drivers/video/fbdev/core/bitblit.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/bitblit.c"
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
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%union.anon.68 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fbcon_display = type { ptr, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, ptr }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_set_bitops(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @bit_bmove, ptr %0, align 4
  %2 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 1
  store ptr @bit_clear, ptr %2, align 4
  %3 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 2
  store ptr @bit_putcs, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 3
  store ptr @bit_clear_margins, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 4
  store ptr @bit_cursor, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 5
  store ptr @bit_update_start, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 6
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @fbcon_set_rotate(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bit_bmove(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.fb_copyarea, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #6
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %3
  %13 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %2
  %17 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 5
  store i32 %16, ptr %17, align 4
  %18 = mul i32 %11, %5
  store i32 %18, ptr %9, align 4
  %19 = mul i32 %15, %4
  %20 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = mul i32 %15, %6
  %22 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = mul i32 %11, %7
  %24 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fb_ops, ptr %26, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  call void %28(ptr noundef %1, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bit_clear(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.fb_fillrect, align 4
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  %11 = select i1 %10, i32 12, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = lshr i32 %21, %11
  br label %47

23:                                               ; preds = %13
  %24 = icmp eq ptr %1, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 9, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 8, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %27, i32 %29) #6
  %31 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 10, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 %30) #6
  %34 = shl i32 4095, %33
  %35 = and i32 %34, 255
  %36 = xor i32 %35, 255
  %37 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %41 = load i16, ptr %40, align 4
  %42 = and i16 %41, 2048
  %43 = icmp eq i16 %42, 0
  %44 = select i1 %39, i32 0, i32 %36
  %45 = select i1 %39, i32 %36, i32 0
  %46 = select i1 %43, i32 %45, i32 %44
  br label %47

47:                                               ; preds = %25, %23, %18, %6
  %48 = phi i32 [ %22, %18 ], [ %46, %25 ], [ 0, %6 ], [ 0, %23 ]
  %49 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, %3
  store i32 %52, ptr %7, align 4
  %53 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, %2
  %56 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  %57 = mul i32 %51, %5
  %58 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  %59 = mul i32 %54, %4
  %60 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 3
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 5
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.fb_ops, ptr %63, i32 0, i32 11
  %65 = load ptr, ptr %64, align 4
  call void %65(ptr noundef %1, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bit_putcs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.fb_image, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #6
  %10 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %10, i8 0, i32 48, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 7
  %14 = lshr i32 %13, 3
  %15 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %14, %16
  %18 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10
  %19 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = udiv i32 %20, %17
  %22 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  %25 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = and i32 %12, 7
  %29 = load i16, ptr %2, align 2
  %30 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %31 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %32 = tail call i32 @fb_get_color_depth(ptr noundef %30, ptr noundef %31) #6
  %33 = icmp eq i32 %32, 1
  %34 = zext i16 %29 to i32
  %35 = lshr i32 %34, 10
  %36 = and i32 %35, 3
  %37 = lshr i32 %34, 7
  %38 = and i32 %37, 4
  %39 = or i32 %36, %38
  %40 = select i1 %33, i32 %39, i32 0
  %41 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 4
  store i32 %6, ptr %41, align 4
  %42 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 5
  store i32 %7, ptr %42, align 4
  %43 = load i32, ptr %11, align 4
  %44 = mul i32 %43, %5
  store i32 %44, ptr %9, align 4
  %45 = load i32, ptr %15, align 4
  %46 = mul i32 %45, %4
  %47 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 3
  store i32 %45, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 6
  store i8 1, ptr %49, align 4
  %50 = icmp eq i32 %40, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %8
  %52 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 2592) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %223, label %54

54:                                               ; preds = %51, %8
  %55 = phi ptr [ %52, %51 ], [ null, %8 ]
  %56 = icmp eq i32 %3, 0
  br i1 %56, label %220, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 2
  %59 = sub i32 0, %23
  %60 = sub i32 0, %26
  %61 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 7
  %62 = icmp eq i32 %28, 0
  %63 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %64 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  %65 = and i32 %40, 1
  %66 = icmp eq i32 %65, 0
  %67 = and i32 %40, 4
  %68 = icmp eq i32 %67, 0
  %69 = shl i32 %40, 30
  %70 = ashr i32 %69, 31
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %73 = load i32, ptr %11, align 4
  br label %74

74:                                               ; preds = %217, %57
  %75 = phi i32 [ %45, %57 ], [ %219, %217 ]
  %76 = phi i32 [ %73, %57 ], [ %211, %217 ]
  %77 = phi ptr [ %2, %57 ], [ %218, %217 ]
  %78 = phi i32 [ %3, %57 ], [ %215, %217 ]
  %79 = call i32 @llvm.umin.i32(i32 %78, i32 %21)
  %80 = mul i32 %76, %79
  store i32 %80, ptr %58, align 4
  %81 = add i32 %80, 7
  %82 = lshr i32 %81, 3
  %83 = add i32 %24, %82
  %84 = and i32 %83, %59
  %85 = mul i32 %84, %75
  %86 = add i32 %27, %85
  %87 = and i32 %86, %60
  %88 = call ptr @fb_get_buffer_offset(ptr noundef %1, ptr noundef %18, i32 noundef %87) #6
  store ptr %88, ptr %61, align 4
  %89 = load i16, ptr %63, align 4
  %90 = icmp eq i16 %89, 0
  %91 = select i1 %90, i32 255, i32 511
  %92 = load i32, ptr %11, align 4
  br i1 %62, label %93, label %153

93:                                               ; preds = %74
  %94 = lshr i32 %92, 3
  %95 = icmp eq i32 %79, 0
  br i1 %95, label %207, label %96

96:                                               ; preds = %93
  %97 = icmp eq i32 %94, 1
  br label %98

98:                                               ; preds = %150, %96
  %99 = phi i32 [ %79, %96 ], [ %102, %150 ]
  %100 = phi ptr [ %88, %96 ], [ %151, %150 ]
  %101 = phi ptr [ %77, %96 ], [ %104, %150 ]
  %102 = add i32 %99, -1
  %103 = load ptr, ptr %64, align 4
  %104 = getelementptr i16, ptr %101, i32 1
  %105 = load i16, ptr %101, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %91, %106
  %108 = mul i32 %107, %17
  %109 = getelementptr i8, ptr %103, i32 %108
  br i1 %50, label %135, label %110

110:                                              ; preds = %98
  %111 = load i32, ptr %15, align 4
  %112 = icmp ult i32 %111, 10
  %113 = select i1 %112, i32 -1, i32 -2
  %114 = load i32, ptr %11, align 4
  %115 = add i32 %114, 7
  %116 = lshr i32 %115, 3
  %117 = mul i32 %116, %111
  %118 = mul nsw i32 %116, %113
  %119 = add i32 %118, %117
  %120 = icmp eq i32 %117, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %121, %110
  %122 = phi i32 [ %133, %121 ], [ 0, %110 ]
  %123 = getelementptr i8, ptr %109, i32 %122
  %124 = load i8, ptr %123, align 1
  %125 = icmp slt i32 %122, %119
  %126 = select i1 %66, i1 true, i1 %125
  %127 = select i1 %126, i8 %124, i8 -1
  %128 = lshr i8 %127, 1
  %129 = select i1 %68, i8 0, i8 %128
  %130 = or i8 %129, %127
  %131 = xor i8 %130, %71
  %132 = getelementptr i8, ptr %55, i32 %122
  store i8 %131, ptr %132, align 1
  %133 = add nuw i32 %122, 1
  %134 = icmp eq i32 %133, %117
  br i1 %134, label %135, label %121

135:                                              ; preds = %121, %110, %98
  %136 = phi ptr [ %109, %98 ], [ %55, %110 ], [ %55, %121 ]
  %137 = load i32, ptr %48, align 4
  br i1 %97, label %138, label %149, !prof !9

138:                                              ; preds = %135
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %140, %138
  %141 = phi i32 [ %144, %140 ], [ %137, %138 ]
  %142 = phi ptr [ %147, %140 ], [ %100, %138 ]
  %143 = phi ptr [ %145, %140 ], [ %136, %138 ]
  %144 = add i32 %141, -1
  %145 = getelementptr i8, ptr %143, i32 1
  %146 = load i8, ptr %143, align 1
  store i8 %146, ptr %142, align 1
  %147 = getelementptr i8, ptr %142, i32 %84
  %148 = icmp eq i32 %144, 0
  br i1 %148, label %150, label %140

149:                                              ; preds = %135
  call void @fb_pad_aligned_buffer(ptr noundef %100, i32 noundef %84, ptr noundef %136, i32 noundef %94, i32 noundef %137) #6
  br label %150

150:                                              ; preds = %149, %140, %138
  %151 = getelementptr i8, ptr %100, i32 %14
  %152 = icmp eq i32 %102, 0
  br i1 %152, label %207, label %98

153:                                              ; preds = %74
  %154 = and i32 %92, 7
  %155 = lshr i32 %92, 3
  %156 = icmp eq i32 %79, 0
  br i1 %156, label %207, label %157

157:                                              ; preds = %196, %153
  %158 = phi i32 [ %163, %196 ], [ %79, %153 ]
  %159 = phi i32 [ %205, %196 ], [ 8, %153 ]
  %160 = phi i32 [ %204, %196 ], [ 0, %153 ]
  %161 = phi ptr [ %203, %196 ], [ %88, %153 ]
  %162 = phi ptr [ %165, %196 ], [ %77, %153 ]
  %163 = add i32 %158, -1
  %164 = load ptr, ptr %64, align 4
  %165 = getelementptr i16, ptr %162, i32 1
  %166 = load i16, ptr %162, align 2
  %167 = zext i16 %166 to i32
  %168 = and i32 %91, %167
  %169 = mul i32 %168, %17
  %170 = getelementptr i8, ptr %164, i32 %169
  br i1 %50, label %196, label %171

171:                                              ; preds = %157
  %172 = load i32, ptr %15, align 4
  %173 = icmp ult i32 %172, 10
  %174 = select i1 %173, i32 -1, i32 -2
  %175 = load i32, ptr %11, align 4
  %176 = add i32 %175, 7
  %177 = lshr i32 %176, 3
  %178 = mul i32 %177, %172
  %179 = mul nsw i32 %177, %174
  %180 = add i32 %179, %178
  %181 = icmp eq i32 %178, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %182, %171
  %183 = phi i32 [ %194, %182 ], [ 0, %171 ]
  %184 = getelementptr i8, ptr %170, i32 %183
  %185 = load i8, ptr %184, align 1
  %186 = icmp slt i32 %183, %180
  %187 = select i1 %66, i1 true, i1 %186
  %188 = select i1 %187, i8 %185, i8 -1
  %189 = lshr i8 %188, 1
  %190 = select i1 %68, i8 0, i8 %189
  %191 = or i8 %190, %188
  %192 = xor i8 %191, %71
  %193 = getelementptr i8, ptr %55, i32 %183
  store i8 %192, ptr %193, align 1
  %194 = add nuw i32 %183, 1
  %195 = icmp eq i32 %194, %178
  br i1 %195, label %196, label %182

196:                                              ; preds = %182, %171, %157
  %197 = phi ptr [ %170, %157 ], [ %55, %171 ], [ %55, %182 ]
  %198 = load i32, ptr %48, align 4
  call void @fb_pad_unaligned_buffer(ptr noundef %161, i32 noundef %84, ptr noundef %197, i32 noundef %155, i32 noundef %198, i32 noundef %159, i32 noundef %160, i32 noundef %154) #6
  %199 = add nuw nsw i32 %160, %154
  %200 = icmp ult i32 %199, 8
  %201 = sext i1 %200 to i32
  %202 = add nsw i32 %14, %201
  %203 = getelementptr i8, ptr %161, i32 %202
  %204 = and i32 %199, 7
  %205 = sub nuw nsw i32 8, %204
  %206 = icmp eq i32 %163, 0
  br i1 %206, label %207, label %157

207:                                              ; preds = %196, %153, %150, %93
  %208 = load ptr, ptr %72, align 4
  %209 = getelementptr inbounds %struct.fb_ops, ptr %208, i32 0, i32 13
  %210 = load ptr, ptr %209, align 4
  call void %210(ptr noundef %1, ptr noundef nonnull %9) #6
  %211 = load i32, ptr %11, align 4
  %212 = mul i32 %211, %79
  %213 = load i32, ptr %9, align 4
  %214 = add i32 %213, %212
  store i32 %214, ptr %9, align 4
  %215 = sub i32 %78, %79
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %207
  %218 = getelementptr i16, ptr %77, i32 %79
  %219 = load i32, ptr %48, align 4
  br label %74

220:                                              ; preds = %207, %54
  %221 = icmp eq ptr %55, null
  br i1 %221, label %223, label %222, !prof !9

222:                                              ; preds = %220
  call void @kfree(ptr noundef nonnull %55) #6
  br label %223

223:                                              ; preds = %222, %220, %51
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bit_clear_margins(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 16, i1 false), !annotation !8
  %22 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 4
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 5
  store i32 0, ptr %23, align 4
  %24 = icmp slt i32 %15, 1
  %25 = icmp ne i32 %3, 0
  %26 = or i1 %25, %24
  br i1 %26, label %39, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %14
  store i32 %30, ptr %5, align 4
  %31 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 2
  store i32 %15, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fb_ops, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  call void %38(ptr noundef %1, ptr noundef nonnull %5) #6
  br label %39

39:                                               ; preds = %27, %4
  %40 = icmp sgt i32 %21, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %5, align 4
  %44 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %20
  %47 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 2
  store i32 %14, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 3
  store i32 %21, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.fb_ops, ptr %51, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  call void %53(ptr noundef %1, ptr noundef nonnull %5) #6
  br label %54

54:                                               ; preds = %41, %39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bit_cursor(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.fb_cursor, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %11, i32 255, i32 511
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 7
  %16 = lshr i32 %15, 3
  %17 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fbcon_display, ptr %18, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fbcon_display, ptr %18, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = sext i16 %25 to i32
  %27 = add i32 %21, %26
  %28 = icmp slt i32 %27, %23
  %29 = select i1 %28, i32 0, i32 %23
  %30 = sub i32 %27, %29
  %31 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %34 = load i32, ptr %33, align 4
  %35 = inttoptr i32 %34 to ptr
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %39 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %40 = tail call i32 @fb_get_color_depth(ptr noundef %38, ptr noundef %39) #6
  %41 = icmp eq i32 %40, 1
  %42 = lshr i32 %37, 10
  %43 = and i32 %42, 3
  %44 = lshr i32 %37, 7
  %45 = and i32 %44, 4
  %46 = or i32 %43, %45
  %47 = select i1 %41, i32 %46, i32 0
  %48 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = and i32 %12, %37
  %51 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %50, %16
  %54 = mul i32 %53, %52
  %55 = getelementptr i8, ptr %49, i32 %54
  %56 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5
  %57 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %55
  br i1 %59, label %60, label %64

60:                                               ; preds = %5
  %61 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60, %5
  store ptr %55, ptr %57, align 4
  store i16 1, ptr %6, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = icmp eq i32 %47, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %51, align 4
  %69 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 %68) #6
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %300, label %71, !prof !10

71:                                               ; preds = %67
  %72 = extractvalue { i32, i1 } %69, 0
  %73 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %72, i32 noundef 2592) #7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %300, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 22
  %77 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %77) #6
  store ptr %73, ptr %76, align 4
  %78 = load i32, ptr %51, align 4
  %79 = icmp ult i32 %78, 10
  %80 = select i1 %79, i32 -1, i32 -2
  %81 = load i32, ptr %13, align 4
  %82 = add i32 %81, 7
  %83 = lshr i32 %82, 3
  %84 = mul i32 %83, %78
  %85 = mul nsw i32 %83, %80
  %86 = add i32 %85, %84
  %87 = icmp eq i32 %84, 0
  br i1 %87, label %110, label %88

88:                                               ; preds = %75
  %89 = and i32 %47, 1
  %90 = icmp eq i32 %89, 0
  %91 = and i32 %47, 4
  %92 = icmp eq i32 %91, 0
  %93 = shl i32 %47, 30
  %94 = ashr i32 %93, 31
  %95 = trunc i32 %94 to i8
  br label %96

96:                                               ; preds = %96, %88
  %97 = phi i32 [ 0, %88 ], [ %108, %96 ]
  %98 = getelementptr i8, ptr %55, i32 %97
  %99 = load i8, ptr %98, align 1
  %100 = icmp slt i32 %97, %86
  %101 = select i1 %90, i1 true, i1 %100
  %102 = select i1 %101, i8 %99, i8 -1
  %103 = lshr i8 %102, 1
  %104 = select i1 %92, i8 0, i8 %103
  %105 = or i8 %104, %102
  %106 = xor i8 %105, %95
  %107 = getelementptr i8, ptr %73, i32 %97
  store i8 %106, ptr %107, align 1
  %108 = add nuw i32 %97, 1
  %109 = icmp eq i32 %108, %84
  br i1 %109, label %110, label %96

110:                                              ; preds = %96, %75, %65
  %111 = phi ptr [ %55, %65 ], [ %73, %75 ], [ %73, %96 ]
  %112 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, %3
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, %4
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119, %115, %110
  store i32 %3, ptr %112, align 4
  %124 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  store i32 %4, ptr %124, align 4
  %125 = load i16, ptr %6, align 4
  %126 = or i16 %125, 8
  store i16 %126, ptr %6, align 4
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32, ptr %56, align 4
  %129 = load i32, ptr %13, align 4
  %130 = load i32, ptr %19, align 4
  %131 = mul i32 %130, %129
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = load i32, ptr %51, align 4
  %137 = mul i32 %136, %30
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %139, %133, %127
  store i32 %131, ptr %56, align 4
  %144 = load i32, ptr %51, align 4
  %145 = mul i32 %144, %30
  %146 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  store i32 %145, ptr %146, align 4
  %147 = load i16, ptr %6, align 4
  %148 = or i16 %147, 2
  store i16 %148, ptr %6, align 4
  %149 = load i32, ptr %51, align 4
  br label %150

150:                                              ; preds = %143, %139
  %151 = phi i32 [ %149, %143 ], [ %136, %139 ]
  %152 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, %151
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = load i32, ptr %13, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %160, %155, %150
  store i32 %151, ptr %152, align 4
  %165 = load i32, ptr %13, align 4
  %166 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  store i32 %165, ptr %166, align 4
  %167 = load i16, ptr %6, align 4
  %168 = or i16 %167, 32
  store i16 %168, ptr %6, align 4
  br label %169

169:                                              ; preds = %164, %160
  %170 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4
  %171 = load i16, ptr %170, align 4
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4, i32 1
  %175 = load i16, ptr %174, align 2
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i16, ptr %6, align 4
  br label %186

183:                                              ; preds = %177, %173, %169
  store i16 0, ptr %170, align 4
  %184 = load i16, ptr %6, align 4
  %185 = or i16 %184, 4
  store i16 %185, ptr %6, align 4
  br label %186

186:                                              ; preds = %183, %181
  %187 = phi i16 [ %182, %181 ], [ %185, %183 ]
  %188 = and i16 %187, 32
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %186
  %191 = load i32, ptr %31, align 4
  %192 = load ptr, ptr %17, align 4
  %193 = getelementptr inbounds %struct.fbcon_display, ptr %192, i32 0, i32 5
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %191, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %253, label %204

204:                                              ; preds = %200, %196, %190, %186
  %205 = load i32, ptr %51, align 4
  %206 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 %205) #6
  %207 = extractvalue { i32, i1 } %206, 1
  br i1 %207, label %300, label %208, !prof !10

208:                                              ; preds = %204
  %209 = extractvalue { i32, i1 } %206, 0
  %210 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %209, i32 noundef 2592) #7
  %211 = icmp eq ptr %210, null
  br i1 %211, label %300, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %214 = load ptr, ptr %213, align 4
  tail call void @kfree(ptr noundef %214) #6
  store ptr %210, ptr %213, align 4
  %215 = load i32, ptr %31, align 4
  %216 = load ptr, ptr %17, align 4
  %217 = getelementptr inbounds %struct.fbcon_display, ptr %216, i32 0, i32 5
  store i32 %215, ptr %217, align 4
  %218 = or i16 %187, 16
  store i16 %218, ptr %6, align 4
  %219 = load ptr, ptr %17, align 4
  %220 = getelementptr inbounds %struct.fbcon_display, ptr %219, i32 0, i32 5
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, 15
  switch i32 %222, label %239 [
    i32 1, label %223
    i32 2, label %225
    i32 3, label %229
    i32 4, label %232
    i32 5, label %235
  ]

223:                                              ; preds = %212
  %224 = load i32, ptr %51, align 4
  br label %241

225:                                              ; preds = %212
  %226 = load i32, ptr %51, align 4
  %227 = icmp ult i32 %226, 10
  %228 = select i1 %227, i32 1, i32 2
  br label %241

229:                                              ; preds = %212
  %230 = load i32, ptr %51, align 4
  %231 = udiv i32 %230, 3
  br label %241

232:                                              ; preds = %212
  %233 = load i32, ptr %51, align 4
  %234 = lshr i32 %233, 1
  br label %241

235:                                              ; preds = %212
  %236 = load i32, ptr %51, align 4
  %237 = shl i32 %236, 1
  %238 = udiv i32 %237, 3
  br label %241

239:                                              ; preds = %212
  %240 = load i32, ptr %51, align 4
  br label %241

241:                                              ; preds = %239, %235, %232, %229, %225, %223
  %242 = phi i32 [ %240, %239 ], [ %236, %235 ], [ %233, %232 ], [ %230, %229 ], [ %226, %225 ], [ %224, %223 ]
  %243 = phi i32 [ %240, %239 ], [ %238, %235 ], [ %234, %232 ], [ %231, %229 ], [ %228, %225 ], [ 0, %223 ]
  %244 = sub i32 %242, %243
  %245 = mul i32 %244, %16
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %241
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %210, i8 0, i32 %245, i1 false)
  br label %248

248:                                              ; preds = %247, %241
  %249 = mul i32 %243, %16
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = getelementptr i8, ptr %210, i32 %245
  call void @llvm.memset.p0.i32(ptr align 1 %252, i8 -1, i32 %249, i1 false)
  br label %253

253:                                              ; preds = %251, %248, %200
  %254 = icmp eq i32 %2, 2
  %255 = trunc i32 %32 to i16
  %256 = lshr i16 %255, 4
  %257 = and i16 %256, 1
  %258 = xor i16 %257, 1
  %259 = select i1 %254, i16 0, i16 %258
  %260 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 1
  store i16 %259, ptr %260, align 2
  %261 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5
  %262 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 7
  store ptr %111, ptr %262, align 4
  %263 = load i32, ptr %112, align 4
  %264 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 4
  store i32 %263, ptr %264, align 4
  %265 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 5
  store i32 %266, ptr %267, align 4
  %268 = load i32, ptr %56, align 4
  store i32 %268, ptr %261, align 4
  %269 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 1
  store i32 %270, ptr %271, align 4
  %272 = load i32, ptr %152, align 4
  %273 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 3
  store i32 %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  %275 = load i32, ptr %274, align 4
  %276 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 2
  store i32 %275, ptr %276, align 4
  %277 = load i16, ptr %170, align 4
  %278 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4
  store i16 %277, ptr %278, align 4
  %279 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4, i32 1
  %280 = load i16, ptr %279, align 2
  %281 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4, i32 1
  store i16 %280, ptr %281, align 2
  %282 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 3
  store ptr %283, ptr %284, align 4
  %285 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 1
  store i16 %259, ptr %285, align 2
  %286 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 6
  store i8 1, ptr %286, align 4
  %287 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 2
  store i16 1, ptr %287, align 4
  %288 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.fb_ops, ptr %289, i32 0, i32 14
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %253
  %294 = call i32 %291(ptr noundef %1, ptr noundef nonnull %6) #6
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %293, %253
  %297 = call i32 @soft_cursor(ptr noundef %1, ptr noundef nonnull %6) #6
  br label %298

298:                                              ; preds = %296, %293
  %299 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  store i32 0, ptr %299, align 4
  br label %300

300:                                              ; preds = %298, %208, %204, %71, %67
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bit_update_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7
  %5 = tail call i32 @fb_pan_display(ptr noundef %0, ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 4
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 5
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 25
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 25
  store i32 %13, ptr %14, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_set_rotate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_get_buffer_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_color_depth(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_aligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_unaligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @soft_cursor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
