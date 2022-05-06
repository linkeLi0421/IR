; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbcon_ccw.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon_ccw.c"
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
define dso_local void @fbcon_rotate_ccw(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @ccw_bmove, ptr %0, align 4
  %2 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 1
  store ptr @ccw_clear, ptr %2, align 4
  %3 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 2
  store ptr @ccw_putcs, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 3
  store ptr @ccw_clear_margins, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 4
  store ptr @ccw_cursor, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 5
  store ptr @ccw_update_start, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccw_bmove(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
  %9 = alloca %struct.fb_copyarea, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %2
  %16 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = add i32 %7, %3
  %18 = load i32, ptr %12, align 4
  %19 = mul i32 %18, %17
  %20 = sub i32 %11, %19
  %21 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  %22 = mul i32 %14, %4
  store i32 %22, ptr %9, align 4
  %23 = add i32 %7, %5
  %24 = mul i32 %18, %23
  %25 = sub i32 %11, %24
  %26 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = mul i32 %14, %6
  %28 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = mul i32 %18, %7
  %30 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fb_ops, ptr %32, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  call void %34(ptr noundef %1, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccw_clear(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca %struct.fb_fillrect, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i16 %9, 0
  %13 = select i1 %12, i32 12, i32 13
  %14 = icmp eq ptr %0, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 2048
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = lshr i32 %23, %13
  br label %49

25:                                               ; preds = %15
  %26 = icmp eq ptr %1, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 9, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 8, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %29, i32 %31) #7
  %33 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 10, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 %32) #7
  %36 = shl i32 4095, %35
  %37 = and i32 %36, 255
  %38 = xor i32 %37, 255
  %39 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 2048
  %45 = icmp eq i16 %44, 0
  %46 = select i1 %41, i32 0, i32 %38
  %47 = select i1 %41, i32 %38, i32 0
  %48 = select i1 %45, i32 %47, i32 %46
  br label %49

49:                                               ; preds = %27, %25, %20, %6
  %50 = phi i32 [ %24, %20 ], [ %48, %27 ], [ 0, %6 ], [ 0, %25 ]
  %51 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %53 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, %2
  store i32 %55, ptr %7, align 4
  %56 = add i32 %5, %3
  %57 = load i32, ptr %52, align 4
  %58 = mul i32 %57, %56
  %59 = sub i32 %11, %58
  %60 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 1
  store i32 %59, ptr %60, align 4
  %61 = mul i32 %57, %5
  %62 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 3
  store i32 %61, ptr %62, align 4
  %63 = mul i32 %54, %4
  %64 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 2
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 5
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.fb_ops, ptr %67, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  call void %69(ptr noundef %1, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccw_putcs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
  %9 = alloca %struct.fb_image, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #7
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %10, i8 0, i32 44, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 7
  %17 = lshr i32 %16, 3
  %18 = load i32, ptr %13, align 4
  %19 = mul i32 %17, %18
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
  %30 = load i16, ptr %2, align 2
  %31 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %32 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %33 = tail call i32 @fb_get_color_depth(ptr noundef %31, ptr noundef %32) #7
  %34 = icmp eq i32 %33, 1
  %35 = zext i16 %30 to i32
  %36 = lshr i32 %35, 10
  %37 = and i32 %36, 3
  %38 = lshr i32 %35, 7
  %39 = and i32 %38, 4
  %40 = or i32 %37, %39
  %41 = select i1 %34, i32 %40, i32 0
  %42 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 23
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %227, label %45

45:                                               ; preds = %8
  %46 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 4
  store i32 %6, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 5
  store i32 %7, ptr %49, align 4
  %50 = load i32, ptr %14, align 4
  %51 = mul i32 %50, %4
  store i32 %51, ptr %9, align 4
  %52 = add i32 %5, %3
  %53 = load i32, ptr %13, align 4
  %54 = mul i32 %53, %52
  %55 = sub i32 %47, %54
  %56 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 2
  store i32 %50, ptr %57, align 4
  %58 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 6
  store i8 1, ptr %58, align 4
  %59 = icmp eq i32 %41, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %45
  %61 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %227, label %63

63:                                               ; preds = %60, %45
  %64 = phi ptr [ %61, %60 ], [ null, %45 ]
  %65 = icmp eq i32 %3, 0
  br i1 %65, label %224, label %66

66:                                               ; preds = %63
  %67 = add i32 %3, -1
  %68 = getelementptr i16, ptr %2, i32 %67
  %69 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 3
  %70 = sub i32 0, %25
  %71 = sub i32 0, %28
  %72 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 7
  %73 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %74 = and i32 %41, 1
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %41, 4
  %77 = icmp ne i32 %76, 0
  %78 = shl i32 %41, 30
  %79 = ashr i32 %78, 31
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  br label %82

82:                                               ; preds = %220, %66
  %83 = phi i32 [ %50, %66 ], [ %223, %220 ]
  %84 = phi ptr [ %68, %66 ], [ %222, %220 ]
  %85 = phi i32 [ %3, %66 ], [ %218, %220 ]
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 %23)
  %87 = load i32, ptr %13, align 4
  %88 = mul i32 %87, %86
  store i32 %88, ptr %69, align 4
  %89 = add i32 %83, 7
  %90 = lshr i32 %89, 3
  %91 = add i32 %26, %90
  %92 = and i32 %91, %70
  %93 = mul i32 %92, %88
  %94 = add i32 %29, %93
  %95 = and i32 %94, %71
  %96 = call ptr @fb_get_buffer_offset(ptr noundef %1, ptr noundef %20, i32 noundef %95) #7
  store ptr %96, ptr %72, align 4
  %97 = load i16, ptr %73, align 4
  %98 = icmp eq i16 %97, 0
  %99 = select i1 %98, i32 255, i32 511
  %100 = load i32, ptr %14, align 4
  %101 = add i32 %100, 7
  %102 = lshr i32 %101, 3
  %103 = icmp eq i32 %86, 0
  br i1 %103, label %211, label %104

104:                                              ; preds = %82
  %105 = load ptr, ptr %11, align 4
  %106 = getelementptr inbounds %struct.fbcon_ops, ptr %105, i32 0, i32 23
  %107 = icmp eq i32 %102, 1
  br label %108

108:                                              ; preds = %206, %104
  %109 = phi i32 [ %86, %104 ], [ %112, %206 ]
  %110 = phi ptr [ %96, %104 ], [ %209, %206 ]
  %111 = phi ptr [ %84, %104 ], [ %114, %206 ]
  %112 = add i32 %109, -1
  %113 = load ptr, ptr %106, align 4
  %114 = getelementptr i16, ptr %111, i32 -1
  %115 = load i16, ptr %111, align 2
  %116 = zext i16 %115 to i32
  %117 = and i32 %99, %116
  %118 = mul i32 %117, %19
  %119 = getelementptr i8, ptr %113, i32 %118
  br i1 %59, label %120, label %122

120:                                              ; preds = %108
  %121 = load i32, ptr %13, align 4
  br label %188

122:                                              ; preds = %108
  %123 = load i32, ptr %14, align 4
  %124 = icmp ult i32 %123, 10
  %125 = select i1 %124, i32 1, i32 2
  %126 = and i32 %123, 7
  %127 = shl nuw nsw i32 255, %125
  %128 = trunc i32 %127 to i8
  %129 = xor i8 %128, -1
  %130 = icmp eq i32 %126, 0
  %131 = sub nuw nsw i32 8, %126
  %132 = zext i8 %129 to i32
  %133 = shl nuw nsw i32 %132, %131
  %134 = trunc i32 %133 to i8
  %135 = select i1 %130, i8 %129, i8 %134
  %136 = icmp ugt i32 %125, %126
  %137 = load i32, ptr %13, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %191, label %139

139:                                              ; preds = %122
  %140 = add i32 %123, 7
  %141 = lshr i32 %140, 3
  %142 = icmp ult i32 %140, 8
  %143 = add nsw i32 %141, -1
  %144 = add nsw i32 %141, -2
  %145 = sub nsw i32 0, %141
  %146 = call i32 @llvm.umax.i32(i32 %141, i32 1) #7
  br label %147

147:                                              ; preds = %182, %139
  %148 = phi i32 [ %137, %139 ], [ %183, %182 ]
  %149 = phi i32 [ 0, %139 ], [ %186, %182 ]
  %150 = phi ptr [ %64, %139 ], [ %185, %182 ]
  %151 = phi ptr [ %119, %139 ], [ %184, %182 ]
  br i1 %142, label %182, label %152

152:                                              ; preds = %147
  %153 = icmp ne i32 %149, 0
  %154 = select i1 %77, i1 %153, i1 false
  br label %155

155:                                              ; preds = %174, %152
  %156 = phi i32 [ 0, %152 ], [ %178, %174 ]
  %157 = phi ptr [ %150, %152 ], [ %177, %174 ]
  %158 = phi ptr [ %151, %152 ], [ %176, %174 ]
  %159 = load i8, ptr %158, align 1
  br i1 %75, label %168, label %160

160:                                              ; preds = %155
  %161 = icmp eq i32 %156, %143
  %162 = select i1 %161, i8 %135, i8 0
  %163 = icmp eq i32 %156, %144
  %164 = select i1 %136, i1 %163, i1 false
  %165 = zext i1 %164 to i8
  %166 = or i8 %162, %165
  %167 = or i8 %166, %159
  br label %168

168:                                              ; preds = %160, %155
  %169 = phi i8 [ %159, %155 ], [ %167, %160 ]
  br i1 %154, label %170, label %174

170:                                              ; preds = %168
  %171 = getelementptr i8, ptr %157, i32 %145
  %172 = load i8, ptr %171, align 1
  %173 = or i8 %172, %169
  store i8 %173, ptr %171, align 1
  br label %174

174:                                              ; preds = %170, %168
  %175 = xor i8 %169, %80
  %176 = getelementptr i8, ptr %158, i32 1
  %177 = getelementptr i8, ptr %157, i32 1
  store i8 %175, ptr %157, align 1
  %178 = add nuw nsw i32 %156, 1
  %179 = icmp eq i32 %178, %146
  br i1 %179, label %180, label %155

180:                                              ; preds = %174
  %181 = load i32, ptr %13, align 4
  br label %182

182:                                              ; preds = %180, %147
  %183 = phi i32 [ %148, %147 ], [ %181, %180 ]
  %184 = phi ptr [ %151, %147 ], [ %176, %180 ]
  %185 = phi ptr [ %150, %147 ], [ %177, %180 ]
  %186 = add nuw i32 %149, 1
  %187 = icmp ult i32 %186, %183
  br i1 %187, label %147, label %188

188:                                              ; preds = %182, %120
  %189 = phi i32 [ %121, %120 ], [ %183, %182 ]
  %190 = phi ptr [ %119, %120 ], [ %64, %182 ]
  br i1 %107, label %192, label %203, !prof !9

191:                                              ; preds = %122
  br i1 %107, label %206, label %203, !prof !9

192:                                              ; preds = %188
  %193 = icmp eq i32 %189, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %194, %192
  %195 = phi i32 [ %198, %194 ], [ %189, %192 ]
  %196 = phi ptr [ %201, %194 ], [ %110, %192 ]
  %197 = phi ptr [ %199, %194 ], [ %190, %192 ]
  %198 = add i32 %195, -1
  %199 = getelementptr i8, ptr %197, i32 1
  %200 = load i8, ptr %197, align 1
  store i8 %200, ptr %196, align 1
  %201 = getelementptr i8, ptr %196, i32 %92
  %202 = icmp eq i32 %198, 0
  br i1 %202, label %206, label %194

203:                                              ; preds = %191, %188
  %204 = phi ptr [ %64, %191 ], [ %190, %188 ]
  %205 = phi i32 [ 0, %191 ], [ %189, %188 ]
  call void @fb_pad_aligned_buffer(ptr noundef %110, i32 noundef %92, ptr noundef %204, i32 noundef %102, i32 noundef %205) #7
  br label %206

206:                                              ; preds = %203, %194, %192, %191
  %207 = load i32, ptr %13, align 4
  %208 = mul i32 %207, %92
  %209 = getelementptr i8, ptr %110, i32 %208
  %210 = icmp eq i32 %112, 0
  br i1 %210, label %211, label %108

211:                                              ; preds = %206, %82
  %212 = load ptr, ptr %81, align 4
  %213 = getelementptr inbounds %struct.fb_ops, ptr %212, i32 0, i32 13
  %214 = load ptr, ptr %213, align 4
  call void %214(ptr noundef %1, ptr noundef nonnull %9) #7
  %215 = load i32, ptr %69, align 4
  %216 = load i32, ptr %56, align 4
  %217 = add i32 %216, %215
  store i32 %217, ptr %56, align 4
  %218 = sub i32 %85, %86
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %211
  %221 = sub i32 0, %86
  %222 = getelementptr i16, ptr %84, i32 %221
  %223 = load i32, ptr %57, align 4
  br label %82

224:                                              ; preds = %211, %63
  %225 = icmp eq ptr %64, null
  br i1 %225, label %227, label %226, !prof !9

226:                                              ; preds = %224
  call void @kfree(ptr noundef nonnull %64) #7
  br label %227

227:                                              ; preds = %226, %224, %60, %8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccw_clear_margins(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.fb_fillrect, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %11 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %7
  %16 = sub i32 %12, %15
  %17 = load i32, ptr %10, align 4
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
  %24 = icmp slt i32 %16, 1
  %25 = icmp ne i32 %3, 0
  %26 = or i1 %25, %24
  br i1 %26, label %39, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 3
  store i32 %16, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fb_ops, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  call void %38(ptr noundef %1, ptr noundef nonnull %5) #7
  br label %39

39:                                               ; preds = %27, %4
  %40 = icmp sgt i32 %21, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %20
  store i32 %44, ptr %5, align 4
  %45 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 1
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 2
  store i32 %21, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.fb_ops, ptr %51, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  call void %53(ptr noundef %1, ptr noundef nonnull %5) #7
  br label %54

54:                                               ; preds = %41, %39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccw_cursor(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.fb_cursor, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 7
  %13 = lshr i32 %12, 3
  %14 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fbcon_display, ptr %15, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fbcon_display, ptr %15, i32 0, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = sext i16 %22 to i32
  %24 = add i32 %18, %23
  %25 = icmp slt i32 %24, %20
  %26 = select i1 %25, i32 0, i32 %20
  %27 = sub i32 %24, %26
  %28 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 23
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %408, label %35

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %37 = load i16, ptr %36, align 4
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i32 255, i32 511
  %40 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %41 = load i32, ptr %40, align 4
  %42 = inttoptr i32 %41 to ptr
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %46 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %47 = tail call i32 @fb_get_color_depth(ptr noundef %45, ptr noundef %46) #7
  %48 = icmp eq i32 %47, 1
  %49 = lshr i32 %44, 10
  %50 = and i32 %49, 3
  %51 = lshr i32 %44, 7
  %52 = and i32 %51, 4
  %53 = or i32 %50, %52
  %54 = select i1 %48, i32 %53, i32 0
  %55 = load ptr, ptr %32, align 4
  %56 = and i32 %39, %44
  %57 = load i32, ptr %9, align 4
  %58 = mul i32 %56, %13
  %59 = mul i32 %58, %57
  %60 = getelementptr i8, ptr %55, i32 %59
  %61 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5
  %62 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %60
  br i1 %64, label %65, label %69

65:                                               ; preds = %35
  %66 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65, %35
  store ptr %60, ptr %62, align 4
  store i16 1, ptr %6, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = icmp eq i32 %54, 0
  br i1 %71, label %155, label %72

72:                                               ; preds = %70
  %73 = load i32, ptr %9, align 4
  %74 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 %73) #7
  %75 = extractvalue { i32, i1 } %74, 1
  br i1 %75, label %408, label %76, !prof !10

76:                                               ; preds = %72
  %77 = extractvalue { i32, i1 } %74, 0
  %78 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %77, i32 noundef 2592) #8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %408, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 22
  %82 = load ptr, ptr %81, align 4
  tail call void @kfree(ptr noundef %82) #7
  store ptr %78, ptr %81, align 4
  %83 = load i32, ptr %10, align 4
  %84 = icmp ult i32 %83, 10
  %85 = select i1 %84, i32 1, i32 2
  %86 = and i32 %83, 7
  %87 = shl nuw nsw i32 255, %85
  %88 = trunc i32 %87 to i8
  %89 = xor i8 %88, -1
  %90 = icmp eq i32 %86, 0
  %91 = sub nuw nsw i32 8, %86
  %92 = zext i8 %89 to i32
  %93 = shl nuw nsw i32 %92, %91
  %94 = trunc i32 %93 to i8
  %95 = select i1 %90, i8 %89, i8 %94
  %96 = icmp ugt i32 %85, %86
  %97 = load i32, ptr %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %155, label %99

99:                                               ; preds = %80
  %100 = add i32 %83, 7
  %101 = lshr i32 %100, 3
  %102 = icmp ult i32 %100, 8
  %103 = and i32 %54, 1
  %104 = icmp eq i32 %103, 0
  %105 = add nsw i32 %101, -1
  %106 = add nsw i32 %101, -2
  %107 = and i32 %54, 4
  %108 = icmp ne i32 %107, 0
  %109 = sub nsw i32 0, %101
  %110 = shl i32 %54, 30
  %111 = ashr i32 %110, 31
  %112 = trunc i32 %111 to i8
  %113 = tail call i32 @llvm.umax.i32(i32 %101, i32 1) #7
  br label %114

114:                                              ; preds = %149, %99
  %115 = phi i32 [ %97, %99 ], [ %150, %149 ]
  %116 = phi i32 [ 0, %99 ], [ %153, %149 ]
  %117 = phi ptr [ %78, %99 ], [ %152, %149 ]
  %118 = phi ptr [ %60, %99 ], [ %151, %149 ]
  br i1 %102, label %149, label %119

119:                                              ; preds = %114
  %120 = icmp ne i32 %116, 0
  %121 = select i1 %108, i1 %120, i1 false
  br label %122

122:                                              ; preds = %141, %119
  %123 = phi i32 [ 0, %119 ], [ %145, %141 ]
  %124 = phi ptr [ %117, %119 ], [ %144, %141 ]
  %125 = phi ptr [ %118, %119 ], [ %143, %141 ]
  %126 = load i8, ptr %125, align 1
  br i1 %104, label %135, label %127

127:                                              ; preds = %122
  %128 = icmp eq i32 %123, %105
  %129 = select i1 %128, i8 %95, i8 0
  %130 = icmp eq i32 %123, %106
  %131 = select i1 %96, i1 %130, i1 false
  %132 = zext i1 %131 to i8
  %133 = or i8 %129, %132
  %134 = or i8 %133, %126
  br label %135

135:                                              ; preds = %127, %122
  %136 = phi i8 [ %126, %122 ], [ %134, %127 ]
  br i1 %121, label %137, label %141

137:                                              ; preds = %135
  %138 = getelementptr i8, ptr %124, i32 %109
  %139 = load i8, ptr %138, align 1
  %140 = or i8 %139, %136
  store i8 %140, ptr %138, align 1
  br label %141

141:                                              ; preds = %137, %135
  %142 = xor i8 %136, %112
  %143 = getelementptr i8, ptr %125, i32 1
  %144 = getelementptr i8, ptr %124, i32 1
  store i8 %142, ptr %124, align 1
  %145 = add nuw nsw i32 %123, 1
  %146 = icmp eq i32 %145, %113
  br i1 %146, label %147, label %122

147:                                              ; preds = %141
  %148 = load i32, ptr %9, align 4
  br label %149

149:                                              ; preds = %147, %114
  %150 = phi i32 [ %115, %114 ], [ %148, %147 ]
  %151 = phi ptr [ %118, %114 ], [ %143, %147 ]
  %152 = phi ptr [ %117, %114 ], [ %144, %147 ]
  %153 = add nuw i32 %116, 1
  %154 = icmp ult i32 %153, %150
  br i1 %154, label %114, label %155

155:                                              ; preds = %149, %80, %70
  %156 = phi ptr [ %60, %70 ], [ %78, %80 ], [ %78, %149 ]
  %157 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 4
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, %3
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, %4
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164, %160, %155
  store i32 %3, ptr %157, align 4
  %169 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  store i32 %4, ptr %169, align 4
  %170 = load i16, ptr %6, align 4
  %171 = or i16 %170, 8
  store i16 %171, ptr %6, align 4
  br label %172

172:                                              ; preds = %168, %164
  %173 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 3
  %174 = load i32, ptr %173, align 4
  %175 = load i32, ptr %9, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  %179 = load i32, ptr %178, align 4
  %180 = load i32, ptr %10, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %182, %177, %172
  store i32 %175, ptr %173, align 4
  %187 = load i32, ptr %10, align 4
  %188 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  store i32 %187, ptr %188, align 4
  %189 = load i16, ptr %6, align 4
  %190 = or i16 %189, 32
  store i16 %190, ptr %6, align 4
  %191 = load i32, ptr %10, align 4
  %192 = load i32, ptr %9, align 4
  br label %193

193:                                              ; preds = %186, %182
  %194 = phi i32 [ %192, %186 ], [ %174, %182 ]
  %195 = phi i32 [ %191, %186 ], [ %179, %182 ]
  %196 = mul i32 %195, %27
  %197 = load i32, ptr %16, align 4
  %198 = xor i32 %197, -1
  %199 = mul i32 %194, %198
  %200 = add i32 %199, %31
  %201 = load i32, ptr %61, align 4
  %202 = icmp eq i32 %201, %196
  br i1 %202, label %203, label %211

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, %200
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %207, %203, %193
  store i32 %196, ptr %61, align 4
  %212 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  store i32 %200, ptr %212, align 4
  %213 = load i16, ptr %6, align 4
  %214 = or i16 %213, 2
  store i16 %214, ptr %6, align 4
  br label %215

215:                                              ; preds = %211, %207
  %216 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4
  %217 = load i16, ptr %216, align 4
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4, i32 1
  %221 = load i16, ptr %220, align 2
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = load i16, ptr %6, align 4
  br label %233

229:                                              ; preds = %223, %219, %215
  %230 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4, i32 1
  store i16 0, ptr %230, align 2
  store i16 0, ptr %216, align 4
  %231 = load i16, ptr %6, align 4
  %232 = or i16 %231, 4
  store i16 %232, ptr %6, align 4
  br label %233

233:                                              ; preds = %229, %227
  %234 = phi i16 [ %228, %227 ], [ %232, %229 ]
  %235 = and i16 %234, 32
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %233
  %238 = load i32, ptr %28, align 4
  %239 = load ptr, ptr %14, align 4
  %240 = getelementptr inbounds %struct.fbcon_display, ptr %239, i32 0, i32 5
  %241 = load i32, ptr %240, align 4
  %242 = icmp eq i32 %238, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %361, label %251

251:                                              ; preds = %247, %243, %237, %233
  %252 = load i32, ptr %9, align 4
  %253 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 %252) #7
  %254 = extractvalue { i32, i1 } %253, 1
  br i1 %254, label %408, label %255, !prof !10

255:                                              ; preds = %251
  %256 = extractvalue { i32, i1 } %253, 0
  %257 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %256, i32 noundef 2592) #8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %408, label %259

259:                                              ; preds = %255
  %260 = load i32, ptr %9, align 4
  %261 = add i32 %260, 7
  %262 = lshr i32 %261, 3
  %263 = load i32, ptr %10, align 4
  %264 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %262, i32 %263) #7
  %265 = extractvalue { i32, i1 } %264, 1
  br i1 %265, label %270, label %266, !prof !10

266:                                              ; preds = %259
  %267 = extractvalue { i32, i1 } %264, 0
  %268 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %267, i32 noundef 2592) #8
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %266, %259
  tail call void @kfree(ptr noundef nonnull %257) #7
  br label %408

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %273 = load ptr, ptr %272, align 4
  tail call void @kfree(ptr noundef %273) #7
  store ptr %257, ptr %272, align 4
  %274 = load i32, ptr %28, align 4
  %275 = load ptr, ptr %14, align 4
  %276 = getelementptr inbounds %struct.fbcon_display, ptr %275, i32 0, i32 5
  store i32 %274, ptr %276, align 4
  %277 = or i16 %234, 16
  store i16 %277, ptr %6, align 4
  %278 = load ptr, ptr %14, align 4
  %279 = getelementptr inbounds %struct.fbcon_display, ptr %278, i32 0, i32 5
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, 15
  switch i32 %281, label %298 [
    i32 1, label %282
    i32 2, label %284
    i32 3, label %288
    i32 4, label %291
    i32 5, label %294
  ]

282:                                              ; preds = %271
  %283 = load i32, ptr %10, align 4
  br label %300

284:                                              ; preds = %271
  %285 = load i32, ptr %10, align 4
  %286 = icmp ult i32 %285, 10
  %287 = select i1 %286, i32 1, i32 2
  br label %300

288:                                              ; preds = %271
  %289 = load i32, ptr %10, align 4
  %290 = udiv i32 %289, 3
  br label %300

291:                                              ; preds = %271
  %292 = load i32, ptr %10, align 4
  %293 = lshr i32 %292, 1
  br label %300

294:                                              ; preds = %271
  %295 = load i32, ptr %10, align 4
  %296 = shl i32 %295, 1
  %297 = udiv i32 %296, 3
  br label %300

298:                                              ; preds = %271
  %299 = load i32, ptr %10, align 4
  br label %300

300:                                              ; preds = %298, %294, %291, %288, %284, %282
  %301 = phi i32 [ %299, %298 ], [ %295, %294 ], [ %292, %291 ], [ %289, %288 ], [ %285, %284 ], [ %283, %282 ]
  %302 = phi i32 [ %299, %298 ], [ %297, %294 ], [ %293, %291 ], [ %290, %288 ], [ %287, %284 ], [ 0, %282 ]
  %303 = sub i32 %301, %302
  %304 = mul i32 %303, %262
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %300
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %268, i8 0, i32 %304, i1 false)
  br label %307

307:                                              ; preds = %306, %300
  %308 = mul i32 %302, %262
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %307
  %311 = getelementptr i8, ptr %268, i32 %304
  call void @llvm.memset.p0.i32(ptr align 1 %311, i8 -1, i32 %308, i1 false)
  br label %312

312:                                              ; preds = %310, %307
  %313 = load i32, ptr %9, align 4
  %314 = mul i32 %313, %13
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %257, i8 0, i32 %314, i1 false)
  %315 = load i32, ptr %10, align 4
  %316 = add i32 %313, 7
  %317 = and i32 %316, -8
  %318 = add i32 %315, 7
  %319 = and i32 %318, -8
  %320 = icmp sgt i32 %315, 0
  br i1 %320, label %321, label %360

321:                                              ; preds = %312
  %322 = sub i32 0, %313
  %323 = and i32 %322, 7
  %324 = icmp sgt i32 %313, 0
  %325 = sub i32 %317, %323
  br label %326

326:                                              ; preds = %356, %321
  %327 = phi i3 [ 0, %321 ], [ %358, %356 ]
  %328 = phi i32 [ 0, %321 ], [ %357, %356 ]
  br i1 %324, label %329, label %356

329:                                              ; preds = %326
  %330 = zext i3 %327 to i8
  %331 = mul i32 %328, %317
  %332 = lshr i8 -128, %330
  br label %333

333:                                              ; preds = %353, %329
  %334 = phi i32 [ 0, %329 ], [ %354, %353 ]
  %335 = add i32 %334, %331
  %336 = lshr i32 %335, 3
  %337 = and i32 %335, 7
  %338 = getelementptr i8, ptr %268, i32 %336
  %339 = load i8, ptr %338, align 1
  %340 = zext i8 %339 to i32
  %341 = lshr i32 128, %337
  %342 = and i32 %341, %340
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %353, label %344

344:                                              ; preds = %333
  %345 = xor i32 %334, -1
  %346 = add i32 %325, %345
  %347 = mul i32 %346, %319
  %348 = add i32 %347, %328
  %349 = lshr i32 %348, 3
  %350 = getelementptr i8, ptr %257, i32 %349
  %351 = load i8, ptr %350, align 1
  %352 = or i8 %351, %332
  store i8 %352, ptr %350, align 1
  br label %353

353:                                              ; preds = %344, %333
  %354 = add nuw nsw i32 %334, 1
  %355 = icmp eq i32 %354, %313
  br i1 %355, label %356, label %333

356:                                              ; preds = %353, %326
  %357 = add nuw nsw i32 %328, 1
  %358 = add i3 %327, 1
  %359 = icmp eq i32 %357, %315
  br i1 %359, label %360, label %326

360:                                              ; preds = %356, %312
  tail call void @kfree(ptr noundef nonnull %268) #7
  br label %361

361:                                              ; preds = %360, %247
  %362 = icmp eq i32 %2, 2
  %363 = trunc i32 %29 to i16
  %364 = lshr i16 %363, 4
  %365 = and i16 %364, 1
  %366 = xor i16 %365, 1
  %367 = select i1 %362, i16 0, i16 %366
  %368 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 1
  store i16 %367, ptr %368, align 2
  %369 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5
  %370 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 7
  store ptr %156, ptr %370, align 4
  %371 = load i32, ptr %157, align 4
  %372 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 4
  store i32 %371, ptr %372, align 4
  %373 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  %374 = load i32, ptr %373, align 4
  %375 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 5
  store i32 %374, ptr %375, align 4
  %376 = load i32, ptr %61, align 4
  store i32 %376, ptr %369, align 4
  %377 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  %378 = load i32, ptr %377, align 4
  %379 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 1
  store i32 %378, ptr %379, align 4
  %380 = load i32, ptr %173, align 4
  %381 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 3
  store i32 %380, ptr %381, align 4
  %382 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  %383 = load i32, ptr %382, align 4
  %384 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 2
  store i32 %383, ptr %384, align 4
  %385 = load i16, ptr %216, align 4
  %386 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4
  store i16 %385, ptr %386, align 4
  %387 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4, i32 1
  %388 = load i16, ptr %387, align 2
  %389 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4, i32 1
  store i16 %388, ptr %389, align 2
  %390 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 3
  store ptr %391, ptr %392, align 4
  %393 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 1
  store i16 %367, ptr %393, align 2
  %394 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 6
  store i8 1, ptr %394, align 4
  %395 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 2
  store i16 1, ptr %395, align 4
  %396 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.fb_ops, ptr %397, i32 0, i32 14
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %401

401:                                              ; preds = %361
  %402 = call i32 %399(ptr noundef %1, ptr noundef nonnull %6) #7
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %401, %361
  %405 = call i32 @soft_cursor(ptr noundef %1, ptr noundef nonnull %6) #7
  br label %406

406:                                              ; preds = %404, %401
  %407 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  store i32 0, ptr %407, align 4
  br label %408

408:                                              ; preds = %406, %270, %255, %251, %76, %72, %5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccw_update_start(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 0, %6
  %8 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 5
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %5, align 4
  store i32 %7, ptr %8, align 4
  %10 = tail call i32 @fb_pan_display(ptr noundef %0, ptr noundef %4) #7
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 5
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %8, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 25
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 25
  store i32 %16, ptr %17, align 4
  ret i32 %10
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
