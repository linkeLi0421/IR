; ModuleID = '/llk/IR/drivers/media/dvb-frontends/bcm3510.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/bcm3510.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm3510_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm3510_attach\22\09\09\09\09\09"
module asm "__kstrtabns_bcm3510_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%union.bcm3510_register_value = type { i8 }
%struct.bcm3510_state = type { ptr, ptr, %struct.dvb_frontend, %struct.mutex, i8, i32, i32, %struct.bcm3510_hab_cmd_status1, %struct.bcm3510_hab_cmd_status2 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.bcm3510_hab_cmd_status1 = type { %struct.anon.73, %struct.anon.74, %struct.anon.75, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8 }
%struct.anon.74 = type { i8 }
%struct.anon.75 = type { i8 }
%struct.bcm3510_hab_cmd_status2 = type { %struct.anon.76, %struct.anon.77, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.78, i8, i8, i8 }
%struct.anon.76 = type { i8 }
%struct.anon.77 = type { i8 }
%struct.anon.78 = type { i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.bcm3510_hab_cmd_get_version_info = type { i8, i8, i8, i8 }
%struct.bcm3510_hab_cmd_set_agc = type { i8 }
%struct.bcm3510_config = type { i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.bcm3510_hab_cmd_tune = type { i8, i8, i8, i8, [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair] }
%struct.bcm3510_hab_cmd_tune_ctrl_data_pair = type { %struct.anon.93, i8 }
%struct.anon.93 = type { i8 }
%struct.bcm3510_hab_cmd_ext_acquire = type { %struct.anon.91, %struct.anon.92, i8, i8, i8, i8, i8, i8 }
%struct.anon.91 = type { i8 }
%struct.anon.92 = type { i8 }
%struct.bcm3510_hab_cmd_bert_control = type { i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [56 x i8] c"parm=debug:set debugging level (1=info,2=i2c (|-able)).\00", section ".modinfo", align 1
@bcm3510_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Broadcom BCM3510 VSB/QAM frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 803000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6351534 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @bcm3510_release, ptr null, ptr @bcm3510_init, ptr @bcm3510_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm3510_set_frontend, ptr @bcm3510_get_tune_settings, ptr null, ptr @bcm3510_read_status, ptr @bcm3510_read_ber, ptr @bcm3510_read_signal_strength, ptr @bcm3510_read_snr, ptr @bcm3510_read_unc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@bcm3510_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [18 x i8] c"&state->hab_mutex\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Revision: 0x%1x, Layer: 0x%1x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\016bcm3510: Revision: 0x%1x, Layer: 0x%1x.\0A\00", align 1
@__kstrtab_bcm3510_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm3510_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm3510_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm3510_attach to i32), ptr @__kstrtab_bcm3510_attach, ptr @__kstrtabns_bcm3510_attach }, section "___ksymtab+bcm3510_attach", align 4
@__UNIQUE_ID_description251 = internal constant [97 x i8] c"description=Broadcom BCM3510 ATSC (8VSB/16VSB & ITU J83 AnnexB FEC QAM64/256) demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [55 x i8] c"author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"%s: i2c read error (addr %02x, reg %02x, err == %i)\0A\00", align 1
@__func__.bcm3510_readbytes = private unnamed_addr constant [18 x i8] c"bcm3510_readbytes\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"i2c rd %02x: \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [17 x i8] c"reset timed out\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"i2c wr %02x: \00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s: i2c write error (addr %02x, reg %02x, err == %i)\0A\00", align 1
@__func__.bcm3510_writebytes = private unnamed_addr constant [19 x i8] c"bcm3510_writebytes\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"JDEC: %02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"attempting to download firmware\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"firmware is loaded\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"AP is already running - firmware already loaded.\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"reset?\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"tristate?\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"firmware?\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"requesting firmware\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"dvb-fe-bcm3510-01.fw\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"\013bcm3510: could not load firmware (%s): %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"got firmware: %zu\0A\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"firmware chunk, addr: 0x%04x, len: 0x%04x, total length: 0x%04zx\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"\013bcm3510: firmware download failed: %d\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"firmware download successfully completed\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"reset clear timed out\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"Version information: 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"version check failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"hab snd: \00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"hab get: \00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"HAB is running already - clearing it.\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"waiting for HAB to complete\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"send_request execution timed out.\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%dkHz:\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c" BC1_2_3_4: %x, N: %x A: %x\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"real_status: %02x\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_bcm3510_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.bcm3510_set_frontend = private unnamed_addr constant [6 x i8] c"!\11\11\11\00\00", align 1
@switch.table.bcm3510_set_frontend.37 = private unnamed_addr constant [6 x i8] c"baaahi", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bcm3510_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %union.bcm3510_register_value, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1140) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bcm3510_state, ptr %5, i32 0, i32 1
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %5, align 8
  %9 = getelementptr inbounds %struct.bcm3510_state, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.bcm3510_state, ptr %5, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %10, ptr noundef nonnull align 4 dereferenceable(544) @bcm3510_ops, i32 544, i1 false)
  %11 = getelementptr inbounds %struct.bcm3510_state, ptr %5, i32 0, i32 2, i32 3
  store ptr %5, ptr %11, align 8
  %12 = getelementptr inbounds %struct.bcm3510_state, ptr %5, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @bcm3510_attach.__key) #10
  %13 = call fastcc i32 @bcm3510_readB(ptr noundef nonnull %5, i8 noundef zeroext -32, ptr noundef nonnull %3)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %7
  %16 = load i32, ptr @debug, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, 15
  %22 = zext i8 %21 to i32
  %23 = lshr i8 %20, 4
  %24 = zext i8 %23 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %22, i32 noundef %24) #12
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i8, ptr %3, align 1
  %28 = and i8 %27, 15
  %29 = icmp eq i8 %28, 1
  %30 = and i8 %27, -16
  %31 = icmp eq i8 %30, -80
  %32 = or i1 %29, %31
  %33 = icmp eq i8 %28, 8
  %34 = or i1 %33, %32
  %35 = icmp ult i8 %27, 16
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = zext i8 %28 to i32
  %39 = lshr i8 %27, 4
  %40 = zext i8 %39 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %38, i32 noundef %40) #12
  %42 = call fastcc i32 @bcm3510_reset(ptr noundef nonnull %5)
  br label %44

43:                                               ; preds = %26, %7, %2
  call void @kfree(ptr noundef %5) #10
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi ptr [ null, %43 ], [ %9, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret ptr %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm3510_readB(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false) #10, !annotation !8
  %7 = getelementptr inbounds %struct.bcm3510_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  store i16 1, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %14 = load i8, ptr %8, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %2, ptr %18, align 4
  store i8 0, ptr %2, align 1
  %19 = load ptr, ptr %0, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 2) #10
  %21 = icmp eq i32 %20, 2
  %22 = load i32, ptr @debug, align 4
  br i1 %21, label %33, label %23

23:                                               ; preds = %3
  %24 = and i32 %22, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = load i8, ptr %4, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.bcm3510_readbytes, i32 noundef %29, i32 noundef %31, i32 noundef %20) #12
  br label %52

33:                                               ; preds = %3
  %34 = and i32 %22, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %4, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %38) #12
  %40 = load i32, ptr @debug, align 4
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load i8, ptr %2, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %45) #12
  %47 = load i32, ptr @debug, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %52

52:                                               ; preds = %50, %43, %36, %33, %26, %23
  %53 = phi i32 [ -121, %26 ], [ -121, %23 ], [ 0, %50 ], [ 0, %43 ], [ 0, %36 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  ret i32 %53
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm3510_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %union.bcm3510_register_value, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = call fastcc i32 @bcm3510_readB(ptr noundef %0, i8 noundef zeroext -96, ptr noundef nonnull %2)
  %4 = load i8, ptr %2, align 1
  %5 = or i8 %4, 1
  store i8 %5, ptr %2, align 1
  %6 = zext i8 %5 to i32
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call fastcc i32 @bcm3510_writeB(ptr noundef %0, i8 noundef zeroext -96, [1 x i32] %7)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = sub i32 -300, %11
  br label %13

13:                                               ; preds = %20, %10
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = add i32 %12, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  call void @msleep(i32 noundef 10) #10
  %18 = call fastcc i32 @bcm3510_readB(ptr noundef %0, i8 noundef zeroext -94, ptr noundef nonnull %2)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load i8, ptr %2, align 1
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %13, label %30

24:                                               ; preds = %13
  %25 = load i32, ptr @debug, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %30

30:                                               ; preds = %28, %24, %20, %17, %1
  %31 = phi i32 [ %8, %1 ], [ -110, %28 ], [ -110, %24 ], [ 0, %20 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm3510_writeB(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, [1 x i32] %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = extractvalue [1 x i32] %2, 0
  %7 = trunc i32 %6 to i8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  %8 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %8, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.bcm3510_state, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %15, align 4
  store i8 %1, ptr %4, align 1
  %16 = getelementptr inbounds [256 x i8], ptr %4, i32 0, i32 1
  store i8 %7, ptr %16, align 1
  %17 = load i32, ptr @debug, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %3
  %21 = zext i8 %1 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %21) #12
  %23 = load i32, ptr @debug, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = and i32 %6, 255
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %27) #12
  %29 = load i32, ptr @debug, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %34

34:                                               ; preds = %32, %26, %20, %3
  %35 = load ptr, ptr %0, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 1) #10
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr @debug, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %10, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = zext i8 %1 to i32
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.bcm3510_writebytes, i32 noundef %45, i32 noundef %46, i32 noundef %36) #12
  br label %48

48:                                               ; preds = %42, %38, %34
  %49 = phi i32 [ -121, %42 ], [ -121, %38 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm3510_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm3510_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.bcm3510_hab_cmd_get_version_info, align 4
  %3 = alloca %union.bcm3510_register_value, align 1
  %4 = alloca ptr, align 4
  %5 = alloca %union.bcm3510_register_value, align 1
  %6 = alloca %union.bcm3510_register_value, align 1
  %7 = alloca %struct.bcm3510_hab_cmd_set_agc, align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  %10 = call fastcc i32 @bcm3510_readB(ptr noundef %9, i8 noundef zeroext -54, ptr noundef nonnull %6)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %239, label %12

12:                                               ; preds = %1
  %13 = load i32, ptr @debug, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8, ptr %6, align 1
  %18 = zext i8 %17 to i32
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %18) #12
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i8, ptr %6, align 1
  %22 = and i8 %21, 7
  %23 = zext i8 %22 to i32
  switch i32 %23, label %239 [
    i32 7, label %24
    i32 4, label %191
  ]

24:                                               ; preds = %20
  %25 = load i32, ptr @debug, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %30

30:                                               ; preds = %28, %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %31 = call fastcc i32 @bcm3510_readB(ptr noundef %9, i8 noundef zeroext -94, ptr noundef nonnull %5) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %188, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr %5, align 1
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  %37 = load i32, ptr @debug, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %36, label %43, label %40

40:                                               ; preds = %33
  br i1 %39, label %190, label %41

41:                                               ; preds = %40
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %190

43:                                               ; preds = %33
  br i1 %39, label %46, label %44

44:                                               ; preds = %43
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %46

46:                                               ; preds = %44, %43
  %47 = call fastcc i32 @bcm3510_reset(ptr noundef %9) #10
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %188, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr @debug, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %55

55:                                               ; preds = %53, %49
  store i8 0, ptr %5, align 1
  %56 = call fastcc i32 @bcm3510_writeB(ptr noundef %9, i8 noundef zeroext 46, [1 x i32] zeroinitializer) #10
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %188, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr @debug, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bcm3510_state, ptr %9, i32 0, i32 2, i32 3
  %64 = load ptr, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !8
  br label %74

65:                                               ; preds = %58
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  %67 = load i32, ptr @debug, align 4
  %68 = and i32 %67, 1
  %69 = getelementptr inbounds %struct.bcm3510_state, ptr %9, i32 0, i32 2, i32 3
  %70 = load ptr, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !8
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %74

74:                                               ; preds = %72, %65, %62
  %75 = phi ptr [ %64, %62 ], [ %70, %72 ], [ %70, %65 ]
  %76 = getelementptr inbounds %struct.bcm3510_state, ptr %9, i32 0, i32 2
  %77 = getelementptr inbounds %struct.bcm3510_state, ptr %75, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.bcm3510_config, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 %80(ptr noundef %76, ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #10
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %81) #12
  br label %160

85:                                               ; preds = %74
  %86 = load i32, ptr @debug, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %4, align 4
  %91 = load i32, ptr %90, align 4
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %91) #12
  br label %93

93:                                               ; preds = %89, %85
  %94 = load ptr, ptr %4, align 4
  %95 = getelementptr inbounds %struct.firmware, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %94, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %153, label %99

99:                                               ; preds = %148, %93
  %100 = phi i32 [ %151, %148 ], [ %97, %93 ]
  %101 = phi i32 [ %149, %148 ], [ 0, %93 ]
  %102 = getelementptr i8, ptr %96, i32 %101
  %103 = load i16, ptr %102, align 2
  %104 = add i32 %101, 2
  %105 = getelementptr i8, ptr %96, i32 %104
  %106 = load i16, ptr %105, align 2
  %107 = load i32, ptr @debug, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %99
  %111 = zext i16 %103 to i32
  %112 = zext i16 %106 to i32
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %111, i32 noundef %112, i32 noundef %100) #12
  br label %114

114:                                              ; preds = %110, %99
  %115 = add i32 %101, 4
  %116 = getelementptr i8, ptr %96, i32 %115
  %117 = lshr i16 %103, 8
  %118 = zext i16 %117 to i32
  %119 = insertvalue [1 x i32] poison, i32 %118, 0
  %120 = call fastcc i32 @bcm3510_writeB(ptr noundef %75, i8 noundef zeroext -87, [1 x i32] %119) #10
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %145, label %122

122:                                              ; preds = %114
  %123 = and i16 %103, 255
  %124 = zext i16 %123 to i32
  %125 = insertvalue [1 x i32] poison, i32 %124, 0
  %126 = call fastcc i32 @bcm3510_writeB(ptr noundef %75, i8 noundef zeroext -86, [1 x i32] %125) #10
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %122
  %129 = zext i16 %106 to i32
  %130 = icmp eq i16 %106, 0
  br i1 %130, label %148, label %134

131:                                              ; preds = %134
  %132 = add nuw nsw i32 %136, 1
  %133 = icmp eq i32 %132, %129
  br i1 %133, label %148, label %134

134:                                              ; preds = %131, %128
  %135 = phi i32 [ %141, %131 ], [ undef, %128 ]
  %136 = phi i32 [ %132, %131 ], [ 0, %128 ]
  %137 = getelementptr i8, ptr %116, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %135, -256
  %141 = or i32 %140, %139
  %142 = insertvalue [1 x i32] poison, i32 %141, 0
  %143 = call fastcc i32 @bcm3510_writeB(ptr noundef %75, i8 noundef zeroext -85, [1 x i32] %142) #10
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %131

145:                                              ; preds = %134, %122, %114
  %146 = phi i32 [ %143, %134 ], [ %120, %114 ], [ %126, %122 ]
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %146) #12
  br label %160

148:                                              ; preds = %131, %128
  %149 = add i32 %115, %129
  %150 = load ptr, ptr %4, align 4
  %151 = load i32, ptr %150, align 4
  %152 = icmp ult i32 %149, %151
  br i1 %152, label %99, label %153

153:                                              ; preds = %148, %93
  %154 = phi ptr [ %94, %93 ], [ %150, %148 ]
  call void @release_firmware(ptr noundef %154) #10
  %155 = load i32, ptr @debug, align 4
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %153
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  br label %162

160:                                              ; preds = %145, %83
  %161 = phi i32 [ %146, %145 ], [ %81, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %188

162:                                              ; preds = %158, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  %163 = call fastcc i32 @bcm3510_writeB(ptr noundef %9, i8 noundef zeroext -96, [1 x i32] zeroinitializer) #10
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %186, label %165

165:                                              ; preds = %162
  %166 = load volatile i32, ptr @jiffies, align 64
  %167 = sub i32 -300, %166
  br label %168

168:                                              ; preds = %175, %165
  %169 = load volatile i32, ptr @jiffies, align 64
  %170 = add i32 %167, %169
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  call void @msleep(i32 noundef 10) #10
  %173 = call fastcc i32 @bcm3510_readB(ptr noundef %9, i8 noundef zeroext -94, ptr noundef nonnull %3) #10
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %172
  %176 = load i8, ptr %3, align 1
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %185, label %168

179:                                              ; preds = %168
  %180 = load i32, ptr @debug, align 4
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %186

185:                                              ; preds = %175
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %190

186:                                              ; preds = %183, %179, %172, %162
  %187 = phi i32 [ -110, %179 ], [ -110, %183 ], [ %163, %162 ], [ %173, %172 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %188

188:                                              ; preds = %186, %160, %55, %46, %30
  %189 = phi i32 [ %187, %186 ], [ %161, %160 ], [ %56, %55 ], [ %47, %46 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %239

190:                                              ; preds = %185, %41, %40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %191

191:                                              ; preds = %190, %20
  %192 = load i32, ptr @debug, align 4
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %197

197:                                              ; preds = %195, %191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %198 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %9, i8 noundef zeroext 61, i8 noundef zeroext 21, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %2, i8 noundef zeroext 4) #10
  %199 = load i32, ptr @debug, align 4
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %2, i32 0, i32 1
  %204 = load i8, ptr %203, align 1
  %205 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %2, i32 0, i32 2
  %206 = load i8, ptr %205, align 2
  %207 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %2, i32 0, i32 3
  %208 = load i8, ptr %207, align 1
  br label %222

209:                                              ; preds = %197
  %210 = load i8, ptr %2, align 4
  %211 = zext i8 %210 to i32
  %212 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %2, i32 0, i32 1
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i32
  %215 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %2, i32 0, i32 2
  %216 = load i8, ptr %215, align 2
  %217 = zext i8 %216 to i32
  %218 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %2, i32 0, i32 3
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i32
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %211, i32 noundef %214, i32 noundef %217, i32 noundef %220) #12
  br label %222

222:                                              ; preds = %209, %202
  %223 = phi i8 [ %208, %202 ], [ %219, %209 ]
  %224 = phi i8 [ %206, %202 ], [ %216, %209 ]
  %225 = phi i8 [ %204, %202 ], [ %213, %209 ]
  %226 = icmp eq i8 %225, 6
  %227 = icmp eq i8 %224, 1
  %228 = select i1 %226, i1 %227, i1 false
  %229 = icmp eq i8 %223, -79
  %230 = select i1 %228, i1 %229, i1 false
  br i1 %230, label %237, label %231

231:                                              ; preds = %222
  %232 = load i32, ptr @debug, align 4
  %233 = and i32 %232, 1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %231
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %237

237:                                              ; preds = %235, %231, %222
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  store i8 -128, ptr %7, align 1
  %238 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %9, i8 noundef zeroext 42, i8 noundef zeroext 18, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0)
  br label %239

239:                                              ; preds = %237, %188, %20, %1
  %240 = phi i32 [ 0, %237 ], [ %10, %1 ], [ -19, %20 ], [ %189, %188 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret i32 %240
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm3510_sleep(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm3510_set_frontend(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.bcm3510_hab_cmd_tune, align 1
  %3 = alloca %union.bcm3510_register_value, align 1
  %4 = alloca %struct.bcm3510_hab_cmd_ext_acquire, align 8
  %5 = alloca %struct.bcm3510_hab_cmd_bert_control, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i64 0, ptr %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -3
  %12 = icmp ult i32 %11, 6
  br i1 %12, label %13, label %145

13:                                               ; preds = %1
  %14 = trunc i32 %11 to i8
  %15 = lshr i8 53, %14
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %145, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds [6 x i8], ptr @switch.table.bcm3510_set_frontend, i32 0, i32 %11
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds [6 x i8], ptr @switch.table.bcm3510_set_frontend.37, i32 0, i32 %11
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, ptr %4, i32 0, i32 1
  store i8 %20, ptr %23, align 1
  store i8 %22, ptr %4, align 8
  %24 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %8, i8 noundef zeroext 56, i8 noundef zeroext 10, ptr noundef nonnull %4, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0)
  store i8 0, ptr %5, align 1
  %25 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %8, i8 noundef zeroext 18, i8 noundef zeroext 14, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0)
  %26 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %8, i8 noundef zeroext 18, i8 noundef zeroext -6, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %27 = call fastcc i32 @bcm3510_readB(ptr noundef %8, i8 noundef zeroext -6, ptr noundef nonnull %3) #10
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %18
  %30 = load i8, ptr %3, align 1
  %31 = and i8 %30, -17
  store i8 %31, ptr %3, align 1
  %32 = zext i8 %31 to i32
  %33 = insertvalue [1 x i32] poison, i32 %32, 0
  %34 = call fastcc i32 @bcm3510_writeB(ptr noundef %8, i8 noundef zeroext -6, [1 x i32] %33) #10
  %35 = load i8, ptr %3, align 1
  %36 = or i8 %35, 16
  store i8 %36, ptr %3, align 1
  %37 = zext i8 %36 to i32
  %38 = insertvalue [1 x i32] poison, i32 %37, 0
  %39 = call fastcc i32 @bcm3510_writeB(ptr noundef %8, i8 noundef zeroext -6, [1 x i32] %38) #10
  %40 = load i8, ptr %3, align 1
  %41 = and i8 %40, -17
  store i8 %41, ptr %3, align 1
  %42 = zext i8 %41 to i32
  %43 = insertvalue [1 x i32] poison, i32 %42, 0
  %44 = call fastcc i32 @bcm3510_writeB(ptr noundef %8, i8 noundef zeroext -6, [1 x i32] %43) #10
  %45 = load i8, ptr %3, align 1
  %46 = or i8 %45, 6
  store i8 %46, ptr %3, align 1
  %47 = zext i8 %46 to i32
  %48 = insertvalue [1 x i32] poison, i32 %47, 0
  %49 = call fastcc i32 @bcm3510_writeB(ptr noundef %8, i8 noundef zeroext -6, [1 x i32] %48) #10
  br label %50

50:                                               ; preds = %29, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %51 = load i32, ptr %6, align 4
  %52 = udiv i32 %51, 1000
  %53 = load i32, ptr @debug, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %52) #12
  br label %58

58:                                               ; preds = %56, %50
  %59 = icmp ult i32 %51, 168001000
  %60 = icmp ult i32 %51, 378001000
  %61 = select i1 %60, i8 44, i8 48
  %62 = select i1 %59, i8 28, i8 %61
  %63 = icmp ugt i32 %51, 469999999
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = icmp ugt i32 %51, 89999999
  br i1 %65, label %70, label %66

66:                                               ; preds = %64
  %67 = icmp ugt i32 %51, 75999999
  %68 = select i1 %67, i32 -76001, i32 -54001
  %69 = select i1 %67, i32 14865, i32 14645
  br label %70

70:                                               ; preds = %66, %64, %58
  %71 = phi i32 [ -470001, %58 ], [ -90001, %64 ], [ %68, %66 ]
  %72 = phi i32 [ 18805, %58 ], [ 15005, %64 ], [ %69, %66 ]
  %73 = add nsw i32 %71, %52
  %74 = udiv i32 %73, 6000
  %75 = mul nuw nsw i32 %74, 60
  %76 = add nuw nsw i32 %75, %72
  %77 = shl nuw nsw i32 %76, 2
  %78 = udiv i32 %77, 10
  %79 = lshr i32 %78, 6
  %80 = trunc i32 %78 to i8
  %81 = and i8 %80, 63
  %82 = load i32, ptr @debug, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = and i32 %79, 65535
  br label %92

87:                                               ; preds = %70
  %88 = zext i8 %62 to i32
  %89 = and i32 %79, 65535
  %90 = zext i8 %81 to i32
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %88, i32 noundef %89, i32 noundef %90) #12
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi i32 [ %86, %85 ], [ %89, %87 ]
  %94 = add nsw i32 %93, -16
  %95 = icmp ult i32 %94, 2032
  br i1 %95, label %96, label %145

96:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #10
  store i8 16, ptr %2, align 1
  %97 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 1
  store i8 0, ptr %97, align 1
  %98 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 2
  store i8 16, ptr %98, align 1
  %99 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 3
  store i8 64, ptr %99, align 1
  %100 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4
  store i8 7, ptr %100, align 1
  %101 = or i8 %62, -128
  %102 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 0, i32 1
  store i8 %101, ptr %102, align 1
  %103 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 1
  store i8 7, ptr %103, align 1
  %104 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 1, i32 1
  store i8 4, ptr %104, align 1
  %105 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 2
  store i8 2, ptr %105, align 1
  %106 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 2, i32 1
  store i8 32, ptr %106, align 1
  %107 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 3
  store i8 98, ptr %107, align 1
  %108 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 3, i32 1
  store i8 64, ptr %108, align 1
  %109 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 4
  store i8 7, ptr %109, align 1
  %110 = lshr i32 %78, 9
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 4, i32 1
  store i8 %111, ptr %112, align 1
  %113 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 5
  store i8 7, ptr %113, align 1
  %114 = trunc i32 %79 to i8
  %115 = shl i8 %114, 5
  %116 = lshr i8 %81, 2
  %117 = or i8 %116, %115
  %118 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 5, i32 1
  store i8 %117, ptr %118, align 1
  %119 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 6
  store i8 2, ptr %119, align 1
  %120 = shl i8 %80, 6
  %121 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 6, i32 1
  store i8 %120, ptr %121, align 1
  %122 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 7
  store i8 98, ptr %122, align 1
  %123 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 7, i32 1
  store i8 64, ptr %123, align 1
  %124 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 8
  store i8 7, ptr %124, align 1
  %125 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 8, i32 1
  store i8 -128, ptr %125, align 1
  %126 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 9
  store i8 7, ptr %126, align 1
  %127 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 9, i32 1
  store i8 16, ptr %127, align 1
  %128 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 10
  store i8 2, ptr %128, align 1
  %129 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 10, i32 1
  store i8 32, ptr %129, align 1
  %130 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 11
  store i8 -94, ptr %130, align 1
  %131 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 11, i32 1
  store i8 64, ptr %131, align 1
  %132 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 12
  store i8 7, ptr %132, align 1
  %133 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 12, i32 1
  store i8 42, ptr %133, align 1
  %134 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 13
  store i8 7, ptr %134, align 1
  %135 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 13, i32 1
  store i8 -114, ptr %135, align 1
  %136 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 14
  store i8 2, ptr %136, align 1
  %137 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 14, i32 1
  store i8 0, ptr %137, align 1
  %138 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 15
  store i8 -94, ptr %138, align 1
  %139 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %2, i32 0, i32 4, i32 15, i32 1
  store i8 64, ptr %139, align 1
  %140 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %8, i8 noundef zeroext 56, i8 noundef zeroext 22, ptr noundef nonnull %2, i8 noundef zeroext 36, ptr noundef null, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #10
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %96
  %143 = getelementptr inbounds %struct.bcm3510_state, ptr %8, i32 0, i32 7
  %144 = getelementptr inbounds %struct.bcm3510_state, ptr %8, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %143, i8 0, i64 60, i1 false)
  store i32 500, ptr %144, align 4
  call void @msleep(i32 noundef 200) #10
  br label %145

145:                                              ; preds = %142, %96, %92, %13, %1
  %146 = phi i32 [ 0, %142 ], [ -22, %1 ], [ %140, %96 ], [ -22, %92 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %146
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm3510_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 1000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm3510_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = sub i32 %6, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 7
  %12 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %11, i8 noundef zeroext 38) #10
  %13 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8
  %14 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %13, i8 noundef zeroext 22) #10
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 100
  %19 = udiv i32 %18, 1000
  %20 = add i32 %19, %15
  store i32 %20, ptr %5, align 4
  br label %21

21:                                               ; preds = %10, %2
  store i32 0, ptr %1, align 4
  %22 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 7, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 0, i32 24
  store i32 %26, ptr %1, align 4
  %27 = load i8, ptr %22, align 1
  %28 = and i8 %27, 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = or i32 %26, 4
  store i32 %31, ptr %1, align 4
  %32 = load i8, ptr %22, align 1
  br label %33

33:                                               ; preds = %30, %21
  %34 = phi i32 [ %31, %30 ], [ %26, %21 ]
  %35 = phi i8 [ %32, %30 ], [ %27, %21 ]
  %36 = and i8 %35, 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = or i32 %34, 3
  store i32 %39, ptr %1, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi i32 [ %39, %38 ], [ %34, %33 ]
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 500, i32 1500
  %45 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr @debug, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, ptr %1, align 4
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %50) #12
  br label %52

52:                                               ; preds = %49, %40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm3510_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = sub i32 %6, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 7
  %12 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %11, i8 noundef zeroext 38) #10
  %13 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8
  %14 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %13, i8 noundef zeroext 22) #10
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 100
  %19 = udiv i32 %18, 1000
  %20 = add i32 %19, %15
  store i32 %20, ptr %5, align 4
  br label %21

21:                                               ; preds = %10, %2
  %22 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8, i32 14
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8, i32 15
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or i32 %29, %25
  %31 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8, i32 16
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = or i32 %30, %33
  store i32 %34, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm3510_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = sub i32 %6, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 7
  %12 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %11, i8 noundef zeroext 38) #10
  %13 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8
  %14 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %13, i8 noundef zeroext 22) #10
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 100
  %19 = udiv i32 %18, 1000
  %20 = add i32 %19, %15
  store i32 %20, ptr %5, align 4
  br label %21

21:                                               ; preds = %10, %2
  %22 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8, i32 21
  %23 = load i8, ptr %22, align 1
  %24 = tail call i8 @llvm.umin.i8(i8 %23, i8 -66)
  %25 = tail call i8 @llvm.umax.i8(i8 %24, i8 90)
  %26 = zext i8 %25 to i16
  %27 = mul nuw i16 %26, 255
  %28 = add i16 %27, -22950
  %29 = udiv i16 %28, 100
  %30 = shl nuw i16 %29, 8
  %31 = or i16 %30, %29
  store i16 %31, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm3510_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = sub i32 %6, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 7
  %12 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %11, i8 noundef zeroext 38) #10
  %13 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8
  %14 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %13, i8 noundef zeroext 22) #10
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 100
  %19 = udiv i32 %18, 1000
  %20 = add i32 %19, %15
  store i32 %20, ptr %5, align 4
  br label %21

21:                                               ; preds = %10, %2
  %22 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 7, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %24, 1000
  %26 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 7, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %28, 1000
  %30 = lshr i32 %29, 8
  %31 = add nuw nsw i32 %30, %25
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm3510_read_unc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = sub i32 %6, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 7
  %12 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %11, i8 noundef zeroext 38) #10
  %13 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8
  %14 = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %4, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %13, i8 noundef zeroext 22) #10
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 100
  %19 = udiv i32 %18, 1000
  %20 = add i32 %19, %15
  store i32 %20, ptr %5, align 4
  br label %21

21:                                               ; preds = %10, %2
  %22 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8, i32 10
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = getelementptr inbounds %struct.bcm3510_state, ptr %4, i32 0, i32 8, i32 11
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  store i32 %29, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef writeonly %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca %union.bcm3510_register_value, align 1
  %9 = alloca %union.bcm3510_register_value, align 1
  %10 = alloca [128 x i8], align 1
  %11 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #10
  %12 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %12, i8 0, i32 126, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %11, i8 0, i32 128, i1 false), !annotation !8
  %13 = zext i8 %6 to i32
  %14 = add nuw nsw i32 %13, 2
  %15 = zext i8 %4 to i32
  %16 = add nuw nsw i32 %15, 2
  store i8 %1, ptr %10, align 1
  %17 = getelementptr inbounds [128 x i8], ptr %10, i32 0, i32 1
  store i8 %2, ptr %17, align 1
  %18 = getelementptr inbounds [128 x i8], ptr %10, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %3, i32 %15, i1 false)
  %19 = load i32, ptr @debug, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #12
  %24 = load i32, ptr @debug, align 4
  br label %25

25:                                               ; preds = %22, %7
  %26 = phi i32 [ %19, %7 ], [ %24, %22 ]
  br label %27

27:                                               ; preds = %38, %25
  %28 = phi i32 [ %39, %38 ], [ %26, %25 ]
  %29 = phi i32 [ %40, %38 ], [ 0, %25 ]
  %30 = and i32 %28, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr [128 x i8], ptr %10, i32 0, i32 %29
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %35) #12
  %37 = load i32, ptr @debug, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i32 [ %28, %27 ], [ %37, %32 ]
  %40 = add nuw nsw i32 %29, 1
  %41 = icmp eq i32 %40, %16
  br i1 %41, label %42, label %27

42:                                               ; preds = %38
  %43 = and i32 %39, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %47

47:                                               ; preds = %45, %42
  %48 = getelementptr inbounds %struct.bcm3510_state, ptr %0, i32 0, i32 3
  %49 = tail call i32 @mutex_lock_interruptible(ptr noundef %48) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %168, label %51

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !8
  %52 = call fastcc i32 @bcm3510_readB(ptr noundef %0, i8 noundef zeroext -88, ptr noundef nonnull %9) #10
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %119, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %9, align 1
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr @debug, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  %64 = load i8, ptr %9, align 1
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i8 [ %64, %62 ], [ %55, %58 ]
  %67 = and i8 %66, -2
  store i8 %67, ptr %9, align 1
  %68 = zext i8 %67 to i32
  %69 = insertvalue [1 x i32] poison, i32 %68, 0
  %70 = call fastcc i32 @bcm3510_writeB(ptr noundef %0, i8 noundef zeroext -88, [1 x i32] %69) #10
  br label %71

71:                                               ; preds = %65, %54
  %72 = call fastcc i32 @bcm3510_writeB(ptr noundef %0, i8 noundef zeroext -90, [1 x i32] zeroinitializer) #10
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %119, label %74

74:                                               ; preds = %71
  %75 = zext i8 %1 to i32
  %76 = insertvalue [1 x i32] poison, i32 %75, 0
  %77 = call fastcc i32 @bcm3510_writeB(ptr noundef %0, i8 noundef zeroext -89, [1 x i32] %76) #10
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %119, label %79

79:                                               ; preds = %84, %74
  %80 = phi i32 [ %89, %84 ], [ %75, %74 ]
  %81 = phi i32 [ %82, %84 ], [ 0, %74 ]
  %82 = add nuw nsw i32 %81, 1
  %83 = icmp eq i32 %82, %16
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  %85 = getelementptr i8, ptr %10, i32 %82
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %80, -256
  %89 = or i32 %88, %87
  %90 = insertvalue [1 x i32] poison, i32 %89, 0
  %91 = call fastcc i32 @bcm3510_writeB(ptr noundef %0, i8 noundef zeroext -89, [1 x i32] %90) #10
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %119, label %79

93:                                               ; preds = %79
  store i8 3, ptr %9, align 1
  %94 = call fastcc i32 @bcm3510_writeB(ptr noundef %0, i8 noundef zeroext -88, [1 x i32] [i32 3]) #10
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %119, label %96

96:                                               ; preds = %93
  %97 = load volatile i32, ptr @jiffies, align 64
  %98 = sub i32 -100, %97
  br label %99

99:                                               ; preds = %112, %96
  %100 = load volatile i32, ptr @jiffies, align 64
  %101 = add i32 %98, %100
  %102 = icmp slt i32 %101, 0
  %103 = load i32, ptr @debug, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %102, label %106, label %116

106:                                              ; preds = %99
  br i1 %105, label %109, label %107

107:                                              ; preds = %106
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %109

109:                                              ; preds = %107, %106
  call void @msleep(i32 noundef 10) #10
  %110 = call fastcc i32 @bcm3510_readB(ptr noundef %0, i8 noundef zeroext -88, ptr noundef nonnull %9) #10
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = load i8, ptr %9, align 1
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %121, label %99

116:                                              ; preds = %99
  br i1 %105, label %119, label %117

117:                                              ; preds = %116
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %119

119:                                              ; preds = %117, %116, %109, %93, %84, %74, %71, %51
  %120 = phi i32 [ -110, %116 ], [ -110, %117 ], [ %94, %93 ], [ %72, %71 ], [ %52, %51 ], [ %77, %74 ], [ %110, %109 ], [ %91, %84 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  br label %166

121:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  %122 = call fastcc i32 @bcm3510_writeB(ptr noundef %0, i8 noundef zeroext -90, [1 x i32] zeroinitializer) #10
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %128, %121
  %125 = phi i32 [ %131, %128 ], [ 0, %121 ]
  %126 = call fastcc i32 @bcm3510_readB(ptr noundef %0, i8 noundef zeroext -89, ptr noundef nonnull %8) #10
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = load i8, ptr %8, align 1
  %130 = getelementptr i8, ptr %11, i32 %125
  store i8 %129, ptr %130, align 1
  %131 = add nuw nsw i32 %125, 1
  %132 = icmp eq i32 %131, %14
  br i1 %132, label %135, label %124

133:                                              ; preds = %124, %121
  %134 = phi i32 [ %122, %121 ], [ %126, %124 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  br label %166

135:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %136 = load i32, ptr @debug, align 4
  %137 = and i32 %136, 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  %141 = load i32, ptr @debug, align 4
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi i32 [ %136, %135 ], [ %141, %139 ]
  br label %144

144:                                              ; preds = %155, %142
  %145 = phi i32 [ %156, %155 ], [ %143, %142 ]
  %146 = phi i32 [ %157, %155 ], [ 0, %142 ]
  %147 = and i32 %145, 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = getelementptr [128 x i8], ptr %11, i32 0, i32 %146
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %152) #12
  %154 = load i32, ptr @debug, align 4
  br label %155

155:                                              ; preds = %149, %144
  %156 = phi i32 [ %145, %144 ], [ %154, %149 ]
  %157 = add nuw nsw i32 %146, 1
  %158 = icmp eq i32 %157, %14
  br i1 %158, label %159, label %144

159:                                              ; preds = %155
  %160 = and i32 %156, 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %164

164:                                              ; preds = %162, %159
  %165 = getelementptr inbounds [128 x i8], ptr %11, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %5, ptr align 1 %165, i32 %13, i1 false)
  br label %166

166:                                              ; preds = %164, %133, %119
  %167 = phi i32 [ 0, %164 ], [ %120, %119 ], [ %134, %133 ]
  call void @mutex_unlock(ptr noundef %48) #10
  br label %168

168:                                              ; preds = %166, %47
  %169 = phi i32 [ %167, %166 ], [ -11, %47 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #10
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
