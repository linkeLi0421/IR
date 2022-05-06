; ModuleID = '/llk/IR/drivers/video/fbdev/wm8505fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/wm8505fb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { ptr }
%struct.wm8505fb_info = type { %struct.fb_info, ptr, i32 }

@__initcall__kmod_wm8505fb__261_406_wm8505fb_driver_init6 = internal global ptr @wm8505fb_driver_init, section ".initcall6.init", align 4
@wm8505fb_driver = internal global %struct.platform_driver { ptr @wm8505fb_probe, ptr @wm8505fb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wmt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8505fb_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_wm8505fb_driver_exit = internal global ptr @wm8505fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author262 = internal constant [50 x i8] c"wm8505fb.author=Ed Spiridonov <edo.rus@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [55 x i8] c"wm8505fb.description=Framebuffer driver for WMT WM8505\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [43 x i8] c"wm8505fb.file=drivers/video/fbdev/wm8505fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [24 x i8] c"wm8505fb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"wm8505-fb\00", align 1
@wmt_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8505-fb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@wm8505fb_groups = internal global [2 x ptr] [ptr @wm8505fb_group, ptr null], align 4
@wm8505fb_ops = internal constant %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8505fb_set_par, ptr @wm8505fb_setcolreg, ptr null, ptr @wm8505fb_blank, ptr @wm8505fb_pan_display, ptr @wmt_ge_fillrect, ptr @wmt_ge_copyarea, ptr @sys_imageblit, ptr null, ptr @wmt_ge_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bits-per-pixel\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to allocate framebuffer\0A\00", align 1
@__func__.wm8505fb_probe = private unnamed_addr constant [15 x i8] c"wm8505fb_probe\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to set parameters\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to allocate color map\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to register framebuffer device: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\016fb%d: %s frame buffer at 0x%lx-0x%lx\0A\00", align 1
@wm8505fb_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @wm8505fb_attrs, ptr null }, align 4
@wm8505fb_attrs = internal global [2 x ptr] [ptr @dev_attr_contrast, ptr null], align 4
@dev_attr_contrast = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @contrast_show, ptr @contrast_store }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_wm8505fb_driver_exit, ptr @__initcall__kmod_wm8505fb__261_406_wm8505fb_driver_init6, ptr @wm8505fb_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @wm8505fb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8505fb_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @wm8505fb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8505fb_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8505fb_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.fb_videomode, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 884, i32 noundef 3520) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %97, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %9, ptr noundef nonnull align 1 dereferenceable(10) @.str, i32 10, i1 false)
  %10 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7, i32 6
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7, i32 7
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7, i32 8
  store i16 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7, i32 12
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 20
  store ptr @wm8505fb_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 2
  store i32 13124, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 1
  store i32 -1, ptr %17, align 4
  %18 = getelementptr i8, ptr %6, i32 820
  %19 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 26
  store ptr %18, ptr %19, align 4
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #13
  %21 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %20) #13
  %22 = getelementptr inbounds %struct.wm8505fb_info, ptr %6, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = ptrtoint ptr %21 to i32
  br label %97

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = tail call ptr @of_get_display_timings(ptr noundef %28) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %97, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 8
  %33 = call i32 @of_get_fb_videomode(ptr noundef %32, ptr noundef nonnull %2, i32 noundef -1) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %97

35:                                               ; preds = %31
  %36 = load ptr, ptr %27, align 8
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %38 = call i32 @llvm.smin.i32(i32 %37, i32 0) #13
  %39 = icmp sgt i32 %37, -1
  br i1 %39, label %40, label %97

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6
  call void @fb_videomode_to_var(ptr noundef %41, ptr noundef nonnull %2) #13
  %42 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 12
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 13
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 14
  store i32 -1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 15
  store i32 -1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.fb_videomode, ptr %2, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fb_videomode, ptr %2, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %3, align 4
  %51 = lshr i32 %50, 3
  %52 = shl i32 %47, 1
  %53 = mul i32 %52, %49
  %54 = mul i32 %53, %51
  %55 = call ptr @dmam_alloc_attrs(ptr noundef %5, i32 noundef %54, ptr noundef nonnull %4, i32 noundef 3264, i32 noundef 0) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.wm8505fb_probe) #14
  br label %97

59:                                               ; preds = %40
  %60 = load i32, ptr %46, align 4
  %61 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 2
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %48, align 4
  %63 = shl i32 %62, 1
  %64 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 3
  store i32 %63, ptr %64, align 4
  %65 = load i32, ptr %3, align 4
  %66 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 6
  store i32 %65, ptr %66, align 4
  %67 = load i32, ptr %4, align 4
  %68 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7, i32 1
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7, i32 2
  store i32 %54, ptr %69, align 4
  %70 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 24
  store ptr %55, ptr %70, align 4
  %71 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 25
  store i32 %54, ptr %71, align 4
  %72 = getelementptr inbounds %struct.wm8505fb_info, ptr %6, i32 0, i32 2
  store i32 16, ptr %72, align 4
  %73 = call i32 @wm8505fb_set_par(ptr noundef nonnull %6)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #14
  br label %97

76:                                               ; preds = %59
  %77 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 12
  %78 = call i32 @fb_alloc_cmap(ptr noundef %77, i32 noundef 256, i32 noundef 0) #13
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #14
  br label %97

81:                                               ; preds = %76
  call fastcc void @wm8505fb_init_hw(ptr noundef nonnull %6)
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %82, align 8
  %83 = call i32 @register_framebuffer(ptr noundef nonnull %6) #13
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %83) #14
  %86 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 12, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  call void @fb_dealloc_cmap(ptr noundef %77) #13
  br label %97

90:                                               ; preds = %81
  %91 = load i32, ptr %17, align 4
  %92 = load i32, ptr %68, align 4
  %93 = load i32, ptr %69, align 4
  %94 = add i32 %92, -1
  %95 = add i32 %94, %93
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %91, ptr noundef %9, i32 noundef %92, i32 noundef %95) #14
  br label %97

97:                                               ; preds = %90, %89, %85, %80, %75, %57, %35, %31, %26, %24, %1
  %98 = phi i32 [ %25, %24 ], [ %73, %75 ], [ -12, %80 ], [ 0, %90 ], [ -12, %57 ], [ -12, %1 ], [ -22, %26 ], [ %33, %31 ], [ %38, %35 ], [ %83, %89 ], [ %83, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8505fb_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_framebuffer(ptr noundef %3) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !9
  tail call void @arm_heavy_mb() #13
  %4 = getelementptr inbounds %struct.wm8505fb_info, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #13, !srcloc !10
  %6 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 12, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %10) #13
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_display_timings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_fb_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8505fb_set_par(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %26 [
    i32 32, label %7
    i32 16, label %6
  ]

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 11, %6 ], [ 16, %3 ]
  %9 = phi i32 [ 5, %6 ], [ 8, %3 ]
  %10 = phi i32 [ 6, %6 ], [ 8, %3 ]
  %11 = phi i32 [ 1, %6 ], [ 2, %3 ]
  %12 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 8
  store i32 %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 8, i32 1
  store i32 %9, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 8, i32 2
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 9
  store i32 %9, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 9, i32 1
  store i32 %10, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 9, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 10
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 10, i32 1
  store i32 %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 10, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  store i32 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, %11
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %7, %3
  tail call fastcc void @wm8505fb_set_timing(ptr noundef nonnull %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  %27 = getelementptr inbounds %struct.wm8505fb_info, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 16
  %30 = shl i32 %28, 8
  %31 = or i32 %30, %28
  %32 = or i32 %31, %29
  %33 = getelementptr inbounds %struct.wm8505fb_info, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #13, !srcloc !10
  br label %36

36:                                               ; preds = %26, %1
  %37 = phi i32 [ 0, %26 ], [ -22, %1 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8505fb_init_hw(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.wm8505fb_info, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ 0, %1 ], [ %7, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #13, !srcloc !10
  %7 = add nuw nsw i32 %4, 4
  %8 = icmp ult i32 %4, 508
  br i1 %8, label %3, label %9

9:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !13
  tail call void @arm_heavy_mb() #13
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !14
  tail call void @arm_heavy_mb() #13
  %14 = load i32, ptr %10, align 4
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !15
  tail call void @arm_heavy_mb() #13
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 796) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !16
  tail call void @arm_heavy_mb() #13
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %21 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  tail call void @arm_heavy_mb() #13
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !19
  tail call void @arm_heavy_mb() #13
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 15) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !20
  tail call void @arm_heavy_mb() #13
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 4) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !21
  tail call void @arm_heavy_mb() #13
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !22
  tail call void @arm_heavy_mb() #13
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 1) #13, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8505fb_setcolreg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #6 {
  %7 = icmp ugt i32 %0, 255
  br i1 %7, label %58, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = mul i32 %1, 19595
  %14 = mul i32 %2, 38470
  %15 = add i32 %14, %13
  %16 = mul i32 %3, 7471
  %17 = add i32 %15, %16
  %18 = lshr i32 %17, 16
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %18, %12 ], [ %3, %8 ]
  %21 = phi i32 [ %18, %12 ], [ %2, %8 ]
  %22 = phi i32 [ %18, %12 ], [ %1, %8 ]
  %23 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 2
  %26 = icmp ult i32 %0, 16
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %58

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 26
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8
  %32 = and i32 %22, 65535
  %33 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 16, %34
  %36 = lshr i32 %32, %35
  %37 = load i32, ptr %31, align 4
  %38 = shl i32 %36, %37
  %39 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9
  %40 = and i32 %21, 65535
  %41 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 16, %42
  %44 = lshr i32 %40, %43
  %45 = load i32, ptr %39, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %46, %38
  %48 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10
  %49 = and i32 %20, 65535
  %50 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = sub i32 16, %51
  %53 = lshr i32 %49, %52
  %54 = load i32, ptr %48, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %47, %55
  %57 = getelementptr i32, ptr %30, i32 %0
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %28, %19, %6
  %59 = phi i32 [ -22, %6 ], [ 0, %28 ], [ 1, %19 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8505fb_blank(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call fastcc void @wm8505fb_set_timing(ptr noundef %1)
  br label %9

5:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !23
  tail call void @arm_heavy_mb() #13
  %6 = getelementptr inbounds %struct.wm8505fb_info, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #13, !srcloc !10
  br label %9

9:                                                ; preds = %5, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8505fb_pan_display(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !24
  tail call void @arm_heavy_mb() #13
  %3 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wm8505fb_info, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !25
  tail call void @arm_heavy_mb() #13
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #13, !srcloc !10
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wmt_ge_fillrect(ptr noundef %0, ptr noundef %1) #7 {
  tail call void @sys_fillrect(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wmt_ge_copyarea(ptr noundef %0, ptr noundef %1) #7 {
  tail call void @sys_copyarea(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @wmt_ge_sync(ptr nocapture noundef readnone %0) #8 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8505fb_set_timing(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = add i32 %5, %4
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %8
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 23
  %21 = load i32, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !26
  tail call void @arm_heavy_mb() #13
  %22 = getelementptr inbounds %struct.wm8505fb_info, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !27
  tail call void @arm_heavy_mb() #13
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr i8, ptr %25, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %4) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !28
  tail call void @arm_heavy_mb() #13
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr i8, ptr %27, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %6) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !29
  tail call void @arm_heavy_mb() #13
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr i8, ptr %29, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %9) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !30
  tail call void @arm_heavy_mb() #13
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr i8, ptr %31, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %11) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !31
  tail call void @arm_heavy_mb() #13
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr i8, ptr %33, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %13) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !32
  tail call void @arm_heavy_mb() #13
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr i8, ptr %35, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %16) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr i8, ptr %37, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %19) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !34
  tail call void @arm_heavy_mb() #13
  %39 = load ptr, ptr %22, align 4
  %40 = getelementptr i8, ptr %39, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %21) #13, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  %41 = load ptr, ptr %22, align 4
  %42 = getelementptr i8, ptr %41, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 1) #13, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @contrast_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8505fb_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @contrast_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #13
  %9 = icmp ne i32 %8, 0
  %10 = load i32, ptr %5, align 4
  %11 = icmp ugt i32 %10, 255
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %48, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wm8505fb_info, ptr %7, i32 0, i32 2
  store i32 %10, ptr %14, align 4
  %15 = icmp eq ptr %7, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 6
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %39 [
    i32 32, label %20
    i32 16, label %19
  ]

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ 11, %19 ], [ 16, %16 ]
  %22 = phi i32 [ 5, %19 ], [ 8, %16 ]
  %23 = phi i32 [ 6, %19 ], [ 8, %16 ]
  %24 = phi i32 [ 1, %19 ], [ 2, %16 ]
  %25 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 8
  store i32 %21, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 8, i32 1
  store i32 %22, ptr %26, align 4
  %27 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 8, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 9
  store i32 %22, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 9, i32 1
  store i32 %23, ptr %29, align 4
  %30 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 9, i32 2
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 10
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 10, i32 1
  store i32 %22, ptr %32, align 4
  %33 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 10, i32 2
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 7, i32 5
  store i32 2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, %24
  %38 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 7, i32 9
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %20, %16
  call fastcc void @wm8505fb_set_timing(ptr noundef nonnull %7) #13
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  call void @arm_heavy_mb() #13
  %40 = load i32, ptr %14, align 4
  %41 = shl i32 %40, 16
  %42 = shl i32 %40, 8
  %43 = or i32 %42, %40
  %44 = or i32 %43, %41
  %45 = getelementptr inbounds %struct.wm8505fb_info, ptr %7, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %44) #13, !srcloc !10
  br label %48

48:                                               ; preds = %39, %13, %4
  %49 = phi i32 [ -22, %4 ], [ %3, %13 ], [ %3, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %49
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!9 = !{i64 2154440936}
!10 = !{i64 4968860}
!11 = !{i64 2154427623}
!12 = !{i64 2154418057}
!13 = !{i64 2154418392}
!14 = !{i64 2154418772}
!15 = !{i64 2154419137}
!16 = !{i64 2154419463}
!17 = !{i64 2154419793}
!18 = !{i64 2154420157}
!19 = !{i64 2154420518}
!20 = !{i64 2154420841}
!21 = !{i64 2154421159}
!22 = !{i64 2154421476}
!23 = !{i64 2154436836}
!24 = !{i64 2154434917}
!25 = !{i64 2154435267}
!26 = !{i64 2154423023}
!27 = !{i64 2154423349}
!28 = !{i64 2154423685}
!29 = !{i64 2154424017}
!30 = !{i64 2154424350}
!31 = !{i64 2154424686}
!32 = !{i64 2154425022}
!33 = !{i64 2154425354}
!34 = !{i64 2154425687}
!35 = !{i64 2154426017}
