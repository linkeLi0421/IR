; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mxl692.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mxl692.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type {}
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.mxl692_dev = type { %struct.dvb_frontend, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32 }
%struct.mxl692_config = type { i8, i8, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.MXL_EAGLE_MPEGOUT_PARAMS_T = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.MXL_EAGLE_MPEG_PAD_DRIVE_T }
%struct.MXL_EAGLE_MPEG_PAD_DRIVE_T = type { i8, i8, i8, i8 }
%struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T = type <{ i8, i8, i8, i8, i8, i32, i32 }>
%struct.MXL_EAGLE_TUNER_CHANNEL_PARAMS_T = type <{ i32, i8, i8 }>
%struct.MXL_EAGLE_ATSC_DEMOD_STATUS_T = type <{ i16, i16, i32, i8, i8, i8 }>
%struct.MXL_EAGLE_QAM_DEMOD_STATUS_T = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.MXL_EAGLE_ATSC_DEMOD_ERROR_COUNTERS_T = type { i32, i32, i32 }
%struct.MXL_EAGLE_DEV_VER_T = type { i8, [5 x i8], [5 x i8] }
%struct.MXL_EAGLE_HOST_MSG_HEADER_T = type { i8, i8, i8, i8, i32 }

@mxl692_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mxl692\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author249 = internal constant [41 x i8] c"author=Brad Love <brad@nextdimension.cc>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [54 x i8] c"description=MaxLinear MxL692 demodulator/tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware251 = internal constant [29 x i8] c"firmware=dvb-demod-mxl692.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@mxl692_driver = internal global %struct.i2c_driver { i32 0, ptr @mxl692_probe, ptr @mxl692_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mxl692_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"mxl692\00", align 1
@mxl692_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"MaxLinear MxL692 VSB tuner-demodulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2097152 }, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @mxl692_init, ptr @mxl692_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxl692_set_frontend, ptr null, ptr @mxl692_get_frontend, ptr @mxl692_read_status, ptr null, ptr null, ptr @mxl692_read_snr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@mxl692_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"&dev->i2c_lock\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"MaxLinear mxl692 successfully attached\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"dvb-demod-mxl692.fw\00", align 1
@mxl692_validate_fw_header.fw_hdr = internal constant [8 x i8] c"M1\10\02@\00\00\80", align 1
@mxl692_get_versions.chip_id = internal unnamed_addr constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"691\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"248\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"692\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"MxL692_DEMOD Chip ID: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"MxL692_DEMOD FW Version: %d.%d.%d.%d_RC%d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_firmware251, ptr @__UNIQUE_ID_license252], section "llvm.metadata"

@__mod_i2c__mxl692_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @mxl692_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @mxl692_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @mxl692_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl692_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1088) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %10, ptr noundef nonnull align 4 dereferenceable(544) @mxl692_ops, i32 544, i1 false)
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 3
  store ptr %6, ptr %11, align 8
  %12 = getelementptr inbounds %struct.mxl692_dev, ptr %6, i32 0, i32 1
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mxl692_config, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store ptr %6, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mxl692_dev, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @mxl692_probe.__key) #12
  %16 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.2) #14
  br label %17

17:                                               ; preds = %8, %2
  %18 = phi i32 [ 0, %8 ], [ -19, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl692_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 3
  store ptr null, ptr %4, align 4
  store ptr null, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl692_init(ptr nocapture noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [58 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [58 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [58 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [58 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [58 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [58 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mxl692_dev, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #12
  store ptr null, ptr %19, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.mxl692_dev, ptr %21, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %209

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.mxl692_dev, ptr %21, i32 0, i32 7
  store i32 1, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #12
  store i32 4, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %17) #12
  %29 = getelementptr inbounds i8, ptr %17, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %29, i8 0, i32 48, i1 false) #12
  %30 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 -4, ptr %17, align 1
  %31 = getelementptr inbounds i8, ptr %17, i32 2
  store i8 8, ptr %30, align 1
  store i32 -2147483392, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %17, i32 6
  store i32 2, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #12
  %33 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 10, ptr %33, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %16, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %17, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %16, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #12
  %41 = icmp sgt i32 %40, -1
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %17) #12
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  br label %228

43:                                               ; preds = %27
  %44 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef 1879048584, ptr noundef nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %228

46:                                               ; preds = %43
  call void @usleep_range_state(i32 noundef 50000, i32 noundef 60000, i32 noundef 2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  store i32 0, ptr %15, align 4, !annotation !8
  %47 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef -1879048192, ptr noundef nonnull %15) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %46
  %50 = load i32, ptr %15, align 4
  %51 = and i32 %50, 16777215
  %52 = or i32 %51, 268435456
  store i32 %52, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %14) #12
  %53 = getelementptr inbounds i8, ptr %14, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %53, i8 0, i32 48, i1 false) #12
  %54 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -4, ptr %14, align 1
  %55 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 8, ptr %54, align 1
  store i32 -1879048192, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %14, i32 6
  store i32 %52, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %57 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 10, ptr %57, align 4, !annotation !8
  %58 = load ptr, ptr %22, align 4
  %59 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 1
  %60 = load i16, ptr %59, align 2
  store i16 %60, ptr %13, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %14, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %13, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  %66 = icmp sgt i32 %65, -1
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %14) #12
  br i1 %66, label %67, label %87

67:                                               ; preds = %49
  %68 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef -1879048168, ptr noundef nonnull %15) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, ptr %15, align 4
  %72 = or i32 %71, 2048
  store i32 %72, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %12) #12
  %73 = getelementptr inbounds i8, ptr %12, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %73, i8 0, i32 48, i1 false) #12
  %74 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 -4, ptr %12, align 1
  %75 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 8, ptr %74, align 1
  store i32 -1879048168, ptr %75, align 4
  %76 = getelementptr inbounds i8, ptr %12, i32 6
  store i32 %72, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %77 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 10, ptr %77, align 4, !annotation !8
  %78 = load ptr, ptr %22, align 4
  %79 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 1
  %80 = load i16, ptr %79, align 2
  store i16 %80, ptr %11, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %12, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %11, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  %86 = icmp slt i32 %85, 0
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %12) #12
  br i1 %86, label %87, label %89

87:                                               ; preds = %70, %67, %49, %46
  %88 = phi i32 [ %68, %67 ], [ -121, %49 ], [ %47, %46 ], [ -121, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  br label %228

89:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store i32 0, ptr %10, align 4, !annotation !8
  %90 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef -1879048192, ptr noundef nonnull %9) #12
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %190

92:                                               ; preds = %89
  %93 = load i32, ptr %9, align 4
  %94 = and i32 %93, -288
  %95 = or i32 %94, 26
  store i32 %95, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %8) #12
  %96 = getelementptr inbounds i8, ptr %8, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %96, i8 0, i32 48, i1 false) #12
  %97 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 -4, ptr %8, align 1
  %98 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 8, ptr %97, align 1
  store i32 -1879048192, ptr %98, align 4
  %99 = getelementptr inbounds i8, ptr %8, i32 6
  store i32 %95, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %100 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 10, ptr %100, align 4, !annotation !8
  %101 = load ptr, ptr %22, align 4
  %102 = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 1
  %103 = load i16, ptr %102, align 2
  store i16 %103, ptr %7, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %104, align 2
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %8, ptr %105, align 4
  %106 = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %7, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  %109 = icmp sgt i32 %108, -1
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %8) #12
  br i1 %109, label %110, label %190

110:                                              ; preds = %92
  %111 = load i32, ptr %9, align 4
  %112 = and i32 %111, -513
  store i32 %112, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %6) #12
  %113 = getelementptr inbounds i8, ptr %6, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %113, i8 0, i32 48, i1 false) #12
  %114 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -4, ptr %6, align 1
  %115 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 8, ptr %114, align 1
  store i32 -1879048192, ptr %115, align 4
  %116 = getelementptr inbounds i8, ptr %6, i32 6
  store i32 %112, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %117 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 10, ptr %117, align 4, !annotation !8
  %118 = load ptr, ptr %22, align 4
  %119 = getelementptr inbounds %struct.i2c_client, ptr %118, i32 0, i32 1
  %120 = load i16, ptr %119, align 2
  store i16 %120, ptr %5, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %121, align 2
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %122, align 4
  %123 = getelementptr inbounds %struct.i2c_client, ptr %118, i32 0, i32 3
  %124 = load ptr, ptr %123, align 8
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %5, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  %126 = icmp sgt i32 %125, -1
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %6) #12
  br i1 %126, label %127, label %190

127:                                              ; preds = %110
  %128 = load i32, ptr %9, align 4
  %129 = or i32 %128, 66560
  store i32 %129, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %4) #12
  %130 = getelementptr inbounds i8, ptr %4, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %130, i8 0, i32 48, i1 false) #12
  %131 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -4, ptr %4, align 1
  %132 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 8, ptr %131, align 1
  store i32 -1879048192, ptr %132, align 4
  %133 = getelementptr inbounds i8, ptr %4, i32 6
  store i32 %129, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %134 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 10, ptr %134, align 4, !annotation !8
  %135 = load ptr, ptr %22, align 4
  %136 = getelementptr inbounds %struct.i2c_client, ptr %135, i32 0, i32 1
  %137 = load i16, ptr %136, align 2
  store i16 %137, ptr %3, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %138, align 2
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %139, align 4
  %140 = getelementptr inbounds %struct.i2c_client, ptr %135, i32 0, i32 3
  %141 = load ptr, ptr %140, align 8
  %142 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %3, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  %143 = icmp sgt i32 %142, -1
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %4) #12
  br i1 %143, label %144, label %190

144:                                              ; preds = %127
  %145 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef -1879048144, ptr noundef nonnull %10) #12
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %190

147:                                              ; preds = %144
  %148 = load i32, ptr %10, align 4
  %149 = or i32 %148, 2
  store i32 %149, ptr %10, align 4
  %150 = call fastcc i32 @mxl692_memwrite(ptr noundef %21, i32 noundef -1879048144, ptr noundef nonnull %10) #12
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %190

152:                                              ; preds = %147
  %153 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef -1879048148, ptr noundef nonnull %9) #12
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %190

155:                                              ; preds = %152
  %156 = load i32, ptr %9, align 4
  %157 = and i32 %156, -1056964609
  %158 = or i32 %157, 167772160
  store i32 %158, ptr %9, align 4
  %159 = call fastcc i32 @mxl692_memwrite(ptr noundef %21, i32 noundef -1879048148, ptr noundef nonnull %9) #12
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %190

161:                                              ; preds = %155
  %162 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef 1879048208, ptr noundef nonnull %9) #12
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %190

164:                                              ; preds = %161
  %165 = load i32, ptr %9, align 4
  %166 = or i32 %165, 8
  store i32 %166, ptr %9, align 4
  %167 = call fastcc i32 @mxl692_memwrite(ptr noundef %21, i32 noundef 1879048208, ptr noundef nonnull %9) #12
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %164
  %170 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef 1879048216, ptr noundef nonnull %9) #12
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %169
  %173 = load i32, ptr %9, align 4
  %174 = or i32 %173, 16
  store i32 %174, ptr %9, align 4
  %175 = call fastcc i32 @mxl692_memwrite(ptr noundef %21, i32 noundef 1879048216, ptr noundef nonnull %9) #12
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %172
  %178 = call fastcc i32 @mxl692_memread(ptr noundef %21, i32 noundef -1878982324, ptr noundef nonnull %9) #12
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load i32, ptr %9, align 4
  %182 = and i32 %181, -4097
  store i32 %182, ptr %9, align 4
  %183 = call fastcc i32 @mxl692_memwrite(ptr noundef %21, i32 noundef -1878982324, ptr noundef nonnull %9) #12
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load i32, ptr %9, align 4
  %187 = or i32 %186, 4096
  store i32 %187, ptr %9, align 4
  %188 = call fastcc i32 @mxl692_memwrite(ptr noundef %21, i32 noundef -1878982324, ptr noundef nonnull %9) #12
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %185, %180, %177, %172, %169, %164, %161, %155, %152, %147, %144, %127, %110, %92, %89
  %191 = phi i32 [ %159, %155 ], [ %153, %152 ], [ %150, %147 ], [ %188, %185 ], [ %183, %180 ], [ %178, %177 ], [ %175, %172 ], [ %170, %169 ], [ %167, %164 ], [ %162, %161 ], [ %145, %144 ], [ -121, %127 ], [ -121, %110 ], [ -121, %92 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %228

192:                                              ; preds = %185
  call void @usleep_range_state(i32 noundef 45000, i32 noundef 55000, i32 noundef 2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %193 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %194 = call i32 @request_firmware(ptr noundef nonnull %19, ptr noundef nonnull @.str.3, ptr noundef %193) #12
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %228

196:                                              ; preds = %192
  %197 = load ptr, ptr %19, align 4
  %198 = getelementptr inbounds %struct.firmware, ptr %197, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = load i32, ptr %197, align 4
  %201 = call fastcc i32 @mxl692_fwdownload(ptr noundef %21, ptr noundef %199, i32 noundef %200)
  %202 = icmp eq i32 %201, 0
  %203 = load ptr, ptr %19, align 4
  call void @release_firmware(ptr noundef %203) #12
  br i1 %202, label %204, label %228

204:                                              ; preds = %196
  %205 = call fastcc i32 @mxl692_get_versions(ptr noundef %21)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %228

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.mxl692_dev, ptr %21, i32 0, i32 4
  store i32 0, ptr %208, align 4
  br label %213

209:                                              ; preds = %1
  %210 = getelementptr inbounds %struct.mxl692_dev, ptr %21, i32 0, i32 4
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %219, label %213

213:                                              ; preds = %209, %207
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 1, ptr %2, align 1
  %214 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %21, i8 noundef zeroext 2, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0) #12
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %228

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.mxl692_dev, ptr %21, i32 0, i32 4
  store i32 1, ptr %218, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  call void @usleep_range_state(i32 noundef 50000, i32 noundef 60000, i32 noundef 2) #12
  br label %219

219:                                              ; preds = %217, %209
  %220 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %220, align 1
  %221 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %221, align 1
  %222 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %222, align 4
  %223 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %223, align 1
  %224 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %224, align 1
  %225 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %225, align 1
  %226 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %226, align 2
  %227 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %227, align 1
  store i32 1, ptr %24, align 4
  br label %228

228:                                              ; preds = %219, %216, %204, %196, %192, %190, %87, %43, %42
  %229 = phi i32 [ 0, %219 ], [ %214, %216 ], [ %44, %43 ], [ %194, %192 ], [ %205, %204 ], [ -121, %42 ], [ %88, %87 ], [ %191, %190 ], [ %201, %196 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  ret i32 %229
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl692_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mxl692_dev, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1
  %9 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %4, i8 noundef zeroext 2, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %11, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %13

13:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl692_set_frontend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, align 1
  %3 = alloca %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, align 1
  %4 = alloca %struct.MXL_EAGLE_TUNER_CHANNEL_PARAMS_T, align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  store i32 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %3, i8 0, i32 13, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %66 [
    i32 7, label %13
    i32 6, label %12
    i32 3, label %12
    i32 4, label %12
    i32 5, label %12
  ]

12:                                               ; preds = %1, %1, %1, %1
  br label %13

13:                                               ; preds = %12, %1
  %14 = phi i1 [ true, %1 ], [ false, %12 ]
  %15 = phi i32 [ 2, %1 ], [ 0, %12 ]
  %16 = getelementptr inbounds %struct.mxl692_dev, ptr %8, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.mxl692_dev, ptr %8, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %15
  br i1 %23, label %66, label %24

24:                                               ; preds = %20, %13
  store i32 -1, ptr %16, align 4
  %25 = getelementptr inbounds %struct.mxl692_dev, ptr %8, i32 0, i32 3
  store i32 -1, ptr %25, align 4
  %26 = trunc i32 %15 to i8
  store i8 %26, ptr %5, align 1
  %27 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %8, i8 noundef zeroext 0, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #12
  store i8 0, ptr %2, align 1
  %30 = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %2, i32 0, i32 1
  store i8 1, ptr %30, align 1
  %31 = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %2, i32 0, i32 2
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %2, i32 0, i32 3
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %2, i32 0, i32 4
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %2, i32 0, i32 5
  store i8 1, ptr %34, align 1
  %35 = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %2, i32 0, i32 6
  store i8 0, ptr %35, align 1
  %36 = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %2, i32 0, i32 7
  store i8 2, ptr %36, align 1
  %37 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %8, i8 noundef zeroext 1, ptr noundef nonnull %2, i8 noundef zeroext 12, ptr noundef null, i8 noundef zeroext 0)
  %38 = icmp eq i32 %37, 0
  br i1 %14, label %39, label %40

39:                                               ; preds = %29
  br i1 %38, label %51, label %66

40:                                               ; preds = %29
  br i1 %38, label %41, label %66

41:                                               ; preds = %40
  store i8 0, ptr %3, align 1
  %42 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, ptr %3, i32 0, i32 1
  store i8 7, ptr %42, align 1
  %43 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, ptr %3, i32 0, i32 2
  store i8 2, ptr %43, align 1
  %44 = load i32, ptr %10, align 4
  %45 = icmp eq i32 %44, 3
  %46 = select i1 %45, i32 5057000, i32 5361000
  %47 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, ptr %3, i32 0, i32 5
  store i32 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, ptr %3, i32 0, i32 6
  store i32 5361000, ptr %48, align 1
  %49 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %8, i8 noundef zeroext 19, ptr noundef nonnull %3, i8 noundef zeroext 13, ptr noundef null, i8 noundef zeroext 0)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %41, %39
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #12
  %52 = load i32, ptr %6, align 4
  store i32 %52, ptr %4, align 4
  %53 = getelementptr inbounds %struct.MXL_EAGLE_TUNER_CHANNEL_PARAMS_T, ptr %4, i32 0, i32 2
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds %struct.MXL_EAGLE_TUNER_CHANNEL_PARAMS_T, ptr %4, i32 0, i32 1
  store i8 0, ptr %54, align 4
  %55 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %8, i8 noundef zeroext 10, ptr noundef nonnull %4, i8 noundef zeroext 6, ptr noundef null, i8 noundef zeroext 0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #12
  br i1 %14, label %58, label %61

58:                                               ; preds = %57
  %59 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %8, i8 noundef zeroext 13, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %66

61:                                               ; preds = %57
  %62 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %8, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %58
  store i32 %15, ptr %25, align 4
  %65 = load i32, ptr %6, align 4
  store i32 %65, ptr %16, align 4
  br label %66

66:                                               ; preds = %64, %61, %58, %51, %41, %40, %39, %24, %20, %1
  %67 = phi i32 [ 0, %64 ], [ -22, %1 ], [ 0, %20 ], [ %27, %24 ], [ %55, %51 ], [ %62, %61 ], [ %59, %58 ], [ %37, %40 ], [ %49, %41 ], [ %37, %39 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  ret i32 %67
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mxl692_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %3, align 4
  store i32 %7, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl692_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [58 x i8], align 4
  %4 = alloca [58 x i8], align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(58) %4, i8 0, i32 58, i1 false)
  %7 = getelementptr inbounds %struct.mxl692_dev, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  store i32 0, ptr %1, align 4
  switch i32 %8, label %41 [
    i32 2, label %9
    i32 0, label %23
  ]

9:                                                ; preds = %2
  %10 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %6, i8 noundef zeroext 15, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext 11)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.MXL_EAGLE_ATSC_DEMOD_STATUS_T, ptr %4, i32 0, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %1, align 4
  %18 = or i32 %17, 31
  store i32 %18, ptr %1, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %19, align 1
  %20 = load i16, ptr %4, align 2
  %21 = sdiv i16 %20, 10
  %22 = sext i16 %21 to i64
  br label %38

23:                                               ; preds = %2
  %24 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %6, i8 noundef zeroext 21, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext 16)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_STATUS_T, ptr %4, i32 0, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %1, align 4
  %32 = or i32 %31, 31
  store i32 %32, ptr %1, align 4
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %33, align 1
  %34 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_STATUS_T, ptr %4, i32 0, i32 8
  %35 = load i16, ptr %34, align 4
  %36 = udiv i16 %35, 10
  %37 = zext i16 %36 to i64
  br label %38

38:                                               ; preds = %30, %16
  %39 = phi i64 [ %37, %30 ], [ %22, %16 ]
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %39, ptr %40, align 1
  br label %41

41:                                               ; preds = %38, %26, %23, %12, %9, %2
  %42 = phi i32 [ 0, %2 ], [ %24, %23 ], [ 0, %26 ], [ %10, %9 ], [ 0, %12 ], [ 0, %38 ]
  %43 = load i32, ptr %1, align 4
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %47, align 1
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %48, align 1
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %51, align 1
  br label %91

52:                                               ; preds = %41
  %53 = icmp eq i32 %42, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %52
  %55 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(58) %3, i8 0, i32 58, i1 false) #12
  %56 = getelementptr inbounds %struct.mxl692_dev, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %89

59:                                               ; preds = %54
  %60 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %55, i8 noundef zeroext 16, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext 12) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %59
  %63 = load i32, ptr %3, align 4
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.MXL_EAGLE_ATSC_DEMOD_ERROR_COUNTERS_T, ptr %3, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  br i1 %64, label %72, label %67

67:                                               ; preds = %62
  %68 = udiv i32 %66, %63
  %69 = getelementptr inbounds %struct.MXL_EAGLE_ATSC_DEMOD_ERROR_COUNTERS_T, ptr %3, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = mul i32 %70, %68
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ %71, %67 ], [ 0, %62 ]
  %74 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %74, align 1
  %75 = zext i32 %66 to i64
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %77 = load i64, ptr %76, align 1
  %78 = add i64 %77, %75
  store i64 %78, ptr %76, align 1
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %79, align 1
  %80 = zext i32 %73 to i64
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %82 = load i64, ptr %81, align 1
  %83 = add i64 %82, %80
  store i64 %83, ptr %81, align 1
  %84 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %84, align 1
  %85 = zext i32 %63 to i64
  %86 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %87 = load i64, ptr %86, align 1
  %88 = add i64 %87, %85
  store i64 %88, ptr %86, align 1
  br label %89

89:                                               ; preds = %72, %59, %54
  %90 = phi i32 [ %60, %59 ], [ 0, %72 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %3) #12
  br label %91

91:                                               ; preds = %89, %52, %46
  %92 = phi i32 [ 0, %46 ], [ %42, %52 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %4) #12
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl692_read_snr(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [58 x i8], align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(58) %3, i8 0, i32 58, i1 false)
  %6 = getelementptr inbounds %struct.mxl692_dev, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  store i16 0, ptr %1, align 2
  switch i32 %7, label %25 [
    i32 2, label %8
    i32 0, label %18
  ]

8:                                                ; preds = %2
  %9 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %5, i8 noundef zeroext 15, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext 11)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i16, ptr %3, align 2
  %13 = sdiv i16 %12, 10
  store i16 %13, ptr %1, align 2
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %14, align 1
  %15 = load i16, ptr %1, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %16, ptr %17, align 1
  br label %25

18:                                               ; preds = %2
  %19 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %5, i8 noundef zeroext 21, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext 16)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_STATUS_T, ptr %3, i32 0, i32 8
  %23 = load i16, ptr %22, align 4
  %24 = udiv i16 %23, 10
  store i16 %24, ptr %1, align 2
  br label %25

25:                                               ; preds = %21, %18, %11, %8, %2
  %26 = phi i32 [ 0, %2 ], [ %19, %18 ], [ 0, %21 ], [ %9, %8 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %3) #12
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_fwdownload(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [58 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca [58 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %7, i8 0, i32 58, i1 false)
  %8 = add i32 %2, -76001
  %9 = icmp ult i32 %8, -75985
  br i1 %9, label %63, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %11) #12
  %12 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %1, ptr noundef nonnull dereferenceable(8) @mxl692_validate_fw_header.fw_hdr, i32 8) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %1, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %18 = add nsw i32 %2, -16
  %19 = lshr i32 %17, 8
  %20 = icmp eq i32 %18, %19
  %21 = lshr i32 %16, 24
  br i1 %20, label %22, label %61

22:                                               ; preds = %14
  %23 = icmp ugt i32 %2, 16
  br i1 %23, label %24, label %34

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %32, %24 ], [ 0, %22 ]
  %26 = phi i32 [ %31, %24 ], [ 16, %22 ]
  %27 = getelementptr i8, ptr %1, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %25, %29
  %31 = add nuw nsw i32 %26, 1
  %32 = and i32 %30, 255
  %33 = icmp eq i32 %31, %2
  br i1 %33, label %34, label %24

34:                                               ; preds = %24, %22
  %35 = phi i32 [ 0, %22 ], [ %32, %24 ]
  %36 = icmp eq i32 %35, %21
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  store i32 16, ptr %6, align 4
  %38 = call fastcc i32 @mxl692_write_fw_block(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = call fastcc i32 @mxl692_write_fw_block(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %5) #12
  %44 = getelementptr inbounds i8, ptr %5, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %44, i8 0, i32 48, i1 false) #12
  %45 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -4, ptr %5, align 1
  %46 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 8, ptr %45, align 1
  store i32 1879048216, ptr %46, align 4
  %47 = getelementptr inbounds i8, ptr %5, i32 6
  store i32 1, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %48 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 10, ptr %48, align 4, !annotation !8
  %49 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  store i16 %52, ptr %4, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %53, align 2
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %4, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  %58 = icmp sgt i32 %57, -1
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %5) #12
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  call void @mutex_unlock(ptr noundef %11) #12
  call void @usleep_range_state(i32 noundef 50000, i32 noundef 55000, i32 noundef 2) #12
  %60 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %0, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %7, i8 noundef zeroext 4)
  br label %63

61:                                               ; preds = %43, %40, %37, %34, %14, %10
  %62 = phi i32 [ %38, %37 ], [ %41, %40 ], [ -121, %43 ], [ -22, %10 ], [ -22, %14 ], [ -22, %34 ]
  call void @mutex_unlock(ptr noundef %11) #12
  br label %63

63:                                               ; preds = %61, %59, %3
  %64 = phi i32 [ %62, %61 ], [ %60, %59 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_get_versions(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.MXL_EAGLE_DEV_VER_T, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %2, i8 0, i32 11, i1 false)
  %3 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %0, i8 noundef zeroext 7, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %2, i8 noundef zeroext 11)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %9 = load i8, ptr %2, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr [4 x ptr], ptr @mxl692_get_versions.chip_id, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef %12) #14
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %2, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %2, i32 0, i32 1, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %2, i32 0, i32 1, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %2, i32 0, i32 1, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %2, i32 0, i32 1, i32 4
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29) #14
  br label %30

30:                                               ; preds = %5, %1
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_memwrite(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [58 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %6, i8 0, i32 48, i1 false)
  %7 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -4, ptr %5, align 1
  %8 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 8, ptr %7, align 1
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %5, i32 6
  %10 = load i32, ptr %2, align 1
  store i32 %10, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 10, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  store i16 %15, ptr %4, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  %21 = icmp slt i32 %20, 0
  %22 = select i1 %21, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %5) #12
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_memread(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %7 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -5, ptr %6, align 1
  %8 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 4, ptr %7, align 1
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 6, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  store i16 %14, ptr %5, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %5, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %22 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %22, align 4, !annotation !8
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  store i16 %25, ptr %4, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %4, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  %31 = icmp slt i32 %30, 0
  %32 = select i1 %31, i32 -121, i32 0
  br label %33

33:                                               ; preds = %21, %3
  %34 = phi i32 [ %32, %21 ], [ -121, %3 ]
  call void @mutex_unlock(ptr noundef %9) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_write_fw_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [58 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %6, i8 0, i32 52, i1 false)
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr i8, ptr %1, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 83
  br i1 %10, label %11, label %122

11:                                               ; preds = %3
  %12 = add i32 %7, 1
  %13 = getelementptr i8, ptr %1, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = add i32 %7, 2
  %18 = getelementptr i8, ptr %1, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %21, %16
  %23 = add i32 %7, 3
  %24 = getelementptr i8, ptr %1, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %22, %26
  %28 = add nuw nsw i32 %27, 3
  %29 = and i32 %28, 33554428
  %30 = add i32 %7, 4
  %31 = getelementptr i8, ptr %1, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = add i32 %7, 5
  %36 = getelementptr i8, ptr %1, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or i32 %39, %34
  %41 = add i32 %7, 6
  %42 = getelementptr i8, ptr %1, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or i32 %40, %45
  %47 = add i32 %7, 7
  %48 = getelementptr i8, ptr %1, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %46, %50
  %52 = add i32 %7, 8
  %53 = icmp eq i32 %29, 0
  br i1 %53, label %119, label %54

54:                                               ; preds = %11
  %55 = getelementptr inbounds i8, ptr %5, i32 1
  %56 = getelementptr inbounds i8, ptr %5, i32 2
  %57 = getelementptr inbounds i8, ptr %5, i32 6
  %58 = getelementptr inbounds i8, ptr %4, i32 4
  %59 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 1
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  br label %62

62:                                               ; preds = %114, %54
  %63 = phi i32 [ 0, %54 ], [ %115, %114 ]
  %64 = phi i32 [ %29, %54 ], [ %116, %114 ]
  %65 = phi i32 [ %52, %54 ], [ %117, %114 ]
  %66 = call i32 @llvm.umin.i32(i32 %64, i32 52)
  store i8 -4, ptr %5, align 1
  %67 = trunc i32 %66 to i8
  %68 = add nuw nsw i8 %67, 4
  store i8 %68, ptr %55, align 1
  %69 = add i32 %63, %51
  store i32 %69, ptr %56, align 4
  %70 = getelementptr i8, ptr %1, i32 %65
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %57, ptr align 1 %70, i32 %66, i1 false)
  %71 = and i32 %66, 60
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %73, %62
  %74 = phi i32 [ %86, %73 ], [ 0, %62 ]
  %75 = or i32 %74, 3
  %76 = getelementptr i8, ptr %57, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr i8, ptr %57, i32 %74
  %79 = load i8, ptr %78, align 1
  store i8 %79, ptr %76, align 1
  store i8 %77, ptr %78, align 1
  %80 = or i32 %74, 2
  %81 = getelementptr i8, ptr %57, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = or i32 %74, 1
  %84 = getelementptr i8, ptr %57, i32 %83
  %85 = load i8, ptr %84, align 1
  store i8 %85, ptr %81, align 1
  store i8 %82, ptr %84, align 1
  %86 = add nuw nsw i32 %74, 4
  %87 = icmp ult i32 %86, %71
  br i1 %87, label %73, label %88

88:                                               ; preds = %73, %62
  %89 = phi i32 [ 0, %62 ], [ %86, %73 ]
  %90 = and i32 %66, 3
  switch i32 %90, label %103 [
    i32 0, label %104
    i32 1, label %104
    i32 2, label %91
    i32 3, label %97
  ]

91:                                               ; preds = %88
  %92 = or i32 %89, 1
  %93 = getelementptr i8, ptr %57, i32 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %57, i32 %89
  %96 = load i8, ptr %95, align 1
  store i8 %96, ptr %93, align 1
  store i8 %94, ptr %95, align 1
  br label %104

97:                                               ; preds = %88
  %98 = or i32 %89, 2
  %99 = getelementptr i8, ptr %57, i32 %98
  %100 = load i8, ptr %99, align 1
  %101 = getelementptr i8, ptr %57, i32 %89
  %102 = load i8, ptr %101, align 1
  store i8 %102, ptr %99, align 1
  store i8 %100, ptr %101, align 1
  br label %104

103:                                              ; preds = %88
  unreachable

104:                                              ; preds = %97, %91, %88, %88
  %105 = trunc i32 %66 to i16
  %106 = add nuw nsw i16 %105, 6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  store i32 0, ptr %58, align 4, !annotation !8
  %107 = load ptr, ptr %59, align 4
  %108 = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 1
  %109 = load i16, ptr %108, align 2
  store i16 %109, ptr %4, align 4
  store i16 0, ptr %60, align 2
  store i16 %106, ptr %58, align 4
  store ptr %5, ptr %61, align 4
  %110 = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 3
  %111 = load ptr, ptr %110, align 8
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %4, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %104
  %115 = add i32 %63, %66
  %116 = sub i32 %64, %66
  %117 = add i32 %66, %65
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %119, label %62

119:                                              ; preds = %114, %104, %11
  %120 = phi i32 [ %52, %11 ], [ %65, %104 ], [ %117, %114 ]
  %121 = phi i32 [ 0, %11 ], [ -121, %104 ], [ 0, %114 ]
  store i32 %120, ptr %2, align 4
  br label %122

122:                                              ; preds = %119, %3
  %123 = phi i32 [ %121, %119 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %5) #12
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_i2c_writeread(ptr noundef %0, i8 noundef zeroext %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef writeonly %4, i8 noundef zeroext %5) unnamed_addr #2 {
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [58 x i8], align 1
  %12 = alloca [58 x i8], align 1
  %13 = alloca [58 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %12) #12
  %14 = getelementptr inbounds i8, ptr %12, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %14, i8 0, i32 55, i1 false)
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %13) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %13, i8 0, i32 58, i1 false)
  %15 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %15) #12
  %16 = zext i8 %3 to i32
  store i8 %1, ptr %12, align 1
  %17 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = trunc i32 %18 to i8
  %21 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %12, i32 0, i32 1
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %12, i32 0, i32 2
  store i8 %3, ptr %22, align 1
  %23 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %12, i32 0, i32 4
  store i32 0, ptr %23, align 1
  %24 = icmp eq i32 %19, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 1, ptr %17, align 4
  br label %26

26:                                               ; preds = %25, %6
  %27 = icmp ne ptr %2, null
  %28 = icmp ne i8 %3, 0
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds [58 x i8], ptr %12, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr nonnull align 1 %2, i32 %16, i1 false)
  br label %32

32:                                               ; preds = %30, %26
  switch i8 %1, label %59 [
    i8 5, label %33
    i8 10, label %33
    i8 37, label %33
    i8 19, label %42
  ]

33:                                               ; preds = %32, %32, %32
  %34 = getelementptr inbounds i8, ptr %12, i32 8
  %35 = getelementptr inbounds i8, ptr %12, i32 11
  %36 = load i8, ptr %35, align 1
  %37 = load i8, ptr %34, align 1
  store i8 %37, ptr %35, align 1
  store i8 %36, ptr %34, align 1
  %38 = getelementptr inbounds i8, ptr %12, i32 10
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds i8, ptr %12, i32 9
  %41 = load i8, ptr %40, align 1
  store i8 %41, ptr %38, align 1
  store i8 %39, ptr %40, align 1
  br label %59

42:                                               ; preds = %32
  %43 = getelementptr inbounds i8, ptr %12, i32 13
  %44 = getelementptr inbounds i8, ptr %12, i32 16
  %45 = load i8, ptr %44, align 1
  %46 = load i8, ptr %43, align 1
  store i8 %46, ptr %44, align 1
  store i8 %45, ptr %43, align 1
  %47 = getelementptr inbounds i8, ptr %12, i32 15
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds i8, ptr %12, i32 14
  %50 = load i8, ptr %49, align 1
  store i8 %50, ptr %47, align 1
  store i8 %48, ptr %49, align 1
  %51 = getelementptr inbounds i8, ptr %12, i32 20
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds i8, ptr %12, i32 17
  %54 = load i8, ptr %53, align 1
  store i8 %54, ptr %51, align 1
  store i8 %52, ptr %53, align 1
  %55 = getelementptr inbounds i8, ptr %12, i32 19
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr inbounds i8, ptr %12, i32 18
  %58 = load i8, ptr %57, align 1
  store i8 %58, ptr %55, align 1
  store i8 %56, ptr %57, align 1
  br label %59

59:                                               ; preds = %42, %33, %32
  store i32 0, ptr %23, align 1
  %60 = add nuw nsw i32 %16, 11
  %61 = lshr i32 %60, 2
  br label %62

62:                                               ; preds = %62, %59
  %63 = phi i32 [ %68, %62 ], [ 0, %59 ]
  %64 = phi i32 [ %69, %62 ], [ 0, %59 ]
  %65 = getelementptr i32, ptr %12, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #12
  %68 = add i32 %67, %63
  %69 = add nuw nsw i32 %64, 1
  %70 = icmp eq i32 %69, %61
  br i1 %70, label %71, label %62

71:                                               ; preds = %62
  %72 = xor i32 %68, -559038737
  %73 = getelementptr inbounds i8, ptr %23, i32 3
  %74 = lshr i32 %72, 24
  %75 = trunc i32 %74 to i8
  %76 = trunc i32 %72 to i8
  store i8 %76, ptr %73, align 1
  store i8 %75, ptr %23, align 1
  %77 = getelementptr inbounds i8, ptr %23, i32 2
  %78 = lshr i32 %72, 16
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %23, i32 1
  %81 = lshr i32 %72, 8
  %82 = trunc i32 %81 to i8
  store i8 %82, ptr %77, align 1
  store i8 %79, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %11) #12
  %83 = getelementptr inbounds i8, ptr %11, i32 2
  %84 = and i32 %60, 508
  %85 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -2, ptr %11, align 1
  %86 = trunc i32 %84 to i8
  store i8 %86, ptr %85, align 1
  %87 = icmp ugt i32 %84, 55
  %88 = sub nsw i32 56, %84
  %89 = select i1 %87, i32 0, i32 %88
  %90 = getelementptr i8, ptr %83, i32 %84
  call void @llvm.memset.p0.i32(ptr align 1 %90, i8 0, i32 %89, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %83, ptr nonnull align 1 %12, i32 %84, i1 false) #12
  %91 = icmp eq i32 %84, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %92, %71
  %93 = phi i32 [ %105, %92 ], [ 0, %71 ]
  %94 = or i32 %93, 3
  %95 = getelementptr i8, ptr %83, i32 %94
  %96 = load i8, ptr %95, align 1
  %97 = getelementptr i8, ptr %83, i32 %93
  %98 = load i8, ptr %97, align 1
  store i8 %98, ptr %95, align 1
  store i8 %96, ptr %97, align 1
  %99 = or i32 %93, 2
  %100 = getelementptr i8, ptr %83, i32 %99
  %101 = load i8, ptr %100, align 1
  %102 = or i32 %93, 1
  %103 = getelementptr i8, ptr %83, i32 %102
  %104 = load i8, ptr %103, align 1
  store i8 %104, ptr %100, align 1
  store i8 %101, ptr %103, align 1
  %105 = add nuw nsw i32 %93, 4
  %106 = icmp ult i32 %105, %84
  br i1 %106, label %92, label %107

107:                                              ; preds = %92, %71
  %108 = trunc i32 %84 to i16
  %109 = or i16 %108, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %110 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 0, ptr %110, align 4, !annotation !8
  %111 = getelementptr inbounds %struct.mxl692_dev, ptr %0, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.i2c_client, ptr %112, i32 0, i32 1
  %114 = load i16, ptr %113, align 2
  store i16 %114, ptr %10, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %115, align 2
  store i16 %109, ptr %110, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %116, align 4
  %117 = getelementptr inbounds %struct.i2c_client, ptr %112, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %10, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  %120 = icmp sgt i32 %119, -1
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %11) #12
  br i1 %120, label %121, label %227

121:                                              ; preds = %107
  %122 = getelementptr inbounds i8, ptr %8, i32 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %125 = zext i8 %5 to i32
  %126 = add nuw nsw i32 %125, 11
  %127 = and i32 %126, 508
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds i8, ptr %7, i32 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %132 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %13, i32 0, i32 1
  %133 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %13, i32 0, i32 4
  br label %134

134:                                              ; preds = %173, %121
  %135 = phi i32 [ %176, %173 ], [ 40, %121 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 253, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  store i32 2, ptr %122, align 4, !annotation !8
  %136 = load ptr, ptr %111, align 4
  %137 = getelementptr inbounds %struct.i2c_client, ptr %136, i32 0, i32 1
  %138 = load i16, ptr %137, align 2
  store i16 %138, ptr %8, align 4
  store i16 0, ptr %123, align 2
  store ptr %9, ptr %124, align 4
  %139 = getelementptr inbounds %struct.i2c_client, ptr %136, i32 0, i32 3
  %140 = load ptr, ptr %139, align 8
  %141 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %8, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  %142 = icmp slt i32 %141, 1
  %143 = select i1 %142, i1 true, i1 %128
  %144 = xor i1 %142, true
  br i1 %143, label %173, label %148

145:                                              ; preds = %148
  %146 = add nuw nsw i32 %149, 4
  %147 = icmp ult i32 %146, %127
  br i1 %147, label %148, label %158

148:                                              ; preds = %145, %134
  %149 = phi i32 [ %146, %145 ], [ 0, %134 ]
  %150 = getelementptr i8, ptr %13, i32 %149
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  store i32 0, ptr %129, align 4, !annotation !8
  %151 = load ptr, ptr %111, align 4
  %152 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 1
  %153 = load i16, ptr %152, align 2
  store i16 %153, ptr %7, align 4
  store i16 1, ptr %130, align 2
  store i16 4, ptr %129, align 4
  store ptr %150, ptr %131, align 4
  %154 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 3
  %155 = load ptr, ptr %154, align 8
  %156 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %7, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %173, label %145

158:                                              ; preds = %158, %145
  %159 = phi i32 [ %171, %158 ], [ 0, %145 ]
  %160 = or i32 %159, 3
  %161 = getelementptr i8, ptr %13, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = getelementptr i8, ptr %13, i32 %159
  %164 = load i8, ptr %163, align 1
  store i8 %164, ptr %161, align 1
  store i8 %162, ptr %163, align 1
  %165 = or i32 %159, 2
  %166 = getelementptr i8, ptr %13, i32 %165
  %167 = load i8, ptr %166, align 1
  %168 = or i32 %159, 1
  %169 = getelementptr i8, ptr %13, i32 %168
  %170 = load i8, ptr %169, align 1
  store i8 %170, ptr %166, align 1
  store i8 %167, ptr %169, align 1
  %171 = add nuw nsw i32 %159, 4
  %172 = icmp ult i32 %171, %127
  br i1 %172, label %158, label %173

173:                                              ; preds = %158, %148, %134
  %174 = phi i1 [ %144, %134 ], [ true, %158 ], [ false, %148 ]
  %175 = phi i1 [ %142, %134 ], [ false, %158 ], [ true, %148 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %176 = add nsw i32 %135, -1
  %177 = icmp ne i32 %176, 0
  %178 = and i1 %177, %174
  %179 = load i8, ptr %132, align 1
  %180 = icmp eq i8 %179, 0
  %181 = select i1 %178, i1 %180, i1 false
  %182 = load i32, ptr %133, align 1
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %134, label %185

185:                                              ; preds = %173
  %186 = icmp eq i32 %176, 0
  %187 = or i1 %186, %175
  br i1 %187, label %227, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %13, i32 0, i32 3
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i8 %190, 0
  %192 = load i8, ptr %21, align 1
  %193 = icmp eq i8 %179, %192
  %194 = select i1 %191, i1 %193, i1 false
  br i1 %194, label %195, label %227

195:                                              ; preds = %188
  %196 = load i8, ptr %13, align 1
  %197 = load i8, ptr %12, align 1
  %198 = icmp eq i8 %196, %197
  br i1 %198, label %199, label %227

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %13, i32 0, i32 2
  %201 = load i8, ptr %200, align 1
  %202 = icmp eq i8 %201, %5
  br i1 %202, label %203, label %227

203:                                              ; preds = %199
  store i32 0, ptr %133, align 1
  %204 = lshr i32 %126, 2
  br label %205

205:                                              ; preds = %205, %203
  %206 = phi i32 [ %211, %205 ], [ 0, %203 ]
  %207 = phi i32 [ %212, %205 ], [ 0, %203 ]
  %208 = getelementptr i32, ptr %13, i32 %207
  %209 = load i32, ptr %208, align 4
  %210 = call i32 @llvm.bswap.i32(i32 %209) #12
  %211 = add i32 %210, %206
  %212 = add nuw nsw i32 %207, 1
  %213 = icmp eq i32 %212, %204
  br i1 %213, label %214, label %205

214:                                              ; preds = %205
  %215 = xor i32 %211, -559038737
  %216 = call i32 @llvm.bswap.i32(i32 %215)
  %217 = icmp eq i32 %182, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %214
  %219 = zext i8 %196 to i32
  call fastcc void @mxl692_rx_swap(i32 noundef %219, ptr noundef nonnull %13)
  %220 = load i8, ptr %200, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp eq i8 %220, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %218
  %224 = icmp eq ptr %4, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %223
  %226 = getelementptr inbounds i8, ptr %13, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %4, ptr align 1 %226, i32 %221, i1 false)
  br label %227

227:                                              ; preds = %225, %223, %218, %214, %199, %195, %188, %185, %107
  %228 = phi i32 [ 0, %225 ], [ 0, %218 ], [ -121, %107 ], [ -110, %185 ], [ -121, %188 ], [ -121, %199 ], [ -121, %195 ], [ -121, %214 ], [ -121, %223 ]
  call void @mutex_unlock(ptr noundef %15) #12
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %12) #12
  ret i32 %228
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxl692_rx_swap(i32 noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = getelementptr i8, ptr %1, i32 8
  switch i32 %0, label %310 [
    i32 12, label %208
    i32 15, label %217
    i32 16, label %184
    i32 18, label %136
    i32 21, label %229
    i32 22, label %80
    i32 23, label %242
    i32 28, label %242
    i32 29, label %242
    i32 30, label %242
    i32 25, label %242
    i32 26, label %64
    i32 24, label %28
    i32 33, label %4
    i32 34, label %290
    i32 38, label %302
  ]

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %1, i32 11
  %6 = load i8, ptr %5, align 1
  %7 = load i8, ptr %3, align 1
  store i8 %7, ptr %5, align 1
  store i8 %6, ptr %3, align 1
  %8 = getelementptr i8, ptr %1, i32 10
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %1, i32 9
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr %8, align 1
  store i8 %9, ptr %10, align 1
  %12 = getelementptr i8, ptr %1, i32 15
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr i8, ptr %1, i32 12
  %15 = load i8, ptr %14, align 1
  store i8 %15, ptr %12, align 1
  store i8 %13, ptr %14, align 1
  %16 = getelementptr i8, ptr %1, i32 14
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr i8, ptr %1, i32 13
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %16, align 1
  store i8 %17, ptr %18, align 1
  %20 = getelementptr i8, ptr %1, i32 19
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr i8, ptr %1, i32 16
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %20, align 1
  store i8 %21, ptr %22, align 1
  %24 = getelementptr i8, ptr %1, i32 18
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr i8, ptr %1, i32 17
  %27 = load i8, ptr %26, align 1
  store i8 %27, ptr %24, align 1
  store i8 %25, ptr %26, align 1
  br label %310

28:                                               ; preds = %2
  %29 = getelementptr i8, ptr %1, i32 9
  %30 = load i8, ptr %29, align 1
  %31 = load i8, ptr %3, align 1
  store i8 %31, ptr %29, align 1
  store i8 %30, ptr %3, align 1
  %32 = getelementptr i8, ptr %1, i32 10
  %33 = getelementptr i8, ptr %1, i32 11
  %34 = load i8, ptr %33, align 1
  %35 = load i8, ptr %32, align 1
  store i8 %35, ptr %33, align 1
  store i8 %34, ptr %32, align 1
  %36 = getelementptr i8, ptr %1, i32 12
  %37 = getelementptr i8, ptr %1, i32 13
  %38 = load i8, ptr %37, align 1
  %39 = load i8, ptr %36, align 1
  store i8 %39, ptr %37, align 1
  store i8 %38, ptr %36, align 1
  %40 = getelementptr i8, ptr %1, i32 14
  %41 = getelementptr i8, ptr %1, i32 15
  %42 = load i8, ptr %41, align 1
  %43 = load i8, ptr %40, align 1
  store i8 %43, ptr %41, align 1
  store i8 %42, ptr %40, align 1
  %44 = getelementptr i8, ptr %1, i32 16
  %45 = getelementptr i8, ptr %1, i32 17
  %46 = load i8, ptr %45, align 1
  %47 = load i8, ptr %44, align 1
  store i8 %47, ptr %45, align 1
  store i8 %46, ptr %44, align 1
  %48 = getelementptr i8, ptr %1, i32 18
  %49 = getelementptr i8, ptr %1, i32 19
  %50 = load i8, ptr %49, align 1
  %51 = load i8, ptr %48, align 1
  store i8 %51, ptr %49, align 1
  store i8 %50, ptr %48, align 1
  %52 = getelementptr i8, ptr %1, i32 20
  %53 = getelementptr i8, ptr %1, i32 21
  %54 = load i8, ptr %53, align 1
  %55 = load i8, ptr %52, align 1
  store i8 %55, ptr %53, align 1
  store i8 %54, ptr %52, align 1
  %56 = getelementptr i8, ptr %1, i32 22
  %57 = getelementptr i8, ptr %1, i32 23
  %58 = load i8, ptr %57, align 1
  %59 = load i8, ptr %56, align 1
  store i8 %59, ptr %57, align 1
  store i8 %58, ptr %56, align 1
  %60 = getelementptr i8, ptr %1, i32 24
  %61 = getelementptr i8, ptr %1, i32 25
  %62 = load i8, ptr %61, align 1
  %63 = load i8, ptr %60, align 1
  store i8 %63, ptr %61, align 1
  store i8 %62, ptr %60, align 1
  br label %310

64:                                               ; preds = %2
  %65 = getelementptr i8, ptr %1, i32 9
  %66 = load i8, ptr %65, align 1
  %67 = load i8, ptr %3, align 1
  store i8 %67, ptr %65, align 1
  store i8 %66, ptr %3, align 1
  %68 = getelementptr i8, ptr %1, i32 10
  %69 = getelementptr i8, ptr %1, i32 11
  %70 = load i8, ptr %69, align 1
  %71 = load i8, ptr %68, align 1
  store i8 %71, ptr %69, align 1
  store i8 %70, ptr %68, align 1
  %72 = getelementptr i8, ptr %1, i32 12
  %73 = getelementptr i8, ptr %1, i32 13
  %74 = load i8, ptr %73, align 1
  %75 = load i8, ptr %72, align 1
  store i8 %75, ptr %73, align 1
  store i8 %74, ptr %72, align 1
  %76 = getelementptr i8, ptr %1, i32 14
  %77 = getelementptr i8, ptr %1, i32 15
  %78 = load i8, ptr %77, align 1
  %79 = load i8, ptr %76, align 1
  store i8 %79, ptr %77, align 1
  store i8 %78, ptr %76, align 1
  br label %310

80:                                               ; preds = %2
  %81 = getelementptr i8, ptr %1, i32 11
  %82 = load i8, ptr %81, align 1
  %83 = load i8, ptr %3, align 1
  store i8 %83, ptr %81, align 1
  store i8 %82, ptr %3, align 1
  %84 = getelementptr i8, ptr %1, i32 10
  %85 = load i8, ptr %84, align 1
  %86 = getelementptr i8, ptr %1, i32 9
  %87 = load i8, ptr %86, align 1
  store i8 %87, ptr %84, align 1
  store i8 %85, ptr %86, align 1
  %88 = getelementptr i8, ptr %1, i32 15
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %1, i32 12
  %91 = load i8, ptr %90, align 1
  store i8 %91, ptr %88, align 1
  store i8 %89, ptr %90, align 1
  %92 = getelementptr i8, ptr %1, i32 14
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %1, i32 13
  %95 = load i8, ptr %94, align 1
  store i8 %95, ptr %92, align 1
  store i8 %93, ptr %94, align 1
  %96 = getelementptr i8, ptr %1, i32 19
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr i8, ptr %1, i32 16
  %99 = load i8, ptr %98, align 1
  store i8 %99, ptr %96, align 1
  store i8 %97, ptr %98, align 1
  %100 = getelementptr i8, ptr %1, i32 18
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr i8, ptr %1, i32 17
  %103 = load i8, ptr %102, align 1
  store i8 %103, ptr %100, align 1
  store i8 %101, ptr %102, align 1
  %104 = getelementptr i8, ptr %1, i32 23
  %105 = load i8, ptr %104, align 1
  %106 = getelementptr i8, ptr %1, i32 20
  %107 = load i8, ptr %106, align 1
  store i8 %107, ptr %104, align 1
  store i8 %105, ptr %106, align 1
  %108 = getelementptr i8, ptr %1, i32 22
  %109 = load i8, ptr %108, align 1
  %110 = getelementptr i8, ptr %1, i32 21
  %111 = load i8, ptr %110, align 1
  store i8 %111, ptr %108, align 1
  store i8 %109, ptr %110, align 1
  %112 = getelementptr i8, ptr %1, i32 27
  %113 = load i8, ptr %112, align 1
  %114 = getelementptr i8, ptr %1, i32 24
  %115 = load i8, ptr %114, align 1
  store i8 %115, ptr %112, align 1
  store i8 %113, ptr %114, align 1
  %116 = getelementptr i8, ptr %1, i32 26
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %1, i32 25
  %119 = load i8, ptr %118, align 1
  store i8 %119, ptr %116, align 1
  store i8 %117, ptr %118, align 1
  %120 = getelementptr i8, ptr %1, i32 31
  %121 = load i8, ptr %120, align 1
  %122 = getelementptr i8, ptr %1, i32 28
  %123 = load i8, ptr %122, align 1
  store i8 %123, ptr %120, align 1
  store i8 %121, ptr %122, align 1
  %124 = getelementptr i8, ptr %1, i32 30
  %125 = load i8, ptr %124, align 1
  %126 = getelementptr i8, ptr %1, i32 29
  %127 = load i8, ptr %126, align 1
  store i8 %127, ptr %124, align 1
  store i8 %125, ptr %126, align 1
  %128 = getelementptr i8, ptr %1, i32 35
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr i8, ptr %1, i32 32
  %131 = load i8, ptr %130, align 1
  store i8 %131, ptr %128, align 1
  store i8 %129, ptr %130, align 1
  %132 = getelementptr i8, ptr %1, i32 34
  %133 = load i8, ptr %132, align 1
  %134 = getelementptr i8, ptr %1, i32 33
  %135 = load i8, ptr %134, align 1
  store i8 %135, ptr %132, align 1
  store i8 %133, ptr %134, align 1
  br label %310

136:                                              ; preds = %2
  %137 = getelementptr i8, ptr %1, i32 9
  %138 = load i8, ptr %137, align 1
  %139 = load i8, ptr %3, align 1
  store i8 %139, ptr %137, align 1
  store i8 %138, ptr %3, align 1
  %140 = getelementptr i8, ptr %1, i32 10
  %141 = getelementptr i8, ptr %1, i32 11
  %142 = load i8, ptr %141, align 1
  %143 = load i8, ptr %140, align 1
  store i8 %143, ptr %141, align 1
  store i8 %142, ptr %140, align 1
  %144 = getelementptr i8, ptr %1, i32 12
  %145 = getelementptr i8, ptr %1, i32 13
  %146 = load i8, ptr %145, align 1
  %147 = load i8, ptr %144, align 1
  store i8 %147, ptr %145, align 1
  store i8 %146, ptr %144, align 1
  %148 = getelementptr i8, ptr %1, i32 14
  %149 = getelementptr i8, ptr %1, i32 15
  %150 = load i8, ptr %149, align 1
  %151 = load i8, ptr %148, align 1
  store i8 %151, ptr %149, align 1
  store i8 %150, ptr %148, align 1
  %152 = getelementptr i8, ptr %1, i32 16
  %153 = getelementptr i8, ptr %1, i32 17
  %154 = load i8, ptr %153, align 1
  %155 = load i8, ptr %152, align 1
  store i8 %155, ptr %153, align 1
  store i8 %154, ptr %152, align 1
  %156 = getelementptr i8, ptr %1, i32 18
  %157 = getelementptr i8, ptr %1, i32 19
  %158 = load i8, ptr %157, align 1
  %159 = load i8, ptr %156, align 1
  store i8 %159, ptr %157, align 1
  store i8 %158, ptr %156, align 1
  %160 = getelementptr i8, ptr %1, i32 20
  %161 = getelementptr i8, ptr %1, i32 21
  %162 = load i8, ptr %161, align 1
  %163 = load i8, ptr %160, align 1
  store i8 %163, ptr %161, align 1
  store i8 %162, ptr %160, align 1
  %164 = getelementptr i8, ptr %1, i32 22
  %165 = getelementptr i8, ptr %1, i32 23
  %166 = load i8, ptr %165, align 1
  %167 = load i8, ptr %164, align 1
  store i8 %167, ptr %165, align 1
  store i8 %166, ptr %164, align 1
  %168 = getelementptr i8, ptr %1, i32 24
  %169 = getelementptr i8, ptr %1, i32 25
  %170 = load i8, ptr %169, align 1
  %171 = load i8, ptr %168, align 1
  store i8 %171, ptr %169, align 1
  store i8 %170, ptr %168, align 1
  %172 = getelementptr i8, ptr %1, i32 26
  %173 = getelementptr i8, ptr %1, i32 27
  %174 = load i8, ptr %173, align 1
  %175 = load i8, ptr %172, align 1
  store i8 %175, ptr %173, align 1
  store i8 %174, ptr %172, align 1
  %176 = getelementptr i8, ptr %1, i32 28
  %177 = getelementptr i8, ptr %1, i32 29
  %178 = load i8, ptr %177, align 1
  %179 = load i8, ptr %176, align 1
  store i8 %179, ptr %177, align 1
  store i8 %178, ptr %176, align 1
  %180 = getelementptr i8, ptr %1, i32 30
  %181 = getelementptr i8, ptr %1, i32 31
  %182 = load i8, ptr %181, align 1
  %183 = load i8, ptr %180, align 1
  store i8 %183, ptr %181, align 1
  store i8 %182, ptr %180, align 1
  br label %310

184:                                              ; preds = %2
  %185 = getelementptr i8, ptr %1, i32 11
  %186 = load i8, ptr %185, align 1
  %187 = load i8, ptr %3, align 1
  store i8 %187, ptr %185, align 1
  store i8 %186, ptr %3, align 1
  %188 = getelementptr i8, ptr %1, i32 10
  %189 = load i8, ptr %188, align 1
  %190 = getelementptr i8, ptr %1, i32 9
  %191 = load i8, ptr %190, align 1
  store i8 %191, ptr %188, align 1
  store i8 %189, ptr %190, align 1
  %192 = getelementptr i8, ptr %1, i32 15
  %193 = load i8, ptr %192, align 1
  %194 = getelementptr i8, ptr %1, i32 12
  %195 = load i8, ptr %194, align 1
  store i8 %195, ptr %192, align 1
  store i8 %193, ptr %194, align 1
  %196 = getelementptr i8, ptr %1, i32 14
  %197 = load i8, ptr %196, align 1
  %198 = getelementptr i8, ptr %1, i32 13
  %199 = load i8, ptr %198, align 1
  store i8 %199, ptr %196, align 1
  store i8 %197, ptr %198, align 1
  %200 = getelementptr i8, ptr %1, i32 19
  %201 = load i8, ptr %200, align 1
  %202 = getelementptr i8, ptr %1, i32 16
  %203 = load i8, ptr %202, align 1
  store i8 %203, ptr %200, align 1
  store i8 %201, ptr %202, align 1
  %204 = getelementptr i8, ptr %1, i32 18
  %205 = load i8, ptr %204, align 1
  %206 = getelementptr i8, ptr %1, i32 17
  %207 = load i8, ptr %206, align 1
  store i8 %207, ptr %204, align 1
  store i8 %205, ptr %206, align 1
  br label %310

208:                                              ; preds = %2
  %209 = getelementptr i8, ptr %1, i32 9
  %210 = getelementptr i8, ptr %1, i32 12
  %211 = load i8, ptr %210, align 1
  %212 = load i8, ptr %209, align 1
  store i8 %212, ptr %210, align 1
  store i8 %211, ptr %209, align 1
  %213 = getelementptr i8, ptr %1, i32 11
  %214 = load i8, ptr %213, align 1
  %215 = getelementptr i8, ptr %1, i32 10
  %216 = load i8, ptr %215, align 1
  store i8 %216, ptr %213, align 1
  store i8 %214, ptr %215, align 1
  br label %310

217:                                              ; preds = %2
  %218 = getelementptr i8, ptr %1, i32 9
  %219 = load i8, ptr %218, align 1
  %220 = load i8, ptr %3, align 1
  store i8 %220, ptr %218, align 1
  store i8 %219, ptr %3, align 1
  %221 = getelementptr i8, ptr %1, i32 10
  %222 = getelementptr i8, ptr %1, i32 13
  %223 = load i8, ptr %222, align 1
  %224 = load i8, ptr %221, align 1
  store i8 %224, ptr %222, align 1
  store i8 %223, ptr %221, align 1
  %225 = getelementptr i8, ptr %1, i32 12
  %226 = load i8, ptr %225, align 1
  %227 = getelementptr i8, ptr %1, i32 11
  %228 = load i8, ptr %227, align 1
  store i8 %228, ptr %225, align 1
  store i8 %226, ptr %227, align 1
  br label %310

229:                                              ; preds = %2
  %230 = getelementptr i8, ptr %1, i32 16
  %231 = getelementptr i8, ptr %1, i32 17
  %232 = load i8, ptr %231, align 1
  %233 = load i8, ptr %230, align 1
  store i8 %233, ptr %231, align 1
  store i8 %232, ptr %230, align 1
  %234 = getelementptr i8, ptr %1, i32 18
  %235 = getelementptr i8, ptr %1, i32 21
  %236 = load i8, ptr %235, align 1
  %237 = load i8, ptr %234, align 1
  store i8 %237, ptr %235, align 1
  store i8 %236, ptr %234, align 1
  %238 = getelementptr i8, ptr %1, i32 20
  %239 = load i8, ptr %238, align 1
  %240 = getelementptr i8, ptr %1, i32 19
  %241 = load i8, ptr %240, align 1
  store i8 %241, ptr %238, align 1
  store i8 %239, ptr %240, align 1
  br label %310

242:                                              ; preds = %2, %2, %2, %2, %2
  %243 = getelementptr i8, ptr %1, i32 9
  %244 = load i8, ptr %243, align 1
  %245 = load i8, ptr %3, align 1
  store i8 %245, ptr %243, align 1
  store i8 %244, ptr %3, align 1
  %246 = getelementptr i8, ptr %1, i32 10
  %247 = getelementptr i8, ptr %1, i32 11
  %248 = load i8, ptr %247, align 1
  %249 = load i8, ptr %246, align 1
  store i8 %249, ptr %247, align 1
  store i8 %248, ptr %246, align 1
  %250 = getelementptr i8, ptr %1, i32 12
  %251 = getelementptr i8, ptr %1, i32 13
  %252 = load i8, ptr %251, align 1
  %253 = load i8, ptr %250, align 1
  store i8 %253, ptr %251, align 1
  store i8 %252, ptr %250, align 1
  %254 = getelementptr i8, ptr %1, i32 14
  %255 = getelementptr i8, ptr %1, i32 15
  %256 = load i8, ptr %255, align 1
  %257 = load i8, ptr %254, align 1
  store i8 %257, ptr %255, align 1
  store i8 %256, ptr %254, align 1
  %258 = getelementptr i8, ptr %1, i32 16
  %259 = getelementptr i8, ptr %1, i32 17
  %260 = load i8, ptr %259, align 1
  %261 = load i8, ptr %258, align 1
  store i8 %261, ptr %259, align 1
  store i8 %260, ptr %258, align 1
  %262 = getelementptr i8, ptr %1, i32 18
  %263 = getelementptr i8, ptr %1, i32 19
  %264 = load i8, ptr %263, align 1
  %265 = load i8, ptr %262, align 1
  store i8 %265, ptr %263, align 1
  store i8 %264, ptr %262, align 1
  %266 = getelementptr i8, ptr %1, i32 20
  %267 = getelementptr i8, ptr %1, i32 21
  %268 = load i8, ptr %267, align 1
  %269 = load i8, ptr %266, align 1
  store i8 %269, ptr %267, align 1
  store i8 %268, ptr %266, align 1
  %270 = getelementptr i8, ptr %1, i32 22
  %271 = getelementptr i8, ptr %1, i32 23
  %272 = load i8, ptr %271, align 1
  %273 = load i8, ptr %270, align 1
  store i8 %273, ptr %271, align 1
  store i8 %272, ptr %270, align 1
  %274 = getelementptr i8, ptr %1, i32 24
  %275 = getelementptr i8, ptr %1, i32 25
  %276 = load i8, ptr %275, align 1
  %277 = load i8, ptr %274, align 1
  store i8 %277, ptr %275, align 1
  store i8 %276, ptr %274, align 1
  %278 = getelementptr i8, ptr %1, i32 26
  %279 = getelementptr i8, ptr %1, i32 27
  %280 = load i8, ptr %279, align 1
  %281 = load i8, ptr %278, align 1
  store i8 %281, ptr %279, align 1
  store i8 %280, ptr %278, align 1
  %282 = getelementptr i8, ptr %1, i32 28
  %283 = getelementptr i8, ptr %1, i32 29
  %284 = load i8, ptr %283, align 1
  %285 = load i8, ptr %282, align 1
  store i8 %285, ptr %283, align 1
  store i8 %284, ptr %282, align 1
  %286 = getelementptr i8, ptr %1, i32 30
  %287 = getelementptr i8, ptr %1, i32 31
  %288 = load i8, ptr %287, align 1
  %289 = load i8, ptr %286, align 1
  store i8 %289, ptr %287, align 1
  store i8 %288, ptr %286, align 1
  br label %310

290:                                              ; preds = %2
  %291 = getelementptr i8, ptr %1, i32 9
  %292 = load i8, ptr %291, align 1
  %293 = load i8, ptr %3, align 1
  store i8 %293, ptr %291, align 1
  store i8 %292, ptr %3, align 1
  %294 = getelementptr i8, ptr %1, i32 10
  %295 = getelementptr i8, ptr %1, i32 13
  %296 = load i8, ptr %295, align 1
  %297 = load i8, ptr %294, align 1
  store i8 %297, ptr %295, align 1
  store i8 %296, ptr %294, align 1
  %298 = getelementptr i8, ptr %1, i32 12
  %299 = load i8, ptr %298, align 1
  %300 = getelementptr i8, ptr %1, i32 11
  %301 = load i8, ptr %300, align 1
  store i8 %301, ptr %298, align 1
  store i8 %299, ptr %300, align 1
  br label %310

302:                                              ; preds = %2
  %303 = getelementptr i8, ptr %1, i32 11
  %304 = load i8, ptr %303, align 1
  %305 = load i8, ptr %3, align 1
  store i8 %305, ptr %303, align 1
  store i8 %304, ptr %3, align 1
  %306 = getelementptr i8, ptr %1, i32 10
  %307 = load i8, ptr %306, align 1
  %308 = getelementptr i8, ptr %1, i32 9
  %309 = load i8, ptr %308, align 1
  store i8 %309, ptr %306, align 1
  store i8 %307, ptr %308, align 1
  br label %310

310:                                              ; preds = %302, %290, %242, %229, %217, %208, %184, %136, %80, %64, %28, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
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
