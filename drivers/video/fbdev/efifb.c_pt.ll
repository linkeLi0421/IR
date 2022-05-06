; ModuleID = '/llk/IR/drivers/video/fbdev/efifb.c_pt.bc'
source_filename = "../drivers/video/fbdev/efifb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { ptr }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }

@__initcall__kmod_efifb__265_638_efifb_driver_init6 = internal global ptr @efifb_driver_init, section ".initcall6.init", align 4
@__pci_fixup_efifb_fixup_resources691 = internal constant %struct.pci_fixup { i16 -1, i16 -1, i32 3, i32 16, ptr @efifb_fixup_resources }, section ".pci_fixup_header", align 4
@efifb_driver = internal global %struct.platform_driver { ptr @efifb_probe, ptr @efifb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"efi-framebuffer\00", align 1
@num_registered_fb = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"efifb: a framebuffer is already registered\0A\00", align 1
@screen_info = external dso_local global %struct.screen_info, align 1
@pci_dev_disabled = internal unnamed_addr global i1 false, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"efifb\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\017efifb: invalid framebuffer address\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\016efifb: probing for efifb\0A\00", align 1
@efifb_fix = internal unnamed_addr global %struct.fb_fix_screeninfo { [16 x i8] c"EFI VGA\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, align 4
@bar_resource = internal unnamed_addr global ptr null, align 4
@bar_offset = internal unnamed_addr global i64 0, align 8
@efifb_pci_dev = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"BAR has moved, updating efifb address\0A\00", align 1
@efifb_defined = internal unnamed_addr global %struct.fb_var_screeninfo { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 32, i32 16, i32 4, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@request_mem_succeeded = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\014efifb: cannot reserve video memory at 0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\013efifb: video memory @ 0x%lx spans multiple EFI memory regions\0A\00", align 1
@mem_flags = internal unnamed_addr global i64 3, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"\013efifb: abort, cannot remap video memory 0x%x @ 0x%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"\016efifb: framebuffer at 0x%lx, using %dk, total %dk\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"\016efifb: mode is %dx%dx%d, linelength=%d, pages=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\016efifb: scrolling: redraw\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"\016efifb: %s: size=%d:%d:%d:%d, shift=%d:%d:%d:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Truecolor\00", align 1
@efifb_ops = internal constant %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efifb_setcolreg, ptr null, ptr null, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efifb_destroy, ptr null, ptr null }, align 4
@efifb_groups = internal global [2 x ptr] [ptr @efifb_group, ptr null], align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"\013efifb: cannot add sysfs attrs\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\013efifb: cannot allocate colormap\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"drivers/video/fbdev/efifb.c\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"\013efifb: cannot register framebuffer\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"base:\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"stride:\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"height:\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"width:\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"nowc\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@efi = external dso_local global %struct.efi, align 4
@efifb_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @efifb_attrs, ptr null }, align 4
@efifb_attrs = internal global [6 x ptr] [ptr @dev_attr_base, ptr @dev_attr_linelength, ptr @dev_attr_width, ptr @dev_attr_height, ptr @dev_attr_depth, ptr null], align 4
@dev_attr_base = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @base_show, ptr null }, align 4
@dev_attr_linelength = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @linelength_show, ptr null }, align 4
@dev_attr_width = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @width_show, ptr null }, align 4
@dev_attr_height = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @height_show, ptr null }, align 4
@dev_attr_depth = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @depth_show, ptr null }, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"linelength\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"BAR %d: assigned to efifb but device is disabled!\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"BAR %d: assigned to efifb\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_efifb__265_638_efifb_driver_init6, ptr @__pci_fixup_efifb_fixup_resources691], section "llvm.metadata"
@switch.table.efifb_probe = private unnamed_addr constant [3 x i32] [i32 2, i32 3, i32 1], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @efifb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @efifb_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @efifb_fixup_resources(ptr noundef %0) #1 {
  %2 = alloca i16, align 2
  %3 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 17), align 1
  %4 = zext i32 %3 to i64
  %5 = load ptr, ptr @efifb_pci_dev, align 4
  %6 = icmp ne ptr %5, null
  %7 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %8 = icmp ne i8 %7, 112
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %128, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %12 = zext i32 %11 to i64
  %13 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 33), align 1
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 34), align 1
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 %17, 32
  %19 = select i1 %15, i64 0, i64 %18
  %20 = or i64 %19, %12
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %128, label %22

22:                                               ; preds = %10
  %23 = add nsw i64 %4, -1
  %24 = add i64 %23, %20
  %25 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %22
  %30 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %20, %32
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = icmp ugt i64 %24, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %123, %108, %93, %78, %63, %34
  %40 = phi i32 [ 0, %34 ], [ 1, %63 ], [ 2, %78 ], [ 3, %93 ], [ 4, %108 ], [ 5, %123 ]
  %41 = phi ptr [ %30, %34 ], [ %59, %63 ], [ %74, %78 ], [ %89, %93 ], [ %104, %108 ], [ %119, %123 ]
  %42 = phi i64 [ %32, %34 ], [ %61, %63 ], [ %76, %78 ], [ %91, %93 ], [ %106, %108 ], [ %121, %123 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 0, ptr %2, align 2, !annotation !8
  store ptr %0, ptr @efifb_pci_dev, align 4
  %43 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #13
  %44 = load i16, ptr %2, align 2
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  store i1 true, ptr @pci_dev_disabled, align 1
  %48 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.33, i32 noundef %40) #14
  br label %52

49:                                               ; preds = %39
  %50 = sub i64 %20, %42
  store ptr %41, ptr @bar_resource, align 4
  store i64 %50, ptr @bar_offset, align 8
  %51 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.34, i32 noundef %40) #14
  br label %52

52:                                               ; preds = %49, %47
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  br label %128

53:                                               ; preds = %34, %29, %22
  %54 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 512
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %20, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ugt i64 %24, %66
  br i1 %67, label %68, label %39

68:                                               ; preds = %63, %58, %53
  %69 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 512
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %20, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = zext i32 %80 to i64
  %82 = icmp ugt i64 %24, %81
  br i1 %82, label %83, label %39

83:                                               ; preds = %78, %73, %68
  %84 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = zext i32 %90 to i64
  %92 = icmp ult i64 %20, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = zext i32 %95 to i64
  %97 = icmp ugt i64 %24, %96
  br i1 %97, label %98, label %39

98:                                               ; preds = %93, %88, %83
  %99 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 512
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = zext i32 %105 to i64
  %107 = icmp ult i64 %20, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = zext i32 %110 to i64
  %112 = icmp ugt i64 %24, %111
  br i1 %112, label %113, label %39

113:                                              ; preds = %108, %103, %98
  %114 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 512
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = zext i32 %120 to i64
  %122 = icmp ult i64 %20, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = zext i32 %125 to i64
  %127 = icmp ugt i64 %24, %126
  br i1 %127, label %128, label %39

128:                                              ; preds = %123, %118, %113, %52, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efifb_probe(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.efi_memory_desc_t, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %5 = load i32, ptr @num_registered_fb, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1) #14
  br label %341

9:                                                ; preds = %1
  %10 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %11 = icmp eq i8 %10, 112
  br i1 %11, label %12, label %341

12:                                               ; preds = %9
  %13 = load i1, ptr @pci_dev_disabled, align 1
  br i1 %13, label %341, label %14

14:                                               ; preds = %12
  %15 = call i32 @fb_get_options(ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %341

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store ptr %18, ptr %2, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %67, label %20

20:                                               ; preds = %17
  %21 = load i8, ptr %18, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %20
  %24 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.19) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %64, %23
  %27 = phi ptr [ %65, %64 ], [ %24, %23 ]
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %26
  call void @efifb_setup_from_dmi(ptr noundef nonnull @screen_info, ptr noundef nonnull %27) #13
  %31 = call i32 @strncmp(ptr noundef nonnull %27, ptr noundef nonnull dereferenceable(6) @.str.20, i32 noundef 5) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %27, i32 5
  %35 = call i32 @simple_strtoul(ptr noundef %34, ptr noundef null, i32 noundef 0) #13
  store i32 %35, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  br label %64

36:                                               ; preds = %30
  %37 = call i32 @strncmp(ptr noundef nonnull %27, ptr noundef nonnull dereferenceable(8) @.str.21, i32 noundef 7) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %27, i32 7
  %41 = call i32 @simple_strtoul(ptr noundef %40, ptr noundef null, i32 noundef 0) #13
  %42 = trunc i32 %41 to i16
  %43 = shl i16 %42, 2
  store i16 %43, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 20), align 1
  br label %64

44:                                               ; preds = %36
  %45 = call i32 @strncmp(ptr noundef nonnull %27, ptr noundef nonnull dereferenceable(8) @.str.22, i32 noundef 7) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %27, i32 7
  %49 = call i32 @simple_strtoul(ptr noundef %48, ptr noundef null, i32 noundef 0) #13
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 14), align 1
  br label %64

51:                                               ; preds = %44
  %52 = call i32 @strncmp(ptr noundef nonnull %27, ptr noundef nonnull dereferenceable(7) @.str.23, i32 noundef 6) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %27, i32 6
  %56 = call i32 @simple_strtoul(ptr noundef %55, ptr noundef null, i32 noundef 0) #13
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 13), align 1
  br label %64

58:                                               ; preds = %51
  %59 = call i32 @strcmp(ptr noundef nonnull %27, ptr noundef nonnull dereferenceable(5) @.str.24) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr @mem_flags, align 8
  %63 = and i64 %62, -3
  store i64 %63, ptr @mem_flags, align 8
  br label %64

64:                                               ; preds = %61, %58, %54, %47, %39, %33, %26
  %65 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.19) #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %26

67:                                               ; preds = %64, %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %68 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 20), align 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %341, label %70

70:                                               ; preds = %67
  %71 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 15), align 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i16 32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 15), align 1
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 31), align 1
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i16 1, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 31), align 1
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 33), align 1
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  %85 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 34), align 1
  %86 = icmp ne i32 %85, 0
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %341

90:                                               ; preds = %81, %78
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %92 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 25), align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i8 8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 25), align 1
  store i8 0, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 26), align 1
  store i8 8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 23), align 1
  store i8 8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 24), align 1
  store i8 8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 21), align 1
  store i8 16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 22), align 1
  store i8 8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 27), align 1
  store i8 24, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 28), align 1
  br label %95

95:                                               ; preds = %94, %90
  %96 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  store i32 %96, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %97 = load ptr, ptr @bar_resource, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %114, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %97, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, ptr @bar_offset, align 8
  %103 = add i64 %102, %101
  %104 = zext i32 %96 to i64
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %99
  %107 = load ptr, ptr @efifb_pci_dev, align 4
  %108 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.5) #14
  %109 = load ptr, ptr @bar_resource, align 4
  %110 = load i32, ptr %109, align 4
  %111 = load i64, ptr @bar_offset, align 8
  %112 = trunc i64 %111 to i32
  %113 = add i32 %110, %112
  store i32 %113, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  br label %114

114:                                              ; preds = %106, %99, %95
  %115 = phi i32 [ %113, %106 ], [ %96, %99 ], [ %96, %95 ]
  %116 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 15), align 1
  %117 = zext i16 %116 to i32
  store i32 %117, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 6), align 4
  %118 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 13), align 1
  %119 = zext i16 %118 to i32
  store i32 %119, ptr @efifb_defined, align 4
  %120 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 14), align 1
  %121 = zext i16 %120 to i32
  store i32 %121, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 1), align 4
  %122 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 20), align 1
  %123 = zext i16 %122 to i32
  store i32 %123, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 9), align 4
  %124 = mul nuw i32 %123, %121
  %125 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 17), align 1
  %126 = call i32 @llvm.umax.i32(i32 %125, i32 %124)
  %127 = shl i32 %124, 1
  %128 = call i32 @llvm.umin.i32(i32 %127, i32 %126)
  %129 = and i32 %128, 4095
  %130 = icmp eq i32 %129, 0
  %131 = sub nuw nsw i32 4096, %129
  %132 = select i1 %130, i32 0, i32 %131
  %133 = add i32 %132, %128
  store i32 %133, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 2), align 4
  %134 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %115, i32 noundef %133, ptr noundef nonnull @.str.2, i32 noundef 0) #13
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %114
  store i1 true, ptr @request_mem_succeeded, align 1
  br label %140

137:                                              ; preds = %114
  %138 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %138) #14
  br label %140

140:                                              ; preds = %137, %136
  %141 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %142 = call ptr @framebuffer_alloc(i32 noundef 64, ptr noundef %141) #13
  %143 = icmp eq ptr %142, null
  br i1 %143, label %336, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %142, ptr %145, align 8
  %146 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 29
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 26
  store ptr %147, ptr %148, align 4
  store ptr null, ptr %146, align 4
  %149 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %150 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %149, i32 noundef 3520, i32 noundef 12) #15
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 30
  store ptr null, ptr %153, align 4
  br label %334

154:                                              ; preds = %144
  store i32 1, ptr %150, align 8
  %155 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 30
  store ptr %150, ptr %155, align 4
  %156 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %157 = getelementptr inbounds %struct.apertures_struct, ptr %150, i32 0, i32 1
  store i32 %156, ptr %157, align 4
  %158 = load ptr, ptr %155, align 4
  %159 = getelementptr inbounds %struct.apertures_struct, ptr %158, i32 2
  store i32 %133, ptr %159, align 4
  %160 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %161 = and i32 %160, 16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %191, label %163

163:                                              ; preds = %154
  %164 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %165 = zext i32 %164 to i64
  %166 = call i32 @efi_mem_desc_lookup(i64 noundef %165, ptr noundef nonnull %4) #13
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %191

168:                                              ; preds = %163
  %169 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %170 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 2), align 4
  %171 = add i32 %170, %169
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %4, i32 0, i32 2
  %174 = load i64, ptr %173, align 8
  %175 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %4, i32 0, i32 4
  %176 = load i64, ptr %175, align 8
  %177 = shl i64 %176, 12
  %178 = add i64 %177, %174
  %179 = icmp ult i64 %178, %172
  br i1 %179, label %180, label %182

180:                                              ; preds = %168
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %169) #14
  br label %334

182:                                              ; preds = %168
  %183 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %4, i32 0, i32 5
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 15
  store i64 %185, ptr %183, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = load i64, ptr @mem_flags, align 8
  %189 = or i64 %188, 12
  %190 = and i64 %189, %185
  store i64 %190, ptr @mem_flags, align 8
  br label %191

191:                                              ; preds = %187, %182, %163, %154
  %192 = load i64, ptr @mem_flags, align 8
  %193 = and i64 %192, 2
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %197 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 2), align 4
  %198 = call ptr @ioremap_wc(i32 noundef %196, i32 noundef %197) #13
  %199 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 24
  store ptr %198, ptr %199, align 4
  br label %227

200:                                              ; preds = %191
  %201 = and i64 %192, 1
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %200
  %204 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %205 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 2), align 4
  %206 = call ptr @ioremap(i32 noundef %204, i32 noundef %205) #13
  %207 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 24
  store ptr %206, ptr %207, align 4
  br label %227

208:                                              ; preds = %200
  %209 = and i64 %192, 4
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %208
  %212 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %213 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 2), align 4
  %214 = call ptr @memremap(i32 noundef %212, i32 noundef %213, i32 noundef 2) #13
  %215 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 24
  store ptr %214, ptr %215, align 4
  br label %227

216:                                              ; preds = %208
  %217 = and i64 %192, 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 24
  %221 = load ptr, ptr %220, align 4
  br label %227

222:                                              ; preds = %216
  %223 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %224 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 2), align 4
  %225 = call ptr @memremap(i32 noundef %223, i32 noundef %224, i32 noundef 1) #13
  %226 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 24
  store ptr %225, ptr %226, align 4
  br label %227

227:                                              ; preds = %222, %219, %211, %203, %195
  %228 = phi ptr [ %221, %219 ], [ %206, %203 ], [ %225, %222 ], [ %214, %211 ], [ %198, %195 ]
  %229 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 24
  %230 = icmp eq ptr %228, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 2), align 4
  %233 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %232, i32 noundef %233) #14
  br label %334

235:                                              ; preds = %227
  %236 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  %237 = lshr i32 %133, 10
  %238 = lshr i32 %126, 10
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %236, i32 noundef %237, i32 noundef %238) #14
  %240 = load i32, ptr @efifb_defined, align 4
  %241 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 1), align 4
  %242 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 6), align 4
  %243 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 9), align 4
  %244 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 31), align 1
  %245 = zext i16 %244 to i32
  %246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %240, i32 noundef %241, i32 noundef %242, i32 noundef %243, i32 noundef %245) #14
  %247 = load i32, ptr @efifb_defined, align 4
  store i32 %247, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 2), align 4
  %248 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 2), align 4
  %249 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 9), align 4
  %250 = udiv i32 %248, %249
  store i32 %250, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 3), align 4
  %251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  %252 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 1), align 4
  store i32 %252, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 3), align 4
  %253 = load i32, ptr @efifb_defined, align 4
  %254 = udiv i32 10000000, %253
  %255 = mul i32 %254, 1000
  %256 = udiv i32 %255, %252
  store i32 %256, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 17), align 4
  %257 = lshr i32 %253, 3
  %258 = and i32 %257, 248
  store i32 %258, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 18), align 4
  store i32 %258, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 22), align 4
  %259 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 22), align 1
  %260 = zext i8 %259 to i32
  store i32 %260, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 8), align 4
  %261 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 21), align 1
  %262 = zext i8 %261 to i32
  store i32 %262, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 8, i32 1), align 4
  %263 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 24), align 1
  %264 = zext i8 %263 to i32
  store i32 %264, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 9), align 4
  %265 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 23), align 1
  %266 = zext i8 %265 to i32
  store i32 %266, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 9, i32 1), align 4
  %267 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 26), align 1
  %268 = zext i8 %267 to i32
  store i32 %268, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 10), align 4
  %269 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 25), align 1
  %270 = zext i8 %269 to i32
  store i32 %270, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 10, i32 1), align 4
  %271 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 28), align 1
  %272 = zext i8 %271 to i32
  store i32 %272, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 11), align 4
  %273 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 27), align 1
  %274 = zext i8 %273 to i32
  store i32 %274, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 11, i32 1), align 4
  %275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %274, i32 noundef %262, i32 noundef %266, i32 noundef %270, i32 noundef %272, i32 noundef %260, i32 noundef %264, i32 noundef %268) #14
  store i16 0, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 7), align 2
  store i16 0, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 8), align 4
  %276 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 20
  store ptr @efifb_ops, ptr %276, align 4
  %277 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %277, ptr noundef nonnull align 4 dereferenceable(160) @efifb_defined, i32 160, i1 false)
  %278 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %278, ptr noundef nonnull align 4 dereferenceable(68) @efifb_fix, i32 68, i1 false)
  %279 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 2
  store i32 524288, ptr %279, align 4
  %280 = load i32, ptr @efifb_defined, align 4
  %281 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @efifb_defined, i32 0, i32 1), align 4
  %282 = call i32 @drm_get_panel_orientation_quirk(i32 noundef %280, i32 noundef %281) #13
  %283 = add i32 %282, -1
  %284 = icmp ult i32 %283, 3
  br i1 %284, label %285, label %288

285:                                              ; preds = %235
  %286 = getelementptr inbounds [3 x i32], ptr @switch.table.efifb_probe, i32 0, i32 %283
  %287 = load i32, ptr %286, align 4
  br label %288

288:                                              ; preds = %285, %235
  %289 = phi i32 [ 0, %235 ], [ %287, %285 ]
  %290 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 3
  store i32 %289, ptr %290, align 4
  %291 = call i32 @sysfs_create_groups(ptr noundef %141, ptr noundef nonnull @efifb_groups) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %288
  %294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %326

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 12
  %297 = call i32 @fb_alloc_cmap(ptr noundef %296, i32 noundef 256, i32 noundef 0) #13
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %324

301:                                              ; preds = %295
  %302 = load ptr, ptr @efifb_pci_dev, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %309, label %304

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.pci_dev, ptr %302, i32 0, i32 44
  %306 = call i32 @__pm_runtime_resume(ptr noundef %305, i32 noundef 4) #13
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %309, !prof !9

308:                                              ; preds = %304
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 589, i32 noundef 9, ptr noundef null) #13
  br label %309

309:                                              ; preds = %308, %304, %301
  %310 = call i32 @register_framebuffer(ptr noundef nonnull %142) #13
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  %314 = load ptr, ptr @efifb_pci_dev, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %323, label %320

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct.fb_info, ptr %142, i32 0, i32 1
  %318 = load i32, ptr %317, align 4
  %319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %318, ptr noundef %278) #14
  br label %341

320:                                              ; preds = %312
  %321 = getelementptr inbounds %struct.pci_dev, ptr %314, i32 0, i32 44
  %322 = call i32 @__pm_runtime_idle(ptr noundef %321, i32 noundef 5) #13
  br label %323

323:                                              ; preds = %320, %312
  call void @fb_dealloc_cmap(ptr noundef %296) #13
  br label %324

324:                                              ; preds = %323, %299
  %325 = phi i32 [ %297, %299 ], [ %310, %323 ]
  call void @sysfs_remove_groups(ptr noundef %141, ptr noundef nonnull @efifb_groups) #13
  br label %326

326:                                              ; preds = %324, %293
  %327 = phi i32 [ %291, %293 ], [ %325, %324 ]
  %328 = load i64, ptr @mem_flags, align 8
  %329 = and i64 %328, 3
  %330 = icmp eq i64 %329, 0
  %331 = load ptr, ptr %229, align 4
  br i1 %330, label %333, label %332

332:                                              ; preds = %326
  call void @iounmap(ptr noundef %331) #13
  br label %334

333:                                              ; preds = %326
  call void @memunmap(ptr noundef %331) #13
  br label %334

334:                                              ; preds = %333, %332, %231, %180, %152
  %335 = phi i32 [ %327, %332 ], [ %327, %333 ], [ -5, %231 ], [ -5, %180 ], [ -12, %152 ]
  call void @framebuffer_release(ptr noundef nonnull %142) #13
  br label %336

336:                                              ; preds = %334, %140
  %337 = phi i32 [ %335, %334 ], [ -12, %140 ]
  %338 = load i1, ptr @request_mem_succeeded, align 1
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @efifb_fix, i32 0, i32 1), align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %340, i32 noundef %126) #13
  br label %341

341:                                              ; preds = %339, %336, %316, %88, %67, %14, %12, %9, %7
  %342 = phi i32 [ -22, %7 ], [ 0, %316 ], [ -19, %88 ], [ -19, %12 ], [ -19, %9 ], [ -19, %14 ], [ -19, %67 ], [ %337, %339 ], [ %337, %336 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %342
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efifb_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_framebuffer(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @sysfs_remove_groups(ptr noundef %4, ptr noundef nonnull @efifb_groups) #13
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
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_mem_desc_lookup(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_get_panel_orientation_quirk(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efifb_setup_from_dmi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @efifb_setcolreg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #9 {
  %7 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 12, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = icmp ult i32 %0, 16
  br i1 %11, label %12, label %39

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8
  %14 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 16, %15
  %17 = lshr i32 %1, %16
  %18 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9
  %19 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 16, %20
  %22 = lshr i32 %2, %21
  %23 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10
  %24 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 16, %25
  %27 = lshr i32 %3, %26
  %28 = load i32, ptr %13, align 4
  %29 = shl i32 %17, %28
  %30 = load i32, ptr %18, align 4
  %31 = shl i32 %22, %30
  %32 = or i32 %31, %29
  %33 = load i32, ptr %23, align 4
  %34 = shl i32 %27, %33
  %35 = or i32 %32, %34
  %36 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 26
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i32, ptr %37, i32 %0
  store i32 %35, ptr %38, align 4
  br label %39

39:                                               ; preds = %12, %10, %6
  %40 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %10 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @efifb_destroy(ptr noundef %0) #1 {
  %2 = load ptr, ptr @efifb_pci_dev, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #13
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = load i64, ptr @mem_flags, align 8
  %13 = and i64 %12, 3
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @iounmap(ptr noundef nonnull %9) #13
  br label %17

16:                                               ; preds = %11
  tail call void @memunmap(ptr noundef nonnull %9) #13
  br label %17

17:                                               ; preds = %16, %15, %7
  %18 = load i1, ptr @request_mem_succeeded, align 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.apertures_struct, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.apertures_struct, ptr %21, i32 2
  %25 = load i32, ptr %24, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %23, i32 noundef %25) #13
  br label %26

26:                                               ; preds = %19, %17
  %27 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %27) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @base_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linelength_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 20), align 1
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @width_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 13), align 1
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @height_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 14), align 1
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @depth_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 15), align 1
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
