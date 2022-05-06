; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/adv7511/adv7511_cec.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/adv7511/adv7511_cec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.adv7511 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.drm_display_mode, i32, i32, i32, i32, [256 x i8], i8, %struct.wait_queue_head, %struct.work_struct, %struct.drm_bridge, %struct.drm_connector, i8, i32, i32, i8, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [3 x i8], i8, i8, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.80 }
%union.anon.80 = type { [16 x i32] }

@adv7511_cec_adap_ops = internal constant %struct.cec_adap_ops { ptr @adv7511_cec_adap_enable, ptr null, ptr null, ptr @adv7511_cec_adap_log_addr, ptr @adv7511_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [54 x i8] c"Initializing CEC failed with error %d, disabling CEC\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cec\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adv7511_cec_irq_process(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cec_msg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 30
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  %11 = select i1 %10, i32 112, i32 0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  %12 = and i32 %1, 56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = add nuw nsw i32 %11, 17
  %18 = call i32 @regmap_read(ptr noundef %16, i32 noundef %17, ptr noundef nonnull %3) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %14
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %20
  %25 = and i32 %1, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 32
  %29 = load ptr, ptr %28, align 8
  %30 = call i64 @ktime_get() #6
  call void @cec_transmit_attempt_done_ts(ptr noundef %29, i8 noundef zeroext 2, i64 noundef %30) #6
  br label %65

31:                                               ; preds = %24
  %32 = and i32 %1, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %35 = load ptr, ptr %15, align 4
  %36 = add nuw nsw i32 %11, 20
  %37 = call i32 @regmap_read(ptr noundef %35, i32 noundef %36, ptr noundef nonnull %4) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, ptr %4, align 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 15
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i8 32, i8 36
  %45 = lshr i32 %40, 4
  %46 = trunc i32 %45 to i8
  %47 = icmp eq i8 %46, 0
  %48 = or i8 %44, 8
  %49 = select i1 %47, i8 %44, i8 %48
  br label %50

50:                                               ; preds = %39, %34
  %51 = phi i8 [ 48, %34 ], [ %49, %39 ]
  %52 = phi i8 [ 1, %34 ], [ 0, %39 ]
  %53 = phi i8 [ 0, %34 ], [ %42, %39 ]
  %54 = phi i8 [ 0, %34 ], [ %46, %39 ]
  %55 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 32
  %56 = load ptr, ptr %55, align 8
  %57 = call i64 @ktime_get() #6
  call void @cec_transmit_done_ts(ptr noundef %56, i8 noundef zeroext %51, i8 noundef zeroext 0, i8 noundef zeroext %53, i8 noundef zeroext %54, i8 noundef zeroext %52, i64 noundef %57) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %65

58:                                               ; preds = %31
  %59 = and i32 %1, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 32
  %63 = load ptr, ptr %62, align 8
  %64 = call i64 @ktime_get() #6
  call void @cec_transmit_attempt_done_ts(ptr noundef %63, i8 noundef zeroext 1, i64 noundef %64) #6
  br label %65

65:                                               ; preds = %61, %58, %50, %27, %20, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %66

66:                                               ; preds = %65, %2
  %67 = and i32 %1, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = add nuw nsw i32 %11, 37
  %73 = call i32 @regmap_read(ptr noundef %71, i32 noundef %72, ptr noundef nonnull %6) #6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %69
  %76 = load i32, ptr %6, align 4
  %77 = and i32 %76, 31
  %78 = getelementptr inbounds %struct.cec_msg, ptr %5, i32 0, i32 2
  %79 = call i32 @llvm.umin.i32(i32 %77, i32 16)
  store i32 %79, ptr %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %75
  %82 = add nuw nsw i32 %11, 21
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i32 [ 0, %81 ], [ %93, %83 ]
  %85 = phi i8 [ 0, %81 ], [ %92, %83 ]
  %86 = load ptr, ptr %70, align 4
  %87 = add nuw nsw i32 %82, %84
  %88 = call i32 @regmap_read(ptr noundef %86, i32 noundef %87, ptr noundef nonnull %7) #6
  %89 = load i32, ptr %7, align 4
  %90 = trunc i32 %89 to i8
  %91 = getelementptr %struct.cec_msg, ptr %5, i32 0, i32 6, i32 %84
  store i8 %90, ptr %91, align 1
  %92 = add i8 %85, 1
  %93 = zext i8 %92 to i32
  %94 = icmp ugt i32 %79, %93
  br i1 %94, label %83, label %95

95:                                               ; preds = %83
  %96 = load ptr, ptr %70, align 4
  %97 = add nuw nsw i32 %11, 74
  %98 = call i32 @regmap_write(ptr noundef %96, i32 noundef %97, i32 noundef 1) #6
  %99 = load ptr, ptr %70, align 4
  %100 = call i32 @regmap_write(ptr noundef %99, i32 noundef %97, i32 noundef 0) #6
  %101 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 32
  %102 = load ptr, ptr %101, align 8
  %103 = call i64 @ktime_get() #6
  call void @cec_received_msg_ts(ptr noundef %102, ptr noundef nonnull %5, i64 noundef %103) #6
  br label %104

104:                                              ; preds = %95, %75, %69, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adv7511_cec_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 30
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 1
  %6 = select i1 %5, i32 112, i32 0
  %7 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %8 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 36
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @clk_prepare(ptr noundef %7) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call i32 @clk_enable(ptr noundef %7) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %17

17:                                               ; preds = %16, %13, %10
  %18 = load ptr, ptr %8, align 4
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #6
  %20 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 37
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %28

24:                                               ; preds = %2
  %25 = ptrtoint ptr %7 to i32
  store ptr null, ptr %8, align 4
  br label %63

26:                                               ; preds = %17
  %27 = load ptr, ptr %0, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi ptr [ %27, %26 ], [ %22, %17 ]
  %30 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @adv7511_cec_adap_ops, ptr noundef %1, ptr noundef %29, i32 noundef 30, i8 noundef zeroext 3) #6
  %31 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 32
  store ptr %30, ptr %31, align 8
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i32
  br label %61

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 4
  %37 = load ptr, ptr %36, align 8
  %38 = add nuw nsw i32 %6, 226
  %39 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %38, i32 noundef 0) #6
  %40 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = add nuw nsw i32 %6, 80
  %43 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %42, i32 noundef 1) #6
  %44 = load ptr, ptr %40, align 4
  %45 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef %42, i32 noundef 0) #6
  %46 = load ptr, ptr %40, align 4
  %47 = add nuw nsw i32 %6, 74
  %48 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %47, i32 noundef 0) #6
  %49 = load ptr, ptr %40, align 4
  %50 = add nuw nsw i32 %6, 78
  %51 = load i32, ptr %20, align 8
  %52 = udiv i32 %51, 750000
  %53 = shl nuw nsw i32 %52, 2
  %54 = add nsw i32 %53, -4
  %55 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %50, i32 noundef %54) #6
  %56 = load ptr, ptr %31, align 8
  %57 = tail call i32 @cec_register_adapter(ptr noundef %56, ptr noundef %0) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %35
  %60 = load ptr, ptr %31, align 8
  tail call void @cec_delete_adapter(ptr noundef %60) #6
  store ptr null, ptr %31, align 8
  br label %61

61:                                               ; preds = %59, %33
  %62 = phi i32 [ %34, %33 ], [ %57, %59 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %62) #7
  br label %63

63:                                               ; preds = %61, %24
  %64 = phi i32 [ %25, %24 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 4
  %66 = load ptr, ptr %65, align 8
  %67 = add nuw nsw i32 %6, 226
  %68 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef %67, i32 noundef 1) #6
  %69 = icmp eq i32 %64, -517
  %70 = select i1 %69, i32 -517, i32 0
  br label %71

71:                                               ; preds = %63, %35
  %72 = phi i32 [ %70, %63 ], [ 0, %35 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.adv7511, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, i32 112, i32 0
  %10 = getelementptr inbounds %struct.adv7511, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.adv7511, ptr %5, i32 0, i32 35
  %15 = load i8, ptr %14, align 8, !range !9
  %16 = icmp eq i8 %15, 0
  %17 = and i1 %16, %1
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.adv7511, ptr %5, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = add nuw nsw i32 %9, 78
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %21, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = load ptr, ptr %19, align 4
  %24 = add nuw nsw i32 %9, 74
  %25 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %24, i32 noundef 7) #6
  %26 = load ptr, ptr %19, align 4
  %27 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %24, i32 noundef 0) #6
  %28 = load ptr, ptr %19, align 4
  %29 = add nuw nsw i32 %9, 17
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %29, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = getelementptr inbounds %struct.adv7511, ptr %5, i32 0, i32 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 149, i32 noundef 63, i32 noundef 57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %48

34:                                               ; preds = %13
  %35 = or i1 %16, %1
  br i1 %35, label %48, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.adv7511, ptr %5, i32 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 149, i32 noundef 63, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %40 = getelementptr inbounds %struct.adv7511, ptr %5, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = add nuw nsw i32 %9, 75
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %42, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %44 = load ptr, ptr %40, align 4
  %45 = add nuw nsw i32 %9, 78
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %45, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %47 = getelementptr inbounds %struct.adv7511, ptr %5, i32 0, i32 34
  store i8 0, ptr %47, align 1
  br label %48

48:                                               ; preds = %36, %34, %18
  store i8 %3, ptr %14, align 8
  br label %49

49:                                               ; preds = %48, %2
  %50 = phi i32 [ 0, %48 ], [ -5, %2 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_log_addr(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 30
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, i32 112, i32 0
  %9 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 35
  %10 = load i8, ptr %9, align 8, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = icmp eq i8 %1, -1
  %14 = select i1 %13, i32 0, i32 -5
  br label %86

15:                                               ; preds = %2
  %16 = zext i8 %1 to i32
  %17 = icmp eq i8 %1, -1
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 34
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %30

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = add nuw nsw i32 %8, 75
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %27, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 34
  store i8 0, ptr %29, align 1
  br label %86

30:                                               ; preds = %18
  %31 = getelementptr %struct.adv7511, ptr %4, i32 0, i32 33, i32 0
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, %1
  br i1 %33, label %86, label %34

34:                                               ; preds = %30, %18
  %35 = and i32 %21, 2
  %36 = icmp eq i32 %35, 0
  %37 = or i32 %35, 1
  %38 = select i1 %23, i32 0, i32 %37
  br i1 %36, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr %struct.adv7511, ptr %4, i32 0, i32 33, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, %1
  br i1 %42, label %86, label %43

43:                                               ; preds = %39, %34
  %44 = and i32 %21, 4
  %45 = icmp eq i32 %44, 0
  %46 = icmp eq i32 %38, 3
  %47 = select i1 %45, i32 2, i32 3
  %48 = select i1 %46, i32 %47, i32 %38
  br i1 %45, label %53, label %49

49:                                               ; preds = %43
  %50 = getelementptr %struct.adv7511, ptr %4, i32 0, i32 33, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, %1
  br i1 %52, label %86, label %53

53:                                               ; preds = %49, %43
  %54 = icmp eq i32 %48, 3
  br i1 %54, label %86, label %55

55:                                               ; preds = %53
  %56 = getelementptr %struct.adv7511, ptr %4, i32 0, i32 33, i32 %48
  store i8 %1, ptr %56, align 1
  %57 = shl nuw i32 1, %48
  %58 = load i8, ptr %19, align 1
  %59 = trunc i32 %57 to i8
  %60 = or i8 %58, %59
  store i8 %60, ptr %19, align 1
  switch i32 %48, label %86 [
    i32 0, label %61
    i32 1, label %69
    i32 2, label %78
  ]

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = add nuw nsw i32 %8, 75
  %65 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef %64, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %66 = load ptr, ptr %62, align 4
  %67 = add nuw nsw i32 %8, 76
  %68 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef %67, i32 noundef 15, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %86

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = add nuw nsw i32 %8, 75
  %73 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %72, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %74 = load ptr, ptr %70, align 4
  %75 = add nuw nsw i32 %8, 76
  %76 = shl nuw nsw i32 %16, 4
  %77 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef %75, i32 noundef 240, i32 noundef %76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %86

78:                                               ; preds = %55
  %79 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = add nuw nsw i32 %8, 75
  %82 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %81, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %83 = load ptr, ptr %79, align 4
  %84 = add nuw nsw i32 %8, 77
  %85 = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef %84, i32 noundef 15, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %86

86:                                               ; preds = %78, %69, %61, %55, %53, %49, %39, %30, %24, %12
  %87 = phi i32 [ 0, %24 ], [ %14, %12 ], [ -6, %53 ], [ 0, %55 ], [ 0, %78 ], [ 0, %69 ], [ 0, %61 ], [ 0, %49 ], [ 0, %39 ], [ 0, %30 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_transmit(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.adv7511, ptr %6, i32 0, i32 30
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = select i1 %9, i32 112, i32 0
  %11 = getelementptr inbounds %struct.cec_msg, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.adv7511, ptr %6, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = add nuw nsw i32 %10, 18
  %16 = zext i8 %1 to i32
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 2)
  %18 = shl nuw nsw i32 %17, 4
  %19 = add nsw i32 %18, -16
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %15, i32 noundef 112, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = getelementptr inbounds %struct.adv7511, ptr %6, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 151, i32 noundef 56, i32 noundef 56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = and i32 %12, 255
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %26, %4
  %27 = phi i32 [ %34, %26 ], [ 0, %4 ]
  %28 = load ptr, ptr %13, align 4
  %29 = add nuw nsw i32 %27, %10
  %30 = getelementptr %struct.cec_msg, ptr %3, i32 0, i32 6, i32 %27
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef %29, i32 noundef %32) #6
  %34 = add nuw nsw i32 %27, 1
  %35 = icmp eq i32 %34, %24
  br i1 %35, label %36, label %26

36:                                               ; preds = %26, %4
  %37 = load ptr, ptr %13, align 4
  %38 = add nuw nsw i32 %10, 16
  %39 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %38, i32 noundef %24) #6
  %40 = load ptr, ptr %13, align 4
  %41 = add nuw nsw i32 %10, 17
  %42 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef %41, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
