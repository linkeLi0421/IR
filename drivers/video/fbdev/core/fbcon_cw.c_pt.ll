; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbcon_cw.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon_cw.c"
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
define dso_local void @fbcon_rotate_cw(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @cw_bmove, ptr %0, align 4
  %2 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 1
  store ptr @cw_clear, ptr %2, align 4
  %3 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 2
  store ptr @cw_putcs, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 3
  store ptr @cw_clear_margins, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 4
  store ptr @cw_cursor, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 5
  store ptr @cw_update_start, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cw_bmove(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
  %9 = alloca %struct.fb_copyarea, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %6, %2
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %12
  %17 = sub i32 %11, %16
  %18 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %13, align 4
  %20 = mul i32 %19, %3
  %21 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  %22 = add i32 %6, %4
  %23 = mul i32 %15, %22
  %24 = sub i32 %11, %23
  store i32 %24, ptr %9, align 4
  %25 = mul i32 %19, %5
  %26 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = mul i32 %15, %6
  %28 = getelementptr inbounds %struct.fb_copyarea, ptr %9, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = mul i32 %19, %7
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
define internal void @cw_clear(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca %struct.fb_fillrect, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
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
  %52 = add i32 %4, %2
  %53 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %54 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %52
  %57 = sub i32 %11, %56
  store i32 %57, ptr %7, align 4
  %58 = load i32, ptr %53, align 4
  %59 = mul i32 %58, %3
  %60 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 1
  store i32 %59, ptr %60, align 4
  %61 = mul i32 %58, %5
  %62 = getelementptr inbounds %struct.fb_fillrect, ptr %7, i32 0, i32 3
  store i32 %61, ptr %62, align 4
  %63 = mul i32 %55, %4
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
define internal void @cw_putcs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
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
  br i1 %44, label %203, label %45

45:                                               ; preds = %8
  %46 = load i32, ptr %31, align 4
  %47 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 4
  store i32 %6, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 5
  store i32 %7, ptr %48, align 4
  %49 = xor i32 %4, -1
  %50 = load i32, ptr %14, align 4
  %51 = mul i32 %50, %49
  %52 = add i32 %51, %46
  store i32 %52, ptr %9, align 4
  %53 = load i32, ptr %13, align 4
  %54 = mul i32 %53, %5
  %55 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 2
  store i32 %50, ptr %56, align 4
  %57 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 6
  store i8 1, ptr %57, align 4
  %58 = icmp eq i32 %41, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %45
  %60 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %203, label %62

62:                                               ; preds = %59, %45
  %63 = phi ptr [ %60, %59 ], [ null, %45 ]
  %64 = icmp eq i32 %3, 0
  br i1 %64, label %200, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 3
  %67 = sub i32 0, %25
  %68 = sub i32 0, %28
  %69 = getelementptr inbounds %struct.fb_image, ptr %9, i32 0, i32 7
  %70 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %71 = and i32 %41, 1
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %41, 4
  %74 = icmp ne i32 %73, 0
  %75 = shl i32 %41, 30
  %76 = ashr i32 %75, 31
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  br label %79

79:                                               ; preds = %197, %65
  %80 = phi i32 [ %50, %65 ], [ %199, %197 ]
  %81 = phi ptr [ %2, %65 ], [ %198, %197 ]
  %82 = phi i32 [ %3, %65 ], [ %195, %197 ]
  %83 = call i32 @llvm.umin.i32(i32 %82, i32 %23)
  %84 = load i32, ptr %13, align 4
  %85 = mul i32 %84, %83
  store i32 %85, ptr %66, align 4
  %86 = add i32 %80, 7
  %87 = lshr i32 %86, 3
  %88 = add i32 %26, %87
  %89 = and i32 %88, %67
  %90 = mul i32 %89, %85
  %91 = add i32 %29, %90
  %92 = and i32 %91, %68
  %93 = call ptr @fb_get_buffer_offset(ptr noundef %1, ptr noundef %20, i32 noundef %92) #7
  store ptr %93, ptr %69, align 4
  %94 = load i16, ptr %70, align 4
  %95 = icmp eq i16 %94, 0
  %96 = select i1 %95, i32 255, i32 511
  %97 = load i32, ptr %14, align 4
  %98 = add i32 %97, 7
  %99 = lshr i32 %98, 3
  %100 = icmp eq i32 %83, 0
  br i1 %100, label %188, label %101

101:                                              ; preds = %79
  %102 = load ptr, ptr %11, align 4
  %103 = getelementptr inbounds %struct.fbcon_ops, ptr %102, i32 0, i32 23
  %104 = icmp eq i32 %99, 1
  br label %105

105:                                              ; preds = %183, %101
  %106 = phi i32 [ %83, %101 ], [ %109, %183 ]
  %107 = phi ptr [ %93, %101 ], [ %186, %183 ]
  %108 = phi ptr [ %81, %101 ], [ %111, %183 ]
  %109 = add i32 %106, -1
  %110 = load ptr, ptr %103, align 4
  %111 = getelementptr i16, ptr %108, i32 1
  %112 = load i16, ptr %108, align 2
  %113 = zext i16 %112 to i32
  %114 = and i32 %96, %113
  %115 = mul i32 %114, %19
  %116 = getelementptr i8, ptr %110, i32 %115
  %117 = load i32, ptr %13, align 4
  br i1 %58, label %165, label %118

118:                                              ; preds = %105
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %168, label %120

120:                                              ; preds = %118
  %121 = load i32, ptr %14, align 4
  %122 = add i32 %121, 7
  %123 = lshr i32 %122, 3
  %124 = icmp ult i32 %121, 10
  %125 = icmp ult i32 %122, 8
  %126 = select i1 %124, i8 -128, i8 -64
  %127 = sub nsw i32 0, %123
  %128 = call i32 @llvm.umax.i32(i32 %123, i32 1) #7
  br label %129

129:                                              ; preds = %159, %120
  %130 = phi i32 [ %117, %120 ], [ %160, %159 ]
  %131 = phi ptr [ %63, %120 ], [ %162, %159 ]
  %132 = phi i32 [ 0, %120 ], [ %163, %159 ]
  %133 = phi ptr [ %116, %120 ], [ %161, %159 ]
  br i1 %125, label %159, label %134

134:                                              ; preds = %129
  %135 = icmp ne i32 %132, 0
  %136 = select i1 %74, i1 %135, i1 false
  br label %137

137:                                              ; preds = %150, %134
  %138 = phi ptr [ %131, %134 ], [ %154, %150 ]
  %139 = phi i32 [ 0, %134 ], [ %155, %150 ]
  %140 = phi ptr [ %133, %134 ], [ %153, %150 ]
  %141 = load i8, ptr %140, align 1
  %142 = icmp ne i32 %139, 0
  %143 = select i1 %72, i1 true, i1 %142
  %144 = select i1 %143, i8 0, i8 %126
  %145 = or i8 %144, %141
  br i1 %136, label %146, label %150

146:                                              ; preds = %137
  %147 = getelementptr i8, ptr %140, i32 %127
  %148 = load i8, ptr %147, align 1
  %149 = or i8 %148, %145
  br label %150

150:                                              ; preds = %146, %137
  %151 = phi i8 [ %149, %146 ], [ %145, %137 ]
  %152 = xor i8 %151, %77
  %153 = getelementptr i8, ptr %140, i32 1
  %154 = getelementptr i8, ptr %138, i32 1
  store i8 %152, ptr %138, align 1
  %155 = add nuw nsw i32 %139, 1
  %156 = icmp eq i32 %155, %128
  br i1 %156, label %157, label %137

157:                                              ; preds = %150
  %158 = load i32, ptr %13, align 4
  br label %159

159:                                              ; preds = %157, %129
  %160 = phi i32 [ %130, %129 ], [ %158, %157 ]
  %161 = phi ptr [ %133, %129 ], [ %153, %157 ]
  %162 = phi ptr [ %131, %129 ], [ %154, %157 ]
  %163 = add nuw i32 %132, 1
  %164 = icmp ult i32 %163, %160
  br i1 %164, label %129, label %165

165:                                              ; preds = %159, %105
  %166 = phi i32 [ %117, %105 ], [ %160, %159 ]
  %167 = phi ptr [ %116, %105 ], [ %63, %159 ]
  br i1 %104, label %169, label %180, !prof !9

168:                                              ; preds = %118
  br i1 %104, label %183, label %180, !prof !9

169:                                              ; preds = %165
  %170 = icmp eq i32 %166, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %171, %169
  %172 = phi i32 [ %175, %171 ], [ %166, %169 ]
  %173 = phi ptr [ %178, %171 ], [ %107, %169 ]
  %174 = phi ptr [ %176, %171 ], [ %167, %169 ]
  %175 = add i32 %172, -1
  %176 = getelementptr i8, ptr %174, i32 1
  %177 = load i8, ptr %174, align 1
  store i8 %177, ptr %173, align 1
  %178 = getelementptr i8, ptr %173, i32 %89
  %179 = icmp eq i32 %175, 0
  br i1 %179, label %183, label %171

180:                                              ; preds = %168, %165
  %181 = phi ptr [ %63, %168 ], [ %167, %165 ]
  %182 = phi i32 [ 0, %168 ], [ %166, %165 ]
  call void @fb_pad_aligned_buffer(ptr noundef %107, i32 noundef %89, ptr noundef %181, i32 noundef %99, i32 noundef %182) #7
  br label %183

183:                                              ; preds = %180, %171, %169, %168
  %184 = load i32, ptr %13, align 4
  %185 = mul i32 %184, %89
  %186 = getelementptr i8, ptr %107, i32 %185
  %187 = icmp eq i32 %109, 0
  br i1 %187, label %188, label %105

188:                                              ; preds = %183, %79
  %189 = load ptr, ptr %78, align 4
  %190 = getelementptr inbounds %struct.fb_ops, ptr %189, i32 0, i32 13
  %191 = load ptr, ptr %190, align 4
  call void %191(ptr noundef %1, ptr noundef nonnull %9) #7
  %192 = load i32, ptr %66, align 4
  %193 = load i32, ptr %55, align 4
  %194 = add i32 %193, %192
  store i32 %194, ptr %55, align 4
  %195 = sub i32 %82, %83
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %188
  %198 = getelementptr i16, ptr %81, i32 %83
  %199 = load i32, ptr %56, align 4
  br label %79

200:                                              ; preds = %188, %62
  %201 = icmp eq ptr %63, null
  br i1 %201, label %203, label %202, !prof !9

202:                                              ; preds = %200
  call void @kfree(ptr noundef nonnull %63) #7
  br label %203

203:                                              ; preds = %202, %200, %59, %8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cw_clear_margins(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
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
  br i1 %26, label %40, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %15
  %31 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 3
  store i32 %16, ptr %32, align 4
  %33 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fb_ops, ptr %37, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  call void %39(ptr noundef %1, ptr noundef nonnull %5) #7
  br label %40

40:                                               ; preds = %27, %4
  %41 = icmp sgt i32 %21, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %5, align 4
  %45 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %11, align 4
  %49 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fb_fillrect, ptr %5, i32 0, i32 2
  store i32 %21, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.fb_ops, ptr %52, i32 0, i32 11
  %54 = load ptr, ptr %53, align 4
  call void %54(ptr noundef %1, ptr noundef nonnull %5) #7
  br label %55

55:                                               ; preds = %42, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cw_cursor(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
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
  %27 = sub i32 %26, %24
  %28 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 23
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %388, label %35

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
  %45 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %46 = tail call i32 @fb_get_color_depth(ptr noundef %30, ptr noundef %45) #7
  %47 = icmp eq i32 %46, 1
  %48 = lshr i32 %44, 10
  %49 = and i32 %48, 3
  %50 = lshr i32 %44, 7
  %51 = and i32 %50, 4
  %52 = or i32 %49, %51
  %53 = select i1 %47, i32 %52, i32 0
  %54 = load ptr, ptr %32, align 4
  %55 = and i32 %39, %44
  %56 = load i32, ptr %9, align 4
  %57 = mul i32 %55, %13
  %58 = mul i32 %57, %56
  %59 = getelementptr i8, ptr %54, i32 %58
  %60 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5
  %61 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %59
  br i1 %63, label %64, label %68

64:                                               ; preds = %35
  %65 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %35
  store ptr %59, ptr %61, align 4
  store i16 1, ptr %6, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = icmp eq i32 %53, 0
  br i1 %70, label %136, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %9, align 4
  %73 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 %72) #7
  %74 = extractvalue { i32, i1 } %73, 1
  br i1 %74, label %388, label %75, !prof !10

75:                                               ; preds = %71
  %76 = extractvalue { i32, i1 } %73, 0
  %77 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %76, i32 noundef 2592) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %388, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 22
  %81 = load ptr, ptr %80, align 4
  tail call void @kfree(ptr noundef %81) #7
  store ptr %77, ptr %80, align 4
  %82 = load i32, ptr %9, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %136, label %84

84:                                               ; preds = %79
  %85 = load i32, ptr %10, align 4
  %86 = add i32 %85, 7
  %87 = lshr i32 %86, 3
  %88 = icmp ult i32 %85, 10
  %89 = icmp ult i32 %86, 8
  %90 = and i32 %53, 1
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %88, i8 -128, i8 -64
  %93 = and i32 %53, 4
  %94 = icmp ne i32 %93, 0
  %95 = sub nsw i32 0, %87
  %96 = shl i32 %53, 30
  %97 = ashr i32 %96, 31
  %98 = trunc i32 %97 to i8
  %99 = tail call i32 @llvm.umax.i32(i32 %87, i32 1) #7
  br label %100

100:                                              ; preds = %130, %84
  %101 = phi i32 [ %82, %84 ], [ %131, %130 ]
  %102 = phi ptr [ %77, %84 ], [ %133, %130 ]
  %103 = phi i32 [ 0, %84 ], [ %134, %130 ]
  %104 = phi ptr [ %59, %84 ], [ %132, %130 ]
  br i1 %89, label %130, label %105

105:                                              ; preds = %100
  %106 = icmp ne i32 %103, 0
  %107 = select i1 %94, i1 %106, i1 false
  br label %108

108:                                              ; preds = %121, %105
  %109 = phi ptr [ %102, %105 ], [ %125, %121 ]
  %110 = phi i32 [ 0, %105 ], [ %126, %121 ]
  %111 = phi ptr [ %104, %105 ], [ %124, %121 ]
  %112 = load i8, ptr %111, align 1
  %113 = icmp ne i32 %110, 0
  %114 = select i1 %91, i1 true, i1 %113
  %115 = select i1 %114, i8 0, i8 %92
  %116 = or i8 %115, %112
  br i1 %107, label %117, label %121

117:                                              ; preds = %108
  %118 = getelementptr i8, ptr %111, i32 %95
  %119 = load i8, ptr %118, align 1
  %120 = or i8 %119, %116
  br label %121

121:                                              ; preds = %117, %108
  %122 = phi i8 [ %120, %117 ], [ %116, %108 ]
  %123 = xor i8 %122, %98
  %124 = getelementptr i8, ptr %111, i32 1
  %125 = getelementptr i8, ptr %109, i32 1
  store i8 %123, ptr %109, align 1
  %126 = add nuw nsw i32 %110, 1
  %127 = icmp eq i32 %126, %99
  br i1 %127, label %128, label %108

128:                                              ; preds = %121
  %129 = load i32, ptr %9, align 4
  br label %130

130:                                              ; preds = %128, %100
  %131 = phi i32 [ %101, %100 ], [ %129, %128 ]
  %132 = phi ptr [ %104, %100 ], [ %124, %128 ]
  %133 = phi ptr [ %102, %100 ], [ %125, %128 ]
  %134 = add nuw i32 %103, 1
  %135 = icmp ult i32 %134, %131
  br i1 %135, label %100, label %136

136:                                              ; preds = %130, %79, %69
  %137 = phi ptr [ %59, %69 ], [ %77, %79 ], [ %77, %130 ]
  %138 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, %3
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, %4
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145, %141, %136
  store i32 %3, ptr %138, align 4
  %150 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  store i32 %4, ptr %150, align 4
  %151 = load i16, ptr %6, align 4
  %152 = or i16 %151, 8
  store i16 %152, ptr %6, align 4
  br label %153

153:                                              ; preds = %149, %145
  %154 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = load i32, ptr %9, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = load i32, ptr %10, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %163, %158, %153
  store i32 %156, ptr %154, align 4
  %168 = load i32, ptr %10, align 4
  %169 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  store i32 %168, ptr %169, align 4
  %170 = load i16, ptr %6, align 4
  %171 = or i16 %170, 32
  store i16 %171, ptr %6, align 4
  %172 = load i32, ptr %10, align 4
  %173 = load i32, ptr %9, align 4
  br label %174

174:                                              ; preds = %167, %163
  %175 = phi i32 [ %173, %167 ], [ %155, %163 ]
  %176 = phi i32 [ %172, %167 ], [ %160, %163 ]
  %177 = mul i32 %27, %176
  %178 = sub i32 %31, %176
  %179 = add i32 %178, %177
  %180 = load i32, ptr %16, align 4
  %181 = mul i32 %175, %180
  %182 = load i32, ptr %60, align 4
  %183 = icmp eq i32 %182, %179
  br i1 %183, label %184, label %192

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, %181
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188, %184, %174
  store i32 %179, ptr %60, align 4
  %193 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  store i32 %181, ptr %193, align 4
  %194 = load i16, ptr %6, align 4
  %195 = or i16 %194, 2
  store i16 %195, ptr %6, align 4
  br label %196

196:                                              ; preds = %192, %188
  %197 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4
  %198 = load i16, ptr %197, align 4
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4, i32 1
  %202 = load i16, ptr %201, align 2
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i16, ptr %6, align 4
  br label %214

210:                                              ; preds = %204, %200, %196
  %211 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4, i32 1
  store i16 0, ptr %211, align 2
  store i16 0, ptr %197, align 4
  %212 = load i16, ptr %6, align 4
  %213 = or i16 %212, 4
  store i16 %213, ptr %6, align 4
  br label %214

214:                                              ; preds = %210, %208
  %215 = phi i16 [ %209, %208 ], [ %213, %210 ]
  %216 = and i16 %215, 32
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %214
  %219 = load i32, ptr %28, align 4
  %220 = load ptr, ptr %14, align 4
  %221 = getelementptr inbounds %struct.fbcon_display, ptr %220, i32 0, i32 5
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %219, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %341, label %232

232:                                              ; preds = %228, %224, %218, %214
  %233 = load i32, ptr %9, align 4
  %234 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 %233) #7
  %235 = extractvalue { i32, i1 } %234, 1
  br i1 %235, label %388, label %236, !prof !10

236:                                              ; preds = %232
  %237 = extractvalue { i32, i1 } %234, 0
  %238 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %237, i32 noundef 2592) #8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %388, label %240

240:                                              ; preds = %236
  %241 = load i32, ptr %9, align 4
  %242 = add i32 %241, 7
  %243 = lshr i32 %242, 3
  %244 = load i32, ptr %10, align 4
  %245 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %243, i32 %244) #7
  %246 = extractvalue { i32, i1 } %245, 1
  br i1 %246, label %251, label %247, !prof !10

247:                                              ; preds = %240
  %248 = extractvalue { i32, i1 } %245, 0
  %249 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %248, i32 noundef 2592) #8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %247, %240
  tail call void @kfree(ptr noundef nonnull %238) #7
  br label %388

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %254 = load ptr, ptr %253, align 4
  tail call void @kfree(ptr noundef %254) #7
  store ptr %238, ptr %253, align 4
  %255 = load i32, ptr %28, align 4
  %256 = load ptr, ptr %14, align 4
  %257 = getelementptr inbounds %struct.fbcon_display, ptr %256, i32 0, i32 5
  store i32 %255, ptr %257, align 4
  %258 = or i16 %215, 16
  store i16 %258, ptr %6, align 4
  %259 = load ptr, ptr %14, align 4
  %260 = getelementptr inbounds %struct.fbcon_display, ptr %259, i32 0, i32 5
  %261 = load i32, ptr %260, align 4
  %262 = and i32 %261, 15
  switch i32 %262, label %279 [
    i32 1, label %263
    i32 2, label %265
    i32 3, label %269
    i32 4, label %272
    i32 5, label %275
  ]

263:                                              ; preds = %252
  %264 = load i32, ptr %10, align 4
  br label %281

265:                                              ; preds = %252
  %266 = load i32, ptr %10, align 4
  %267 = icmp ult i32 %266, 10
  %268 = select i1 %267, i32 1, i32 2
  br label %281

269:                                              ; preds = %252
  %270 = load i32, ptr %10, align 4
  %271 = udiv i32 %270, 3
  br label %281

272:                                              ; preds = %252
  %273 = load i32, ptr %10, align 4
  %274 = lshr i32 %273, 1
  br label %281

275:                                              ; preds = %252
  %276 = load i32, ptr %10, align 4
  %277 = shl i32 %276, 1
  %278 = udiv i32 %277, 3
  br label %281

279:                                              ; preds = %252
  %280 = load i32, ptr %10, align 4
  br label %281

281:                                              ; preds = %279, %275, %272, %269, %265, %263
  %282 = phi i32 [ %280, %279 ], [ %276, %275 ], [ %273, %272 ], [ %270, %269 ], [ %266, %265 ], [ %264, %263 ]
  %283 = phi i32 [ %280, %279 ], [ %278, %275 ], [ %274, %272 ], [ %271, %269 ], [ %268, %265 ], [ 0, %263 ]
  %284 = sub i32 %282, %283
  %285 = mul i32 %284, %243
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %281
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %249, i8 0, i32 %285, i1 false)
  br label %288

288:                                              ; preds = %287, %281
  %289 = mul i32 %283, %243
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %288
  %292 = getelementptr i8, ptr %249, i32 %285
  call void @llvm.memset.p0.i32(ptr align 1 %292, i8 -1, i32 %289, i1 false)
  br label %293

293:                                              ; preds = %291, %288
  %294 = load i32, ptr %9, align 4
  %295 = mul i32 %294, %13
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %238, i8 0, i32 %295, i1 false)
  %296 = load i32, ptr %10, align 4
  %297 = add i32 %294, 7
  %298 = and i32 %297, -8
  %299 = add i32 %296, 7
  %300 = and i32 %299, -8
  %301 = icmp sgt i32 %296, 0
  br i1 %301, label %302, label %340

302:                                              ; preds = %293
  %303 = sub nsw i32 0, %296
  %304 = and i32 %303, 7
  %305 = icmp sgt i32 %294, 0
  %306 = sub i32 %300, %304
  br label %307

307:                                              ; preds = %337, %302
  %308 = phi i32 [ 0, %302 ], [ %338, %337 ]
  br i1 %305, label %309, label %337

309:                                              ; preds = %307
  %310 = mul i32 %308, %298
  %311 = xor i32 %308, -1
  %312 = add i32 %306, %311
  br label %313

313:                                              ; preds = %334, %309
  %314 = phi i32 [ 0, %309 ], [ %335, %334 ]
  %315 = add i32 %314, %310
  %316 = lshr i32 %315, 3
  %317 = and i32 %315, 7
  %318 = getelementptr i8, ptr %249, i32 %316
  %319 = load i8, ptr %318, align 1
  %320 = zext i8 %319 to i32
  %321 = lshr i32 128, %317
  %322 = and i32 %321, %320
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %334, label %324

324:                                              ; preds = %313
  %325 = mul i32 %314, %300
  %326 = add i32 %312, %325
  %327 = lshr i32 %326, 3
  %328 = and i32 %326, 7
  %329 = getelementptr i8, ptr %238, i32 %327
  %330 = lshr i32 128, %328
  %331 = load i8, ptr %329, align 1
  %332 = trunc i32 %330 to i8
  %333 = or i8 %331, %332
  store i8 %333, ptr %329, align 1
  br label %334

334:                                              ; preds = %324, %313
  %335 = add nuw nsw i32 %314, 1
  %336 = icmp eq i32 %335, %294
  br i1 %336, label %337, label %313

337:                                              ; preds = %334, %307
  %338 = add nuw nsw i32 %308, 1
  %339 = icmp eq i32 %338, %296
  br i1 %339, label %340, label %307

340:                                              ; preds = %337, %293
  tail call void @kfree(ptr noundef nonnull %249) #7
  br label %341

341:                                              ; preds = %340, %228
  %342 = icmp eq i32 %2, 2
  %343 = trunc i32 %29 to i16
  %344 = lshr i16 %343, 4
  %345 = and i16 %344, 1
  %346 = xor i16 %345, 1
  %347 = select i1 %342, i16 0, i16 %346
  %348 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 1
  store i16 %347, ptr %348, align 2
  %349 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5
  %350 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 7
  store ptr %137, ptr %350, align 4
  %351 = load i32, ptr %138, align 4
  %352 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 4
  store i32 %351, ptr %352, align 4
  %353 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 5
  %354 = load i32, ptr %353, align 4
  %355 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 5
  store i32 %354, ptr %355, align 4
  %356 = load i32, ptr %60, align 4
  store i32 %356, ptr %349, align 4
  %357 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 1
  %358 = load i32, ptr %357, align 4
  %359 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 1
  store i32 %358, ptr %359, align 4
  %360 = load i32, ptr %154, align 4
  %361 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 3
  store i32 %360, ptr %361, align 4
  %362 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 5, i32 2
  %363 = load i32, ptr %362, align 4
  %364 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 2
  store i32 %363, ptr %364, align 4
  %365 = load i16, ptr %197, align 4
  %366 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4
  store i16 %365, ptr %366, align 4
  %367 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 4, i32 1
  %368 = load i16, ptr %367, align 2
  %369 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 4, i32 1
  store i16 %368, ptr %369, align 2
  %370 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 9, i32 3
  %371 = load ptr, ptr %370, align 4
  %372 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 3
  store ptr %371, ptr %372, align 4
  %373 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 1
  store i16 %347, ptr %373, align 2
  %374 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 5, i32 6
  store i8 1, ptr %374, align 4
  %375 = getelementptr inbounds %struct.fb_cursor, ptr %6, i32 0, i32 2
  store i16 1, ptr %375, align 4
  %376 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr inbounds %struct.fb_ops, ptr %377, i32 0, i32 14
  %379 = load ptr, ptr %378, align 4
  %380 = icmp eq ptr %379, null
  br i1 %380, label %384, label %381

381:                                              ; preds = %341
  %382 = call i32 %379(ptr noundef %1, ptr noundef nonnull %6) #7
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %381, %341
  %385 = call i32 @soft_cursor(ptr noundef %1, ptr noundef nonnull %6) #7
  br label %386

386:                                              ; preds = %384, %381
  %387 = getelementptr inbounds %struct.fbcon_ops, ptr %8, i32 0, i32 15
  store i32 0, ptr %387, align 4
  br label %388

388:                                              ; preds = %386, %251, %236, %232, %75, %71, %5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cw_update_start(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 0, %6
  %8 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 4
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %5, align 4
  store i32 %7, ptr %8, align 4
  %10 = tail call i32 @fb_pan_display(ptr noundef %0, ptr noundef %4) #7
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 5
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %5, align 4
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
