; ModuleID = '/llk/IR/drivers/media/tuners/msi001.c_pt.bc'
source_filename = "../drivers/media/tuners/msi001.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_device_id = type { [32 x i8], i32 }
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
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.84 = type { i32, i8, i8 }
%struct.anon.86 = type { i32, i8 }
%struct.msi001_dev = type { ptr, %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.76, %union.anon.77, i32, ptr, i32, %struct.anon.78, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.76 = type { i64 }
%union.anon.77 = type { ptr }
%struct.anon.78 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@msi001_id_table = internal constant [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"msi001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@__UNIQUE_ID_author259 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [26 x i8] c"description=Mirics MSi001\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@msi001_driver = internal global %struct.spi_driver { ptr @msi001_id_table, ptr @msi001_probe, ptr @msi001_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [7 x i8] c"msi001\00", align 1
@bands = internal unnamed_addr constant [2 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 5, i32 0, i32 5120, i32 49000000, i32 263000000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 5, i32 1, i32 5120, i32 390000000, i32 960000000, i32 0, [9 x i32] zeroinitializer }], align 4
@msi001_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr @msi001_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@msi001_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @msi001_s_ctrl }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@msi001_tuner_ops = internal constant %struct.v4l2_subdev_tuner_ops { ptr @msi001_standby, ptr null, ptr @msi001_s_frequency, ptr @msi001_g_frequency, ptr @msi001_enum_freq_bands, ptr @msi001_g_tuner, ptr @msi001_s_tuner, ptr null, ptr null, ptr null, ptr null }, align 4
@msi001_set_tuner.band_lut = internal unnamed_addr constant [5 x %struct.anon.84] [%struct.anon.84 { i32 50000000, i8 -31, i8 16 }, %struct.anon.84 { i32 108000000, i8 66, i8 32 }, %struct.anon.84 { i32 330000000, i8 68, i8 16 }, %struct.anon.84 { i32 960000000, i8 72, i8 4 }, %struct.anon.84 { i32 -1, i8 80, i8 2 }], align 4
@msi001_set_tuner.bandwidth_lut = internal unnamed_addr constant [8 x %struct.anon.86] [%struct.anon.86 { i32 200000, i8 0 }, %struct.anon.86 { i32 300000, i8 1 }, %struct.anon.86 { i32 600000, i8 2 }, %struct.anon.86 { i32 1536000, i8 3 }, %struct.anon.86 { i32 5000000, i8 4 }, %struct.anon.86 { i32 6000000, i8 5 }, %struct.anon.86 { i32 7000000, i8 6 }, %struct.anon.86 { i32 8000000, i8 7 }], align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Mirics MSi001\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_license261], section "llvm.metadata"

@__mod_spi__msi001_id_table_device_table = dso_local alias [2 x %struct.spi_device_id], ptr @msi001_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__spi_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @msi001_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @msi001_driver, i32 0, i32 4)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi001_probe(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 336) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 8
  store i32 49000000, ptr %6, align 4
  %7 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 1
  tail call void @v4l2_spi_subdev_init(ptr noundef %7, ptr noundef %0, ptr noundef nonnull @msi001_ops) #11
  %8 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 2
  %9 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %8, i32 noundef 5, ptr noundef null, ptr noundef null) #11
  %10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %8, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %11 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 3
  store ptr %10, ptr %11, align 8
  %12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %8, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619148, i64 noundef 200000, i64 noundef 8000000, i64 noundef 1, i64 noundef 200000) #11
  %13 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 4
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 2, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %5
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %11, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  %18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %8, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619178, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %19 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 5
  store ptr %18, ptr %19, align 8
  %20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %8, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619188, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %21 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 6
  store ptr %20, ptr %21, align 4
  %22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %8, ptr noundef nonnull @msi001_ctrl_ops, i32 noundef 10619198, i64 noundef 0, i64 noundef 59, i64 noundef 1, i64 noundef 0) #11
  %23 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 7
  store ptr %22, ptr %23, align 8
  %24 = load i32, ptr %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.msi001_dev, ptr %3, i32 0, i32 1, i32 8
  store ptr %8, ptr %27, align 4
  br label %30

28:                                               ; preds = %17, %5
  %29 = phi i32 [ %15, %5 ], [ %24, %17 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %8) #11
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %30

30:                                               ; preds = %28, %26, %1
  %31 = phi i32 [ 0, %26 ], [ %29, %28 ], [ -12, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi001_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %3) #11
  %5 = getelementptr i8, ptr %3, i32 196
  tail call void @v4l2_ctrl_handler_free(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_spi_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi001_standby(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 0, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #11
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %7, i8 0, i64 92, i1 false) #11
  store ptr %4, ptr %3, align 4
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #11
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %9, i8 0, i64 40, i1 false) #11
  store volatile ptr %2, ptr %2, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %13, ptr %10, align 4
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %14, align 4
  store volatile ptr %13, ptr %2, align 4
  %15 = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi001_s_frequency(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr inbounds %struct.v4l2_frequency, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 326499999
  %7 = zext i1 %6 to i32
  %8 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %7, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %5, i32 %9)
  %11 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %7, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12)
  %14 = getelementptr i8, ptr %0, i32 328
  store i32 %13, ptr %14, align 4
  %15 = tail call fastcc i32 @msi001_set_tuner(ptr noundef %3)
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @msi001_g_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 328
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.v4l2_frequency, ptr %1, i32 0, i32 2
  store i32 %4, ptr %5, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @msi001_enum_freq_bands(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %4, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %4, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %4, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi001_g_tuner(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strscpy(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 32) #11
  %5 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 2
  store i32 5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 3
  store i32 5120, ptr %6, align 4
  %7 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 4
  store i32 49000000, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 5
  store i32 960000000, ptr %8, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @msi001_s_tuner(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msi001_wreg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = alloca i32, align 4
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #11
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %7, i8 0, i64 92, i1 false) #11
  store ptr %5, ptr %4, align 4
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  store i32 3, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  %9 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %9, i8 0, i64 40, i1 false) #11
  store volatile ptr %3, ptr %3, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %13, ptr %10, align 4
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %14, align 4
  store volatile ptr %13, ptr %3, align 4
  %15 = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #11
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msi001_set_tuner(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.msi001_dev, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 50000000
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = icmp ugt i32 %12, 108000000
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = icmp ugt i32 %12, 330000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = icmp ugt i32 %12, 960000000
  %20 = select i1 %19, i32 4, i32 3
  br label %21

21:                                               ; preds = %18, %16, %14, %1
  %22 = phi i32 [ 0, %1 ], [ 1, %14 ], [ 2, %16 ], [ %20, %18 ]
  %23 = getelementptr [5 x %struct.anon.84], ptr @msi001_set_tuner.band_lut, i32 0, i32 %22, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = getelementptr [5 x %struct.anon.84], ptr @msi001_set_tuner.band_lut, i32 0, i32 %22, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = zext i8 %24 to i32
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 120000000
  %32 = getelementptr inbounds %struct.msi001_dev, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 200000)
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 8000000)
  %38 = icmp ugt i32 %37, 200000
  br i1 %38, label %39, label %52

39:                                               ; preds = %21
  %40 = icmp ugt i32 %37, 300000
  br i1 %40, label %41, label %52

41:                                               ; preds = %39
  %42 = icmp ugt i32 %37, 600000
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = icmp ugt i32 %37, 1536000
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = icmp ugt i32 %37, 5000000
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = icmp ugt i32 %37, 6000000
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = icmp ugt i32 %37, 7000000
  %51 = select i1 %50, i32 7, i32 6
  br label %52

52:                                               ; preds = %49, %47, %45, %43, %41, %39, %21
  %53 = phi i32 [ 0, %21 ], [ 1, %39 ], [ 2, %41 ], [ 3, %43 ], [ 4, %45 ], [ 5, %47 ], [ %51, %49 ]
  %54 = getelementptr [8 x %struct.anon.86], ptr @msi001_set_tuner.bandwidth_lut, i32 0, i32 %53, i32 1
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 14
  %58 = getelementptr [8 x %struct.anon.86], ptr @msi001_set_tuner.bandwidth_lut, i32 0, i32 %53
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %34, align 4
  %60 = add i32 %31, %12
  %61 = zext i32 %60 to i64
  %62 = zext i8 %26 to i64
  %63 = mul nuw nsw i64 %61, %62
  %64 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5551535331153507086, i64 %63, i32 0) #14, !srcloc !8
  %65 = extractvalue { i64, i32 } %64, 0
  %66 = extractvalue { i64, i32 } %64, 1
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5551535331153507086, i64 %63, i64 %65, i32 %66) #14, !srcloc !9
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = trunc i64 %63 to i32
  %70 = lshr i64 %68, 26
  %71 = trunc i64 %70 to i32
  %72 = mul i32 %71, -96000000
  %73 = add i32 %72, %69
  %74 = udiv i32 96000000, %27
  %75 = zext i32 %73 to i64
  %76 = zext i32 %74 to i64
  %77 = mul nuw nsw i64 %75, %76
  %78 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5551535331153507086, i64 %77, i32 0) #14, !srcloc !8
  %79 = extractvalue { i64, i32 } %78, 0
  %80 = extractvalue { i64, i32 } %78, 1
  %81 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5551535331153507086, i64 %77, i64 %79, i32 %80) #14, !srcloc !9
  %82 = extractvalue { i64, i32 } %81, 0
  %83 = lshr i64 %82, 26
  %84 = trunc i64 %83 to i32
  %85 = tail call i32 @gcd(i32 noundef %74, i32 noundef %84) #15
  %86 = udiv i32 %74, %85
  %87 = udiv i32 %84, %85
  %88 = add nuw nsw i32 %86, 4094
  %89 = udiv i32 %88, 4095
  %90 = udiv i32 %88, 8190
  %91 = add nuw nsw i32 %90, %86
  %92 = udiv i32 %91, %89
  %93 = add i32 %90, %87
  %94 = udiv i32 %93, %89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  store i32 14, ptr %10, align 4
  %95 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #11
  %96 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %96, i8 0, i64 92, i1 false) #11
  store ptr %10, ptr %9, align 4
  %97 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 2
  store i32 3, ptr %97, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  %98 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %98, i8 0, i64 40, i1 false) #11
  store volatile ptr %8, ptr %8, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %100 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10
  store volatile ptr %100, ptr %100, align 4
  %101 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18
  store ptr %102, ptr %99, align 4
  store ptr %8, ptr %102, align 4
  %103 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18, i32 1
  store ptr %8, ptr %103, align 4
  store volatile ptr %102, ptr %8, align 4
  %104 = call i32 @spi_sync(ptr noundef %95, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %163

106:                                              ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 3, ptr %7, align 4
  %107 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #11
  %108 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %108, i8 0, i64 92, i1 false) #11
  store ptr %7, ptr %6, align 4
  %109 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 3, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  %110 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %110, i8 0, i64 40, i1 false) #11
  store volatile ptr %5, ptr %5, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %112 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %112, ptr %112, align 4
  %113 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %114, ptr %111, align 4
  store ptr %5, ptr %114, align 4
  %115 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %115, align 4
  store volatile ptr %114, ptr %5, align 4
  %116 = call i32 @spi_sync(ptr noundef %107, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %163

118:                                              ; preds = %106
  %119 = shl nuw nsw i32 %28, 4
  %120 = or i32 %57, %119
  %121 = or i32 %120, 274432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %121, ptr %4, align 4
  %122 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #11
  %123 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %123, i8 0, i64 92, i1 false) #11
  store ptr %4, ptr %3, align 4
  %124 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %124, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #11
  %125 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %125, i8 0, i64 40, i1 false) #11
  store volatile ptr %2, ptr %2, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %127 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %127, ptr %127, align 4
  %128 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %129, ptr %126, align 4
  store ptr %2, ptr %129, align 4
  %130 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %130, align 4
  store volatile ptr %129, ptr %2, align 4
  %131 = call i32 @spi_sync(ptr noundef %122, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %163

133:                                              ; preds = %118
  %134 = shl nuw nsw i32 %92, 4
  %135 = or i32 %134, 2621445
  %136 = call fastcc i32 @msi001_wreg(ptr noundef %0, i32 noundef %135)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %133
  %139 = shl i32 %94, 4
  %140 = shl i32 %71, 16
  %141 = or i32 %140, %139
  %142 = or i32 %141, 2
  %143 = call fastcc i32 @msi001_wreg(ptr noundef %0, i32 noundef %142)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.msi001_dev, ptr %0, i32 0, i32 5
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.v4l2_ctrl, ptr %147, i32 0, i32 23
  %149 = load i32, ptr %148, align 8
  %150 = getelementptr inbounds %struct.msi001_dev, ptr %0, i32 0, i32 6
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.v4l2_ctrl, ptr %151, i32 0, i32 23
  %153 = load i32, ptr %152, align 8
  %154 = getelementptr inbounds %struct.msi001_dev, ptr %0, i32 0, i32 7
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.v4l2_ctrl, ptr %155, i32 0, i32 23
  %157 = load i32, ptr %156, align 8
  %158 = call fastcc i32 @msi001_set_gain(ptr noundef %0, i32 noundef %149, i32 noundef %153, i32 noundef %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %145
  %161 = call fastcc i32 @msi001_wreg(ptr noundef %0, i32 noundef 4194294)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160, %145, %138, %133, %118, %106, %52
  %164 = phi i32 [ %104, %52 ], [ %116, %106 ], [ %131, %118 ], [ %136, %133 ], [ %143, %138 ], [ %158, %145 ], [ %161, %160 ]
  br label %165

165:                                              ; preds = %163, %160
  %166 = phi i32 [ %164, %163 ], [ 0, %160 ]
  ret i32 %166
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msi001_set_gain(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca i32, align 4
  %8 = mul i32 %3, -16
  %9 = add i32 %8, 944
  %10 = mul i32 %2, -4096
  %11 = add i32 %10, 4096
  %12 = mul i32 %1, -8192
  %13 = add i32 %12, 8192
  %14 = or i32 %13, %11
  %15 = or i32 %14, %9
  %16 = or i32 %15, 65537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 %16, ptr %7, align 4
  %17 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #11
  %18 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %18, i8 0, i64 92, i1 false) #11
  store ptr %7, ptr %6, align 4
  %19 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 3, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  %20 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %20, i8 0, i64 40, i1 false) #11
  store volatile ptr %5, ptr %5, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %24, ptr %21, align 4
  store ptr %5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %25, align 4
  store volatile ptr %24, ptr %5, align 4
  %26 = call i32 @spi_sync(ptr noundef %17, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi001_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 -200
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %114 [
    i32 10619147, label %16
    i32 10619148, label %16
    i32 10619178, label %18
    i32 10619188, label %50
    i32 10619198, label %82
  ]

16:                                               ; preds = %1, %1
  %17 = tail call fastcc i32 @msi001_set_tuner(ptr noundef %13)
  br label %114

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %12, i32 120
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %12, i32 124
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 23
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr i8, ptr %12, i32 128
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 23
  %30 = load i32, ptr %29, align 8
  %31 = mul i32 %30, -16
  %32 = add i32 %31, 944
  %33 = mul i32 %26, -4096
  %34 = add i32 %33, 4096
  %35 = mul i32 %22, -8192
  %36 = add i32 %35, 8192
  %37 = or i32 %36, %34
  %38 = or i32 %37, %32
  %39 = or i32 %38, 65537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 %39, ptr %10, align 4
  %40 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #11
  %41 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %41, i8 0, i64 92, i1 false) #11
  store ptr %10, ptr %9, align 4
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 2
  store i32 3, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  %43 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %43, i8 0, i64 40, i1 false) #11
  store volatile ptr %8, ptr %8, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %45 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18
  store ptr %47, ptr %44, align 4
  store ptr %8, ptr %47, align 4
  %48 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18, i32 1
  store ptr %8, ptr %48, align 4
  store volatile ptr %47, ptr %8, align 4
  %49 = call i32 @spi_sync(ptr noundef %40, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  br label %114

50:                                               ; preds = %1
  %51 = getelementptr i8, ptr %12, i32 120
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 23
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr i8, ptr %12, i32 124
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %12, i32 128
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %60, i32 0, i32 23
  %62 = load i32, ptr %61, align 8
  %63 = mul i32 %62, -16
  %64 = add i32 %63, 944
  %65 = mul i32 %58, -4096
  %66 = add i32 %65, 4096
  %67 = mul i32 %54, -8192
  %68 = add i32 %67, 8192
  %69 = or i32 %68, %66
  %70 = or i32 %69, %64
  %71 = or i32 %70, 65537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 %71, ptr %7, align 4
  %72 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #11
  %73 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %73, i8 0, i64 92, i1 false) #11
  store ptr %7, ptr %6, align 4
  %74 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 3, ptr %74, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  %75 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %75, i8 0, i64 40, i1 false) #11
  store volatile ptr %5, ptr %5, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %77 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %77, ptr %77, align 4
  %78 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %79, ptr %76, align 4
  store ptr %5, ptr %79, align 4
  %80 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %80, align 4
  store volatile ptr %79, ptr %5, align 4
  %81 = call i32 @spi_sync(ptr noundef %72, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %114

82:                                               ; preds = %1
  %83 = getelementptr i8, ptr %12, i32 120
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.v4l2_ctrl, ptr %84, i32 0, i32 23
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr i8, ptr %12, i32 124
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.v4l2_ctrl, ptr %88, i32 0, i32 23
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr i8, ptr %12, i32 128
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 22
  %94 = load i32, ptr %93, align 4
  %95 = mul i32 %94, -16
  %96 = add i32 %95, 944
  %97 = mul i32 %90, -4096
  %98 = add i32 %97, 4096
  %99 = mul i32 %86, -8192
  %100 = add i32 %99, 8192
  %101 = or i32 %100, %98
  %102 = or i32 %101, %96
  %103 = or i32 %102, 65537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 %103, ptr %4, align 4
  %104 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #11
  %105 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %105, i8 0, i64 92, i1 false) #11
  store ptr %4, ptr %3, align 4
  %106 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #11
  %107 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %107, i8 0, i64 40, i1 false) #11
  store volatile ptr %2, ptr %2, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %109 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %109, ptr %109, align 4
  %110 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %111, ptr %108, align 4
  store ptr %2, ptr %111, align 4
  %112 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %112, align 4
  store volatile ptr %111, ptr %2, align 4
  %113 = call i32 @spi_sync(ptr noundef %104, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %114

114:                                              ; preds = %82, %50, %18, %16, %1
  %115 = phi i32 [ %113, %82 ], [ %81, %50 ], [ %49, %18 ], [ %17, %16 ], [ -22, %1 ]
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readnone willreturn }

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
!8 = !{i64 415183, i64 415210, i64 415232, i64 415260}
!9 = !{i64 415591, i64 415618, i64 415651, i64 415672, i64 415699, i64 415725}
