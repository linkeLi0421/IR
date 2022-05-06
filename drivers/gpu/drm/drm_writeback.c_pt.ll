; ModuleID = '/llk/IR/drivers/gpu/drm/drm_writeback.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_writeback.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_connector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_connector_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_connector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_prepare_job:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_prepare_job\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_prepare_job:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_queue_job:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_queue_job\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_queue_job:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_cleanup_job:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_cleanup_job\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_cleanup_job:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_signal_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_signal_completion\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_signal_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_get_out_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_get_out_fence\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_get_out_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.71 = type { i32, ptr }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.74, i64, i64, i32, %struct.kref, i32 }
%union.anon.74 = type { i64 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@drm_writeback_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @drm_encoder_cleanup, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [16 x i8] c"CONNECTOR:%d-%s\00", align 1
@__kstrtab_drm_writeback_connector_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_connector_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_connector_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_connector_init to i32), ptr @__kstrtab_drm_writeback_connector_init, ptr @__kstrtabns_drm_writeback_connector_init }, section "___ksymtab+drm_writeback_connector_init", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_writeback.c\00", align 1
@__kstrtab_drm_writeback_prepare_job = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_prepare_job = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_prepare_job = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_prepare_job to i32), ptr @__kstrtab_drm_writeback_prepare_job, ptr @__kstrtabns_drm_writeback_prepare_job }, section "___ksymtab+drm_writeback_prepare_job", align 4
@__kstrtab_drm_writeback_queue_job = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_queue_job = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_queue_job = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_queue_job to i32), ptr @__kstrtab_drm_writeback_queue_job, ptr @__kstrtabns_drm_writeback_queue_job }, section "___ksymtab+drm_writeback_queue_job", align 4
@__kstrtab_drm_writeback_cleanup_job = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_cleanup_job = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_cleanup_job = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_cleanup_job to i32), ptr @__kstrtab_drm_writeback_cleanup_job, ptr @__kstrtabns_drm_writeback_cleanup_job }, section "___ksymtab+drm_writeback_cleanup_job", align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_drm_writeback_signal_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_signal_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_signal_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_signal_completion to i32), ptr @__kstrtab_drm_writeback_signal_completion, ptr @__kstrtabns_drm_writeback_signal_completion }, section "___ksymtab+drm_writeback_signal_completion", align 4
@drm_writeback_fence_ops = internal constant %struct.dma_fence_ops { i8 0, ptr @drm_writeback_fence_get_driver_name, ptr @drm_writeback_fence_get_timeline_name, ptr @drm_writeback_fence_enable_signaling, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_writeback_get_out_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_get_out_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_get_out_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_get_out_fence to i32), ptr @__kstrtab_drm_writeback_get_out_fence, ptr @__kstrtabns_drm_writeback_get_out_fence }, section "___ksymtab+drm_writeback_get_out_fence", align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"WRITEBACK_FB_ID\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"WRITEBACK_PIXEL_FORMATS\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"WRITEBACK_OUT_FENCE_PTR\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_drm_writeback_cleanup_job, ptr @__ksymtab_drm_writeback_connector_init, ptr @__ksymtab_drm_writeback_get_out_fence, ptr @__ksymtab_drm_writeback_prepare_job, ptr @__ksymtab_drm_writeback_queue_job, ptr @__ksymtab_drm_writeback_signal_completion], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_writeback_connector_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 85
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call ptr @drm_property_create_object(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.2, i32 noundef -67372037) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %73, label %13

13:                                               ; preds = %10
  store ptr %11, ptr %7, align 4
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 86
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef -2147483628, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %73, label %21

21:                                               ; preds = %18
  store ptr %19, ptr %15, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 87
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.4, i64 noundef 0, i64 noundef -1) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %73, label %29

29:                                               ; preds = %26
  store ptr %27, ptr %23, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = shl i32 %5, 2
  %32 = tail call ptr @drm_property_create_blob(ptr noundef %0, i32 noundef %31, ptr noundef %4) #7
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = ptrtoint ptr %32 to i32
  br label %73

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 1
  %38 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 1, i32 11
  store ptr %3, ptr %38, align 4
  %39 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef %37, ptr noundef nonnull @drm_writeback_encoder_funcs, i32 noundef 5, ptr noundef null) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 12
  store i8 0, ptr %42, align 8
  %43 = tail call i32 @drm_connector_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 18) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = tail call i32 @drm_connector_attach_encoder(ptr noundef %1, ptr noundef %37) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 4
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 4, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 3
  store i32 0, ptr %51, align 4
  %52 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #7
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 5
  store i32 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 6
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 8
  %57 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %56, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %58, ptr noundef %60)
  %62 = load ptr, ptr %23, align 4
  tail call void @drm_object_attach_property(ptr noundef %57, ptr noundef %62, i64 noundef 0) #7
  %63 = load ptr, ptr %7, align 4
  tail call void @drm_object_attach_property(ptr noundef %57, ptr noundef %63, i64 noundef 0) #7
  %64 = load ptr, ptr %15, align 4
  %65 = load i32, ptr %32, align 4
  %66 = zext i32 %65 to i64
  tail call void @drm_object_attach_property(ptr noundef %57, ptr noundef %64, i64 noundef %66) #7
  %67 = getelementptr inbounds %struct.drm_writeback_connector, ptr %1, i32 0, i32 2
  store ptr %32, ptr %67, align 8
  br label %73

68:                                               ; preds = %45
  tail call void @drm_connector_cleanup(ptr noundef %1) #7
  br label %69

69:                                               ; preds = %68, %41
  %70 = phi i32 [ %43, %41 ], [ %46, %68 ]
  tail call void @drm_encoder_cleanup(ptr noundef %37) #7
  br label %71

71:                                               ; preds = %69, %36
  %72 = phi i32 [ %39, %36 ], [ %70, %69 ]
  tail call void @drm_property_blob_put(ptr noundef %32) #7
  br label %73

73:                                               ; preds = %71, %48, %34, %26, %18, %10
  %74 = phi i32 [ %35, %34 ], [ %72, %71 ], [ 0, %48 ], [ -12, %10 ], [ -12, %18 ], [ -12, %26 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_blob(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_writeback_set_fb(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 18
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 246, i32 noundef 9, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.drm_connector_state, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 44) #8
  store ptr %14, ptr %9, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 4
  store ptr %17, ptr %14, align 8
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %14, %16 ], [ %10, %8 ]
  %20 = getelementptr inbounds %struct.drm_writeback_job, ptr %19, i32 0, i32 4
  %21 = icmp eq ptr %1, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %23) #7
  br label %24

24:                                               ; preds = %22, %18
  %25 = load ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %28) #7
  br label %29

29:                                               ; preds = %27, %24
  store ptr %1, ptr %20, align 4
  br label %30

30:                                               ; preds = %29, %12
  %31 = phi i32 [ 0, %29 ], [ -12, %12 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_writeback_prepare_job(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_connector, ptr %2, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %2, ptr noundef %0) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.drm_writeback_job, ptr %0, i32 0, i32 1
  store i8 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ 0, %11 ], [ %9, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_writeback_queue_job(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_connector_state, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  store ptr null, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.drm_writeback_job, ptr %4, i32 0, i32 3
  %8 = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 4, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %7, ptr %9, align 4
  store ptr %8, ptr %7, align 4
  %11 = getelementptr inbounds %struct.drm_writeback_job, ptr %4, i32 0, i32 3, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %7, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_writeback_cleanup_job(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_writeback_job, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_connector, ptr %2, i32 0, i32 35
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %2, ptr noundef %0) #7
  br label %13

13:                                               ; preds = %12, %6, %1
  %14 = getelementptr inbounds %struct.drm_writeback_job, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %18) #7
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.drm_writeback_job, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dma_fence, ptr %21, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #7, !srcloc !11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #7, !srcloc !12
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30, !prof !8

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #7
  br label %32

31:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void @dma_fence_release(ptr noundef %24) #7
  br label %32

32:                                               ; preds = %31, %30, %28, %19
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_writeback_signal_completion(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  %8 = getelementptr i8, ptr %6, i32 -24
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  %16 = getelementptr i8, ptr %6, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %20

19:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 382, i32 noundef 9, ptr noundef null) #7
  br label %51

20:                                               ; preds = %11
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 5
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 545, i32 noundef 9, ptr noundef null) #7
  br label %28

28:                                               ; preds = %27, %22
  %29 = icmp ult i32 %1, -4095
  br i1 %29, label %30, label %31, !prof !14

30:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 546, i32 noundef 9, ptr noundef null) #7
  br label %31

31:                                               ; preds = %30, %28
  %32 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 7
  store i32 %1, ptr %32, align 8
  br label %33

33:                                               ; preds = %31, %20
  %34 = tail call i32 @dma_fence_signal(ptr noundef nonnull %17) #7
  %35 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #7, !srcloc !11
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #7, !srcloc !12
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !8

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef 3) #7
  br label %43

42:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void @dma_fence_release(ptr noundef %35) #7
  br label %43

43:                                               ; preds = %42, %41, %39
  store ptr null, ptr %16, align 4
  br label %44

44:                                               ; preds = %43, %11
  %45 = getelementptr i8, ptr %6, i32 -16
  store i32 -32, ptr %45, align 4
  %46 = getelementptr i8, ptr %6, i32 -12
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr i8, ptr %6, i32 -8
  store ptr %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %6, i32 -4
  store ptr @cleanup_work, ptr %48, align 4
  %49 = load ptr, ptr @system_long_wq, align 4
  %50 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %49, ptr noundef %45) #7
  br label %51

51:                                               ; preds = %44, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cleanup_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @drm_writeback_cleanup_job(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_writeback_get_out_fence(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 18
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 405, i32 noundef 9, ptr noundef null) #7
  br label %19

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 48) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.drm_writeback_connector, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  %18 = zext i32 %17 to i64
  tail call void @dma_fence_init(ptr noundef nonnull %8, ptr noundef nonnull @drm_writeback_fence_ops, ptr noundef %11, i64 noundef %14, i64 noundef %18) #7
  br label %19

19:                                               ; preds = %10, %6, %5
  %20 = phi ptr [ null, %5 ], [ %8, %10 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_object(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @drm_writeback_fence_get_driver_name(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -1060
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @drm_writeback_fence_get_timeline_name(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 8
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @drm_writeback_fence_enable_signaling(ptr nocapture noundef readnone %0) #6 {
  ret i1 true
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i8 0, i8 2}
!10 = !{i64 2148330417}
!11 = !{i64 727351, i64 2148217322, i64 2148217348, i64 2148217395, i64 2148217417, i64 2148217445, i64 2148217465}
!12 = !{i64 2148232552, i64 2148232584, i64 2148232613, i64 2148232647, i64 2148232678, i64 2148232701}
!13 = !{i64 2148973026}
!14 = !{!"branch_weights", i32 1, i32 2000}
