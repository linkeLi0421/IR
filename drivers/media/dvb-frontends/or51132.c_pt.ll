; ModuleID = '/llk/IR/drivers/media/dvb-frontends/or51132.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/or51132.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_or51132_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22or51132_attach\22\09\09\09\09\09"
module asm "__kstrtabns_or51132_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.or51132_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.or51132_config = type { i8, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@or51132_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Oren OR51132 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44000000, i32 958000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 2204334 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @or51132_release, ptr null, ptr @or51132_init, ptr @or51132_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @or51132_set_parameters, ptr @or51132_get_tune_settings, ptr @or51132_get_parameters, ptr @or51132_read_status, ptr @or51132_read_ber, ptr @or51132_read_signal_strength, ptr @or51132_read_snr, ptr @or51132_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [99 x i8] c"description=OR51132 ATSC [pcHDTV HD-3000] (8VSB & ITU J83 AnnexB FEC QAM64/256) Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [19 x i8] c"author=Kirk Lapray\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [20 x i8] c"author=Trent Piepho\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_or51132_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_or51132_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_or51132_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @or51132_attach to i32), ptr @__kstrtab_or51132_attach, ptr @__kstrtabns_or51132_attach }, section "___ksymtab+or51132_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [36 x i8] c"\017or51132: set_parameters VSB MODE\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dvb-fe-or51132-vsb.fw\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\017or51132: set_parameters QAM MODE\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"dvb-fe-or51132-qam.fw\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"or51132: Modulation type(%d) UNSUPPORTED\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"or51132: Waiting for firmware upload(%s)...\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"\014or51132: No firmware uploaded(timeout or file not found?)\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\014or51132: Writing firmware to device failed!\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"or51132: Firmware upload complete.\0A\00", align 1
@or51132_load_firmware.run_buf = internal constant [2 x i8] c"\7F\01", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\017or51132: Firmware is %zd bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\017or51132: FirmwareA is %i bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\017or51132: FirmwareB is %i bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"\014or51132: load_firmware error 1\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"\014or51132: load_firmware error 2\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\014or51132: load_firmware error 3\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\014or51132: load_firmware error 4\0A\00", align 1
@or51132_load_firmware._data = internal constant [3 x i8] c"\10\10\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"\014or51132: load_firmware error a\0A\00", align 1
@or51132_load_firmware._data.17 = internal constant [2 x i8] c"\04\17", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"\014or51132: load_firmware error b\0A\00", align 1
@or51132_load_firmware._data.19 = internal constant [2 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"\014or51132: load_firmware error c\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"\014or51132: load_firmware error d - %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [85 x i8] c"\014or51132: Version: %02X%02X%02X%02X-%02X%02X%02X%02X (%02X%01X-%01X-%02X%01X-%01X)\0A\00", align 1
@or51132_load_firmware._data.23 = internal constant [3 x i8] c"\10\00\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"\014or51132: load_firmware error e\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"\014or51132: I2C write (addr 0x%02x len %d) error: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"\014or51132: I2C read (addr 0x%02x len %d) error: %d\0A\00", align 1
@__const.or51132_setmode.cmd_buf1 = private unnamed_addr constant [3 x i8] c"\04\01_", align 1
@__const.or51132_setmode.cmd_buf2 = private unnamed_addr constant [3 x i8] c"\1C\00\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"\017or51132: setmode %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"\014or51132: setmode: Modulation set to unsupported value (%d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"\014or51132: set_mode error 1\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"\017or51132: set #1 to %02x\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"\014or51132: set_mode error 2\0A\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"\017or51132: set #6 to 0x%02x%02x\0A\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"\014or51132: get_parameters: error reading receiver status\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"\014or51132: unknown status 0x%02x\0A\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"\014or51132: I2C error reading register %d: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [59 x i8] c"\014or51132: read_status: error reading receiver status: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"\017or51132: %s: read_status %04x\0A\00", align 1
@__func__.or51132_read_status = private unnamed_addr constant [20 x i8] c"or51132_read_status\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"\014or51132: read_snr: error reading equalizer\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"\017or51132: read_snr noise (%d)\0A\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"\014or51132: read_snr: error reading receiver status\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"\017or51132: %s: modulation %02x, NTSC rej O%s\0A\00", align 1
@__func__.or51132_read_snr = private unnamed_addr constant [17 x i8] c"or51132_read_snr\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"\017or51132: %s: noise = 0x%08x, snr = %d.%02d dB\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license254, ptr @__ksymtab_or51132_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.or51132_set_parameters.45 = private unnamed_addr constant [5 x i32] [i32 2, i32 0, i32 2, i32 2, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @or51132_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1060) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.or51132_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %4, align 8
  %8 = getelementptr inbounds %struct.or51132_state, ptr %4, i32 0, i32 5
  store i32 -1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.or51132_state, ptr %4, i32 0, i32 3
  store i32 -1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.or51132_state, ptr %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.or51132_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %11, ptr noundef nonnull align 4 dereferenceable(544) @or51132_ops, i32 544, i1 false)
  %12 = getelementptr inbounds %struct.or51132_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %12, align 8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @or51132_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @or51132_init(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @or51132_sleep(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51132_set_parameters(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [8 x i8], align 8
  %10 = alloca ptr, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store ptr null, ptr %10, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.or51132_state, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -3
  %17 = icmp ult i32 %16, 5
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds [5 x i32], ptr @switch.table.or51132_set_parameters.45, i32 0, i32 %16
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = phi i32 [ %20, %18 ], [ 0, %1 ]
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -3
  %26 = icmp ult i32 %25, 5
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr inbounds [5 x i32], ptr @switch.table.or51132_set_parameters.45, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %29, %27 ], [ 0, %21 ]
  %32 = icmp eq i32 %22, %31
  br i1 %32, label %295, label %33

33:                                               ; preds = %30
  switch i32 %24, label %40 [
    i32 7, label %34
    i32 6, label %37
    i32 3, label %37
    i32 5, label %37
  ]

34:                                               ; preds = %33
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %42

37:                                               ; preds = %33, %33, %33
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %42

40:                                               ; preds = %33
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %24) #11
  br label %314

42:                                               ; preds = %37, %34
  %43 = phi ptr [ @.str, %34 ], [ @.str.2, %37 ]
  %44 = phi i32 [ 0, %34 ], [ 1, %37 ]
  %45 = phi ptr [ @.str.1, %34 ], [ @.str.3, %37 ]
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %43) #11
  br label %47

47:                                               ; preds = %42, %37, %34
  %48 = phi i32 [ 0, %34 ], [ 1, %37 ], [ %44, %42 ]
  %49 = phi ptr [ @.str.1, %34 ], [ @.str.3, %37 ], [ %45, %42 ]
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %49) #11
  %51 = load ptr, ptr %13, align 4
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @request_firmware(ptr noundef nonnull %10, ptr noundef nonnull %49, ptr noundef %53) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %314

58:                                               ; preds = %47
  %59 = load ptr, ptr %10, align 4
  %60 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store i64 0, ptr %9, align 8, !annotation !8
  %61 = load i32, ptr @debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.firmware, ptr %59, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %65, i32 4
  %68 = load i32, ptr %67, align 4
  br label %90

69:                                               ; preds = %58
  %70 = load i32, ptr %59, align 4
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %70) #11
  %72 = load i32, ptr @debug, align 4
  %73 = getelementptr inbounds %struct.firmware, ptr %59, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %72, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = getelementptr i8, ptr %74, i32 4
  %79 = load i32, ptr %78, align 4
  br label %90

80:                                               ; preds = %69
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %75) #11
  %82 = load i32, ptr @debug, align 4
  %83 = load ptr, ptr %73, align 4
  %84 = icmp eq i32 %82, 0
  %85 = getelementptr i8, ptr %83, i32 4
  %86 = load i32, ptr %85, align 4
  br i1 %84, label %90, label %87

87:                                               ; preds = %80
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %86) #11
  %89 = load ptr, ptr %73, align 4
  br label %90

90:                                               ; preds = %87, %80, %77, %63
  %91 = phi ptr [ %74, %77 ], [ %89, %87 ], [ %83, %80 ], [ %65, %63 ]
  %92 = phi i32 [ %79, %77 ], [ %86, %87 ], [ %86, %80 ], [ %68, %63 ]
  %93 = phi ptr [ %73, %77 ], [ %73, %87 ], [ %73, %80 ], [ %64, %63 ]
  %94 = phi i32 [ %75, %77 ], [ %75, %87 ], [ %75, %80 ], [ %66, %63 ]
  %95 = getelementptr i8, ptr %91, i32 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %96 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 0, ptr %96, align 4, !annotation !8
  %97 = getelementptr inbounds %struct.or51132_state, ptr %60, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %8, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = trunc i32 %94 to i16
  store i16 %102, ptr %96, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %95, ptr %103, align 4
  %104 = load ptr, ptr %60, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %8, i32 noundef 1) #10
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %114, label %107

107:                                              ; preds = %90
  %108 = load i16, ptr %8, align 4
  %109 = zext i16 %108 to i32
  %110 = load i16, ptr %96, align 4
  %111 = zext i16 %110 to i32
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %109, i32 noundef %111, i32 noundef %105) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %281

114:                                              ; preds = %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %115 = load ptr, ptr %93, align 4
  %116 = add i32 %94, 8
  %117 = getelementptr i8, ptr %115, i32 %116
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %118 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %118, align 4, !annotation !8
  %119 = load ptr, ptr %97, align 4
  %120 = load i8, ptr %119, align 4
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %7, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %122, align 2
  %123 = trunc i32 %92 to i16
  store i16 %123, ptr %118, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %117, ptr %124, align 4
  %125 = load ptr, ptr %60, align 4
  %126 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %7, i32 noundef 1) #10
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %135, label %128

128:                                              ; preds = %114
  %129 = load i16, ptr %7, align 4
  %130 = zext i16 %129 to i32
  %131 = load i16, ptr %118, align 4
  %132 = zext i16 %131 to i32
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %130, i32 noundef %132, i32 noundef %126) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %281

135:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %136 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %136, align 4, !annotation !8
  %137 = load ptr, ptr %97, align 4
  %138 = load i8, ptr %137, align 4
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %6, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %140, align 2
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr @or51132_load_firmware.run_buf, ptr %141, align 4
  %142 = load ptr, ptr %60, align 4
  %143 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %6, i32 noundef 1) #10
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %152, label %145

145:                                              ; preds = %135
  %146 = load i16, ptr %6, align 4
  %147 = zext i16 %146 to i32
  %148 = load i16, ptr %136, align 4
  %149 = zext i16 %148 to i32
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %147, i32 noundef %149, i32 noundef %143) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %281

152:                                              ; preds = %135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %153 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %153, align 4, !annotation !8
  %154 = load ptr, ptr %97, align 4
  %155 = load i8, ptr %154, align 4
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %5, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %157, align 2
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr @or51132_load_firmware.run_buf, ptr %158, align 4
  %159 = load ptr, ptr %60, align 4
  %160 = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %5, i32 noundef 1) #10
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %169, label %162

162:                                              ; preds = %152
  %163 = load i16, ptr %5, align 4
  %164 = zext i16 %163 to i32
  %165 = load i16, ptr %153, align 4
  %166 = zext i16 %165 to i32
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %164, i32 noundef %166, i32 noundef %160) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %281

169:                                              ; preds = %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @msleep(i32 noundef 50) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %170 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %170, align 4, !annotation !8
  %171 = load ptr, ptr %97, align 4
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %4, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %174, align 2
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr @or51132_load_firmware._data, ptr %175, align 4
  %176 = load ptr, ptr %60, align 4
  %177 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %4, i32 noundef 1) #10
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %186, label %179

179:                                              ; preds = %169
  %180 = load i16, ptr %4, align 4
  %181 = zext i16 %180 to i32
  %182 = load i16, ptr %170, align 4
  %183 = zext i16 %182 to i32
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %181, i32 noundef %183, i32 noundef %177) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %281

186:                                              ; preds = %169
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %187 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %187, align 4, !annotation !8
  %188 = load ptr, ptr %97, align 4
  %189 = load i8, ptr %188, align 4
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %3, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %191, align 2
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @or51132_load_firmware._data.17, ptr %192, align 4
  %193 = load ptr, ptr %60, align 4
  %194 = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %3, i32 noundef 1) #10
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %203, label %196

196:                                              ; preds = %186
  %197 = load i16, ptr %3, align 4
  %198 = zext i16 %197 to i32
  %199 = load i16, ptr %187, align 4
  %200 = zext i16 %199 to i32
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %198, i32 noundef %200, i32 noundef %194) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %281

203:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %204 = call fastcc i32 @or51132_writebuf(ptr noundef %60, ptr noundef nonnull @or51132_load_firmware._data.19, i32 noundef 2) #10
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %203
  %207 = getelementptr inbounds i8, ptr %2, i32 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  store i32 0, ptr %207, align 4, !annotation !8
  %210 = load ptr, ptr %97, align 4
  %211 = load i8, ptr %210, align 4
  %212 = zext i8 %211 to i16
  store i16 %212, ptr %2, align 4
  store i16 1, ptr %208, align 2
  store i16 2, ptr %207, align 4
  store ptr %9, ptr %209, align 4
  %213 = load ptr, ptr %60, align 4
  %214 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %2, i32 noundef 1) #10
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %227, label %218

216:                                              ; preds = %203
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %281

218:                                              ; preds = %243, %235, %227, %206
  %219 = phi i32 [ 0, %206 ], [ 1, %227 ], [ 2, %235 ], [ 3, %243 ]
  %220 = phi i32 [ %214, %206 ], [ %233, %227 ], [ %241, %235 ], [ %249, %243 ]
  %221 = load i16, ptr %2, align 4
  %222 = zext i16 %221 to i32
  %223 = load i16, ptr %207, align 4
  %224 = zext i16 %223 to i32
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %222, i32 noundef %224, i32 noundef %220) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %219) #11
  br label %281

227:                                              ; preds = %206
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %228 = getelementptr inbounds [8 x i8], ptr %9, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  store i32 0, ptr %207, align 4, !annotation !8
  %229 = load ptr, ptr %97, align 4
  %230 = load i8, ptr %229, align 4
  %231 = zext i8 %230 to i16
  store i16 %231, ptr %2, align 4
  store i16 1, ptr %208, align 2
  store i16 2, ptr %207, align 4
  store ptr %228, ptr %209, align 4
  %232 = load ptr, ptr %60, align 4
  %233 = call i32 @i2c_transfer(ptr noundef %232, ptr noundef nonnull %2, i32 noundef 1) #10
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %218

235:                                              ; preds = %227
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %236 = getelementptr inbounds [8 x i8], ptr %9, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  store i32 0, ptr %207, align 4, !annotation !8
  %237 = load ptr, ptr %97, align 4
  %238 = load i8, ptr %237, align 4
  %239 = zext i8 %238 to i16
  store i16 %239, ptr %2, align 4
  store i16 1, ptr %208, align 2
  store i16 2, ptr %207, align 4
  store ptr %236, ptr %209, align 4
  %240 = load ptr, ptr %60, align 4
  %241 = call i32 @i2c_transfer(ptr noundef %240, ptr noundef nonnull %2, i32 noundef 1) #10
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %218

243:                                              ; preds = %235
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %244 = getelementptr inbounds [8 x i8], ptr %9, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  store i32 0, ptr %207, align 4, !annotation !8
  %245 = load ptr, ptr %97, align 4
  %246 = load i8, ptr %245, align 4
  %247 = zext i8 %246 to i16
  store i16 %247, ptr %2, align 4
  store i16 1, ptr %208, align 2
  store i16 2, ptr %207, align 4
  store ptr %244, ptr %209, align 4
  %248 = load ptr, ptr %60, align 4
  %249 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %2, i32 noundef 1) #10
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %218

251:                                              ; preds = %243
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %252 = getelementptr inbounds [8 x i8], ptr %9, i32 0, i32 1
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = load i8, ptr %9, align 8
  %256 = zext i8 %255 to i32
  %257 = getelementptr inbounds [8 x i8], ptr %9, i32 0, i32 3
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = load i8, ptr %228, align 2
  %261 = zext i8 %260 to i32
  %262 = getelementptr inbounds [8 x i8], ptr %9, i32 0, i32 5
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = load i8, ptr %236, align 4
  %266 = zext i8 %265 to i32
  %267 = getelementptr inbounds [8 x i8], ptr %9, i32 0, i32 7
  %268 = load i8, ptr %267, align 1
  %269 = zext i8 %268 to i32
  %270 = load i8, ptr %244, align 2
  %271 = zext i8 %270 to i32
  %272 = lshr i32 %261, 4
  %273 = and i32 %261, 15
  %274 = lshr i32 %266, 4
  %275 = and i32 %266, 15
  %276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %254, i32 noundef %256, i32 noundef %259, i32 noundef %261, i32 noundef %264, i32 noundef %266, i32 noundef %269, i32 noundef %271, i32 noundef %259, i32 noundef %272, i32 noundef %273, i32 noundef %264, i32 noundef %274, i32 noundef %275) #11
  %277 = call fastcc i32 @or51132_writebuf(ptr noundef %60, ptr noundef nonnull @or51132_load_firmware._data.23, i32 noundef 3) #10
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %251
  %280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %281

281:                                              ; preds = %279, %218, %216, %196, %179, %162, %145, %128, %107
  %282 = phi i32 [ %277, %279 ], [ -121, %218 ], [ %204, %216 ], [ -121, %196 ], [ -121, %179 ], [ -121, %162 ], [ -121, %145 ], [ -121, %128 ], [ -121, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  %283 = load ptr, ptr %10, align 4
  call void @release_firmware(ptr noundef %283) #10
  %284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %314

285:                                              ; preds = %251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  %286 = load ptr, ptr %10, align 4
  call void @release_firmware(ptr noundef %286) #10
  %287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  %288 = getelementptr inbounds %struct.or51132_state, ptr %13, i32 0, i32 1
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.or51132_config, ptr %289, i32 0, i32 1
  %291 = load ptr, ptr %290, align 4
  %292 = call i32 %291(ptr noundef %0, i32 noundef %48) #10
  %293 = load i32, ptr %14, align 4
  %294 = load i32, ptr %23, align 4
  br label %295

295:                                              ; preds = %285, %30
  %296 = phi i32 [ %294, %285 ], [ %24, %30 ]
  %297 = phi i32 [ %293, %285 ], [ %15, %30 ]
  %298 = icmp eq i32 %297, %296
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  store i32 %296, ptr %14, align 4
  call fastcc void @or51132_setmode(ptr noundef %0)
  br label %300

300:                                              ; preds = %299, %295
  %301 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %311, label %304

304:                                              ; preds = %300
  %305 = call i32 %302(ptr noundef %0) #10
  %306 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %304
  %310 = call i32 %307(ptr noundef %0, i32 noundef 0) #10
  br label %311

311:                                              ; preds = %309, %304, %300
  call fastcc void @or51132_setmode(ptr noundef %0)
  %312 = load i32, ptr %11, align 4
  %313 = getelementptr inbounds %struct.or51132_state, ptr %13, i32 0, i32 5
  store i32 %312, ptr %313, align 4
  br label %314

314:                                              ; preds = %311, %281, %56, %40
  %315 = phi i32 [ -1, %40 ], [ %54, %56 ], [ %282, %281 ], [ 0, %311 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  ret i32 %315
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51132_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i32 500, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51132_get_parameters(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  %8 = getelementptr inbounds %struct.or51132_state, ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 4, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = load ptr, ptr %8, align 4
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %4, align 4
  store i16 0, ptr %9, align 2
  store i16 2, ptr %7, align 4
  store ptr %3, ptr %10, align 4
  %18 = load i8, ptr %15, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %11, align 4
  store i16 1, ptr %12, align 2
  store i16 2, ptr %13, align 4
  store ptr %3, ptr %14, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #10
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %27, label %23

23:                                               ; preds = %31, %2
  %24 = phi i32 [ %21, %2 ], [ %38, %31 ]
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef %24) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
  br label %51

27:                                               ; preds = %2
  %28 = load i8, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  switch i8 %28, label %31 [
    i8 6, label %45
    i8 67, label %29
    i8 69, label %30
  ]

29:                                               ; preds = %40, %27
  br label %45

30:                                               ; preds = %40, %27
  br label %45

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 4, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  %32 = load ptr, ptr %8, align 4
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %4, align 4
  store i16 0, ptr %9, align 2
  store i16 2, ptr %7, align 4
  store ptr %3, ptr %10, align 4
  %35 = load i8, ptr %32, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %11, align 4
  store i16 1, ptr %12, align 2
  store i16 2, ptr %13, align 4
  store ptr %3, ptr %14, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %4, i32 noundef 2) #10
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %23

40:                                               ; preds = %31
  %41 = load i8, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  switch i8 %41, label %42 [
    i8 6, label %45
    i8 67, label %29
    i8 69, label %30
  ]

42:                                               ; preds = %40
  %43 = zext i8 %41 to i32
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %43) #11
  br label %51

45:                                               ; preds = %40, %30, %29, %27
  %46 = phi i32 [ 5, %30 ], [ 3, %29 ], [ 7, %40 ], [ 7, %27 ]
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.or51132_state, ptr %6, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %1, align 4
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 2, ptr %50, align 4
  br label %51

51:                                               ; preds = %45, %42, %23
  %52 = phi i32 [ -121, %23 ], [ -121, %42 ], [ 0, %45 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51132_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 4, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  %8 = getelementptr inbounds %struct.or51132_state, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 2, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %15 = load i8, ptr %9, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %19, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #10
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef %21) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef -121) #11
  br label %42

26:                                               ; preds = %2
  %27 = getelementptr inbounds i8, ptr %3, i32 1
  %28 = load i8, ptr %3, align 2
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %29 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = shl nuw nsw i32 %30, 8
  %35 = zext i8 %28 to i32
  %36 = or i32 %34, %35
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.or51132_read_status, i32 noundef %36) #11
  br label %38

38:                                               ; preds = %33, %26
  %39 = and i32 %30, 1
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 31
  br label %42

42:                                               ; preds = %38, %23
  %43 = phi i32 [ %41, %38 ], [ 0, %23 ]
  %44 = phi i32 [ 0, %38 ], [ -121, %23 ]
  store i32 %43, ptr %1, align 4
  ret i32 %44
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51132_read_ber(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51132_read_signal_strength(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %0, ptr noundef nonnull %3) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.or51132_state, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 587202559
  %14 = udiv i32 %12, 8960
  %15 = trunc i32 %14 to i16
  %16 = select i1 %13, i16 -1, i16 %15
  store i16 %16, ptr %1, align 2
  br label %17

17:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51132_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %5, i32 1
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  %11 = getelementptr inbounds %struct.or51132_state, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  %18 = getelementptr inbounds i8, ptr %3, i32 1
  %19 = getelementptr inbounds i8, ptr %4, i32 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 516, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #10, !annotation !8
  %26 = load ptr, ptr %11, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %6, align 4
  store i16 0, ptr %12, align 2
  store i16 2, ptr %10, align 4
  store ptr %5, ptr %13, align 4
  %29 = load i8, ptr %26, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %14, align 4
  store i16 1, ptr %15, align 2
  store i16 2, ptr %16, align 4
  store ptr %5, ptr %17, align 4
  %31 = load ptr, ptr %8, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %6, i32 noundef 2) #10
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %38, label %34

34:                                               ; preds = %76, %2
  %35 = phi i32 [ %32, %2 ], [ %85, %76 ]
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 2, i32 noundef %35) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #11
  br label %155

38:                                               ; preds = %2
  %39 = load i8, ptr %5, align 2
  %40 = zext i8 %39 to i32
  %41 = load i8, ptr %9, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %43, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %44) #11
  br label %49

49:                                               ; preds = %47, %38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 4, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #10, !annotation !8
  %50 = load ptr, ptr %11, align 4
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %4, align 4
  store i16 0, ptr %20, align 2
  store i16 2, ptr %19, align 4
  store ptr %3, ptr %21, align 4
  %53 = load i8, ptr %50, align 4
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %22, align 4
  store i16 1, ptr %23, align 2
  store i16 2, ptr %24, align 4
  store ptr %3, ptr %25, align 4
  %55 = load ptr, ptr %8, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %4, i32 noundef 2) #10
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %62, label %58

58:                                               ; preds = %98, %49
  %59 = phi i32 [ %56, %49 ], [ %105, %98 ]
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef %59) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  br label %155

62:                                               ; preds = %49
  %63 = load i8, ptr %3, align 2
  %64 = load i8, ptr %18, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  switch i8 %63, label %76 [
    i8 6, label %65
    i8 67, label %113
    i8 69, label %72
  ]

65:                                               ; preds = %107, %62
  %66 = phi i8 [ %64, %62 ], [ %109, %107 ]
  %67 = phi i32 [ %44, %62 ], [ %93, %107 ]
  %68 = zext i8 %66 to i32
  %69 = and i32 %68, 16
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 0, i32 -50331648
  br label %117

72:                                               ; preds = %107, %62
  %73 = phi i8 [ %64, %62 ], [ %109, %107 ]
  %74 = phi i32 [ %44, %62 ], [ %93, %107 ]
  %75 = zext i8 %73 to i32
  br label %117

76:                                               ; preds = %62
  %77 = zext i8 %63 to i32
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %77) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 516, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #10, !annotation !8
  %79 = load ptr, ptr %11, align 4
  %80 = load i8, ptr %79, align 4
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %6, align 4
  store i16 0, ptr %12, align 2
  store i16 2, ptr %10, align 4
  store ptr %5, ptr %13, align 4
  %82 = load i8, ptr %79, align 4
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %14, align 4
  store i16 1, ptr %15, align 2
  store i16 2, ptr %16, align 4
  store ptr %5, ptr %17, align 4
  %84 = load ptr, ptr %8, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %6, i32 noundef 2) #10
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %34

87:                                               ; preds = %76
  %88 = load i8, ptr %5, align 2
  %89 = zext i8 %88 to i32
  %90 = load i8, ptr %9, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = or i32 %92, %89
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %87
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %93) #11
  br label %98

98:                                               ; preds = %96, %87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 4, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #10, !annotation !8
  %99 = load ptr, ptr %11, align 4
  %100 = load i8, ptr %99, align 4
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %4, align 4
  store i16 0, ptr %20, align 2
  store i16 2, ptr %19, align 4
  store ptr %3, ptr %21, align 4
  %102 = load i8, ptr %99, align 4
  %103 = zext i8 %102 to i16
  store i16 %103, ptr %22, align 4
  store i16 1, ptr %23, align 2
  store i16 2, ptr %24, align 4
  store ptr %3, ptr %25, align 4
  %104 = load ptr, ptr %8, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %4, i32 noundef 2) #10
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %58

107:                                              ; preds = %98
  %108 = load i8, ptr %3, align 2
  %109 = load i8, ptr %18, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  switch i8 %108, label %110 [
    i8 6, label %65
    i8 67, label %113
    i8 69, label %72
  ]

110:                                              ; preds = %107
  %111 = zext i8 %108 to i32
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %111) #11
  br label %155

113:                                              ; preds = %107, %62
  %114 = phi i8 [ %64, %62 ], [ %109, %107 ]
  %115 = phi i32 [ %44, %62 ], [ %93, %107 ]
  %116 = zext i8 %114 to i32
  br label %117

117:                                              ; preds = %113, %72, %65
  %118 = phi i32 [ 69, %72 ], [ 6, %65 ], [ 67, %113 ]
  %119 = phi i32 [ %74, %72 ], [ %67, %65 ], [ %115, %113 ]
  %120 = phi i32 [ %75, %72 ], [ %68, %65 ], [ %116, %113 ]
  %121 = phi i32 [ 0, %72 ], [ %71, %65 ], [ 0, %113 ]
  %122 = phi i32 [ 150290396, %72 ], [ 150204167, %65 ], [ 150204167, %113 ]
  %123 = load i32, ptr @debug, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %117
  %126 = and i32 %120, 16
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, ptr @.str.43, ptr @.str.42
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.or51132_read_snr, i32 noundef %118, ptr noundef nonnull %128) #11
  br label %130

130:                                              ; preds = %125, %117
  %131 = icmp eq i32 %119, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %130
  %133 = call i32 @intlog10(i32 noundef %119) #10
  %134 = shl i32 %133, 1
  %135 = icmp ult i32 %122, %134
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = sub i32 %122, %134
  %138 = mul i32 %137, 10
  br label %139

139:                                              ; preds = %136, %132, %130
  %140 = phi i32 [ %138, %136 ], [ 0, %130 ], [ 0, %132 ]
  %141 = add i32 %140, %121
  %142 = getelementptr inbounds %struct.or51132_state, ptr %8, i32 0, i32 4
  store i32 %141, ptr %142, align 4
  %143 = lshr i32 %141, 16
  %144 = trunc i32 %143 to i16
  store i16 %144, ptr %1, align 2
  %145 = load i32, ptr @debug, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %139
  %148 = load i32, ptr %142, align 4
  %149 = lshr i32 %148, 24
  %150 = lshr i32 %148, 8
  %151 = and i32 %150, 65535
  %152 = mul nuw nsw i32 %151, 100
  %153 = lshr i32 %152, 16
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.or51132_read_snr, i32 noundef %119, i32 noundef %149, i32 noundef %153) #11
  br label %155

155:                                              ; preds = %147, %139, %110, %58, %34
  %156 = phi i32 [ -121, %34 ], [ -121, %58 ], [ 0, %147 ], [ 0, %139 ], [ -121, %110 ]
  ret i32 %156
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51132_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @or51132_setmode(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const.or51132_setmode.cmd_buf1, i32 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @__const.or51132_setmode.cmd_buf2, i32 3, i1 false)
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.or51132_state, ptr %7, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %12) #11
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.or51132_state, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %22 [
    i32 7, label %17
    i32 6, label %24
    i32 5, label %20
    i32 3, label %21
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 80, ptr %18, align 1
  %19 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 3, ptr %19, align 1
  br label %24

20:                                               ; preds = %14
  br label %24

21:                                               ; preds = %14
  br label %24

22:                                               ; preds = %14
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %16) #11
  br label %80

24:                                               ; preds = %21, %20, %17, %14
  %25 = phi i8 [ 67, %21 ], [ 69, %20 ], [ 6, %17 ], [ 79, %14 ]
  %26 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 %25, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %27 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %27, align 4, !annotation !8
  %28 = getelementptr inbounds %struct.or51132_state, ptr %7, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %3, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %33, align 4
  %34 = load ptr, ptr %7, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %3, i32 noundef 1) #10
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %44, label %37

37:                                               ; preds = %24
  %38 = load i16, ptr %3, align 4
  %39 = zext i16 %38 to i32
  %40 = load i16, ptr %27, align 4
  %41 = zext i16 %40 to i32
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %39, i32 noundef %41, i32 noundef %35) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  br label %80

44:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %50) #11
  br label %52

52:                                               ; preds = %47, %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %53 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 3, ptr %53, align 4, !annotation !8
  %54 = load ptr, ptr %28, align 4
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %2, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %5, ptr %58, align 4
  %59 = load ptr, ptr %7, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %2, i32 noundef 1) #10
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %69, label %62

62:                                               ; preds = %52
  %63 = load i16, ptr %2, align 4
  %64 = zext i16 %63 to i32
  %65 = load i16, ptr %53, align 4
  %66 = zext i16 %65 to i32
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %64, i32 noundef %66, i32 noundef %60) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  br label %80

69:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %70 = load i32, ptr @debug, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %75, i32 noundef %78) #11
  br label %80

80:                                               ; preds = %72, %69, %62, %37, %22
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @or51132_writebuf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.or51132_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %12 = trunc i32 %2 to i16
  store i16 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %1, ptr %13, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %4, i32 noundef 1) #10
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i16, ptr %4, align 4
  %19 = zext i16 %18 to i32
  %20 = load i16, ptr %11, align 4
  %21 = zext i16 %20 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %19, i32 noundef %21, i32 noundef %15) #11
  br label %23

23:                                               ; preds = %17, %3
  %24 = phi i32 [ -121, %17 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
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
!8 = !{!"auto-init"}
