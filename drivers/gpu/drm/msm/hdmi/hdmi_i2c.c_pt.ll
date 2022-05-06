; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_i2c_adapter = type { %struct.i2c_adapter, ptr, i8, %struct.wait_queue_head }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.75, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.81, ptr, i32, ptr, i8, i32 }
%struct.anon.75 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.81 = type { i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@msm_hdmi_i2c_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"&hdmi_i2c->ddc_event\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [13 x i8] c"msm hdmi i2c\00", align 1
@msm_hdmi_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @msm_hdmi_i2c_xfer, ptr null, ptr null, ptr null, ptr @msm_hdmi_i2c_func, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@msm_hdmi_i2c_xfer.nack = internal unnamed_addr constant [4 x i32] [i32 4096, i32 8192, i32 16384, i32 32768], align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/msm/hdmi/hdmi_i2c.c\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"DDC timeout: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"sw_status=%08x, hw_status=%08x, int_ctrl=%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ddc_status=%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"*ERROR* timeout waiting for DDC\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_i2c_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 532
  %11 = tail call i32 @msm_readl(ptr noundef %10) #9
  %12 = and i32 %11, 5
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  store i8 1, ptr %2, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 532
  tail call void @msm_writel(i32 noundef 2, ptr noundef %16) #9
  br label %17

17:                                               ; preds = %14, %5
  %18 = load i8, ptr %2, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %0, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %21, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %22

22:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_i2c_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @i2c_del_adapter(ptr noundef %0) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_hdmi_i2c_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 680) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %3, i32 0, i32 1
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %3, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @msm_hdmi_i2c_init.__key) #9
  store ptr @__this_module, ptr %3, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 1
  store i32 8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(13) %9, ptr noundef nonnull align 1 dereferenceable(13) @.str.1, i32 13, i1 false)
  %10 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  store ptr @msm_hdmi_i2c_algorithm, ptr %14, align 8
  %15 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %3) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  tail call void @i2c_del_adapter(ptr noundef nonnull %3) #9
  tail call void @kfree(ptr noundef nonnull %3) #9
  %18 = inttoptr i32 %15 to ptr
  br label %19

19:                                               ; preds = %17, %5, %1
  %20 = phi ptr [ %3, %5 ], [ %18, %17 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_i2c_xfer(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [4 x i32], align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %9 = tail call i32 @llvm.smin.i32(i32 %2, i32 4)
  %10 = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @msm_readl(ptr noundef %11) #9
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 105, i32 noundef 9, ptr noundef null) #9
  br label %16

16:                                               ; preds = %15, %3
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %242, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.hdmi, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 524
  tail call void @msm_writel(i32 noundef 8, ptr noundef %22) #9
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr i8, ptr %23, i32 524
  tail call void @msm_writel(i32 noundef 2, ptr noundef %24) #9
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr i8, ptr %25, i32 544
  tail call void @msm_writel(i32 noundef 655362, ptr noundef %26) #9
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr i8, ptr %27, i32 548
  tail call void @msm_writel(i32 noundef -16777216, ptr noundef %28) #9
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr i8, ptr %29, i32 636
  tail call void @msm_writel(i32 noundef 65563, ptr noundef %30) #9
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.hdmi, ptr %31, i32 0, i32 7
  br label %34

34:                                               ; preds = %34, %18
  %35 = phi i32 [ 65535, %18 ], [ %36, %34 ]
  %36 = add nsw i32 %35, -1
  %37 = load ptr, ptr %33, align 4
  %38 = getelementptr i8, ptr %37, i32 532
  tail call void @msm_writel(i32 noundef 6, ptr noundef %38) #9
  %39 = load ptr, ptr %33, align 4
  %40 = getelementptr i8, ptr %39, i32 532
  %41 = tail call i32 @msm_readl(ptr noundef %40) #9
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  %44 = icmp ne i32 %36, 0
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %34, label %46

46:                                               ; preds = %34
  br i1 %44, label %50, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %49, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  br label %242

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %0, i32 0, i32 2
  store i8 0, ptr %51, align 4
  %52 = icmp sgt i32 %2, 0
  br i1 %52, label %53, label %125

53:                                               ; preds = %50
  %54 = add i32 %9, -1
  %55 = call i32 @llvm.smax.i32(i32 %9, i32 1)
  br label %56

56:                                               ; preds = %107, %53
  %57 = phi i32 [ 0, %53 ], [ %123, %107 ]
  %58 = phi i32 [ 0, %53 ], [ %110, %107 ]
  %59 = getelementptr %struct.i2c_msg, ptr %1, i32 %57
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = getelementptr %struct.i2c_msg, ptr %1, i32 %57, i32 1
  %63 = load i16, ptr %62, align 2
  %64 = shl nuw nsw i32 %61, 9
  %65 = shl i16 %63, 8
  %66 = and i16 %65, 256
  %67 = zext i16 %66 to i32
  %68 = and i32 %64, 65024
  %69 = or i32 %68, %67
  %70 = icmp eq i32 %57, 0
  %71 = or i32 %69, -2147483648
  %72 = select i1 %70, i32 %71, i32 %69
  %73 = load ptr, ptr %10, align 4
  %74 = getelementptr i8, ptr %73, i32 568
  tail call void @msm_writel(i32 noundef %72, ptr noundef %74) #9
  %75 = add i32 %58, 1
  %76 = getelementptr [4 x i32], ptr %4, i32 0, i32 %57
  store i32 %75, ptr %76, align 4
  %77 = load i16, ptr %62, align 2
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  %80 = getelementptr %struct.i2c_msg, ptr %1, i32 %57, i32 2
  %81 = load i16, ptr %80, align 4
  br i1 %79, label %82, label %86

82:                                               ; preds = %56
  %83 = icmp eq i16 %81, 0
  br i1 %83, label %107, label %84

84:                                               ; preds = %82
  %85 = getelementptr %struct.i2c_msg, ptr %1, i32 %57, i32 3
  br label %89

86:                                               ; preds = %56
  %87 = zext i16 %81 to i32
  %88 = add i32 %75, %87
  br label %107

89:                                               ; preds = %89, %84
  %90 = phi i32 [ 0, %84 ], [ %100, %89 ]
  %91 = phi i32 [ %75, %84 ], [ %99, %89 ]
  %92 = load ptr, ptr %85, align 4
  %93 = getelementptr i8, ptr %92, i32 %90
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = load ptr, ptr %10, align 4
  %98 = getelementptr i8, ptr %97, i32 568
  tail call void @msm_writel(i32 noundef %96, ptr noundef %98) #9
  %99 = add i32 %91, 1
  %100 = add nuw nsw i32 %90, 1
  %101 = load i16, ptr %80, align 4
  %102 = zext i16 %101 to i32
  %103 = icmp ult i32 %100, %102
  br i1 %103, label %89, label %104

104:                                              ; preds = %89
  %105 = load i16, ptr %62, align 2
  %106 = and i16 %105, 1
  br label %107

107:                                              ; preds = %104, %86, %82
  %108 = phi i16 [ %106, %104 ], [ 1, %86 ], [ 0, %82 ]
  %109 = phi i16 [ %101, %104 ], [ %81, %86 ], [ 0, %82 ]
  %110 = phi i32 [ %99, %104 ], [ %88, %86 ], [ %75, %82 ]
  %111 = zext i16 %109 to i32
  %112 = shl nuw i32 %111, 16
  %113 = and i32 %112, 16711680
  %114 = zext i16 %108 to i32
  %115 = icmp eq i32 %57, %54
  %116 = select i1 %115, i32 12288, i32 4096
  %117 = or i32 %116, %114
  %118 = or i32 %117, %113
  %119 = shl i32 %57, 2
  %120 = add nuw nsw i32 %119, 552
  %121 = load ptr, ptr %10, align 4
  %122 = getelementptr i8, ptr %121, i32 %120
  tail call void @msm_writel(i32 noundef %118, ptr noundef %122) #9
  %123 = add nuw nsw i32 %57, 1
  %124 = icmp eq i32 %123, %55
  br i1 %124, label %125, label %56

125:                                              ; preds = %107, %50
  %126 = shl i32 %9, 20
  %127 = add i32 %126, 3145728
  %128 = and i32 %127, 3145728
  %129 = or i32 %128, 1
  %130 = load ptr, ptr %10, align 4
  %131 = getelementptr i8, ptr %130, i32 524
  tail call void @msm_writel(i32 noundef %129, ptr noundef %131) #9
  %132 = load i8, ptr %51, align 4, !range !8
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %192

134:                                              ; preds = %125
  %135 = load ptr, ptr %6, align 8
  %136 = getelementptr inbounds %struct.hdmi, ptr %135, i32 0, i32 7
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %137, i32 532
  %139 = tail call i32 @msm_readl(ptr noundef %138) #9
  %140 = and i32 %139, 5
  %141 = icmp eq i32 %140, 5
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  store i8 1, ptr %51, align 4
  %143 = load ptr, ptr %136, align 4
  %144 = getelementptr i8, ptr %143, i32 532
  tail call void @msm_writel(i32 noundef 2, ptr noundef %144) #9
  br label %145

145:                                              ; preds = %142, %134
  %146 = load i8, ptr %51, align 4
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %192

148:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #9
  %149 = getelementptr inbounds %struct.hdmi_i2c_adapter, ptr %0, i32 0, i32 3
  br label %150

150:                                              ; preds = %175, %148
  %151 = phi i32 [ 25, %148 ], [ %176, %175 ]
  %152 = call i32 @prepare_to_wait_event(ptr noundef %149, ptr noundef nonnull %5, i32 noundef 2) #9
  %153 = load i8, ptr %51, align 4, !range !8
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load ptr, ptr %6, align 8
  %157 = getelementptr inbounds %struct.hdmi, ptr %156, i32 0, i32 7
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 532
  %160 = call i32 @msm_readl(ptr noundef %159) #9
  %161 = and i32 %160, 5
  %162 = icmp eq i32 %161, 5
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  store i8 1, ptr %51, align 4
  %164 = load ptr, ptr %157, align 4
  %165 = getelementptr i8, ptr %164, i32 532
  call void @msm_writel(i32 noundef 2, ptr noundef %165) #9
  br label %166

166:                                              ; preds = %163, %155, %150
  %167 = load i8, ptr %51, align 4, !range !8
  %168 = icmp ne i8 %167, 0
  %169 = xor i1 %168, true
  %170 = icmp ne i32 %151, 0
  %171 = select i1 %169, i1 true, i1 %170
  %172 = select i1 %171, i32 %151, i32 1
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %168, i1 true, i1 %173
  br i1 %174, label %177, label %175

175:                                              ; preds = %166
  %176 = call i32 @schedule_timeout(i32 noundef %172) #9
  br label %150

177:                                              ; preds = %166
  call void @finish_wait(ptr noundef %149, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  %178 = icmp slt i32 %172, 1
  br i1 %178, label %179, label %192

179:                                              ; preds = %177
  %180 = select i1 %173, i32 -110, i32 %172
  %181 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %182, ptr noundef nonnull @.str.3, i32 noundef %180) #11
  %183 = load ptr, ptr %10, align 4
  %184 = getelementptr i8, ptr %183, i32 536
  %185 = call i32 @msm_readl(ptr noundef %184) #9
  %186 = load ptr, ptr %10, align 4
  %187 = getelementptr i8, ptr %186, i32 540
  %188 = call i32 @msm_readl(ptr noundef %187) #9
  %189 = load ptr, ptr %10, align 4
  %190 = getelementptr i8, ptr %189, i32 532
  %191 = call i32 @msm_readl(ptr noundef %190) #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %185, i32 noundef %188, i32 noundef %191) #9
  br label %242

192:                                              ; preds = %177, %145, %125
  %193 = load ptr, ptr %10, align 4
  %194 = getelementptr i8, ptr %193, i32 536
  %195 = call i32 @msm_readl(ptr noundef %194) #9
  br i1 %52, label %196, label %242

196:                                              ; preds = %192
  %197 = call i32 @llvm.smax.i32(i32 %9, i32 1)
  br label %198

198:                                              ; preds = %239, %196
  %199 = phi i32 [ %240, %239 ], [ 0, %196 ]
  %200 = getelementptr %struct.i2c_msg, ptr %1, i32 %199, i32 1
  %201 = load i16, ptr %200, align 2
  %202 = and i16 %201, 1
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %239, label %204

204:                                              ; preds = %198
  %205 = getelementptr [4 x i32], ptr @msm_hdmi_i2c_xfer.nack, i32 0, i32 %199
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, %195
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %238

209:                                              ; preds = %204
  %210 = getelementptr [4 x i32], ptr %4, i32 0, i32 %199
  %211 = load i32, ptr %210, align 4
  %212 = shl i32 %211, 16
  %213 = and i32 %212, 16711680
  %214 = or i32 %213, -2147483647
  %215 = load ptr, ptr %10, align 4
  %216 = getelementptr i8, ptr %215, i32 568
  call void @msm_writel(i32 noundef %214, ptr noundef %216) #9
  %217 = load ptr, ptr %10, align 4
  %218 = getelementptr i8, ptr %217, i32 568
  %219 = call i32 @msm_readl(ptr noundef %218) #9
  %220 = getelementptr %struct.i2c_msg, ptr %1, i32 %199, i32 2
  %221 = load i16, ptr %220, align 4
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %239, label %223

223:                                              ; preds = %209
  %224 = getelementptr %struct.i2c_msg, ptr %1, i32 %199, i32 3
  br label %225

225:                                              ; preds = %225, %223
  %226 = phi i32 [ 0, %223 ], [ %234, %225 ]
  %227 = load ptr, ptr %10, align 4
  %228 = getelementptr i8, ptr %227, i32 568
  %229 = call i32 @msm_readl(ptr noundef %228) #9
  %230 = lshr i32 %229, 8
  %231 = trunc i32 %230 to i8
  %232 = load ptr, ptr %224, align 4
  %233 = getelementptr i8, ptr %232, i32 %226
  store i8 %231, ptr %233, align 1
  %234 = add nuw nsw i32 %226, 1
  %235 = load i16, ptr %220, align 4
  %236 = zext i16 %235 to i32
  %237 = icmp ult i32 %234, %236
  br i1 %237, label %225, label %239

238:                                              ; preds = %204
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %195) #9
  br label %242

239:                                              ; preds = %225, %209, %198
  %240 = add nuw nsw i32 %199, 1
  %241 = icmp eq i32 %240, %197
  br i1 %241, label %242, label %198

242:                                              ; preds = %239, %238, %192, %179, %47, %16
  %243 = phi i32 [ %180, %179 ], [ 0, %16 ], [ %199, %238 ], [ -110, %47 ], [ 0, %192 ], [ %197, %239 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %243
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @msm_hdmi_i2c_func(ptr nocapture noundef readnone %0) #4 {
  ret i32 251592713
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
