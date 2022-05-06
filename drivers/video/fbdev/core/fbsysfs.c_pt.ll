; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbsysfs.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbsysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_framebuffer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22framebuffer_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_framebuffer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_framebuffer_release:\09\09\09\09\09"
module asm "\09.asciz \09\22framebuffer_release\22\09\09\09\09\09"
module asm "__kstrtabns_framebuffer_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_bl_default_curve:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_bl_default_curve\22\09\09\09\09\09"
module asm "__kstrtabns_fb_bl_default_curve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_modelist = type { %struct.list_head, %struct.fb_videomode }

@framebuffer_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [22 x i8] c"&info->bl_curve_mutex\00", align 1
@__kstrtab_framebuffer_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_framebuffer_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_framebuffer_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @framebuffer_alloc to i32), ptr @__kstrtab_framebuffer_alloc, ptr @__kstrtabns_framebuffer_alloc }, section "___ksymtab+framebuffer_alloc", align 4
@__kstrtab_framebuffer_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_framebuffer_release = external dso_local constant [0 x i8], align 1
@__ksymtab_framebuffer_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @framebuffer_release to i32), ptr @__kstrtab_framebuffer_release, ptr @__kstrtabns_framebuffer_release }, section "___ksymtab+framebuffer_release", align 4
@device_attrs = internal global [13 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420 }, ptr @show_bpp, ptr @store_bpp }, %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @show_blank, ptr @store_blank }, %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420 }, ptr @show_console, ptr @store_console }, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @show_cursor, ptr @store_cursor }, %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @show_mode, ptr @store_mode }, %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420 }, ptr @show_modes, ptr @store_modes }, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @show_pan, ptr @store_pan }, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @show_virtual, ptr @store_virtual }, %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @show_name, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @show_stride, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @show_rotate, ptr @store_rotate }, %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @show_fbstate, ptr @store_fbstate }, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @show_bl_curve, ptr @store_bl_curve }], align 4
@__kstrtab_fb_bl_default_curve = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_bl_default_curve = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_bl_default_curve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_bl_default_curve to i32), ptr @__kstrtab_fb_bl_default_curve, ptr @__kstrtabns_fb_bl_default_curve }, section "___ksymtab_gpl+fb_bl_default_curve", align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bits_per_pixel\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pan\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"virtual_size\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"bl_curve\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%c:%dx%d%c-%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%8ph\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"%2hhx %2hhx %2hhx %2hhx %2hhx %2hhx %2hhx %2hhx\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_fb_bl_default_curve, ptr @__ksymtab_framebuffer_alloc, ptr @__ksymtab_framebuffer_release], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @framebuffer_alloc(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 812, i32 816
  %5 = add i32 %4, %0
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  br i1 %3, label %12, label %9

9:                                                ; preds = %8
  %10 = getelementptr i8, ptr %6, i32 %4
  %11 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 29
  store ptr %10, ptr %11, align 32
  br label %12

12:                                               ; preds = %9, %8
  %13 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 21
  store ptr %1, ptr %13, align 64
  %14 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 3
  store i32 -1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @framebuffer_alloc.__key) #12
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi ptr [ %6, %12 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @framebuffer_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #12
  tail call void @kfree(ptr noundef nonnull %0) #12
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_init_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 23
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 @device_create_file(ptr noundef %8, ptr noundef nonnull @device_attrs) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  %13 = tail call i32 @device_create_file(ptr noundef %12, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 1)) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 4
  %17 = tail call i32 @device_create_file(ptr noundef %16, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 2)) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4
  %21 = tail call i32 @device_create_file(ptr noundef %20, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 3)) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 4
  %25 = tail call i32 @device_create_file(ptr noundef %24, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 4)) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 4
  %29 = tail call i32 @device_create_file(ptr noundef %28, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 5)) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 4
  %33 = tail call i32 @device_create_file(ptr noundef %32, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 6)) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 4
  %37 = tail call i32 @device_create_file(ptr noundef %36, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 7)) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 4
  %41 = tail call i32 @device_create_file(ptr noundef %40, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 8)) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load ptr, ptr %2, align 4
  %45 = tail call i32 @device_create_file(ptr noundef %44, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 9)) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load ptr, ptr %2, align 4
  %49 = tail call i32 @device_create_file(ptr noundef %48, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 10)) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load ptr, ptr %2, align 4
  %53 = tail call i32 @device_create_file(ptr noundef %52, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 11)) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load ptr, ptr %2, align 4
  %57 = tail call i32 @device_create_file(ptr noundef %56, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 12)) #12
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11
  %60 = phi i32 [ 0, %11 ], [ 1, %15 ], [ 2, %19 ], [ 3, %23 ], [ 4, %27 ], [ 5, %31 ], [ 6, %35 ], [ 7, %39 ], [ 8, %43 ], [ 9, %47 ], [ 10, %51 ], [ 11, %55 ]
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ %65, %61 ], [ %60, %59 ]
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr [13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 %62
  tail call void @device_remove_file(ptr noundef %63, ptr noundef %64) #12
  %65 = add nsw i32 %62, -1
  %66 = icmp eq i32 %62, 0
  br i1 %66, label %67, label %61

67:                                               ; preds = %61, %1
  %68 = load i32, ptr %5, align 4
  %69 = and i32 %68, -2
  store i32 %69, ptr %5, align 4
  br label %70

70:                                               ; preds = %67, %55
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_cleanup_device(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %8, ptr noundef nonnull @device_attrs) #12
  %9 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %9, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 1)) #12
  %10 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %10, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 2)) #12
  %11 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %11, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 3)) #12
  %12 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %12, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 4)) #12
  %13 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %13, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 5)) #12
  %14 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %14, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 6)) #12
  %15 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %15, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 7)) #12
  %16 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %16, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 8)) #12
  %17 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %17, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 9)) #12
  %18 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %18, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 10)) #12
  %19 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %19, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 11)) #12
  %20 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %20, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 12)) #12
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, -2
  store i32 %22, ptr %2, align 4
  br label %23

23:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_bl_default_curve(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = zext i8 %2 to i32
  %6 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 17
  store i8 %1, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 589
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %8, i8 %2, i32 7, i1 false)
  %9 = zext i8 %3 to i32
  %10 = sub nsw i32 %9, %5
  br label %11

11:                                               ; preds = %11, %4
  %12 = phi i32 [ 0, %4 ], [ %13, %11 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = mul nsw i32 %13, %10
  %15 = udiv i32 %14, 120
  %16 = trunc i32 %15 to i8
  %17 = add i8 %16, %2
  %18 = add nuw nsw i32 %12, 8
  %19 = getelementptr %struct.fb_info, ptr %0, i32 0, i32 17, i32 %18
  store i8 %17, ptr %19, align 1
  %20 = icmp eq i32 %13, 120
  br i1 %20, label %21, label %11

21:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef %6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_bpp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_bpp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #12
  %8 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %5, ptr noundef align 4 dereferenceable(160) %8, i32 160, i1 false)
  %9 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #12
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 6
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 128
  store i32 %13, ptr %11, align 4
  tail call void @console_lock() #12
  %14 = call i32 @fb_set_var(ptr noundef %7, ptr noundef nonnull %5) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, ptr %11, align 4
  %18 = and i32 %17, 64
  %19 = icmp ne i32 %18, 0
  call void @fbcon_update_vcs(ptr noundef %7, i1 noundef zeroext %19) #12
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %14, %4 ], [ %3, %16 ]
  call void @console_unlock() #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #12
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @show_blank(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_blank(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4
  %8 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 0) #12
  call void @console_lock() #12
  %9 = call i32 @fb_blank(ptr noundef %7, i32 noundef %8) #12
  call void @fbcon_fb_blanked(ptr noundef %7, i32 noundef %8) #12
  call void @console_unlock() #12
  %10 = icmp slt i32 %9, 0
  %11 = select i1 %10, i32 %9, i32 %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @show_console(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @store_console(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @show_cursor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @store_cursor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #4 {
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 85, i32 68
  %15 = and i32 %11, 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 %14, i32 86
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %17, i32 83
  %21 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 112, i32 105
  %26 = and i32 %22, 2
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 %25, i32 100
  %29 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.15, i32 noundef %20, i32 noundef %30, i32 noundef %32, i32 noundef %28, i32 noundef %34) #12
  br label %36

36:                                               ; preds = %9, %3
  %37 = phi i32 [ %35, %9 ], [ 0, %3 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [100 x i8], align 1
  %6 = alloca %struct.fb_var_screeninfo, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %5, i8 0, i32 100, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %6) #12
  %9 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 13
  br label %10

10:                                               ; preds = %14, %4
  %11 = phi ptr [ %9, %4 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %58, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 85, i32 68
  %20 = and i32 %16, 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 %19, i32 86
  %23 = and i32 %16, 2
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %22, i32 83
  %26 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 112, i32 105
  %31 = and i32 %27, 2
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 %30, i32 100
  %34 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 4096, ptr noundef nonnull @.str.15, i32 noundef %25, i32 noundef %35, i32 noundef %37, i32 noundef %33, i32 noundef %39) #12
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %3)
  %42 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %10

44:                                               ; preds = %14
  %45 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1
  %46 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %6, ptr noundef align 4 dereferenceable(160) %46, i32 160, i1 false)
  call void @fb_videomode_to_var(ptr noundef nonnull %6, ptr noundef %45) #12
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %6, i32 0, i32 13
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 128
  store i32 %49, ptr %47, align 4
  call void @console_lock() #12
  %50 = call i32 @fb_set_var(ptr noundef %8, ptr noundef nonnull %6) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  call void @console_unlock() #12
  br label %58

53:                                               ; preds = %44
  %54 = load i32, ptr %47, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  call void @fbcon_update_vcs(ptr noundef %8, i1 noundef zeroext %56) #12
  call void @console_unlock() #12
  %57 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 14
  store ptr %45, ptr %57, align 4
  br label %58

58:                                               ; preds = %53, %52, %10
  %59 = phi i32 [ %3, %53 ], [ %50, %52 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #12
  ret i32 %59
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_modes(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %43, label %9

9:                                                ; preds = %9, %3
  %10 = phi ptr [ %41, %9 ], [ %7, %3 ]
  %11 = phi i32 [ %40, %9 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.fb_modelist, ptr %10, i32 0, i32 1, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 85, i32 68
  %17 = and i32 %13, 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %16, i32 86
  %20 = and i32 %13, 2
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 %19, i32 83
  %23 = getelementptr inbounds %struct.fb_modelist, ptr %10, i32 0, i32 1, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 112, i32 105
  %28 = and i32 %24, 2
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %27, i32 100
  %31 = getelementptr i8, ptr %2, i32 %11
  %32 = sub i32 4096, %11
  %33 = getelementptr inbounds %struct.fb_modelist, ptr %10, i32 0, i32 1, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fb_modelist, ptr %10, i32 0, i32 1, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fb_modelist, ptr %10, i32 0, i32 1, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef %32, ptr noundef nonnull @.str.15, i32 noundef %22, i32 noundef %34, i32 noundef %36, i32 noundef %30, i32 noundef %38) #12
  %40 = add i32 %39, %11
  %41 = load ptr, ptr %10, align 4
  %42 = icmp eq ptr %41, %6
  br i1 %42, label %43, label %9

43:                                               ; preds = %9, %3
  %44 = phi i32 [ 0, %3 ], [ %40, %9 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_modes(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.list_head, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr %5, ptr %5, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %8, align 4
  %9 = udiv i32 %3, 56
  %10 = mul nuw i32 %9, 56
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %36

12:                                               ; preds = %4
  call void @console_lock() #12
  %13 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 4
  call void @mutex_lock(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 13
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 13, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %5, ptr %21, align 4
  store ptr %15, ptr %5, align 8
  store ptr %18, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  br label %23

23:                                               ; preds = %17, %12
  call void @fb_videomode_to_modelist(ptr noundef %2, i32 noundef %9, ptr noundef %14) #12
  %24 = call i32 @fb_new_modelist(ptr noundef %7) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  call void @fb_destroy_modelist(ptr noundef %14) #12
  %27 = load volatile ptr, ptr %5, align 8
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %14, align 4
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %14, ptr %32, align 4
  store ptr %27, ptr %14, align 4
  store ptr %30, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  br label %35

34:                                               ; preds = %23
  call void @fb_destroy_modelist(ptr noundef nonnull %5) #12
  br label %35

35:                                               ; preds = %34, %29, %26
  call void @mutex_unlock(ptr noundef %13) #12
  call void @console_unlock() #12
  br label %36

36:                                               ; preds = %35, %4
  %37 = phi i32 [ 0, %35 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_pan(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %7, i32 noundef %9) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_pan(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %5, ptr noundef align 4 dereferenceable(160) %9, i32 160, i1 false)
  %10 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 0) #12
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 1
  store ptr %13, ptr %6, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %2 to i32
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %16, %3
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = call i32 @simple_strtoul(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 0) #12
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  call void @console_lock() #12
  %21 = call i32 @fb_pan_display(ptr noundef %8, ptr noundef nonnull %5) #12
  call void @console_unlock() #12
  %22 = icmp slt i32 %21, 0
  %23 = select i1 %22, i32 %21, i32 %3
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i32 [ -22, %4 ], [ %23, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #12
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_virtual(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %7, i32 noundef %9) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_virtual(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %5, ptr noundef align 4 dereferenceable(160) %9, i32 160, i1 false)
  %10 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 0) #12
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 1
  store ptr %13, ptr %6, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %2 to i32
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %16, %3
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = call i32 @simple_strtoul(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 0) #12
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 128
  store i32 %23, ptr %21, align 4
  call void @console_lock() #12
  %24 = call i32 @fb_set_var(ptr noundef %8, ptr noundef nonnull %5) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, ptr %21, align 4
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  call void @fbcon_update_vcs(ptr noundef %8, i1 noundef zeroext %29) #12
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i32 [ %24, %18 ], [ %3, %26 ]
  call void @console_unlock() #12
  br label %32

32:                                               ; preds = %30, %4
  %33 = phi i32 [ -22, %4 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #12
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_stride(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rotate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 26
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_rotate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #12
  %8 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %5, ptr noundef align 4 dereferenceable(160) %8, i32 160, i1 false)
  %9 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #12
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 26
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 128
  store i32 %13, ptr %11, align 4
  tail call void @console_lock() #12
  %14 = call i32 @fb_set_var(ptr noundef %7, ptr noundef nonnull %5) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, ptr %11, align 4
  %18 = and i32 %17, 64
  %19 = icmp ne i32 %18, 0
  call void @fbcon_update_vcs(ptr noundef %7, i1 noundef zeroext %19) #12
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %14, %4 ], [ %3, %16 ]
  call void @console_unlock() #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #12
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_fbstate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 27
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_fbstate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4
  %8 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 0) #12
  call void @console_lock() #12
  %9 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 4
  call void @mutex_lock(ptr noundef %9) #12
  call void @fb_set_suspend(ptr noundef %7, i32 noundef %8) #12
  call void @mutex_unlock(ptr noundef %9) #12
  call void @console_unlock() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_bl_curve(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 17
  %14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef %13) #12
  %15 = getelementptr i8, ptr %2, i32 %14
  %16 = sub i32 4096, %14
  %17 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 8
  %18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @.str.18, ptr noundef %17) #12
  %19 = add i32 %18, %14
  %20 = getelementptr i8, ptr %2, i32 %19
  %21 = sub i32 4096, %19
  %22 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 16
  %23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %20, i32 noundef %21, ptr noundef nonnull @.str.18, ptr noundef %22) #12
  %24 = add i32 %23, %19
  %25 = getelementptr i8, ptr %2, i32 %24
  %26 = sub i32 4096, %24
  %27 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 24
  %28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %25, i32 noundef %26, ptr noundef nonnull @.str.18, ptr noundef %27) #12
  %29 = add i32 %28, %24
  %30 = getelementptr i8, ptr %2, i32 %29
  %31 = sub i32 4096, %29
  %32 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 32
  %33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %30, i32 noundef %31, ptr noundef nonnull @.str.18, ptr noundef %32) #12
  %34 = add i32 %33, %29
  %35 = getelementptr i8, ptr %2, i32 %34
  %36 = sub i32 4096, %34
  %37 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 40
  %38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %35, i32 noundef %36, ptr noundef nonnull @.str.18, ptr noundef %37) #12
  %39 = add i32 %38, %34
  %40 = getelementptr i8, ptr %2, i32 %39
  %41 = sub i32 4096, %39
  %42 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 48
  %43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %40, i32 noundef %41, ptr noundef nonnull @.str.18, ptr noundef %42) #12
  %44 = add i32 %43, %39
  %45 = getelementptr i8, ptr %2, i32 %44
  %46 = sub i32 4096, %44
  %47 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 56
  %48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %45, i32 noundef %46, ptr noundef nonnull @.str.18, ptr noundef %47) #12
  %49 = add i32 %48, %44
  %50 = getelementptr i8, ptr %2, i32 %49
  %51 = sub i32 4096, %49
  %52 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 64
  %53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %50, i32 noundef %51, ptr noundef nonnull @.str.18, ptr noundef %52) #12
  %54 = add i32 %53, %49
  %55 = getelementptr i8, ptr %2, i32 %54
  %56 = sub i32 4096, %54
  %57 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 72
  %58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %55, i32 noundef %56, ptr noundef nonnull @.str.18, ptr noundef %57) #12
  %59 = add i32 %58, %54
  %60 = getelementptr i8, ptr %2, i32 %59
  %61 = sub i32 4096, %59
  %62 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 80
  %63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %60, i32 noundef %61, ptr noundef nonnull @.str.18, ptr noundef %62) #12
  %64 = add i32 %63, %59
  %65 = getelementptr i8, ptr %2, i32 %64
  %66 = sub i32 4096, %64
  %67 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 88
  %68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %65, i32 noundef %66, ptr noundef nonnull @.str.18, ptr noundef %67) #12
  %69 = add i32 %68, %64
  %70 = getelementptr i8, ptr %2, i32 %69
  %71 = sub i32 4096, %69
  %72 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 96
  %73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %70, i32 noundef %71, ptr noundef nonnull @.str.18, ptr noundef %72) #12
  %74 = add i32 %73, %69
  %75 = getelementptr i8, ptr %2, i32 %74
  %76 = sub i32 4096, %74
  %77 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 104
  %78 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %75, i32 noundef %76, ptr noundef nonnull @.str.18, ptr noundef %77) #12
  %79 = add i32 %78, %74
  %80 = getelementptr i8, ptr %2, i32 %79
  %81 = sub i32 4096, %79
  %82 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 112
  %83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %80, i32 noundef %81, ptr noundef nonnull @.str.18, ptr noundef %82) #12
  %84 = add i32 %83, %79
  %85 = getelementptr i8, ptr %2, i32 %84
  %86 = sub i32 4096, %84
  %87 = getelementptr %struct.fb_info, ptr %5, i32 0, i32 17, i32 120
  %88 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %85, i32 noundef %86, ptr noundef nonnull @.str.18, ptr noundef %87) #12
  %89 = add i32 %88, %84
  tail call void @mutex_unlock(ptr noundef %12) #12
  br label %90

90:                                               ; preds = %11, %7, %3
  %91 = phi i32 [ %89, %11 ], [ -19, %7 ], [ -19, %3 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_bl_curve(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [128 x i8], align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %3, 384
  br i1 %14, label %18, label %50

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %40, label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %16, %15 ], [ 0, %13 ]
  %20 = mul nuw nsw i32 %19, 24
  %21 = getelementptr i8, ptr %2, i32 %20
  %22 = shl nuw nsw i32 %19, 3
  %23 = getelementptr [128 x i8], ptr %5, i32 0, i32 %22
  %24 = or i32 %22, 1
  %25 = getelementptr [128 x i8], ptr %5, i32 0, i32 %24
  %26 = or i32 %22, 2
  %27 = getelementptr [128 x i8], ptr %5, i32 0, i32 %26
  %28 = or i32 %22, 3
  %29 = getelementptr [128 x i8], ptr %5, i32 0, i32 %28
  %30 = or i32 %22, 4
  %31 = getelementptr [128 x i8], ptr %5, i32 0, i32 %30
  %32 = or i32 %22, 5
  %33 = getelementptr [128 x i8], ptr %5, i32 0, i32 %32
  %34 = or i32 %22, 6
  %35 = getelementptr [128 x i8], ptr %5, i32 0, i32 %34
  %36 = or i32 %22, 7
  %37 = getelementptr [128 x i8], ptr %5, i32 0, i32 %36
  %38 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %21, ptr noundef nonnull @.str.19, ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef %35, ptr noundef %37)
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %15, label %50

40:                                               ; preds = %15
  %41 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 16
  call void @mutex_lock(ptr noundef %41) #12
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ 0, %40 ], [ %47, %42 ]
  %44 = getelementptr [128 x i8], ptr %5, i32 0, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr %struct.fb_info, ptr %7, i32 0, i32 17, i32 %43
  store i8 %45, ptr %46, align 1
  %47 = add nuw nsw i32 %43, 1
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %42

49:                                               ; preds = %42
  call void @mutex_unlock(ptr noundef %41) #12
  br label %50

50:                                               ; preds = %49, %18, %13, %9, %4
  %51 = phi i32 [ 384, %49 ], [ -19, %9 ], [ -19, %4 ], [ -22, %13 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #12
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_update_vcs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_blank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_fb_blanked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_new_modelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

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
