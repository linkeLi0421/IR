; ModuleID = '/llk/IR/drivers/media/spi/cxd2880-spi.c_pt.bc'
source_filename = "../drivers/media/spi/cxd2880-spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cxd2880_config = type { ptr, ptr }
%struct.cxd2880_dvb_spi = type { %struct.dvb_frontend, %struct.dvb_adapter, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.cxd2880_pid_filter_config }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.cxd2880_pid_filter_config = type { i8, [32 x %struct.cxd2880_pid_config] }
%struct.cxd2880_pid_config = type { i8, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dvb_demux_feed = type { %union.anon.73, %union.anon.74, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.73 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__param_str_adapter_nr = internal constant [11 x i8] c"adapter_nr\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype257 = internal constant [35 x i8] c"parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr258 = internal constant [36 x i8] c"parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@cxd2880_spi_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,cxd2880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cxd2880_spi_id = internal constant [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"cxd2880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@__UNIQUE_ID_description259 = internal constant [67 x i8] c"description=Sony CXD2880 DVB-T2/T tuner + demod driver SPI adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [48 x i8] c"author=Sony Semiconductor Solutions Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@cxd2880_spi_driver = internal global %struct.spi_driver { ptr @cxd2880_spi_id, ptr @cxd2880_spi_probe, ptr @cxd2880_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cxd2880_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [8 x i8] c"cxd2880\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013cxd2880_spi: %s: invalid arg\0A\00", align 1
@__func__.cxd2880_spi_probe = private unnamed_addr constant [18 x i8] c"cxd2880_spi_probe\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@cxd2880_spi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"&dvb_spi->spi_mutex\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CXD2880\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\013cxd2880_spi: %s: dvb_register_adapter() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"cxd2880_attach\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"symbol:cxd2880_attach\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"\013DVB: Unable to find symbol cxd2880_attach()\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\013cxd2880_spi: %s: cxd2880_attach failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"\013cxd2880_spi: %s: dvb_register_frontend() failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"\013cxd2880_spi: %s: dvb_dmx_init() failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"\013cxd2880_spi: %s: dvb_dmxdev_init() failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\013cxd2880_spi: %s: add_frontend() failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\013cxd2880_spi: %s: connect_frontend() failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"\016cxd2880_spi: %s: Sony CXD2880 has successfully attached.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.cxd2880_start_feed = private unnamed_addr constant [19 x i8] c"cxd2880_start_feed\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"\013cxd2880_spi: %s: feed->demux is NULL\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"\013cxd2880_spi: %s: Exceeded maximum PID count (32).\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"\013cxd2880_spi: %s: Selected PID cannot be enabled.\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"\013cxd2880_spi: %s: update pid filter failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"\013cxd2880_spi: %s: PID filter is full.\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"\013cxd2880_spi: %s: ts buffer allocate failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"cxd2880_ts_read\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"\013cxd2880_spi: %s: kthread_run failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\013cxd2880_spi: %s: invalid arg.\0A\00", align 1
@__func__.cxd2880_update_pid_filter = private unnamed_addr constant [26 x i8] c"cxd2880_update_pid_filter\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"\013cxd2880_spi: %s: set_pid_filter failed\0A\00", align 1
@__func__.cxd2880_set_pid_filter = private unnamed_addr constant [23 x i8] c"cxd2880_set_pid_filter\00", align 1
@__func__.cxd2880_write_reg = private unnamed_addr constant [18 x i8] c"cxd2880_write_reg\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"\013cxd2880_spi: %s: write spi failed %d\0A\00", align 1
@__func__.cxd2880_write_spi = private unnamed_addr constant [18 x i8] c"cxd2880_write_spi\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"\013cxd2880_spi: %s: set_clear_ts_buffer failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"\013cxd2880_spi: %s: spi_read_ts_buffer_info error\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"\013cxd2880_spi: %s: write spi failed\0A\00", align 1
@__func__.cxd2880_spi_clear_ts_buffer = private unnamed_addr constant [28 x i8] c"cxd2880_spi_clear_ts_buffer\00", align 1
@__func__.cxd2880_spi_read_ts_buffer_info = private unnamed_addr constant [32 x i8] c"cxd2880_spi_read_ts_buffer_info\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"\013cxd2880_spi: %s: spi_write_then_read failed\0A\00", align 1
@__func__.cxd2880_spi_read_ts = private unnamed_addr constant [20 x i8] c"cxd2880_spi_read_ts\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"\013cxd2880_spi: %s: spi_sync failed\0A\00", align 1
@__func__.cxd2880_stop_feed = private unnamed_addr constant [18 x i8] c"cxd2880_stop_feed\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"\013cxd2880_spi: %s: no feed is started\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"\013cxd2880_spi: %s: PID %d not found\0A\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"\013cxd2880_spi: %s: kthread_stop failed. (%d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"\016cxd2880_spi: %s: cxd2880_spi remove ok.\0A\00", align 1
@__func__.cxd2880_spi_remove = private unnamed_addr constant [19 x i8] c"cxd2880_spi_remove\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_adapter_nr258, ptr @__UNIQUE_ID_adapter_nrtype257, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_license261, ptr @__param_adapter_nr], section "llvm.metadata"

@__mod_of__cxd2880_spi_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cxd2880_spi_of_match
@__mod_spi__cxd2880_spi_id_device_table = dso_local alias [2 x %struct.spi_device_id], ptr @cxd2880_spi_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__spi_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @cxd2880_spi_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cxd2880_spi_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_spi_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.cxd2880_config, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  br label %112

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2336) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %112, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @devm_regulator_get_optional(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #10
  %12 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 10
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = icmp eq ptr %11, inttoptr (i32 -517 to ptr)
  br i1 %15, label %110, label %16

16:                                               ; preds = %14
  store ptr null, ptr %12, align 4
  br label %20

17:                                               ; preds = %10
  %18 = tail call i32 @regulator_enable(ptr noundef %11) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %110

20:                                               ; preds = %17, %16
  %21 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 6
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @cxd2880_spi_probe.__key) #10
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %8, ptr %23, align 8
  store ptr %0, ptr %2, align 8
  %24 = getelementptr inbounds %struct.cxd2880_config, ptr %2, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 1
  %26 = tail call i32 @dvb_register_adapter(ptr noundef %25, ptr noundef nonnull @.str.4, ptr noundef nonnull @__this_module, ptr noundef nonnull %0, ptr noundef nonnull @adapter_nr) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  br label %104

30:                                               ; preds = %20
  %31 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.6) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7) #10
  %35 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.6) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33, %30
  %38 = phi ptr [ %35, %33 ], [ %31, %30 ]
  %39 = call ptr %38(ptr noundef nonnull %8, ptr noundef nonnull %2) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  call void @__symbol_put(ptr noundef nonnull @.str.6) #10
  br label %44

42:                                               ; preds = %33
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %44

44:                                               ; preds = %42, %41
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  br label %101

46:                                               ; preds = %37
  %47 = call i32 @dvb_register_frontend(ptr noundef %25, ptr noundef nonnull %8) #10
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  br label %99

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2
  store i32 1, ptr %52, align 8
  %53 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2, i32 1
  store ptr %8, ptr %53, align 4
  %54 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2, i32 2
  store i32 32, ptr %54, align 8
  %55 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2, i32 3
  store i32 32, ptr %55, align 4
  %56 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2, i32 4
  store ptr @cxd2880_start_feed, ptr %56, align 8
  %57 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2, i32 5
  store ptr @cxd2880_stop_feed, ptr %57, align 4
  %58 = call i32 @dvb_dmx_init(ptr noundef %52) #10
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  br label %96

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 3
  %64 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 3, i32 4
  store i32 32, ptr %64, align 8
  %65 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 3, i32 3
  store ptr %52, ptr %65, align 4
  %66 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 3, i32 5
  store i32 0, ptr %66, align 4
  %67 = call i32 @dvb_dmxdev_init(ptr noundef %63, ptr noundef %25) #10
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  br label %94

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 4
  %73 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 4, i32 1
  store i32 1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2, i32 0, i32 10
  %75 = load ptr, ptr %74, align 8
  %76 = call i32 %75(ptr noundef %52, ptr noundef %72) #10
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  br label %92

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2, i32 0, i32 13
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %52, ptr noundef %72) #10
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  %87 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %8, i32 0, i32 2, i32 0, i32 11
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 %88(ptr noundef %52, ptr noundef %72) #10
  br label %92

90:                                               ; preds = %80
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cxd2880_spi_probe) #11
  br label %112

92:                                               ; preds = %85, %78
  %93 = phi i32 [ %76, %78 ], [ %83, %85 ]
  call void @dvb_dmxdev_release(ptr noundef %63) #10
  br label %94

94:                                               ; preds = %92, %69
  %95 = phi i32 [ %67, %69 ], [ %93, %92 ]
  call void @dvb_dmx_release(ptr noundef %52) #10
  br label %96

96:                                               ; preds = %94, %60
  %97 = phi i32 [ %58, %60 ], [ %95, %94 ]
  %98 = call i32 @dvb_unregister_frontend(ptr noundef nonnull %8) #10
  br label %99

99:                                               ; preds = %96, %49
  %100 = phi i32 [ %47, %49 ], [ %97, %96 ]
  call void @dvb_frontend_detach(ptr noundef nonnull %8) #10
  br label %101

101:                                              ; preds = %99, %44
  %102 = phi i32 [ %100, %99 ], [ -19, %44 ]
  %103 = call i32 @dvb_unregister_adapter(ptr noundef %25) #10
  br label %104

104:                                              ; preds = %101, %28
  %105 = phi i32 [ %26, %28 ], [ %102, %101 ]
  %106 = load ptr, ptr %12, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call i32 @regulator_disable(ptr noundef nonnull %106) #10
  br label %110

110:                                              ; preds = %108, %104, %17, %14
  %111 = phi i32 [ %105, %108 ], [ %105, %104 ], [ %18, %17 ], [ -517, %14 ]
  call void @kfree(ptr noundef nonnull %8) #10
  br label %112

112:                                              ; preds = %110, %90, %6, %4
  %113 = phi i32 [ %111, %110 ], [ 0, %90 ], [ -22, %4 ], [ -12, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_spi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 2, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 4
  %8 = tail call i32 %6(ptr noundef %4, ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 3
  tail call void @dvb_dmxdev_release(ptr noundef %9) #10
  tail call void @dvb_dmx_release(ptr noundef %4) #10
  %10 = tail call i32 @dvb_unregister_frontend(ptr noundef %3) #10
  tail call void @dvb_frontend_detach(ptr noundef %3) #10
  %11 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 1
  %12 = tail call i32 @dvb_unregister_adapter(ptr noundef %11) #10
  %13 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = tail call i32 @regulator_disable(ptr noundef nonnull %14) #10
  br label %18

18:                                               ; preds = %16, %1
  tail call void @kfree(ptr noundef %3) #10
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.cxd2880_spi_remove) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_start_feed(ptr noundef readonly %0) #2 {
  %2 = alloca %struct.cxd2880_pid_filter_config, align 2
  %3 = alloca %struct.cxd2880_pid_filter_config, align 2
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxd2880_start_feed) #11
  br label %115

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cxd2880_start_feed) #11
  br label %115

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.dvb_demux, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.cxd2880_start_feed) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.cxd2880_start_feed) #11
  br label %115

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 6
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 8192
  br i1 %25, label %26, label %55

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 9
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 12
  %32 = icmp ne ptr %15, null
  %33 = icmp ne ptr %31, null
  %34 = and i1 %32, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cxd2880_update_pid_filter) #11
  br label %49

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %38) #10
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(130) %2, i8 0, i64 130, i1 false) #10
  store i8 1, ptr %2, align 2
  %39 = getelementptr inbounds %struct.cxd2880_pid_filter_config, ptr %2, i32 0, i32 1
  store i8 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.cxd2880_pid_filter_config, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i16 8191, ptr %40, align 2
  %41 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = call fastcc i32 @cxd2880_set_pid_filter(ptr noundef %42, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %2) #10
  call void @mutex_unlock(ptr noundef %38) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, ptr %27, align 8
  br label %52

47:                                               ; preds = %37
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.cxd2880_update_pid_filter) #11
  br label %49

49:                                               ; preds = %47, %35
  %50 = phi i32 [ %43, %47 ], [ -22, %35 ]
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.cxd2880_start_feed) #11
  br label %115

52:                                               ; preds = %45, %26
  %53 = phi i32 [ %46, %45 ], [ %28, %26 ]
  %54 = add i32 %53, 1
  store i32 %54, ptr %27, align 8
  br label %87

55:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #10
  %56 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(130) %3, ptr noundef align 4 dereferenceable(130) %56, i32 130, i1 false)
  br label %57

57:                                               ; preds = %62, %55
  %58 = phi i32 [ 0, %55 ], [ %63, %62 ]
  %59 = getelementptr %struct.cxd2880_pid_filter_config, ptr %3, i32 0, i32 1, i32 %58
  %60 = load i8, ptr %59, align 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = add nuw nsw i32 %58, 1
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %57

65:                                               ; preds = %62
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.cxd2880_start_feed) #11
  br label %84

67:                                               ; preds = %57
  store i8 1, ptr %59, align 2
  %68 = getelementptr %struct.cxd2880_pid_filter_config, ptr %3, i32 0, i32 1, i32 %58, i32 1
  store i16 %24, ptr %68, align 2
  %69 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 9
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = icmp eq ptr %15, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cxd2880_update_pid_filter) #11
  br label %84

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %77) #10
  %78 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = call fastcc i32 @cxd2880_set_pid_filter(ptr noundef %79, ptr noundef nonnull %3) #10
  call void @mutex_unlock(ptr noundef %77) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.cxd2880_update_pid_filter) #11
  br label %84

84:                                               ; preds = %82, %74, %65
  %85 = phi i32 [ %80, %82 ], [ -22, %74 ], [ -22, %65 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #10
  br label %115

86:                                               ; preds = %76, %67
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(130) %56, ptr noundef nonnull align 2 dereferenceable(130) %3, i32 130, i1 false)
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #10
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, ptr %16, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %87
  %91 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 56400, i32 noundef 3265, i32 noundef 4) #13
  %92 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 11
  store ptr %91, ptr %92, align 8
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.cxd2880_start_feed) #11
  %96 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(130) %96, i8 0, i32 130, i1 false)
  %97 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 9
  store i32 0, ptr %97, align 8
  br label %115

98:                                               ; preds = %90
  %99 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cxd2880_ts_read, ptr noundef %15, i32 noundef -1, ptr noundef nonnull @.str.22) #10
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = call i32 @wake_up_process(ptr noundef %99) #10
  %103 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 5
  store ptr %99, ptr %103, align 8
  %104 = load i32, ptr %16, align 4
  br label %112

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 5
  store ptr %99, ptr %106, align 8
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.cxd2880_start_feed) #11
  %108 = load ptr, ptr %92, align 8
  call void @kfree(ptr noundef %108) #10
  %109 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %15, i32 0, i32 9
  store i32 0, ptr %109, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(134) %92, i8 0, i64 134, i1 false)
  %110 = load ptr, ptr %106, align 8
  %111 = ptrtoint ptr %110 to i32
  br label %115

112:                                              ; preds = %101, %87
  %113 = phi i32 [ %104, %101 ], [ %88, %87 ]
  %114 = add i32 %113, 1
  store i32 %114, ptr %16, align 4
  br label %115

115:                                              ; preds = %112, %105, %94, %84, %49, %19, %11, %5
  %116 = phi i32 [ -22, %19 ], [ %50, %49 ], [ %111, %105 ], [ 0, %112 ], [ -12, %94 ], [ -22, %11 ], [ -22, %5 ], [ %85, %84 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_stop_feed(ptr noundef readonly %0) #2 {
  %2 = alloca %struct.cxd2880_pid_filter_config, align 2
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxd2880_stop_feed) #11
  br label %72

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cxd2880_stop_feed) #11
  br label %72

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.dvb_demux, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.cxd2880_stop_feed) #11
  br label %72

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 6
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 8192
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %14, i32 0, i32 9
  %26 = load i32, ptr %25, align 8
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cxd2880_stop_feed, i32 noundef 8192) #11
  br label %72

30:                                               ; preds = %24
  %31 = add nsw i32 %26, -1
  store i32 %31, ptr %25, align 8
  br label %53

32:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %2) #10
  %33 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %14, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(130) %2, ptr noundef align 4 dereferenceable(130) %33, i32 130, i1 false)
  br label %34

34:                                               ; preds = %43, %32
  %35 = phi i32 [ 0, %32 ], [ %44, %43 ]
  %36 = getelementptr %struct.cxd2880_pid_filter_config, ptr %2, i32 0, i32 1, i32 %35, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %22, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr %struct.cxd2880_pid_filter_config, ptr %2, i32 0, i32 1, i32 %35
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39, %34
  %44 = add nuw nsw i32 %35, 1
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %46, label %34

46:                                               ; preds = %43
  %47 = load i16, ptr %21, align 4
  %48 = zext i16 %47 to i32
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cxd2880_stop_feed, i32 noundef %48) #11
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %2) #10
  br label %72

50:                                               ; preds = %39
  store i8 0, ptr %40, align 2
  store i16 0, ptr %36, align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(130) %33, ptr noundef nonnull align 2 dereferenceable(130) %2, i32 130, i1 false)
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %2) #10
  %51 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %14, i32 0, i32 9
  %52 = load i32, ptr %51, align 8
  br label %53

53:                                               ; preds = %50, %30
  %54 = phi i32 [ %52, %50 ], [ %31, %30 ]
  %55 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %14, i32 0, i32 12
  %56 = icmp sgt i32 %54, 0
  %57 = tail call fastcc i32 @cxd2880_update_pid_filter(ptr noundef %14, ptr noundef %55, i1 noundef zeroext %56)
  %58 = load i32, ptr %15, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %15, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %14, i32 0, i32 5
  %63 = load ptr, ptr %62, align 8
  %64 = tail call i32 @kthread_stop(ptr noundef %63) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cxd2880_stop_feed, i32 noundef %64) #11
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %64, %66 ], [ %57, %61 ]
  %70 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %14, i32 0, i32 11
  %71 = load ptr, ptr %70, align 8
  tail call void @kfree(ptr noundef %71) #10
  store ptr null, ptr %70, align 8
  br label %72

72:                                               ; preds = %68, %53, %46, %28, %18, %10, %4
  %73 = phi i32 [ -22, %28 ], [ -22, %18 ], [ -22, %10 ], [ -22, %4 ], [ -22, %46 ], [ %69, %68 ], [ %57, %53 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cxd2880_update_pid_filter(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca %struct.cxd2880_pid_filter_config, align 2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cxd2880_update_pid_filter) #11
  br label %27

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %0, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %11) #10
  br i1 %2, label %12, label %18

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(130) %4, i8 0, i64 130, i1 false)
  store i8 1, ptr %4, align 2
  %13 = getelementptr inbounds %struct.cxd2880_pid_filter_config, ptr %4, i32 0, i32 1
  store i8 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.cxd2880_pid_filter_config, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i16 8191, ptr %14, align 2
  %15 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = call fastcc i32 @cxd2880_set_pid_filter(ptr noundef %16, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #10
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call fastcc i32 @cxd2880_set_pid_filter(ptr noundef %20, ptr noundef nonnull %1)
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %17, %12 ], [ %21, %18 ]
  call void @mutex_unlock(ptr noundef %11) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.cxd2880_update_pid_filter) #11
  br label %27

27:                                               ; preds = %25, %22, %8
  %28 = phi i32 [ -22, %8 ], [ %23, %25 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_ts_read(ptr noundef %0) #2 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca [2 x %struct.spi_transfer], align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca [2 x %struct.spi_transfer], align 4
  %8 = alloca i8, align 1
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca %struct.spi_transfer, align 4
  %12 = alloca i8, align 1
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #11
  br label %155

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 3, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %11) #10
  %19 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %19, i8 0, i32 92, i1 false) #10
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxd2880_write_spi) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #10
  br label %33

23:                                               ; preds = %16
  store ptr %12, ptr %11, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 2
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %25, i8 0, i32 40, i1 false) #10
  store volatile ptr %10, ptr %10, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %27 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 18
  store ptr %29, ptr %26, align 4
  store ptr %10, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 18, i32 1
  store ptr %10, ptr %30, align 4
  store volatile ptr %29, ptr %10, align 4
  %31 = call i32 @spi_sync(ptr noundef nonnull %18, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %23, %21
  %34 = phi i32 [ -22, %21 ], [ %31, %23 ]
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.cxd2880_spi_clear_ts_buffer) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22) #11
  br label %155

37:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %38 = call i64 @ktime_get() #10
  %39 = call zeroext i1 @kthread_should_stop() #10
  br i1 %39, label %155, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %42 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %0, i32 0, i32 11
  %43 = getelementptr inbounds i8, ptr %4, i32 4
  %44 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  %45 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  %46 = getelementptr inbounds i8, ptr %3, i32 8
  %47 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %48 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  %49 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  %50 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  %51 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  %53 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %4, i32 0, i32 1, i32 2
  %54 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %4, i32 0, i32 1, i32 1
  %55 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %4, i32 0, i32 1, i32 18
  %56 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %4, i32 0, i32 1, i32 18, i32 1
  %57 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %0, i32 0, i32 2
  %58 = getelementptr inbounds i8, ptr %7, i32 4
  %59 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %60 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %61 = getelementptr inbounds i8, ptr %6, i32 8
  %62 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %63 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  %64 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  %65 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %66 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  %67 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  %68 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 2
  %69 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 1
  %70 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 18
  %71 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 18, i32 1
  br label %72

72:                                               ; preds = %152, %40
  %73 = phi i64 [ %38, %40 ], [ %153, %152 ]
  %74 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 32, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i16 0, ptr %9, align 2, !annotation !8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxd2880_spi_read_ts_buffer_info) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  br label %83

78:                                               ; preds = %72
  %79 = call i32 @spi_write_then_read(ptr noundef nonnull %74, ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 2) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.cxd2880_spi_read_ts_buffer_info) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i32 [ -22, %76 ], [ %79, %81 ]
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22) #11
  br label %155

86:                                               ; preds = %78
  %87 = load i8, ptr %9, align 2
  %88 = and i8 %87, 7
  %89 = zext i8 %88 to i16
  %90 = shl nuw nsw i16 %89, 8
  %91 = load i8, ptr %41, align 1
  %92 = zext i8 %91 to i16
  %93 = or i16 %90, %92
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %94 = icmp ugt i16 %93, 300
  br i1 %94, label %95, label %117

95:                                               ; preds = %86
  %96 = udiv i16 %93, 300
  %97 = zext i16 %96 to i32
  br label %98

98:                                               ; preds = %111, %95
  %99 = phi i32 [ %113, %111 ], [ 0, %95 ]
  %100 = load ptr, ptr %17, align 4
  %101 = load ptr, ptr %42, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %58, i8 0, i32 188, i1 false) #10
  %102 = icmp ne ptr %100, null
  %103 = icmp ne ptr %101, null
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  store i8 16, ptr %5, align 1
  store i8 1, ptr %59, align 1
  store i8 44, ptr %60, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %61, i8 0, i32 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  store volatile ptr %63, ptr %63, align 4
  store ptr %63, ptr %64, align 4
  store i32 3, ptr %65, align 4
  store ptr %5, ptr %7, align 4
  store ptr %6, ptr %67, align 4
  store volatile ptr %66, ptr %6, align 4
  store i32 56400, ptr %68, align 4
  store ptr %101, ptr %69, align 4
  store ptr %70, ptr %62, align 4
  store ptr %6, ptr %70, align 4
  store ptr %66, ptr %71, align 4
  store volatile ptr %70, ptr %66, align 4
  %106 = call i32 @spi_sync(ptr noundef nonnull %100, ptr noundef nonnull %6) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105, %98
  %109 = phi ptr [ @.str.1, %98 ], [ @.str.34, %105 ]
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %109, ptr noundef nonnull @__func__.cxd2880_spi_read_ts) #11
  br label %111

111:                                              ; preds = %108, %105
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  %112 = load ptr, ptr %42, align 8
  call void @dvb_dmx_swfilter(ptr noundef %57, ptr noundef %112, i32 noundef 56400) #10
  %113 = add nuw nsw i32 %99, 1
  %114 = icmp eq i32 %113, %97
  br i1 %114, label %115, label %98

115:                                              ; preds = %111
  %116 = call i64 @ktime_get() #10
  br label %152

117:                                              ; preds = %86
  %118 = icmp eq i16 %93, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %117
  %120 = call i64 @ktime_get() #10
  %121 = sub i64 %120, %73
  %122 = call i64 @llvm.abs.i64(i64 %121, i1 false) #10
  %123 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %122) #14, !srcloc !9
  %124 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %122, i64 %123, i32 0) #14, !srcloc !10
  %125 = extractvalue { i64, i32 } %124, 0
  %126 = icmp slt i64 %121, 0
  %127 = lshr i64 %125, 18
  %128 = sub nsw i64 0, %127
  %129 = select i1 %126, i64 %128, i64 %127
  %130 = icmp sgt i64 %129, 499
  br i1 %130, label %131, label %151

131:                                              ; preds = %119
  %132 = load ptr, ptr %17, align 4
  %133 = load ptr, ptr %42, align 8
  %134 = zext i16 %93 to i32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %43, i8 0, i32 188, i1 false) #10
  %135 = icmp ne ptr %132, null
  %136 = icmp ne ptr %133, null
  %137 = and i1 %135, %136
  br i1 %137, label %141, label %138

138:                                              ; preds = %131
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxd2880_spi_read_ts) #11
  %140 = mul nuw nsw i32 %134, 188
  br label %147

141:                                              ; preds = %131
  store i8 16, ptr %2, align 1
  store i8 %88, ptr %44, align 1
  store i8 %91, ptr %45, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %46, i8 0, i32 40, i1 false) #10
  store volatile ptr %3, ptr %3, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %49, align 4
  store i32 3, ptr %50, align 4
  store ptr %2, ptr %4, align 4
  store ptr %3, ptr %52, align 4
  store volatile ptr %51, ptr %3, align 4
  %142 = mul nuw nsw i32 %134, 188
  store i32 %142, ptr %53, align 4
  store ptr %133, ptr %54, align 4
  store ptr %55, ptr %47, align 4
  store ptr %3, ptr %55, align 4
  store ptr %51, ptr %56, align 4
  store volatile ptr %55, ptr %51, align 4
  %143 = call i32 @spi_sync(ptr noundef nonnull %132, ptr noundef nonnull %3) #10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.cxd2880_spi_read_ts) #11
  br label %147

147:                                              ; preds = %145, %141, %138
  %148 = phi i32 [ %140, %138 ], [ %142, %141 ], [ %142, %145 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  %149 = load ptr, ptr %42, align 8
  call void @dvb_dmx_swfilter(ptr noundef %57, ptr noundef %149, i32 noundef %148) #10
  %150 = call i64 @ktime_get() #10
  br label %152

151:                                              ; preds = %119, %117
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  br label %152

152:                                              ; preds = %151, %147, %115
  %153 = phi i64 [ %116, %115 ], [ %150, %147 ], [ %73, %151 ]
  %154 = call zeroext i1 @kthread_should_stop() #10
  br i1 %154, label %155, label %72

155:                                              ; preds = %152, %83, %37, %33, %14
  %156 = phi i32 [ %34, %33 ], [ %84, %83 ], [ -22, %14 ], [ 0, %37 ], [ 0, %152 ]
  ret i32 %156
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cxd2880_set_pid_filter(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = alloca [132 x i8], align 1
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = alloca [132 x i8], align 1
  %9 = alloca %struct.spi_message, align 4
  %10 = alloca %struct.spi_transfer, align 4
  %11 = alloca [132 x i8], align 1
  %12 = alloca [65 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %12) #10
  %13 = getelementptr inbounds i8, ptr %12, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(65) %13, i8 0, i32 64, i1 false), !annotation !8
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxd2880_set_pid_filter) #11
  br label %102

17:                                               ; preds = %2
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %11) #10
  %18 = getelementptr inbounds i8, ptr %11, i32 3
  %19 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(132) %19, i8 0, i32 128, i1 false) #10, !annotation !8
  store i8 14, ptr %11, align 1
  %20 = getelementptr inbounds [132 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds [132 x i8], ptr %11, i32 0, i32 2
  store i8 1, ptr %21, align 1
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #10
  %22 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %22, i8 0, i32 92, i1 false) #10
  store ptr %11, ptr %10, align 4
  %23 = getelementptr inbounds %struct.spi_transfer, ptr %10, i32 0, i32 2
  store i32 4, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %24, i8 0, i32 40, i1 false) #10
  store volatile ptr %9, ptr %9, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %26 = getelementptr inbounds %struct.spi_message, ptr %9, i32 0, i32 10
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.spi_message, ptr %9, i32 0, i32 10, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.spi_transfer, ptr %10, i32 0, i32 18
  store ptr %28, ptr %25, align 4
  store ptr %9, ptr %28, align 4
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %10, i32 0, i32 18, i32 1
  store ptr %9, ptr %29, align 4
  store volatile ptr %28, ptr %9, align 4
  %30 = call i32 @spi_sync(ptr noundef nonnull %0, ptr noundef nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %17
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.cxd2880_write_reg, i32 noundef %30) #11
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %11) #10
  br label %102

34:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %11) #10
  %35 = icmp eq ptr %1, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %34
  store i8 2, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %8) #10
  %37 = getelementptr inbounds i8, ptr %8, i32 3
  %38 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(132) %38, i8 0, i32 128, i1 false) #10, !annotation !8
  store i8 14, ptr %8, align 1
  %39 = getelementptr inbounds [132 x i8], ptr %8, i32 0, i32 1
  store i8 80, ptr %39, align 1
  %40 = getelementptr inbounds [132 x i8], ptr %8, i32 0, i32 2
  store i8 1, ptr %40, align 1
  store i8 2, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #10
  %41 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %41, i8 0, i32 92, i1 false) #10
  store ptr %8, ptr %7, align 4
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  store i32 4, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %43, i8 0, i32 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  store ptr %47, ptr %44, align 4
  store ptr %6, ptr %47, align 4
  %48 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  store ptr %6, ptr %48, align 4
  store volatile ptr %47, ptr %6, align 4
  %49 = call i32 @spi_sync(ptr noundef nonnull %0, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %36
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.cxd2880_write_reg, i32 noundef %49) #11
  br label %53

53:                                               ; preds = %51, %36
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %8) #10
  br label %102

54:                                               ; preds = %34
  %55 = load i8, ptr %1, align 2
  %56 = icmp ne i8 %55, 0
  %57 = zext i1 %56 to i8
  store i8 %57, ptr %12, align 1
  br label %58

58:                                               ; preds = %77, %54
  %59 = phi i32 [ 0, %54 ], [ %82, %77 ]
  %60 = getelementptr %struct.cxd2880_pid_filter_config, ptr %1, i32 0, i32 1, i32 %59
  %61 = load i8, ptr %60, align 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = getelementptr %struct.cxd2880_pid_filter_config, ptr %1, i32 0, i32 1, i32 %59, i32 1
  %65 = load i16, ptr %64, align 2
  %66 = lshr i16 %65, 8
  %67 = trunc i16 %66 to i8
  %68 = or i8 %67, 32
  %69 = shl nuw i32 %59, 1
  %70 = or i32 %69, 1
  %71 = getelementptr [65 x i8], ptr %12, i32 0, i32 %70
  store i8 %68, ptr %71, align 1
  %72 = trunc i16 %65 to i8
  br label %77

73:                                               ; preds = %58
  %74 = shl nuw i32 %59, 1
  %75 = or i32 %74, 1
  %76 = getelementptr [65 x i8], ptr %12, i32 0, i32 %75
  store i8 0, ptr %76, align 1
  br label %77

77:                                               ; preds = %73, %63
  %78 = phi i32 [ %69, %63 ], [ %74, %73 ]
  %79 = phi i8 [ %72, %63 ], [ 0, %73 ]
  %80 = add nuw nsw i32 %78, 2
  %81 = getelementptr [65 x i8], ptr %12, i32 0, i32 %80
  store i8 %79, ptr %81, align 1
  %82 = add nuw nsw i32 %59, 1
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %58

84:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %5) #10
  %85 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 14, ptr %5, align 1
  %86 = getelementptr inbounds [132 x i8], ptr %5, i32 0, i32 1
  store i8 80, ptr %86, align 1
  %87 = getelementptr inbounds [132 x i8], ptr %5, i32 0, i32 2
  store i8 65, ptr %87, align 1
  %88 = getelementptr inbounds i8, ptr %5, i32 68
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(64) %88, i8 0, i32 64, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(65) %85, ptr noundef nonnull align 1 dereferenceable(65) %12, i32 65, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #10
  %89 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %89, i8 0, i32 92, i1 false) #10
  store ptr %5, ptr %4, align 4
  %90 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  store i32 68, ptr %90, align 4
  %91 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %91, i8 0, i32 40, i1 false) #10
  store volatile ptr %3, ptr %3, align 4
  %92 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %93 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %93, ptr %93, align 4
  %94 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %95, ptr %92, align 4
  store ptr %3, ptr %95, align 4
  %96 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %96, align 4
  store volatile ptr %95, ptr %3, align 4
  %97 = call i32 @spi_sync(ptr noundef nonnull %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %84
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.cxd2880_write_reg, i32 noundef %97) #11
  br label %101

101:                                              ; preds = %99, %84
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %5) #10
  br label %102

102:                                              ; preds = %101, %53, %32, %15
  %103 = phi i32 [ -22, %15 ], [ %30, %32 ], [ %97, %101 ], [ %49, %53 ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %12) #10
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

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
!9 = !{i64 1200609, i64 1200636}
!10 = !{i64 1201304, i64 1201331, i64 1201364, i64 1201385, i64 1201412, i64 1201438}
