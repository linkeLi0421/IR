; ModuleID = '/llk/IR/drivers/video/fbdev/simplefb.c_pt.bc'
source_filename = "../drivers/video/fbdev/simplefb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.simplefb_format = type { ptr, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32 }
%struct.simplefb_params = type { i32, i32, i32, ptr }
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
%struct.simplefb_platform_data = type { i32, i32, i32, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.simplefb_par = type { [16 x i32], i8, i32, ptr, i8, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@__initcall__kmod_simplefb__259_544_simplefb_driver_init6 = internal global ptr @simplefb_driver_init, section ".initcall6.init", align 4
@simplefb_driver = internal global %struct.platform_driver { ptr @simplefb_probe, ptr @simplefb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @simplefb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_simplefb_driver_exit = internal global ptr @simplefb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author260 = internal constant [55 x i8] c"simplefb.author=Stephen Warren <swarren@wwwdotorg.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [47 x i8] c"simplefb.description=Simple framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [43 x i8] c"simplefb.file=drivers/video/fbdev/simplefb\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [24 x i8] c"simplefb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"simple-framebuffer\00", align 1
@simplefb_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-framebuffer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@num_registered_fb = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"simplefb: a framebuffer is already registered\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"simplefb\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"No memory resource\0A\00", align 1
@simplefb_fix = internal unnamed_addr constant %struct.fb_fix_screeninfo { [16 x i8] c"simple\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, align 4
@simplefb_var = internal unnamed_addr constant %struct.fb_var_screeninfo { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, align 4
@simplefb_ops = internal constant %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simplefb_setcolreg, ptr null, ptr null, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simplefb_destroy, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"framebuffer at 0x%lx, 0x%x bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"format=%s, mode=%dx%dx%d, linelength=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Unable to register simplefb: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"fb%d: simplefb registered!\0A\00", align 1
@simplefb_formats = internal global [10 x %struct.simplefb_format] [%struct.simplefb_format { ptr @.str.9, i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 909199186 }, %struct.simplefb_format { ptr @.str.10, i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 6, i32 5, i32 0 }, %struct.fb_bitfield { i32 1, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, i32 892420434 }, %struct.simplefb_format { ptr @.str.11, i32 16, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 892424792 }, %struct.simplefb_format { ptr @.str.12, i32 16, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield { i32 15, i32 1, i32 0 }, i32 892424769 }, %struct.simplefb_format { ptr @.str.13, i32 24, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 875710290 }, %struct.simplefb_format { ptr @.str.14, i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 875713112 }, %struct.simplefb_format { ptr @.str.15, i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 875713089 }, %struct.simplefb_format { ptr @.str.16, i32 32, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 875708993 }, %struct.simplefb_format { ptr @.str.17, i32 32, %struct.fb_bitfield { i32 20, i32 10, i32 0 }, %struct.fb_bitfield { i32 10, i32 10, i32 0 }, %struct.fb_bitfield { i32 0, i32 10, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 808669784 }, %struct.simplefb_format { ptr @.str.18, i32 32, %struct.fb_bitfield { i32 20, i32 10, i32 0 }, %struct.fb_bitfield { i32 10, i32 10, i32 0 }, %struct.fb_bitfield { i32 0, i32 10, i32 0 }, %struct.fb_bitfield { i32 30, i32 2, i32 0 }, i32 808669761 }], align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Invalid format value\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"r5g6b5\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"r5g5b5a1\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"x1r5g5b5\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"a1r5g5b5\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"r8g8b8\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"x8r8g8b8\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"a8r8g8b8\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"a8b8g8r8\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"x2r10g10b10\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"a2r10g10b10\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Can't parse width property\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Can't parse height property\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Can't parse stride property\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Can't parse format property\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [29 x i8] c"%s: clock %d not found: %ld\0A\00", align 1
@__func__.simplefb_clocks_get = private unnamed_addr constant [20 x i8] c"simplefb_clocks_get\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"-supply\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"regulator %s not found: %ld\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"%s: failed to enable clock %d: %d\0A\00", align 1
@__func__.simplefb_clocks_enable = private unnamed_addr constant [23 x i8] c"simplefb_clocks_enable\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"failed to enable regulator %d: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_simplefb_driver_exit, ptr @__initcall__kmod_simplefb__259_544_simplefb_driver_init6, ptr @simplefb_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @simplefb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @simplefb_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @simplefb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @simplefb_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simplefb_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.simplefb_params, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = load i32, ptr @num_registered_fb, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #14
  br label %276

8:                                                ; preds = %1
  %9 = tail call i32 @fb_get_options(ptr noundef nonnull @.str.2, ptr noundef null) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %276

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %69, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %14, align 4
  store i32 %17, ptr %3, align 4
  %18 = getelementptr inbounds %struct.simplefb_platform_data, ptr %14, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.simplefb_platform_data, ptr %14, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 3
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.simplefb_platform_data, ptr %14, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr @simplefb_formats, align 4
  %28 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %27) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %16
  %31 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 1), align 4
  %32 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %31) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 2), align 4
  %36 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %35) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 3), align 4
  %40 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %39) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 4), align 4
  %44 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %43) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 5), align 4
  %48 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %47) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 6), align 4
  %52 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %51) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 7), align 4
  %56 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %55) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 8), align 4
  %60 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %59) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 9), align 4
  %64 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %63) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %58, %54, %50, %46, %42, %38, %34, %30, %16
  %67 = phi ptr [ @simplefb_formats, %16 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 1), %30 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 2), %34 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 3), %38 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 4), %42 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 5), %46 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 6), %50 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 7), %54 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 8), %58 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 9), %62 ]
  store ptr %67, ptr %24, align 4
  br label %134

68:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8) #14
  br label %276

69:                                               ; preds = %11
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %276, label %73

73:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store ptr null, ptr %2, align 4, !annotation !8
  %74 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %71, ptr noundef nonnull @.str.19, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %129

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 1
  %78 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %71, ptr noundef nonnull @.str.21, ptr noundef %77, i32 noundef 1, i32 noundef 0) #13
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %129

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 2
  %82 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %71, ptr noundef nonnull @.str.23, ptr noundef %81, i32 noundef 1, i32 noundef 0) #13
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %129

84:                                               ; preds = %80
  %85 = call i32 @of_property_read_string(ptr noundef nonnull %71, ptr noundef nonnull @.str.25, ptr noundef nonnull %2) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %129

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 3
  store ptr null, ptr %88, align 4
  %89 = load ptr, ptr %2, align 4
  %90 = load ptr, ptr @simplefb_formats, align 4
  %91 = call i32 @strcmp(ptr noundef %89, ptr noundef %90) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %132, label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 1), align 4
  %95 = call i32 @strcmp(ptr noundef %89, ptr noundef %94) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %132, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 2), align 4
  %99 = call i32 @strcmp(ptr noundef %89, ptr noundef %98) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %132, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 3), align 4
  %103 = call i32 @strcmp(ptr noundef %89, ptr noundef %102) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %132, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 4), align 4
  %107 = call i32 @strcmp(ptr noundef %89, ptr noundef %106) #13
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %132, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 5), align 4
  %111 = call i32 @strcmp(ptr noundef %89, ptr noundef %110) #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 6), align 4
  %115 = call i32 @strcmp(ptr noundef %89, ptr noundef %114) #13
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 7), align 4
  %119 = call i32 @strcmp(ptr noundef %89, ptr noundef %118) #13
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 8), align 4
  %123 = call i32 @strcmp(ptr noundef %89, ptr noundef %122) #13
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 9), align 4
  %127 = call i32 @strcmp(ptr noundef %89, ptr noundef %126) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125, %84, %80, %76, %73
  %130 = phi ptr [ @.str.20, %73 ], [ @.str.22, %76 ], [ @.str.24, %80 ], [ @.str.26, %84 ], [ @.str.8, %125 ]
  %131 = phi i32 [ %74, %73 ], [ %78, %76 ], [ %82, %80 ], [ %85, %84 ], [ -22, %125 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %130) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %276

132:                                              ; preds = %125, %121, %117, %113, %109, %105, %101, %97, %93, %87
  %133 = phi ptr [ @simplefb_formats, %87 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 1), %93 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 2), %97 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 3), %101 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 4), %105 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 5), %109 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 6), %113 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 7), %117 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 8), %121 ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_formats, i32 0, i32 9), %125 ]
  store ptr %133, ptr %88, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %134

134:                                              ; preds = %132, %66
  %135 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #13
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.3) #14
  br label %276

138:                                              ; preds = %134
  %139 = call ptr @framebuffer_alloc(i32 noundef 88, ptr noundef %12) #13
  %140 = icmp eq ptr %139, null
  br i1 %140, label %276, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %139, ptr %142, align 8
  %143 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 29
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %145, ptr noundef nonnull align 4 dereferenceable(68) @simplefb_fix, i32 68, i1 false)
  %146 = load i32, ptr %135, align 4
  %147 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 7, i32 1
  store i32 %146, ptr %147, align 4
  %148 = getelementptr inbounds %struct.resource, ptr %135, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = load i32, ptr %135, align 4
  %151 = add i32 %149, 1
  %152 = sub i32 %151, %150
  %153 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 7, i32 2
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 7, i32 9
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %157, ptr noundef nonnull align 4 dereferenceable(160) @simplefb_var, i32 160, i1 false)
  %158 = load i32, ptr %3, align 4
  store i32 %158, ptr %157, align 4
  %159 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 1
  store i32 %160, ptr %161, align 4
  %162 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 2
  store i32 %158, ptr %162, align 4
  %163 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 3
  store i32 %160, ptr %163, align 4
  %164 = getelementptr inbounds %struct.simplefb_params, ptr %3, i32 0, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.simplefb_format, ptr %165, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 6
  store i32 %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 8
  %170 = getelementptr inbounds %struct.simplefb_format, ptr %165, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %169, ptr noundef align 4 dereferenceable(12) %170, i32 12, i1 false)
  %171 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 9
  %172 = getelementptr inbounds %struct.simplefb_format, ptr %165, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %171, ptr noundef align 4 dereferenceable(12) %172, i32 12, i1 false)
  %173 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 10
  %174 = getelementptr inbounds %struct.simplefb_format, ptr %165, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %173, ptr noundef align 4 dereferenceable(12) %174, i32 12, i1 false)
  %175 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 11
  %176 = getelementptr inbounds %struct.simplefb_format, ptr %165, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %175, ptr noundef align 4 dereferenceable(12) %176, i32 12, i1 false)
  %177 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %178 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %177, i32 noundef 3520, i32 noundef 12) #15
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %141
  %181 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 30
  store ptr null, ptr %181, align 4
  br label %274

182:                                              ; preds = %141
  store i32 1, ptr %178, align 8
  %183 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 30
  store ptr %178, ptr %183, align 4
  %184 = load i32, ptr %147, align 4
  %185 = getelementptr inbounds %struct.apertures_struct, ptr %178, i32 0, i32 1
  store i32 %184, ptr %185, align 4
  %186 = load i32, ptr %153, align 4
  %187 = load ptr, ptr %183, align 4
  %188 = getelementptr inbounds %struct.apertures_struct, ptr %187, i32 2
  store i32 %186, ptr %188, align 4
  %189 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 20
  store ptr @simplefb_ops, ptr %189, align 4
  %190 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 2
  store i32 524288, ptr %190, align 4
  %191 = load i32, ptr %147, align 4
  %192 = load i32, ptr %153, align 4
  %193 = call ptr @ioremap_wc(i32 noundef %191, i32 noundef %192) #13
  %194 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 24
  store ptr %193, ptr %194, align 4
  %195 = icmp eq ptr %193, null
  br i1 %195, label %274, label %196

196:                                              ; preds = %182
  %197 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 26
  store ptr %144, ptr %197, align 4
  %198 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %199 = load ptr, ptr %198, align 8
  %200 = load ptr, ptr %13, align 4
  %201 = icmp eq ptr %200, null
  %202 = icmp ne ptr %199, null
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %204, label %251

204:                                              ; preds = %196
  %205 = call i32 @of_clk_get_parent_count(ptr noundef nonnull %199) #13
  %206 = getelementptr inbounds %struct.simplefb_par, ptr %144, i32 0, i32 2
  store i32 %205, ptr %206, align 4
  %207 = icmp eq i32 %205, 0
  br i1 %207, label %251, label %208

208:                                              ; preds = %204
  %209 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %205, i32 4) #13
  %210 = extractvalue { i32, i1 } %209, 1
  br i1 %210, label %211, label %213, !prof !9

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.simplefb_par, ptr %144, i32 0, i32 3
  store ptr null, ptr %212, align 4
  br label %271

213:                                              ; preds = %208
  %214 = extractvalue { i32, i1 } %209, 0
  %215 = call noalias align 64 ptr @__kmalloc(i32 noundef %214, i32 noundef 3520) #16
  %216 = getelementptr inbounds %struct.simplefb_par, ptr %144, i32 0, i32 3
  store ptr %215, ptr %216, align 4
  %217 = icmp eq ptr %215, null
  br i1 %217, label %271, label %218

218:                                              ; preds = %213
  %219 = load i32, ptr %206, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %251, label %221

221:                                              ; preds = %247, %218
  %222 = phi i32 [ %248, %247 ], [ 0, %218 ]
  %223 = call ptr @of_clk_get(ptr noundef nonnull %199, i32 noundef %222) #13
  %224 = icmp ugt ptr %223, inttoptr (i32 -4096 to ptr)
  br i1 %224, label %225, label %244

225:                                              ; preds = %221
  %226 = icmp eq ptr %223, inttoptr (i32 -517 to ptr)
  br i1 %226, label %227, label %242

227:                                              ; preds = %225
  %228 = add i32 %222, -1
  %229 = icmp sgt i32 %228, -1
  br i1 %229, label %230, label %240

230:                                              ; preds = %237, %227
  %231 = phi i32 [ %238, %237 ], [ %228, %227 ]
  %232 = load ptr, ptr %216, align 4
  %233 = getelementptr ptr, ptr %232, i32 %231
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %230
  call void @clk_put(ptr noundef nonnull %234) #13
  br label %237

237:                                              ; preds = %236, %230
  %238 = add i32 %231, -1
  %239 = icmp sgt i32 %238, -1
  br i1 %239, label %230, label %240

240:                                              ; preds = %237, %227
  %241 = load ptr, ptr %216, align 4
  call void @kfree(ptr noundef %241) #13
  br label %271

242:                                              ; preds = %225
  %243 = ptrtoint ptr %223 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.simplefb_clocks_get, i32 noundef %222, i32 noundef %243) #14
  br label %247

244:                                              ; preds = %221
  %245 = load ptr, ptr %216, align 4
  %246 = getelementptr ptr, ptr %245, i32 %222
  store ptr %223, ptr %246, align 4
  br label %247

247:                                              ; preds = %244, %242
  %248 = add nuw i32 %222, 1
  %249 = load i32, ptr %206, align 4
  %250 = icmp ult i32 %248, %249
  br i1 %250, label %221, label %251

251:                                              ; preds = %247, %218, %204, %196
  %252 = call fastcc i32 @simplefb_regulators_get(ptr noundef %144, ptr noundef %0)
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %251
  call fastcc void @simplefb_clocks_enable(ptr noundef %144, ptr noundef %0)
  call fastcc void @simplefb_regulators_enable(ptr noundef %144, ptr noundef %0)
  %255 = load i32, ptr %147, align 4
  %256 = load i32, ptr %153, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.4, i32 noundef %255, i32 noundef %256) #14
  %257 = load ptr, ptr %164, align 4
  %258 = load ptr, ptr %257, align 4
  %259 = load i32, ptr %157, align 4
  %260 = load i32, ptr %161, align 4
  %261 = load i32, ptr %168, align 4
  %262 = load i32, ptr %156, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef %258, i32 noundef %259, i32 noundef %260, i32 noundef %261, i32 noundef %262) #14
  %263 = call i32 @register_framebuffer(ptr noundef %139) #13
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %254
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %263) #14
  call fastcc void @simplefb_regulators_destroy(ptr noundef %144)
  br label %269

266:                                              ; preds = %254
  %267 = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 1
  %268 = load i32, ptr %267, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef %268) #14
  br label %276

269:                                              ; preds = %265, %251
  %270 = phi i32 [ %252, %251 ], [ %263, %265 ]
  call fastcc void @simplefb_clocks_destroy(ptr noundef %144)
  br label %271

271:                                              ; preds = %269, %240, %213, %211
  %272 = phi i32 [ %270, %269 ], [ -517, %240 ], [ -12, %213 ], [ -12, %211 ]
  %273 = load ptr, ptr %194, align 4
  call void @iounmap(ptr noundef %273) #13
  br label %274

274:                                              ; preds = %271, %182, %180
  %275 = phi i32 [ %272, %271 ], [ -12, %182 ], [ -12, %180 ]
  call void @framebuffer_release(ptr noundef %139) #13
  br label %276

276:                                              ; preds = %274, %266, %138, %137, %129, %69, %68, %8, %6
  %277 = phi i32 [ -22, %6 ], [ %275, %274 ], [ 0, %266 ], [ -22, %137 ], [ -19, %8 ], [ -12, %138 ], [ %131, %129 ], [ -22, %68 ], [ -19, %69 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %277
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simplefb_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_framebuffer(ptr noundef %3) #13
  tail call void @framebuffer_release(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @simplefb_regulators_get(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %75

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %75, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %27, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %25, %16 ], [ 0, %12 ]
  %19 = load ptr, ptr %17, align 4
  %20 = tail call ptr @strstr(ptr noundef %19, ptr noundef nonnull @.str.28)
  %21 = icmp ne ptr %20, null
  %22 = icmp ne ptr %20, %19
  %23 = and i1 %21, %22
  %24 = zext i1 %23 to i32
  %25 = add i32 %18, %24
  %26 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %16

29:                                               ; preds = %16
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %29
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #13
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %34, label %36, !prof !9

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 6
  store ptr null, ptr %35, align 4
  br label %75

36:                                               ; preds = %31
  %37 = extractvalue { i32, i1 } %32, 0
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %37, i32 noundef 3520) #13
  %39 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 6
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %75, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %13, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %72, label %44

44:                                               ; preds = %67, %41
  %45 = phi ptr [ %70, %67 ], [ %42, %41 ]
  %46 = phi i32 [ %68, %67 ], [ 0, %41 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %47 = load ptr, ptr %45, align 4
  %48 = call ptr @strstr(ptr noundef %47, ptr noundef nonnull @.str.28)
  %49 = icmp eq ptr %48, null
  %50 = icmp eq ptr %48, %47
  %51 = or i1 %49, %50
  br i1 %51, label %67, label %52

52:                                               ; preds = %44
  %53 = call i32 @strlen(ptr noundef %47)
  %54 = add i32 %53, -6
  %55 = call i32 @strlcpy(ptr noundef nonnull %3, ptr noundef %47, i32 noundef %54) #13
  %56 = call ptr @devm_regulator_get_optional(ptr noundef %4, ptr noundef nonnull %3) #13
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = icmp eq ptr %56, inttoptr (i32 -517 to ptr)
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = ptrtoint ptr %56 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.29, ptr noundef nonnull %3, i32 noundef %61) #14
  br label %67

62:                                               ; preds = %52
  %63 = load ptr, ptr %39, align 4
  %64 = add i32 %46, 1
  %65 = getelementptr ptr, ptr %63, i32 %46
  store ptr %56, ptr %65, align 4
  br label %67

66:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %75

67:                                               ; preds = %62, %60, %44
  %68 = phi i32 [ %46, %44 ], [ %64, %62 ], [ %46, %60 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  %69 = getelementptr inbounds %struct.property, ptr %45, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %44

72:                                               ; preds = %67, %41
  %73 = phi i32 [ 0, %41 ], [ %68, %67 ]
  %74 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 5
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %72, %66, %36, %34, %29, %12, %2
  %76 = phi i32 [ -517, %66 ], [ 0, %72 ], [ 0, %2 ], [ 0, %29 ], [ -12, %36 ], [ -12, %34 ], [ 0, %12 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @simplefb_clocks_enable(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  br label %9

9:                                                ; preds = %29, %6
  %10 = phi i32 [ 0, %6 ], [ %30, %29 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @clk_prepare(ptr noundef nonnull %13) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call i32 @clk_enable(ptr noundef nonnull %13) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef nonnull %13) #13
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %19, %21 ], [ %16, %15 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.simplefb_clocks_enable, i32 noundef %10, i32 noundef %23) #14
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr ptr, ptr %24, i32 %10
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_put(ptr noundef %26) #13
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr ptr, ptr %27, i32 %10
  store ptr null, ptr %28, align 4
  br label %29

29:                                               ; preds = %22, %18, %9
  %30 = add nuw i32 %10, 1
  %31 = load i32, ptr %3, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %9, label %33

33:                                               ; preds = %29, %2
  %34 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 1
  store i8 1, ptr %34, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @simplefb_regulators_enable(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  br label %9

9:                                                ; preds = %22, %6
  %10 = phi i32 [ 0, %6 ], [ %23, %22 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regulator_enable(ptr noundef %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef %10, i32 noundef %14) #14
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr ptr, ptr %17, i32 %10
  %19 = load ptr, ptr %18, align 4
  tail call void @devm_regulator_put(ptr noundef %19) #13
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr ptr, ptr %20, i32 %10
  store ptr null, ptr %21, align 4
  br label %22

22:                                               ; preds = %16, %9
  %23 = add nuw i32 %10, 1
  %24 = load i32, ptr %3, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %9, label %26

26:                                               ; preds = %22, %2
  %27 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 4
  store i8 1, ptr %27, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @simplefb_regulators_destroy(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %27, %9
  %14 = phi i32 [ %24, %27 ], [ %11, %9 ]
  %15 = phi ptr [ %28, %27 ], [ %3, %9 ]
  %16 = phi i32 [ %25, %27 ], [ 0, %9 ]
  %17 = getelementptr ptr, ptr %15, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @regulator_disable(ptr noundef nonnull %18) #13
  %22 = load i32, ptr %10, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i32 [ %14, %13 ], [ %22, %20 ]
  %25 = add nuw i32 %16, 1
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 4
  br label %13

29:                                               ; preds = %23, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @simplefb_clocks_destroy(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.simplefb_par, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %28, %9
  %12 = phi i32 [ %7, %9 ], [ %29, %28 ]
  %13 = phi ptr [ %3, %9 ], [ %32, %28 ]
  %14 = phi i32 [ 0, %9 ], [ %30, %28 ]
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = load i8, ptr %10, align 4, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call void @clk_disable(ptr noundef nonnull %16) #13
  tail call void @clk_unprepare(ptr noundef nonnull %16) #13
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr ptr, ptr %22, i32 %14
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi ptr [ %24, %21 ], [ %16, %18 ]
  tail call void @clk_put(ptr noundef %26) #13
  %27 = load i32, ptr %6, align 4
  br label %28

28:                                               ; preds = %25, %11
  %29 = phi i32 [ %12, %11 ], [ %27, %25 ]
  %30 = add nuw i32 %14, 1
  %31 = icmp ult i32 %30, %29
  %32 = load ptr, ptr %2, align 4
  br i1 %31, label %11, label %33

33:                                               ; preds = %28, %5
  %34 = phi ptr [ %3, %5 ], [ %32, %28 ]
  tail call void @kfree(ptr noundef %34) #13
  br label %35

35:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @simplefb_setcolreg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #11 {
  %7 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt i32 %0, 15
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 16, %12
  %14 = lshr i32 %3, %13
  %15 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10
  %16 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 16, %17
  %19 = lshr i32 %2, %18
  %20 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9
  %21 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 16, %22
  %24 = lshr i32 %1, %23
  %25 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %24, %26
  %28 = load i32, ptr %20, align 4
  %29 = shl i32 %19, %28
  %30 = or i32 %27, %29
  %31 = load i32, ptr %15, align 4
  %32 = shl i32 %14, %31
  %33 = or i32 %30, %32
  %34 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 11, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 11
  %39 = shl nsw i32 -1, %35
  %40 = xor i32 %39, -1
  %41 = load i32, ptr %38, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %42, %33
  br label %44

44:                                               ; preds = %37, %10
  %45 = phi i32 [ %43, %37 ], [ %33, %10 ]
  %46 = getelementptr i32, ptr %8, i32 %0
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %6
  %48 = phi i32 [ 0, %44 ], [ -22, %6 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simplefb_destroy(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.simplefb_par, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.simplefb_par, ptr %3, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.simplefb_par, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %29, %11
  %16 = phi i32 [ %26, %29 ], [ %13, %11 ]
  %17 = phi ptr [ %30, %29 ], [ %5, %11 ]
  %18 = phi i32 [ %27, %29 ], [ 0, %11 ]
  %19 = getelementptr ptr, ptr %17, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @regulator_disable(ptr noundef nonnull %20) #13
  %24 = load i32, ptr %12, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i32 [ %16, %15 ], [ %24, %22 ]
  %27 = add nuw i32 %18, 1
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 4
  br label %15

31:                                               ; preds = %25
  %32 = load ptr, ptr %2, align 4
  br label %33

33:                                               ; preds = %31, %11, %7, %1
  %34 = phi ptr [ %32, %31 ], [ %3, %1 ], [ %3, %7 ], [ %3, %11 ]
  %35 = getelementptr inbounds %struct.simplefb_par, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %69, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.simplefb_par, ptr %34, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.simplefb_par, ptr %34, i32 0, i32 1
  br label %44

44:                                               ; preds = %62, %42
  %45 = phi ptr [ %36, %42 ], [ %63, %62 ]
  %46 = phi i32 [ %40, %42 ], [ %64, %62 ]
  %47 = phi i32 [ 0, %42 ], [ %65, %62 ]
  %48 = getelementptr ptr, ptr %45, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load i8, ptr %43, align 4, !range !10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  tail call void @clk_disable(ptr noundef nonnull %49) #13
  tail call void @clk_unprepare(ptr noundef nonnull %49) #13
  %55 = load ptr, ptr %35, align 4
  %56 = getelementptr ptr, ptr %55, i32 %47
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi ptr [ %57, %54 ], [ %49, %51 ]
  tail call void @clk_put(ptr noundef %59) #13
  %60 = load i32, ptr %39, align 4
  %61 = load ptr, ptr %35, align 4
  br label %62

62:                                               ; preds = %58, %44
  %63 = phi ptr [ %45, %44 ], [ %61, %58 ]
  %64 = phi i32 [ %46, %44 ], [ %60, %58 ]
  %65 = add nuw i32 %47, 1
  %66 = icmp ult i32 %65, %64
  br i1 %66, label %44, label %67

67:                                               ; preds = %62, %38
  %68 = phi ptr [ %36, %38 ], [ %63, %62 ]
  tail call void @kfree(ptr noundef %68) #13
  br label %69

69:                                               ; preds = %67, %33
  %70 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @iounmap(ptr noundef nonnull %71) #13
  br label %74

74:                                               ; preds = %73, %69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
