; ModuleID = '/llk/IR/drivers/media/dvb-frontends/s5h1420.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s5h1420.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1420_get_tuner_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1420_get_tuner_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1420_get_tuner_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1420_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1420_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1420_attach:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.s5h1420_state = type { ptr, ptr, %struct.dvb_frontend, %struct.i2c_adapter, i8, i8, i32, i32, i32, i32, [256 x i8] }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.s5h1420_config = type { i8, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [28 x i8] c"parm=debug:enable debugging\00", section ".modinfo", align 1
@__kstrtab_s5h1420_get_tuner_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1420_get_tuner_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1420_get_tuner_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1420_get_tuner_i2c_adapter to i32), ptr @__kstrtab_s5h1420_get_tuner_i2c_adapter, ptr @__kstrtabns_s5h1420_get_tuner_i2c_adapter }, section "___ksymtab+s5h1420_get_tuner_i2c_adapter", align 4
@s5h1420_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung S5H1420/PnpNetwork PN1010 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1775 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @s5h1420_release, ptr null, ptr @s5h1420_init, ptr @s5h1420_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1420_set_frontend, ptr @s5h1420_get_tune_settings, ptr @s5h1420_get_frontend, ptr @s5h1420_read_status, ptr @s5h1420_read_ber, ptr @s5h1420_read_signal_strength, ptr null, ptr @s5h1420_read_ucblocks, ptr null, ptr @s5h1420_send_master_cmd, ptr @s5h1420_recv_slave_reply, ptr @s5h1420_send_burst, ptr @s5h1420_set_tone, ptr @s5h1420_set_voltage, ptr null, ptr null, ptr @s5h1420_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str = private unnamed_addr constant [29 x i8] c"S5H1420-PN1010 tuner I2C bus\00", align 1
@s5h1420_tuner_i2c_algo = internal constant %struct.i2c_algorithm { ptr @s5h1420_tuner_i2c_tuner_xfer, ptr null, ptr null, ptr null, ptr @s5h1420_tuner_i2c_func, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"\013S5H1420/PN1010: tuner i2c bus could not be initialized\0A\00", align 1
@__kstrtab_s5h1420_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1420_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1420_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1420_attach to i32), ptr @__kstrtab_s5h1420_attach, ptr @__kstrtabns_s5h1420_attach }, section "___ksymtab+s5h1420_attach", align 4
@__UNIQUE_ID_description251 = internal constant [71 x i8] c"description=Samsung S5H1420/PnpNetwork PN1010 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [44 x i8] c"author=Andrew de Quincey, Patrick Boettcher\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\014%s: i2c xfer: num=%d is too big!\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"s5h1420\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"\017S5H1420: %s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.s5h1420_writereg = private unnamed_addr constant [17 x i8] c"s5h1420_writereg\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\017S5H1420: %s\0A\00", align 1
@__func__.s5h1420_reset = private unnamed_addr constant [14 x i8] c"s5h1420_reset\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"\017S5H1420: enter %s\0A\00", align 1
@__func__.s5h1420_set_frontend = private unnamed_addr constant [21 x i8] c"s5h1420_set_frontend\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\017S5H1420: simple tune\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\017S5H1420: tuning demod\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\017S5H1420: pll01: %d, ToneFreq: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"\017S5H1420: leave %s\0A\00", align 1
@__func__.s5h1420_setfreqoffset = private unnamed_addr constant [22 x i8] c"s5h1420_setfreqoffset\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\017S5H1420: phase rotator/freqoffset: %d %06x\0A\00", align 1
@__func__.s5h1420_setsymbolrate = private unnamed_addr constant [22 x i8] c"s5h1420_setsymbolrate\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\017S5H1420: symbol rate register: %06llx\0A\00", align 1
@__func__.s5h1420_setfec_inversion = private unnamed_addr constant [25 x i8] c"s5h1420_setfec_inversion\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\017S5H1420: fec: %02x %02x\0A\00", align 1
@__func__.s5h1420_read_status = private unnamed_addr constant [20 x i8] c"s5h1420_read_status\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\013s5h1420: avoided division by 0\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"\017S5H1420: for MPEG_CLK_INTL %d %x\0A\00", align 1
@__func__.s5h1420_send_master_cmd = private unnamed_addr constant [24 x i8] c"s5h1420_send_master_cmd\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.s5h1420_set_tone = private unnamed_addr constant [17 x i8] c"s5h1420_set_tone\00", align 1
@__func__.s5h1420_set_voltage = private unnamed_addr constant [20 x i8] c"s5h1420_set_voltage\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_s5h1420_attach, ptr @__ksymtab_s5h1420_get_tuner_i2c_adapter, ptr @__param_debug], section "llvm.metadata"
@switch.table.s5h1420_set_frontend = private unnamed_addr constant [7 x i8] c"\10\11\12\10\13\14\15", align 1
@switch.table.s5h1420_set_frontend.16 = private unnamed_addr constant [7 x i8] c"\01\02\04\01\08\10 ", align 1
@switch.table.s5h1420_get_frontend = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @s5h1420_get_tuner_i2c_adapter(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5h1420_state, ptr %3, i32 0, i32 3
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @s5h1420_attach(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1984) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %4, align 8
  %8 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, -2
  store i8 %10, ptr %8, align 1
  %11 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 6
  store i32 88000000, ptr %11, align 4
  %12 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 7
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 8
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 9
  store i32 0, ptr %14, align 8
  %15 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef nonnull %4, i8 noundef zeroext 0)
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %17, label %41

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %18, i8 -1, i32 256, i1 false)
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %24, %19 ]
  %21 = trunc i32 %20 to i8
  %22 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef nonnull %4, i8 noundef zeroext %21)
  %23 = getelementptr %struct.s5h1420_state, ptr %4, i32 0, i32 10, i32 %20
  store i8 %22, ptr %23, align 1
  %24 = add nuw nsw i32 %20, 1
  %25 = icmp eq i32 %24, 80
  br i1 %25, label %26, label %19

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %27, ptr noundef nonnull align 4 dereferenceable(544) @s5h1420_ops, i32 544, i1 false)
  %28 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %28, align 8
  %29 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 3
  %30 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 3, i32 12
  %31 = tail call i32 @strscpy(ptr noundef %30, ptr noundef nonnull @.str, i32 noundef 48) #12
  %32 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 3, i32 2
  store ptr @s5h1420_tuner_i2c_algo, ptr %32, align 8
  %33 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 3, i32 3
  store ptr null, ptr %33, align 4
  %34 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 3, i32 9, i32 8
  store ptr %4, ptr %34, align 8
  %35 = tail call i32 @i2c_add_adapter(ptr noundef %29) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %41

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.s5h1420_state, ptr %4, i32 0, i32 2
  br label %42

41:                                               ; preds = %37, %6, %2
  tail call void @kfree(ptr noundef %4) #12
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi ptr [ null, %41 ], [ %40, %39 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @s5h1420_readreg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [3 x %struct.i2c_msg], align 4
  store i8 %1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 28, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.s5h1420_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %15 = load i8, ptr %8, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 2
  %20 = load i8, ptr %8, align 1
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 2, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 2, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 2, i32 3
  store ptr %4, ptr %24, align 4
  %25 = add i8 %1, -1
  store i8 %25, ptr %4, align 2
  %26 = zext i8 %25 to i32
  %27 = getelementptr %struct.s5h1420_state, ptr %0, i32 0, i32 10, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.s5h1420_config, ptr %8, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %0, align 8
  br i1 %33, label %40, label %35

35:                                               ; preds = %2
  %36 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 3) #12
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %51, label %38

38:                                               ; preds = %35
  %39 = trunc i32 %36 to i8
  br label %53

40:                                               ; preds = %2
  %41 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef %14, i32 noundef 1) #12
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = trunc i32 %41 to i8
  br label %53

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef %19, i32 noundef 1) #12
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = trunc i32 %47 to i8
  br label %53

51:                                               ; preds = %45, %35
  %52 = load i8, ptr %4, align 2
  br label %53

53:                                               ; preds = %51, %49, %43, %38
  %54 = phi i8 [ %39, %38 ], [ %52, %51 ], [ %44, %43 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i8 %54
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_tuner_i2c_tuner_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca [3 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 2, ptr %5, align 2, !annotation !8
  %8 = getelementptr inbounds i8, ptr %5, i32 1
  %9 = getelementptr inbounds %struct.s5h1420_state, ptr %7, i32 0, i32 4
  %10 = load i8, ptr %9, align 8
  %11 = or i8 %10, 1
  store i8 %11, ptr %8, align 1
  %12 = add i32 %2, 1
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %2) #13
  br label %30

16:                                               ; preds = %3
  %17 = mul nuw nsw i32 %12, 12
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %4, i8 0, i32 %17, i1 false)
  %18 = getelementptr inbounds %struct.s5h1420_state, ptr %7, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %4, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 2, ptr %23, align 4
  %24 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %4, i32 0, i32 1
  %25 = mul nsw i32 %2, 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %1, i32 %25, i1 false)
  %26 = load ptr, ptr %7, align 8
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %4, i32 noundef %12) #12
  %28 = icmp eq i32 %27, %12
  %29 = select i1 %28, i32 %2, i32 -5
  br label %30

30:                                               ; preds = %16, %14
  %31 = phi i32 [ -95, %14 ], [ %29, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5h1420_tuner_i2c_func(ptr nocapture noundef readnone %0) #8 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5h1420_release(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5h1420_state, ptr %3, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %4) #12
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5h1420_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s5h1420_config, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = shl i8 %9, 1
  %11 = and i8 %10, 16
  %12 = getelementptr inbounds %struct.s5h1420_state, ptr %5, i32 0, i32 4
  store i8 %11, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 2, ptr %2, align 2
  %13 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %11, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %14, align 4, !annotation !8
  %15 = load ptr, ptr %6, align 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %3, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %19, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 1) #12
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = zext i8 %11 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %21, i32 noundef 2, i32 noundef %27) #13
  br label %31

29:                                               ; preds = %1
  %30 = getelementptr %struct.s5h1420_state, ptr %5, i32 0, i32 10, i32 2
  store i8 %11, ptr %30, align 1
  br label %31

31:                                               ; preds = %29, %26, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  call void @msleep(i32 noundef 10) #12
  call fastcc void @s5h1420_reset(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5h1420_state, ptr %5, i32 0, i32 4
  store i8 18, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 2, ptr %2, align 2
  %7 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 18, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %8, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.s5h1420_state, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %14, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #12
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %16, i32 noundef 2, i32 noundef 18) #13
  br label %25

23:                                               ; preds = %1
  %24 = getelementptr %struct.s5h1420_state, ptr %5, i32 0, i32 10, i32 2
  store i8 18, ptr %24, align 1
  br label %25

25:                                               ; preds = %23, %21, %18
  %26 = phi i32 [ 0, %23 ], [ -121, %21 ], [ -121, %18 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_set_frontend(ptr noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [2 x i8], align 2
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [2 x i8], align 2
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [2 x i8], align 2
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [2 x i8], align 2
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [2 x i8], align 2
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [2 x i8], align 2
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [2 x i8], align 2
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [2 x i8], align 2
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [2 x i8], align 2
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [2 x i8], align 2
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca [2 x i8], align 2
  %61 = alloca %struct.i2c_msg, align 4
  %62 = alloca [2 x i8], align 2
  %63 = alloca %struct.i2c_msg, align 4
  %64 = alloca [2 x i8], align 2
  %65 = alloca %struct.i2c_msg, align 4
  %66 = alloca [2 x i8], align 2
  %67 = alloca %struct.i2c_msg, align 4
  %68 = alloca i32, align 4
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr @debug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %1
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1420_set_frontend) #13
  br label %76

76:                                               ; preds = %74, %1
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, 20000000
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = icmp ugt i32 %78, 12000000
  br i1 %81, label %93, label %82

82:                                               ; preds = %80
  %83 = icmp ugt i32 %78, 8000000
  br i1 %83, label %93, label %84

84:                                               ; preds = %82
  %85 = icmp ugt i32 %78, 4000000
  br i1 %85, label %93, label %86

86:                                               ; preds = %84
  %87 = icmp ugt i32 %78, 2000000
  %88 = udiv i32 %78, 8000
  br i1 %87, label %89, label %91

89:                                               ; preds = %86
  %90 = mul nuw nsw i32 %88, 14
  br label %93

91:                                               ; preds = %86
  %92 = mul nuw nsw i32 %88, 18
  br label %93

93:                                               ; preds = %91, %89, %84, %82, %80, %76
  %94 = phi i32 [ %92, %91 ], [ %90, %89 ], [ 8000, %76 ], [ 9000, %80 ], [ 8000, %82 ], [ 7000, %84 ]
  %95 = load i32, ptr %69, align 4
  %96 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 7
  %97 = load i32, ptr %96, align 8
  %98 = sub i32 %95, %97
  %99 = sub nsw i32 0, %94
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %93
  %102 = icmp slt i32 %98, %94
  %103 = icmp ne i32 %95, %97
  %104 = and i1 %103, %102
  br i1 %104, label %105, label %147

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %147

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 9
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %113, %78
  br i1 %114, label %115, label %147

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = tail call i32 %117(ptr noundef %0) #12
  %121 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = tail call i32 %122(ptr noundef %0, i32 noundef 0) #12
  br label %126

126:                                              ; preds = %124, %119, %115
  %127 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %68) #12
  store i32 0, ptr %68, align 4, !annotation !8
  %131 = call i32 %128(ptr noundef %0, ptr noundef nonnull %68) #12
  %132 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = call i32 %133(ptr noundef %0, i32 noundef 0) #12
  br label %137

137:                                              ; preds = %135, %130
  %138 = load i32, ptr %69, align 4
  %139 = load i32, ptr %68, align 4
  %140 = sub i32 %138, %139
  call fastcc void @s5h1420_setfreqoffset(ptr noundef %71, i32 noundef %140)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %68) #12
  br label %142

141:                                              ; preds = %126
  tail call fastcc void @s5h1420_setfreqoffset(ptr noundef %71, i32 noundef 0)
  br label %142

142:                                              ; preds = %141, %137
  %143 = load i32, ptr @debug, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %948, label %145

145:                                              ; preds = %142
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %948

147:                                              ; preds = %111, %105, %101, %93
  %148 = load i32, ptr @debug, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %152

152:                                              ; preds = %150, %147
  tail call fastcc void @s5h1420_reset(ptr noundef %71)
  %153 = load i32, ptr %77, align 4
  %154 = icmp ugt i32 %153, 33000000
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 6
  store i32 80000000, ptr %156, align 4
  br label %170

157:                                              ; preds = %152
  %158 = icmp ugt i32 %153, 28500000
  br i1 %158, label %159, label %161

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 6
  store i32 59000000, ptr %160, align 4
  br label %170

161:                                              ; preds = %157
  %162 = icmp ugt i32 %153, 25000000
  br i1 %162, label %163, label %165

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 6
  store i32 86000000, ptr %164, align 4
  br label %170

165:                                              ; preds = %161
  %166 = icmp ugt i32 %153, 1900000
  %167 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 6
  br i1 %166, label %168, label %169

168:                                              ; preds = %165
  store i32 88000000, ptr %167, align 4
  br label %170

169:                                              ; preds = %165
  store i32 44000000, ptr %167, align 4
  br label %170

170:                                              ; preds = %169, %168, %163, %159, %155
  %171 = phi i32 [ 80000000, %155 ], [ 86000000, %163 ], [ 44000000, %169 ], [ 88000000, %168 ], [ 59000000, %159 ]
  %172 = load i32, ptr @debug, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 6
  %176 = udiv i32 %171, 1000000
  %177 = add nsw i32 %176, -8
  %178 = add nuw nsw i32 %171, 703999
  %179 = udiv i32 %178, 704000
  %180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %177, i32 noundef %179) #13
  %181 = load i32, ptr %175, align 4
  br label %182

182:                                              ; preds = %174, %170
  %183 = phi i32 [ %181, %174 ], [ %171, %170 ]
  %184 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 6
  %185 = udiv i32 %183, 1000000
  %186 = trunc i32 %185 to i8
  %187 = add i8 %186, -8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %66) #12
  store i8 3, ptr %66, align 2
  %188 = getelementptr inbounds i8, ptr %66, i32 1
  store i8 %187, ptr %188, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #12
  %189 = getelementptr inbounds i8, ptr %67, i32 4
  store i32 0, ptr %189, align 4, !annotation !8
  %190 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i16
  store i16 %193, ptr %67, align 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  store i16 0, ptr %194, align 2
  store i16 2, ptr %189, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  store ptr %66, ptr %195, align 4
  %196 = load ptr, ptr %71, align 8
  %197 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %67, i32 noundef 1) #12
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %205, label %199

199:                                              ; preds = %182
  %200 = load i32, ptr @debug, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %199
  %203 = zext i8 %187 to i32
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %197, i32 noundef 3, i32 noundef %203) #13
  br label %207

205:                                              ; preds = %182
  %206 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 3
  store i8 %187, ptr %206, align 1
  br label %207

207:                                              ; preds = %205, %202, %199
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %66) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %64) #12
  store i8 4, ptr %64, align 2
  %208 = getelementptr inbounds i8, ptr %64, i32 1
  store i8 64, ptr %208, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #12
  %209 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 0, ptr %209, align 4, !annotation !8
  %210 = load ptr, ptr %190, align 4
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i16
  store i16 %212, ptr %65, align 4
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %213, align 2
  store i16 2, ptr %209, align 4
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %214, align 4
  %215 = load ptr, ptr %71, align 8
  %216 = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %65, i32 noundef 1) #12
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %223, label %218

218:                                              ; preds = %207
  %219 = load i32, ptr @debug, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %216, i32 noundef 4, i32 noundef 64) #13
  br label %225

223:                                              ; preds = %207
  %224 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 4
  store i8 64, ptr %224, align 1
  br label %225

225:                                              ; preds = %223, %221, %218
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %64) #12
  %226 = load i32, ptr %184, align 4
  %227 = add i32 %226, 703999
  %228 = udiv i32 %227, 704000
  %229 = trunc i32 %228 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #12
  store i8 58, ptr %62, align 2
  %230 = getelementptr inbounds i8, ptr %62, i32 1
  store i8 %229, ptr %230, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #12
  %231 = getelementptr inbounds i8, ptr %63, i32 4
  store i32 0, ptr %231, align 4, !annotation !8
  %232 = load ptr, ptr %190, align 4
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i16
  store i16 %234, ptr %63, align 4
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  store i16 0, ptr %235, align 2
  store i16 2, ptr %231, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %236, align 4
  %237 = load ptr, ptr %71, align 8
  %238 = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %63, i32 noundef 1) #12
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %246, label %240

240:                                              ; preds = %225
  %241 = load i32, ptr @debug, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %240
  %244 = and i32 %228, 255
  %245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %238, i32 noundef 58, i32 noundef %244) #13
  br label %248

246:                                              ; preds = %225
  %247 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 58
  store i8 %229, ptr %247, align 1
  br label %248

248:                                              ; preds = %246, %243, %240
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #12
  %249 = load i32, ptr %77, align 4
  %250 = icmp ugt i32 %249, 29000000
  br i1 %250, label %251, label %270

251:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #12
  store i8 5, ptr %60, align 2
  %252 = getelementptr inbounds i8, ptr %60, i32 1
  store i8 -66, ptr %252, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #12
  %253 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 0, ptr %253, align 4, !annotation !8
  %254 = load ptr, ptr %190, align 4
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i16
  store i16 %256, ptr %61, align 4
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %257, align 2
  store i16 2, ptr %253, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %258, align 4
  %259 = load ptr, ptr %71, align 8
  %260 = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %61, i32 noundef 1) #12
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %267, label %262

262:                                              ; preds = %251
  %263 = load i32, ptr @debug, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %262
  %266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %260, i32 noundef 5, i32 noundef 190) #13
  br label %269

267:                                              ; preds = %251
  %268 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 5
  store i8 -66, ptr %268, align 1
  br label %269

269:                                              ; preds = %267, %265, %262
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #12
  br label %289

270:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #12
  store i8 5, ptr %58, align 2
  %271 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 -68, ptr %271, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #12
  %272 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 0, ptr %272, align 4, !annotation !8
  %273 = load ptr, ptr %190, align 4
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i16
  store i16 %275, ptr %59, align 4
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %276, align 2
  store i16 2, ptr %272, align 4
  %277 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %277, align 4
  %278 = load ptr, ptr %71, align 8
  %279 = call i32 @i2c_transfer(ptr noundef %278, ptr noundef nonnull %59, i32 noundef 1) #12
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %286, label %281

281:                                              ; preds = %270
  %282 = load i32, ptr @debug, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %281
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %279, i32 noundef 5, i32 noundef 188) #13
  br label %288

286:                                              ; preds = %270
  %287 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 5
  store i8 -68, ptr %287, align 1
  br label %288

288:                                              ; preds = %286, %284, %281
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #12
  br label %289

289:                                              ; preds = %288, %269
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #12
  store i8 2, ptr %56, align 2
  %290 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 0, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #12
  %291 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 0, ptr %291, align 4, !annotation !8
  %292 = load ptr, ptr %190, align 4
  %293 = load i8, ptr %292, align 1
  %294 = zext i8 %293 to i16
  store i16 %294, ptr %57, align 4
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %295, align 2
  store i16 2, ptr %291, align 4
  %296 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %296, align 4
  %297 = load ptr, ptr %71, align 8
  %298 = call i32 @i2c_transfer(ptr noundef %297, ptr noundef nonnull %57, i32 noundef 1) #12
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %305, label %300

300:                                              ; preds = %289
  %301 = load i32, ptr @debug, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %300
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %298, i32 noundef 2, i32 noundef 0) #13
  br label %307

305:                                              ; preds = %289
  %306 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 2
  store i8 0, ptr %306, align 1
  br label %307

307:                                              ; preds = %305, %303, %300
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #12
  store i8 6, ptr %54, align 2
  %308 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 0, ptr %308, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #12
  %309 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 0, ptr %309, align 4, !annotation !8
  %310 = load ptr, ptr %190, align 4
  %311 = load i8, ptr %310, align 1
  %312 = zext i8 %311 to i16
  store i16 %312, ptr %55, align 4
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %313, align 2
  store i16 2, ptr %309, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %314, align 4
  %315 = load ptr, ptr %71, align 8
  %316 = call i32 @i2c_transfer(ptr noundef %315, ptr noundef nonnull %55, i32 noundef 1) #12
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %323, label %318

318:                                              ; preds = %307
  %319 = load i32, ptr @debug, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %318
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %316, i32 noundef 6, i32 noundef 0) #13
  br label %325

323:                                              ; preds = %307
  %324 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 6
  store i8 0, ptr %324, align 1
  br label %325

325:                                              ; preds = %323, %321, %318
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #12
  store i8 7, ptr %52, align 2
  %326 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 -80, ptr %326, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #12
  %327 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 0, ptr %327, align 4, !annotation !8
  %328 = load ptr, ptr %190, align 4
  %329 = load i8, ptr %328, align 1
  %330 = zext i8 %329 to i16
  store i16 %330, ptr %53, align 4
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %331, align 2
  store i16 2, ptr %327, align 4
  %332 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %332, align 4
  %333 = load ptr, ptr %71, align 8
  %334 = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %53, i32 noundef 1) #12
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %341, label %336

336:                                              ; preds = %325
  %337 = load i32, ptr @debug, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %336
  %340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %334, i32 noundef 7, i32 noundef 176) #13
  br label %343

341:                                              ; preds = %325
  %342 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 7
  store i8 -80, ptr %342, align 1
  br label %343

343:                                              ; preds = %341, %339, %336
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #12
  store i8 9, ptr %50, align 2
  %344 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 -16, ptr %344, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #12
  %345 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 0, ptr %345, align 4, !annotation !8
  %346 = load ptr, ptr %190, align 4
  %347 = load i8, ptr %346, align 1
  %348 = zext i8 %347 to i16
  store i16 %348, ptr %51, align 4
  %349 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %349, align 2
  store i16 2, ptr %345, align 4
  %350 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %350, align 4
  %351 = load ptr, ptr %71, align 8
  %352 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %51, i32 noundef 1) #12
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %359, label %354

354:                                              ; preds = %343
  %355 = load i32, ptr @debug, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %354
  %358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %352, i32 noundef 9, i32 noundef 240) #13
  br label %361

359:                                              ; preds = %343
  %360 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 9
  store i8 -16, ptr %360, align 1
  br label %361

361:                                              ; preds = %359, %357, %354
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #12
  store i8 10, ptr %48, align 2
  %362 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 42, ptr %362, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #12
  %363 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 0, ptr %363, align 4, !annotation !8
  %364 = load ptr, ptr %190, align 4
  %365 = load i8, ptr %364, align 1
  %366 = zext i8 %365 to i16
  store i16 %366, ptr %49, align 4
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %367, align 2
  store i16 2, ptr %363, align 4
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %368, align 4
  %369 = load ptr, ptr %71, align 8
  %370 = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %49, i32 noundef 1) #12
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %377, label %372

372:                                              ; preds = %361
  %373 = load i32, ptr @debug, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %372
  %376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %370, i32 noundef 10, i32 noundef 42) #13
  br label %379

377:                                              ; preds = %361
  %378 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 10
  store i8 42, ptr %378, align 1
  br label %379

379:                                              ; preds = %377, %375, %372
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #12
  store i8 11, ptr %46, align 2
  %380 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 121, ptr %380, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #12
  %381 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 0, ptr %381, align 4, !annotation !8
  %382 = load ptr, ptr %190, align 4
  %383 = load i8, ptr %382, align 1
  %384 = zext i8 %383 to i16
  store i16 %384, ptr %47, align 4
  %385 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %385, align 2
  store i16 2, ptr %381, align 4
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %386, align 4
  %387 = load ptr, ptr %71, align 8
  %388 = call i32 @i2c_transfer(ptr noundef %387, ptr noundef nonnull %47, i32 noundef 1) #12
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %395, label %390

390:                                              ; preds = %379
  %391 = load i32, ptr @debug, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %390
  %394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %388, i32 noundef 11, i32 noundef 121) #13
  br label %397

395:                                              ; preds = %379
  %396 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 11
  store i8 121, ptr %396, align 1
  br label %397

397:                                              ; preds = %395, %393, %390
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #12
  %398 = load i32, ptr %77, align 4
  %399 = icmp ugt i32 %398, 20000000
  br i1 %399, label %400, label %419

400:                                              ; preds = %397
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #12
  store i8 12, ptr %44, align 2
  %401 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 121, ptr %401, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #12
  %402 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 0, ptr %402, align 4, !annotation !8
  %403 = load ptr, ptr %190, align 4
  %404 = load i8, ptr %403, align 1
  %405 = zext i8 %404 to i16
  store i16 %405, ptr %45, align 4
  %406 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %406, align 2
  store i16 2, ptr %402, align 4
  %407 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %407, align 4
  %408 = load ptr, ptr %71, align 8
  %409 = call i32 @i2c_transfer(ptr noundef %408, ptr noundef nonnull %45, i32 noundef 1) #12
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %416, label %411

411:                                              ; preds = %400
  %412 = load i32, ptr @debug, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %411
  %415 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %409, i32 noundef 12, i32 noundef 121) #13
  br label %418

416:                                              ; preds = %400
  %417 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 12
  store i8 121, ptr %417, align 1
  br label %418

418:                                              ; preds = %416, %414, %411
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #12
  br label %438

419:                                              ; preds = %397
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #12
  store i8 12, ptr %42, align 2
  %420 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 88, ptr %420, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #12
  %421 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 0, ptr %421, align 4, !annotation !8
  %422 = load ptr, ptr %190, align 4
  %423 = load i8, ptr %422, align 1
  %424 = zext i8 %423 to i16
  store i16 %424, ptr %43, align 4
  %425 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %425, align 2
  store i16 2, ptr %421, align 4
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %426, align 4
  %427 = load ptr, ptr %71, align 8
  %428 = call i32 @i2c_transfer(ptr noundef %427, ptr noundef nonnull %43, i32 noundef 1) #12
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %435, label %430

430:                                              ; preds = %419
  %431 = load i32, ptr @debug, align 4
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %437, label %433

433:                                              ; preds = %430
  %434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %428, i32 noundef 12, i32 noundef 88) #13
  br label %437

435:                                              ; preds = %419
  %436 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 12
  store i8 88, ptr %436, align 1
  br label %437

437:                                              ; preds = %435, %433, %430
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #12
  br label %438

438:                                              ; preds = %437, %418
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #12
  store i8 13, ptr %40, align 2
  %439 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 107, ptr %439, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #12
  %440 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 0, ptr %440, align 4, !annotation !8
  %441 = load ptr, ptr %190, align 4
  %442 = load i8, ptr %441, align 1
  %443 = zext i8 %442 to i16
  store i16 %443, ptr %41, align 4
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %444, align 2
  store i16 2, ptr %440, align 4
  %445 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %445, align 4
  %446 = load ptr, ptr %71, align 8
  %447 = call i32 @i2c_transfer(ptr noundef %446, ptr noundef nonnull %41, i32 noundef 1) #12
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %454, label %449

449:                                              ; preds = %438
  %450 = load i32, ptr @debug, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %456, label %452

452:                                              ; preds = %449
  %453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %447, i32 noundef 13, i32 noundef 107) #13
  br label %456

454:                                              ; preds = %438
  %455 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 13
  store i8 107, ptr %455, align 1
  br label %456

456:                                              ; preds = %454, %452, %449
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #12
  %457 = load i32, ptr %77, align 4
  %458 = icmp ugt i32 %457, 7999999
  br i1 %458, label %459, label %478

459:                                              ; preds = %456
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #12
  store i8 8, ptr %38, align 2
  %460 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 16, ptr %460, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #12
  %461 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 0, ptr %461, align 4, !annotation !8
  %462 = load ptr, ptr %190, align 4
  %463 = load i8, ptr %462, align 1
  %464 = zext i8 %463 to i16
  store i16 %464, ptr %39, align 4
  %465 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %465, align 2
  store i16 2, ptr %461, align 4
  %466 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %466, align 4
  %467 = load ptr, ptr %71, align 8
  %468 = call i32 @i2c_transfer(ptr noundef %467, ptr noundef nonnull %39, i32 noundef 1) #12
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %475, label %470

470:                                              ; preds = %459
  %471 = load i32, ptr @debug, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %477, label %473

473:                                              ; preds = %470
  %474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %468, i32 noundef 8, i32 noundef 16) #13
  br label %477

475:                                              ; preds = %459
  %476 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 8
  store i8 16, ptr %476, align 1
  br label %477

477:                                              ; preds = %475, %473, %470
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #12
  br label %518

478:                                              ; preds = %456
  %479 = icmp ugt i32 %457, 3999999
  br i1 %479, label %480, label %499

480:                                              ; preds = %478
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #12
  store i8 8, ptr %36, align 2
  %481 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 80, ptr %481, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #12
  %482 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 0, ptr %482, align 4, !annotation !8
  %483 = load ptr, ptr %190, align 4
  %484 = load i8, ptr %483, align 1
  %485 = zext i8 %484 to i16
  store i16 %485, ptr %37, align 4
  %486 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %486, align 2
  store i16 2, ptr %482, align 4
  %487 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %487, align 4
  %488 = load ptr, ptr %71, align 8
  %489 = call i32 @i2c_transfer(ptr noundef %488, ptr noundef nonnull %37, i32 noundef 1) #12
  %490 = icmp eq i32 %489, 1
  br i1 %490, label %496, label %491

491:                                              ; preds = %480
  %492 = load i32, ptr @debug, align 4
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %498, label %494

494:                                              ; preds = %491
  %495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %489, i32 noundef 8, i32 noundef 80) #13
  br label %498

496:                                              ; preds = %480
  %497 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 8
  store i8 80, ptr %497, align 1
  br label %498

498:                                              ; preds = %496, %494, %491
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #12
  br label %518

499:                                              ; preds = %478
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #12
  store i8 8, ptr %34, align 2
  %500 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 -48, ptr %500, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #12
  %501 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %501, align 4, !annotation !8
  %502 = load ptr, ptr %190, align 4
  %503 = load i8, ptr %502, align 1
  %504 = zext i8 %503 to i16
  store i16 %504, ptr %35, align 4
  %505 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %505, align 2
  store i16 2, ptr %501, align 4
  %506 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %506, align 4
  %507 = load ptr, ptr %71, align 8
  %508 = call i32 @i2c_transfer(ptr noundef %507, ptr noundef nonnull %35, i32 noundef 1) #12
  %509 = icmp eq i32 %508, 1
  br i1 %509, label %515, label %510

510:                                              ; preds = %499
  %511 = load i32, ptr @debug, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %517, label %513

513:                                              ; preds = %510
  %514 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %508, i32 noundef 8, i32 noundef 208) #13
  br label %517

515:                                              ; preds = %499
  %516 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 8
  store i8 -48, ptr %516, align 1
  br label %517

517:                                              ; preds = %515, %513, %510
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #12
  br label %518

518:                                              ; preds = %517, %498, %477
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #12
  store i8 31, ptr %32, align 2
  %519 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 0, ptr %519, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #12
  %520 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 0, ptr %520, align 4, !annotation !8
  %521 = load ptr, ptr %190, align 4
  %522 = load i8, ptr %521, align 1
  %523 = zext i8 %522 to i16
  store i16 %523, ptr %33, align 4
  %524 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %524, align 2
  store i16 2, ptr %520, align 4
  %525 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %525, align 4
  %526 = load ptr, ptr %71, align 8
  %527 = call i32 @i2c_transfer(ptr noundef %526, ptr noundef nonnull %33, i32 noundef 1) #12
  %528 = icmp eq i32 %527, 1
  br i1 %528, label %534, label %529

529:                                              ; preds = %518
  %530 = load i32, ptr @debug, align 4
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %536, label %532

532:                                              ; preds = %529
  %533 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %527, i32 noundef 31, i32 noundef 0) #13
  br label %536

534:                                              ; preds = %518
  %535 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 31
  store i8 0, ptr %535, align 1
  br label %536

536:                                              ; preds = %534, %532, %529
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #12
  store i8 53, ptr %30, align 2
  %537 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 51, ptr %537, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #12
  %538 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %538, align 4, !annotation !8
  %539 = load ptr, ptr %190, align 4
  %540 = load i8, ptr %539, align 1
  %541 = zext i8 %540 to i16
  store i16 %541, ptr %31, align 4
  %542 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %542, align 2
  store i16 2, ptr %538, align 4
  %543 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %543, align 4
  %544 = load ptr, ptr %71, align 8
  %545 = call i32 @i2c_transfer(ptr noundef %544, ptr noundef nonnull %31, i32 noundef 1) #12
  %546 = icmp eq i32 %545, 1
  br i1 %546, label %552, label %547

547:                                              ; preds = %536
  %548 = load i32, ptr @debug, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %554, label %550

550:                                              ; preds = %547
  %551 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %545, i32 noundef 53, i32 noundef 51) #13
  br label %554

552:                                              ; preds = %536
  %553 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 53
  store i8 51, ptr %553, align 1
  br label %554

554:                                              ; preds = %552, %550, %547
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #12
  %555 = load ptr, ptr %190, align 4
  %556 = getelementptr inbounds %struct.s5h1420_config, ptr %555, i32 0, i32 1
  %557 = load i8, ptr %556, align 1
  %558 = lshr i8 %557, 2
  %559 = and i8 %558, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #12
  store i8 56, ptr %28, align 2
  %560 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 %559, ptr %560, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #12
  %561 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %561, align 4, !annotation !8
  %562 = load ptr, ptr %190, align 4
  %563 = load i8, ptr %562, align 1
  %564 = zext i8 %563 to i16
  store i16 %564, ptr %29, align 4
  %565 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %565, align 2
  store i16 2, ptr %561, align 4
  %566 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %566, align 4
  %567 = load ptr, ptr %71, align 8
  %568 = call i32 @i2c_transfer(ptr noundef %567, ptr noundef nonnull %29, i32 noundef 1) #12
  %569 = icmp eq i32 %568, 1
  br i1 %569, label %576, label %570

570:                                              ; preds = %554
  %571 = load i32, ptr @debug, align 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %578, label %573

573:                                              ; preds = %570
  %574 = zext i8 %559 to i32
  %575 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %568, i32 noundef 56, i32 noundef %574) #13
  br label %578

576:                                              ; preds = %554
  %577 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 56
  store i8 %559, ptr %577, align 1
  br label %578

578:                                              ; preds = %576, %573, %570
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #12
  store i8 57, ptr %26, align 2
  %579 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 61, ptr %579, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #12
  %580 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 0, ptr %580, align 4, !annotation !8
  %581 = load ptr, ptr %190, align 4
  %582 = load i8, ptr %581, align 1
  %583 = zext i8 %582 to i16
  store i16 %583, ptr %27, align 4
  %584 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %584, align 2
  store i16 2, ptr %580, align 4
  %585 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %585, align 4
  %586 = load ptr, ptr %71, align 8
  %587 = call i32 @i2c_transfer(ptr noundef %586, ptr noundef nonnull %27, i32 noundef 1) #12
  %588 = icmp eq i32 %587, 1
  br i1 %588, label %594, label %589

589:                                              ; preds = %578
  %590 = load i32, ptr @debug, align 4
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %596, label %592

592:                                              ; preds = %589
  %593 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %587, i32 noundef 57, i32 noundef 61) #13
  br label %596

594:                                              ; preds = %578
  %595 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 57
  store i8 61, ptr %595, align 1
  br label %596

596:                                              ; preds = %594, %592, %589
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #12
  store i8 70, ptr %24, align 2
  %597 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 3, ptr %597, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #12
  %598 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 0, ptr %598, align 4, !annotation !8
  %599 = load ptr, ptr %190, align 4
  %600 = load i8, ptr %599, align 1
  %601 = zext i8 %600 to i16
  store i16 %601, ptr %25, align 4
  %602 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %602, align 2
  store i16 2, ptr %598, align 4
  %603 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %603, align 4
  %604 = load ptr, ptr %71, align 8
  %605 = call i32 @i2c_transfer(ptr noundef %604, ptr noundef nonnull %25, i32 noundef 1) #12
  %606 = icmp eq i32 %605, 1
  br i1 %606, label %612, label %607

607:                                              ; preds = %596
  %608 = load i32, ptr @debug, align 4
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %614, label %610

610:                                              ; preds = %607
  %611 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %605, i32 noundef 70, i32 noundef 3) #13
  br label %614

612:                                              ; preds = %596
  %613 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 70
  store i8 3, ptr %613, align 1
  br label %614

614:                                              ; preds = %612, %610, %607
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #12
  store i8 46, ptr %22, align 2
  %615 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 110, ptr %615, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #12
  %616 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 0, ptr %616, align 4, !annotation !8
  %617 = load ptr, ptr %190, align 4
  %618 = load i8, ptr %617, align 1
  %619 = zext i8 %618 to i16
  store i16 %619, ptr %23, align 4
  %620 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %620, align 2
  store i16 2, ptr %616, align 4
  %621 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %621, align 4
  %622 = load ptr, ptr %71, align 8
  %623 = call i32 @i2c_transfer(ptr noundef %622, ptr noundef nonnull %23, i32 noundef 1) #12
  %624 = icmp eq i32 %623, 1
  br i1 %624, label %630, label %625

625:                                              ; preds = %614
  %626 = load i32, ptr @debug, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %632, label %628

628:                                              ; preds = %625
  %629 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %623, i32 noundef 46, i32 noundef 110) #13
  br label %632

630:                                              ; preds = %614
  %631 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 46
  store i8 110, ptr %631, align 1
  br label %632

632:                                              ; preds = %630, %628, %625
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #12
  store i8 60, ptr %20, align 2
  %633 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 0, ptr %633, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #12
  %634 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 0, ptr %634, align 4, !annotation !8
  %635 = load ptr, ptr %190, align 4
  %636 = load i8, ptr %635, align 1
  %637 = zext i8 %636 to i16
  store i16 %637, ptr %21, align 4
  %638 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %638, align 2
  store i16 2, ptr %634, align 4
  %639 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %639, align 4
  %640 = load ptr, ptr %71, align 8
  %641 = call i32 @i2c_transfer(ptr noundef %640, ptr noundef nonnull %21, i32 noundef 1) #12
  %642 = icmp eq i32 %641, 1
  br i1 %642, label %648, label %643

643:                                              ; preds = %632
  %644 = load i32, ptr @debug, align 4
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %650, label %646

646:                                              ; preds = %643
  %647 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %641, i32 noundef 60, i32 noundef 0) #13
  br label %650

648:                                              ; preds = %632
  %649 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 60
  store i8 0, ptr %649, align 1
  br label %650

650:                                              ; preds = %648, %646, %643
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #12
  store i8 69, ptr %18, align 2
  %651 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 97, ptr %651, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #12
  %652 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 0, ptr %652, align 4, !annotation !8
  %653 = load ptr, ptr %190, align 4
  %654 = load i8, ptr %653, align 1
  %655 = zext i8 %654 to i16
  store i16 %655, ptr %19, align 4
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %656, align 2
  store i16 2, ptr %652, align 4
  %657 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %657, align 4
  %658 = load ptr, ptr %71, align 8
  %659 = call i32 @i2c_transfer(ptr noundef %658, ptr noundef nonnull %19, i32 noundef 1) #12
  %660 = icmp eq i32 %659, 1
  br i1 %660, label %666, label %661

661:                                              ; preds = %650
  %662 = load i32, ptr @debug, align 4
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %668, label %664

664:                                              ; preds = %661
  %665 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %659, i32 noundef 69, i32 noundef 97) #13
  br label %668

666:                                              ; preds = %650
  %667 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 69
  store i8 97, ptr %667, align 1
  br label %668

668:                                              ; preds = %666, %664, %661
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #12
  %669 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %670 = load ptr, ptr %669, align 4
  %671 = icmp eq ptr %670, null
  br i1 %671, label %680, label %672

672:                                              ; preds = %668
  %673 = call i32 %670(ptr noundef %0) #12
  %674 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %675 = load ptr, ptr %674, align 4
  %676 = icmp eq ptr %675, null
  br i1 %676, label %679, label %677

677:                                              ; preds = %672
  %678 = call i32 %675(ptr noundef %0, i32 noundef 0) #12
  br label %679

679:                                              ; preds = %677, %672
  call fastcc void @s5h1420_setfreqoffset(ptr noundef %71, i32 noundef 0)
  br label %680

680:                                              ; preds = %679, %668
  %681 = load i32, ptr @debug, align 4
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %685, label %683

683:                                              ; preds = %680
  %684 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1420_setsymbolrate) #13
  br label %685

685:                                              ; preds = %683, %680
  %686 = load i32, ptr %77, align 4
  %687 = udiv i32 %686, 1000
  %688 = zext i32 %687 to i64
  %689 = icmp ult i32 %686, 29000000
  %690 = select i1 %689, i64 25, i64 24
  %691 = shl nuw nsw i64 %688, %690
  %692 = load i32, ptr %184, align 4
  %693 = udiv i32 %692, 1000
  %694 = icmp ult i64 %691, 4294967296
  br i1 %694, label %695, label %699, !prof !9

695:                                              ; preds = %685
  %696 = trunc i64 %691 to i32
  %697 = udiv i32 %696, %693
  %698 = zext i32 %697 to i64
  br label %702

699:                                              ; preds = %685
  %700 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %693, i64 %691) #14, !srcloc !10
  %701 = extractvalue { i64, i64 } %700, 1
  br label %702

702:                                              ; preds = %699, %695
  %703 = phi i64 [ %698, %695 ], [ %701, %699 ]
  %704 = load i32, ptr @debug, align 4
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %708, label %706

706:                                              ; preds = %702
  %707 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i64 noundef %703) #13
  br label %708

708:                                              ; preds = %706, %702
  %709 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %71, i8 noundef zeroext 9) #12
  %710 = and i8 %709, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i8 9, ptr %16, align 2
  %711 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %710, ptr %711, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %712 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %712, align 4, !annotation !8
  %713 = load ptr, ptr %190, align 4
  %714 = load i8, ptr %713, align 1
  %715 = zext i8 %714 to i16
  store i16 %715, ptr %17, align 4
  %716 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %716, align 2
  %717 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %717, align 4
  %718 = load ptr, ptr %71, align 8
  %719 = call i32 @i2c_transfer(ptr noundef %718, ptr noundef nonnull %17, i32 noundef 1) #12
  %720 = icmp eq i32 %719, 1
  br i1 %720, label %727, label %721

721:                                              ; preds = %708
  %722 = load i32, ptr @debug, align 4
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %729, label %724

724:                                              ; preds = %721
  %725 = zext i8 %710 to i32
  %726 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %719, i32 noundef 9, i32 noundef %725) #13
  br label %729

727:                                              ; preds = %708
  %728 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 9
  store i8 %710, ptr %728, align 1
  br label %729

729:                                              ; preds = %727, %724, %721
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  %730 = lshr i64 %703, 16
  %731 = trunc i64 %730 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 17, ptr %14, align 2
  %732 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %731, ptr %732, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  %733 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %733, align 4, !annotation !8
  %734 = load ptr, ptr %190, align 4
  %735 = load i8, ptr %734, align 1
  %736 = zext i8 %735 to i16
  store i16 %736, ptr %15, align 4
  %737 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %737, align 2
  %738 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %738, align 4
  %739 = load ptr, ptr %71, align 8
  %740 = call i32 @i2c_transfer(ptr noundef %739, ptr noundef nonnull %15, i32 noundef 1) #12
  %741 = icmp eq i32 %740, 1
  br i1 %741, label %749, label %742

742:                                              ; preds = %729
  %743 = load i32, ptr @debug, align 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %751, label %745

745:                                              ; preds = %742
  %746 = trunc i64 %730 to i32
  %747 = and i32 %746, 255
  %748 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %740, i32 noundef 17, i32 noundef %747) #13
  br label %751

749:                                              ; preds = %729
  %750 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 17
  store i8 %731, ptr %750, align 1
  br label %751

751:                                              ; preds = %749, %745, %742
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  %752 = lshr i64 %703, 8
  %753 = trunc i64 %752 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 18, ptr %12, align 2
  %754 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %753, ptr %754, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %755 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %755, align 4, !annotation !8
  %756 = load ptr, ptr %190, align 4
  %757 = load i8, ptr %756, align 1
  %758 = zext i8 %757 to i16
  store i16 %758, ptr %13, align 4
  %759 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %759, align 2
  %760 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %760, align 4
  %761 = load ptr, ptr %71, align 8
  %762 = call i32 @i2c_transfer(ptr noundef %761, ptr noundef nonnull %13, i32 noundef 1) #12
  %763 = icmp eq i32 %762, 1
  br i1 %763, label %771, label %764

764:                                              ; preds = %751
  %765 = load i32, ptr @debug, align 4
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %773, label %767

767:                                              ; preds = %764
  %768 = trunc i64 %752 to i32
  %769 = and i32 %768, 255
  %770 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %762, i32 noundef 18, i32 noundef %769) #13
  br label %773

771:                                              ; preds = %751
  %772 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 18
  store i8 %753, ptr %772, align 1
  br label %773

773:                                              ; preds = %771, %767, %764
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %774 = trunc i64 %703 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i8 19, ptr %10, align 2
  %775 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %774, ptr %775, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %776 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %776, align 4, !annotation !8
  %777 = load ptr, ptr %190, align 4
  %778 = load i8, ptr %777, align 1
  %779 = zext i8 %778 to i16
  store i16 %779, ptr %11, align 4
  %780 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %780, align 2
  %781 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %781, align 4
  %782 = load ptr, ptr %71, align 8
  %783 = call i32 @i2c_transfer(ptr noundef %782, ptr noundef nonnull %11, i32 noundef 1) #12
  %784 = icmp eq i32 %783, 1
  br i1 %784, label %792, label %785

785:                                              ; preds = %773
  %786 = load i32, ptr @debug, align 4
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %794, label %788

788:                                              ; preds = %785
  %789 = trunc i64 %703 to i32
  %790 = and i32 %789, 255
  %791 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %783, i32 noundef 19, i32 noundef %790) #13
  br label %794

792:                                              ; preds = %773
  %793 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 19
  store i8 %774, ptr %793, align 1
  br label %794

794:                                              ; preds = %792, %788, %785
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  %795 = or i8 %709, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i8 9, ptr %8, align 2
  %796 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %795, ptr %796, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %797 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %797, align 4, !annotation !8
  %798 = load ptr, ptr %190, align 4
  %799 = load i8, ptr %798, align 1
  %800 = zext i8 %799 to i16
  store i16 %800, ptr %9, align 4
  %801 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %801, align 2
  %802 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %802, align 4
  %803 = load ptr, ptr %71, align 8
  %804 = call i32 @i2c_transfer(ptr noundef %803, ptr noundef nonnull %9, i32 noundef 1) #12
  %805 = icmp eq i32 %804, 1
  br i1 %805, label %813, label %806

806:                                              ; preds = %794
  %807 = load i32, ptr @debug, align 4
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %810

809:                                              ; preds = %806
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  br label %824

810:                                              ; preds = %806
  %811 = zext i8 %795 to i32
  %812 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %804, i32 noundef 9, i32 noundef %811) #13
  br label %815

813:                                              ; preds = %794
  %814 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 9
  store i8 %795, ptr %814, align 1
  br label %815

815:                                              ; preds = %813, %810
  %816 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %824, label %818

818:                                              ; preds = %815
  %819 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1420_setsymbolrate) #13
  %820 = load i32, ptr @debug, align 4
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %824, label %822

822:                                              ; preds = %818
  %823 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1420_setfec_inversion) #13
  br label %824

824:                                              ; preds = %822, %818, %815, %809
  %825 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %826 = load i32, ptr %825, align 4
  switch i32 %826, label %840 [
    i32 0, label %827
    i32 1, label %833
  ]

827:                                              ; preds = %824
  %828 = load ptr, ptr %190, align 4
  %829 = getelementptr inbounds %struct.s5h1420_config, ptr %828, i32 0, i32 1
  %830 = load i8, ptr %829, align 1
  %831 = shl i8 %830, 3
  %832 = and i8 %831, 8
  br label %840

833:                                              ; preds = %824
  %834 = load ptr, ptr %190, align 4
  %835 = getelementptr inbounds %struct.s5h1420_config, ptr %834, i32 0, i32 1
  %836 = load i8, ptr %835, align 1
  %837 = shl i8 %836, 3
  %838 = and i8 %837, 8
  %839 = xor i8 %838, 8
  br label %840

840:                                              ; preds = %833, %827, %824
  %841 = phi i8 [ %832, %827 ], [ %839, %833 ], [ 0, %824 ]
  %842 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %843 = load i32, ptr %842, align 4
  %844 = icmp eq i32 %843, 9
  %845 = icmp eq i32 %826, 2
  %846 = select i1 %844, i1 true, i1 %845
  br i1 %846, label %860, label %847

847:                                              ; preds = %840
  %848 = add i32 %843, -1
  %849 = icmp ult i32 %848, 7
  br i1 %849, label %850, label %914

850:                                              ; preds = %847
  %851 = trunc i32 %848 to i8
  %852 = lshr i8 119, %851
  %853 = and i8 %852, 1
  %854 = icmp eq i8 %853, 0
  br i1 %854, label %914, label %855

855:                                              ; preds = %850
  %856 = getelementptr inbounds [7 x i8], ptr @switch.table.s5h1420_set_frontend, i32 0, i32 %848
  %857 = load i8, ptr %856, align 1
  %858 = getelementptr inbounds [7 x i8], ptr @switch.table.s5h1420_set_frontend.16, i32 0, i32 %848
  %859 = load i8, ptr %858, align 1
  br label %860

860:                                              ; preds = %855, %840
  %861 = phi i8 [ 0, %840 ], [ %857, %855 ]
  %862 = phi i8 [ 63, %840 ], [ %859, %855 ]
  %863 = or i8 %861, %841
  %864 = load i32, ptr @debug, align 4
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %870, label %866

866:                                              ; preds = %860
  %867 = zext i8 %862 to i32
  %868 = zext i8 %863 to i32
  %869 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %867, i32 noundef %868) #13
  br label %870

870:                                              ; preds = %866, %860
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i8 48, ptr %6, align 2
  %871 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %862, ptr %871, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %872 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %872, align 4, !annotation !8
  %873 = load ptr, ptr %190, align 4
  %874 = load i8, ptr %873, align 1
  %875 = zext i8 %874 to i16
  store i16 %875, ptr %7, align 4
  %876 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %876, align 2
  %877 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %877, align 4
  %878 = load ptr, ptr %71, align 8
  %879 = call i32 @i2c_transfer(ptr noundef %878, ptr noundef nonnull %7, i32 noundef 1) #12
  %880 = icmp eq i32 %879, 1
  br i1 %880, label %887, label %881

881:                                              ; preds = %870
  %882 = load i32, ptr @debug, align 4
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %889, label %884

884:                                              ; preds = %881
  %885 = zext i8 %862 to i32
  %886 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %879, i32 noundef 48, i32 noundef %885) #13
  br label %889

887:                                              ; preds = %870
  %888 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 48
  store i8 %862, ptr %888, align 1
  br label %889

889:                                              ; preds = %887, %884, %881
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 49, ptr %4, align 2
  %890 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %863, ptr %890, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %891 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %891, align 4, !annotation !8
  %892 = load ptr, ptr %190, align 4
  %893 = load i8, ptr %892, align 1
  %894 = zext i8 %893 to i16
  store i16 %894, ptr %5, align 4
  %895 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %895, align 2
  %896 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %896, align 4
  %897 = load ptr, ptr %71, align 8
  %898 = call i32 @i2c_transfer(ptr noundef %897, ptr noundef nonnull %5, i32 noundef 1) #12
  %899 = icmp eq i32 %898, 1
  br i1 %899, label %907, label %900

900:                                              ; preds = %889
  %901 = load i32, ptr @debug, align 4
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %903, label %904

903:                                              ; preds = %900
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  br label %914

904:                                              ; preds = %900
  %905 = zext i8 %863 to i32
  %906 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %898, i32 noundef 49, i32 noundef %905) #13
  br label %909

907:                                              ; preds = %889
  %908 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 49
  store i8 %863, ptr %908, align 1
  br label %909

909:                                              ; preds = %907, %904
  %910 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %914, label %912

912:                                              ; preds = %909
  %913 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1420_setfec_inversion) #13
  br label %914

914:                                              ; preds = %912, %909, %903, %850, %847
  %915 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %71, i8 noundef zeroext 5)
  %916 = or i8 %915, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 5, ptr %2, align 2
  %917 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %916, ptr %917, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %918 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %918, align 4, !annotation !8
  %919 = load ptr, ptr %190, align 4
  %920 = load i8, ptr %919, align 1
  %921 = zext i8 %920 to i16
  store i16 %921, ptr %3, align 4
  %922 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %922, align 2
  %923 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %923, align 4
  %924 = load ptr, ptr %71, align 8
  %925 = call i32 @i2c_transfer(ptr noundef %924, ptr noundef nonnull %3, i32 noundef 1) #12
  %926 = icmp eq i32 %925, 1
  br i1 %926, label %933, label %927

927:                                              ; preds = %914
  %928 = load i32, ptr @debug, align 4
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %935, label %930

930:                                              ; preds = %927
  %931 = zext i8 %916 to i32
  %932 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %925, i32 noundef 5, i32 noundef %931) #13
  br label %935

933:                                              ; preds = %914
  %934 = getelementptr %struct.s5h1420_state, ptr %71, i32 0, i32 10, i32 5
  store i8 %916, ptr %934, align 1
  br label %935

935:                                              ; preds = %933, %930, %927
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %936 = load i32, ptr %842, align 4
  %937 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 8
  store i32 %936, ptr %937, align 4
  %938 = load i32, ptr %77, align 4
  %939 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 9
  store i32 %938, ptr %939, align 8
  %940 = getelementptr inbounds %struct.s5h1420_state, ptr %71, i32 0, i32 5
  %941 = load i8, ptr %940, align 1
  %942 = and i8 %941, -2
  store i8 %942, ptr %940, align 1
  %943 = load i32, ptr %69, align 4
  store i32 %943, ptr %96, align 8
  %944 = load i32, ptr @debug, align 4
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %948, label %946

946:                                              ; preds = %935
  %947 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1420_set_frontend) #13
  br label %948

948:                                              ; preds = %946, %935, %145, %142
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5h1420_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 20000000
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store i32 50, ptr %1, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 2000, ptr %7, align 4
  br label %29

8:                                                ; preds = %2
  %9 = icmp ugt i32 %4, 12000000
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  store i32 100, ptr %1, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 1500, ptr %11, align 4
  br label %29

12:                                               ; preds = %8
  %13 = icmp ugt i32 %4, 8000000
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  store i32 100, ptr %1, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 1000, ptr %15, align 4
  br label %29

16:                                               ; preds = %12
  %17 = icmp ugt i32 %4, 4000000
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  store i32 100, ptr %1, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 500, ptr %19, align 4
  br label %29

20:                                               ; preds = %16
  %21 = icmp ugt i32 %4, 2000000
  store i32 200, ptr %1, align 4
  %22 = load i32, ptr %3, align 4
  %23 = udiv i32 %22, 8000
  %24 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  br i1 %21, label %25, label %27

25:                                               ; preds = %20
  %26 = mul nuw nsw i32 %23, 14
  br label %29

27:                                               ; preds = %20
  %28 = mul nuw nsw i32 %23, 18
  br label %29

29:                                               ; preds = %27, %25, %18, %14, %10, %6
  %30 = phi i32 [ 9000, %10 ], [ 7000, %18 ], [ %28, %27 ], [ %26, %25 ], [ 8000, %14 ], [ 8000, %6 ]
  %31 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 6) #12
  %12 = or i8 %11, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 6, ptr %5, align 2
  %13 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %12, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %14 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %8, align 8
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 1) #12
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = zext i8 %12 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %22, i32 noundef 6, i32 noundef %28) #13
  br label %32

30:                                               ; preds = %2
  %31 = getelementptr %struct.s5h1420_state, ptr %8, i32 0, i32 10, i32 6
  store i8 %12, ptr %31, align 1
  br label %32

32:                                               ; preds = %30, %27, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %33 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 14) #12
  %34 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 15) #12
  %35 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 16) #12
  %36 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 6) #12
  %37 = and i8 %36, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 6, ptr %3, align 2
  %38 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %37, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %39 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %39, align 4, !annotation !8
  %40 = load ptr, ptr %15, align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %4, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %44, align 4
  %45 = load ptr, ptr %8, align 8
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %4, i32 noundef 1) #12
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %54, label %48

48:                                               ; preds = %32
  %49 = load i32, ptr @debug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = zext i8 %37 to i32
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %46, i32 noundef 6, i32 noundef %52) #13
  br label %56

54:                                               ; preds = %32
  %55 = getelementptr %struct.s5h1420_state, ptr %8, i32 0, i32 10, i32 6
  store i8 %37, ptr %55, align 1
  br label %56

56:                                               ; preds = %54, %51, %48
  %57 = zext i8 %33 to i32
  %58 = shl nuw nsw i32 %57, 16
  %59 = zext i8 %34 to i32
  %60 = shl nuw nsw i32 %59, 8
  %61 = or i32 %60, %58
  %62 = zext i8 %35 to i32
  %63 = or i32 %61, %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %64 = and i32 %57, 128
  %65 = icmp eq i32 %64, 0
  %66 = or i32 %63, -16777216
  %67 = select i1 %65, i32 %63, i32 %66
  %68 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = udiv i32 %69, 1000000
  %71 = mul i32 %67, %70
  %72 = sub i32 0, %71
  %73 = lshr i32 %72, 24
  %74 = add i32 %73, %10
  store i32 %74, ptr %1, align 4
  %75 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 50) #12
  %76 = lshr i8 %75, 3
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 9
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %81, ptr %82, align 4
  %83 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 50) #12
  %84 = and i8 %83, 7
  %85 = icmp ult i8 %84, 6
  br i1 %85, label %86, label %90

86:                                               ; preds = %56
  %87 = zext i8 %84 to i32
  %88 = getelementptr inbounds [6 x i32], ptr @switch.table.s5h1420_get_frontend, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  br label %90

90:                                               ; preds = %86, %56
  %91 = phi i32 [ %89, %86 ], [ 0, %56 ]
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %91, ptr %92, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_read_status(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1420_read_status) #13
  br label %31

31:                                               ; preds = %29, %2
  %32 = icmp eq ptr %1, null
  br i1 %32, label %366, label %33

33:                                               ; preds = %31
  %34 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %26, i8 noundef zeroext 20) #12
  %35 = trunc i8 %34 to i2
  %36 = tail call i2 @llvm.bitreverse.i2(i2 %35) #12
  %37 = zext i2 %36 to i32
  %38 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %26, i8 noundef zeroext 54) #12
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 2
  %41 = and i32 %40, 4
  %42 = or i32 %41, %37
  %43 = lshr i32 %39, 2
  %44 = and i32 %43, 8
  %45 = or i32 %42, %44
  %46 = icmp eq i32 %45, 15
  %47 = select i1 %46, i32 31, i32 %45
  store i32 %47, ptr %1, align 4
  %48 = icmp eq i32 %47, 7
  br i1 %48, label %49, label %120

49:                                               ; preds = %33
  %50 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %26, i8 noundef zeroext 50)
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 7
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %1, align 4
  br label %120

56:                                               ; preds = %49
  %57 = and i32 %51, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #12
  store i8 49, ptr %23, align 2
  %60 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 19, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #12
  %61 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 0, ptr %61, align 4, !annotation !8
  %62 = getelementptr inbounds %struct.s5h1420_state, ptr %26, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %24, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %66, align 2
  store i16 2, ptr %61, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %67, align 4
  %68 = load ptr, ptr %26, align 8
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %24, i32 noundef 1) #12
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = load i32, ptr @debug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %69, i32 noundef 49, i32 noundef 19) #13
  br label %78

76:                                               ; preds = %59
  %77 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 49
  store i8 19, ptr %77, align 1
  br label %78

78:                                               ; preds = %76, %74, %71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #12
  br label %99

79:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #12
  store i8 49, ptr %21, align 2
  %80 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 27, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #12
  %81 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 0, ptr %81, align 4, !annotation !8
  %82 = getelementptr inbounds %struct.s5h1420_state, ptr %26, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %22, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %86, align 2
  store i16 2, ptr %81, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %87, align 4
  %88 = load ptr, ptr %26, align 8
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %22, i32 noundef 1) #12
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %96, label %91

91:                                               ; preds = %79
  %92 = load i32, ptr @debug, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %89, i32 noundef 49, i32 noundef 27) #13
  br label %98

96:                                               ; preds = %79
  %97 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 49
  store i8 27, ptr %97, align 1
  br label %98

98:                                               ; preds = %96, %94, %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #12
  br label %99

99:                                               ; preds = %98, %78
  br label %100

100:                                              ; preds = %100, %99
  %101 = phi i32 [ %102, %100 ], [ 200, %99 ]
  %102 = add nsw i32 %101, -1
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748000) #12
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %105, label %100

105:                                              ; preds = %100
  %106 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %26, i8 noundef zeroext 20) #12
  %107 = trunc i8 %106 to i2
  %108 = call i2 @llvm.bitreverse.i2(i2 %107) #12
  %109 = zext i2 %108 to i32
  %110 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %26, i8 noundef zeroext 54) #12
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 2
  %113 = and i32 %112, 4
  %114 = or i32 %113, %109
  %115 = lshr i32 %111, 2
  %116 = and i32 %115, 8
  %117 = or i32 %114, %116
  %118 = icmp eq i32 %117, 15
  %119 = select i1 %118, i32 31, i32 %117
  store i32 %119, ptr %1, align 4
  br label %120

120:                                              ; preds = %105, %54, %33
  %121 = phi i32 [ %55, %54 ], [ %119, %105 ], [ %47, %33 ]
  %122 = and i32 %121, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %361, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.s5h1420_state, ptr %26, i32 0, i32 5
  %126 = load i8, ptr %125, align 1
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %361

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.s5h1420_state, ptr %26, i32 0, i32 9
  %131 = load i32, ptr %130, align 8
  %132 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %26, i8 noundef zeroext 50)
  %133 = and i8 %132, 7
  %134 = zext i8 %133 to i32
  switch i32 %134, label %152 [
    i32 0, label %135
    i32 1, label %137
    i32 2, label %140
    i32 3, label %143
    i32 4, label %146
    i32 5, label %149
  ]

135:                                              ; preds = %129
  %136 = and i32 %131, 2147483647
  br label %152

137:                                              ; preds = %129
  %138 = shl i32 %131, 2
  %139 = udiv i32 %138, 3
  br label %152

140:                                              ; preds = %129
  %141 = mul i32 %131, 6
  %142 = lshr i32 %141, 2
  br label %152

143:                                              ; preds = %129
  %144 = mul i32 %131, 10
  %145 = udiv i32 %144, 6
  br label %152

146:                                              ; preds = %129
  %147 = mul i32 %131, 12
  %148 = udiv i32 %147, 7
  br label %152

149:                                              ; preds = %129
  %150 = mul i32 %131, 14
  %151 = lshr i32 %150, 3
  br label %152

152:                                              ; preds = %149, %146, %143, %140, %137, %135, %129
  %153 = phi i32 [ %131, %129 ], [ %151, %149 ], [ %148, %146 ], [ %145, %143 ], [ %142, %140 ], [ %139, %137 ], [ %136, %135 ]
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %157

157:                                              ; preds = %155, %152
  %158 = phi i32 [ 1, %155 ], [ %153, %152 ]
  %159 = getelementptr inbounds %struct.s5h1420_state, ptr %26, i32 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = udiv i32 %160, %158
  %162 = icmp ult i32 %161, 2
  br i1 %162, label %176, label %163

163:                                              ; preds = %157
  %164 = icmp ult i32 %161, 5
  br i1 %164, label %176, label %165

165:                                              ; preds = %163
  %166 = icmp ult i32 %161, 9
  br i1 %166, label %176, label %167

167:                                              ; preds = %165
  %168 = icmp ult i32 %161, 13
  br i1 %168, label %176, label %169

169:                                              ; preds = %167
  %170 = icmp ult i32 %161, 17
  br i1 %170, label %176, label %171

171:                                              ; preds = %169
  %172 = icmp ult i32 %161, 25
  br i1 %172, label %176, label %173

173:                                              ; preds = %171
  %174 = icmp ult i32 %161, 33
  %175 = select i1 %174, i8 6, i8 7
  br label %176

176:                                              ; preds = %173, %171, %169, %167, %165, %163, %157
  %177 = phi i8 [ 0, %157 ], [ 1, %163 ], [ 2, %165 ], [ 3, %167 ], [ 4, %169 ], [ 5, %171 ], [ %175, %173 ]
  %178 = load i32, ptr @debug, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = zext i8 %177 to i32
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %161, i32 noundef %181) #13
  br label %183

183:                                              ; preds = %180, %176
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #12
  store i8 34, ptr %19, align 2
  %184 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 24, ptr %184, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #12
  %185 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 0, ptr %185, align 4, !annotation !8
  %186 = getelementptr inbounds %struct.s5h1420_state, ptr %26, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i16
  store i16 %189, ptr %20, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %190, align 2
  store i16 2, ptr %185, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %191, align 4
  %192 = load ptr, ptr %26, align 8
  %193 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %20, i32 noundef 1) #12
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %200, label %195

195:                                              ; preds = %183
  %196 = load i32, ptr @debug, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %193, i32 noundef 34, i32 noundef 24) #13
  br label %202

200:                                              ; preds = %183
  %201 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 34
  store i8 24, ptr %201, align 1
  br label %202

202:                                              ; preds = %200, %198, %195
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #12
  store i8 34, ptr %17, align 2
  %203 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 16, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #12
  %204 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 0, ptr %204, align 4, !annotation !8
  %205 = load ptr, ptr %186, align 4
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i16
  store i16 %207, ptr %18, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %208, align 2
  store i16 2, ptr %204, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %209, align 4
  %210 = load ptr, ptr %26, align 8
  %211 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %18, i32 noundef 1) #12
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %218, label %213

213:                                              ; preds = %202
  %214 = load i32, ptr @debug, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %211, i32 noundef 34, i32 noundef 16) #13
  br label %220

218:                                              ; preds = %202
  %219 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 34
  store i8 16, ptr %219, align 1
  br label %220

220:                                              ; preds = %218, %216, %213
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #12
  store i8 34, ptr %15, align 2
  %221 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 %177, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #12
  %222 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 0, ptr %222, align 4, !annotation !8
  %223 = load ptr, ptr %186, align 4
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i16
  store i16 %225, ptr %16, align 4
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %226, align 2
  store i16 2, ptr %222, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %227, align 4
  %228 = load ptr, ptr %26, align 8
  %229 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %16, i32 noundef 1) #12
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %237, label %231

231:                                              ; preds = %220
  %232 = load i32, ptr @debug, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %231
  %235 = zext i8 %177 to i32
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %229, i32 noundef 34, i32 noundef %235) #13
  br label %239

237:                                              ; preds = %220
  %238 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 34
  store i8 %177, ptr %238, align 1
  br label %239

239:                                              ; preds = %237, %234, %231
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #12
  %240 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %26, i8 noundef zeroext 57)
  %241 = or i8 %240, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #12
  store i8 57, ptr %13, align 2
  %242 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 %241, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  %243 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %243, align 4, !annotation !8
  %244 = load ptr, ptr %186, align 4
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i16
  store i16 %246, ptr %14, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %247, align 2
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %248, align 4
  %249 = load ptr, ptr %26, align 8
  %250 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %14, i32 noundef 1) #12
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %258, label %252

252:                                              ; preds = %239
  %253 = load i32, ptr @debug, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %252
  %256 = zext i8 %241 to i32
  %257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %250, i32 noundef 57, i32 noundef %256) #13
  br label %260

258:                                              ; preds = %239
  %259 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 57
  store i8 %241, ptr %259, align 1
  br label %260

260:                                              ; preds = %258, %255, %252
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  %261 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %26, i8 noundef zeroext 5)
  %262 = and i8 %261, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  store i8 5, ptr %11, align 2
  %263 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %262, ptr %263, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %264 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %264, align 4, !annotation !8
  %265 = load ptr, ptr %186, align 4
  %266 = load i8, ptr %265, align 1
  %267 = zext i8 %266 to i16
  store i16 %267, ptr %12, align 4
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %268, align 2
  %269 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %269, align 4
  %270 = load ptr, ptr %26, align 8
  %271 = call i32 @i2c_transfer(ptr noundef %270, ptr noundef nonnull %12, i32 noundef 1) #12
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %279, label %273

273:                                              ; preds = %260
  %274 = load i32, ptr @debug, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %273
  %277 = zext i8 %262 to i32
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %271, i32 noundef 5, i32 noundef %277) #13
  br label %281

279:                                              ; preds = %260
  %280 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 5
  store i8 %262, ptr %280, align 1
  br label %281

281:                                              ; preds = %279, %276, %273
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  %282 = load i32, ptr %130, align 8
  %283 = icmp ugt i32 %282, 19999999
  br i1 %283, label %284, label %321

284:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i8 12, ptr %9, align 2
  %285 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 -118, ptr %285, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %286 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %286, align 4, !annotation !8
  %287 = load ptr, ptr %186, align 4
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %288 to i16
  store i16 %289, ptr %10, align 4
  %290 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %290, align 2
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %291, align 4
  %292 = load ptr, ptr %26, align 8
  %293 = call i32 @i2c_transfer(ptr noundef %292, ptr noundef nonnull %10, i32 noundef 1) #12
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %300, label %295

295:                                              ; preds = %284
  %296 = load i32, ptr @debug, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %295
  %299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %293, i32 noundef 12, i32 noundef 138) #13
  br label %302

300:                                              ; preds = %284
  %301 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 12
  store i8 -118, ptr %301, align 1
  br label %302

302:                                              ; preds = %300, %298, %295
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 13, ptr %7, align 2
  %303 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 106, ptr %303, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %304 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %304, align 4, !annotation !8
  %305 = load ptr, ptr %186, align 4
  %306 = load i8, ptr %305, align 1
  %307 = zext i8 %306 to i16
  store i16 %307, ptr %8, align 4
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %308, align 2
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %309, align 4
  %310 = load ptr, ptr %26, align 8
  %311 = call i32 @i2c_transfer(ptr noundef %310, ptr noundef nonnull %8, i32 noundef 1) #12
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %318, label %313

313:                                              ; preds = %302
  %314 = load i32, ptr @debug, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %313
  %317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %311, i32 noundef 13, i32 noundef 106) #13
  br label %320

318:                                              ; preds = %302
  %319 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 13
  store i8 106, ptr %319, align 1
  br label %320

320:                                              ; preds = %318, %316, %313
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %358

321:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 12, ptr %5, align 2
  %322 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 88, ptr %322, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %323 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %323, align 4, !annotation !8
  %324 = load ptr, ptr %186, align 4
  %325 = load i8, ptr %324, align 1
  %326 = zext i8 %325 to i16
  store i16 %326, ptr %6, align 4
  %327 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %327, align 2
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %328, align 4
  %329 = load ptr, ptr %26, align 8
  %330 = call i32 @i2c_transfer(ptr noundef %329, ptr noundef nonnull %6, i32 noundef 1) #12
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %337, label %332

332:                                              ; preds = %321
  %333 = load i32, ptr @debug, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %332
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %330, i32 noundef 12, i32 noundef 88) #13
  br label %339

337:                                              ; preds = %321
  %338 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 12
  store i8 88, ptr %338, align 1
  br label %339

339:                                              ; preds = %337, %335, %332
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 13, ptr %3, align 2
  %340 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 39, ptr %340, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %341 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %341, align 4, !annotation !8
  %342 = load ptr, ptr %186, align 4
  %343 = load i8, ptr %342, align 1
  %344 = zext i8 %343 to i16
  store i16 %344, ptr %4, align 4
  %345 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %345, align 2
  %346 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %346, align 4
  %347 = load ptr, ptr %26, align 8
  %348 = call i32 @i2c_transfer(ptr noundef %347, ptr noundef nonnull %4, i32 noundef 1) #12
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %355, label %350

350:                                              ; preds = %339
  %351 = load i32, ptr @debug, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %357, label %353

353:                                              ; preds = %350
  %354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %348, i32 noundef 13, i32 noundef 39) #13
  br label %357

355:                                              ; preds = %339
  %356 = getelementptr %struct.s5h1420_state, ptr %26, i32 0, i32 10, i32 13
  store i8 39, ptr %356, align 1
  br label %357

357:                                              ; preds = %355, %353, %350
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %358

358:                                              ; preds = %357, %320
  %359 = load i8, ptr %125, align 1
  %360 = or i8 %359, 1
  store i8 %360, ptr %125, align 1
  br label %361

361:                                              ; preds = %358, %124, %120
  %362 = load i32, ptr @debug, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %361
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1420_read_status) #13
  br label %366

366:                                              ; preds = %364, %361, %31
  %367 = phi i32 [ -22, %31 ], [ 0, %364 ], [ 0, %361 ]
  ret i32 %367
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 70, ptr %3, align 2
  %7 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 29, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %8, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.s5h1420_state, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #12
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %16, i32 noundef 70, i32 noundef 29) #13
  br label %25

23:                                               ; preds = %2
  %24 = getelementptr %struct.s5h1420_state, ptr %6, i32 0, i32 10, i32 70
  store i8 29, ptr %24, align 1
  br label %25

25:                                               ; preds = %23, %21, %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #12
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #12
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #12
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #12
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #12
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #12
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #12
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #12
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #12
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #12
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #12
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #12
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #12
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #12
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #12
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #12
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #12
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #12
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748000) #12
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #12
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #12
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #12
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #12
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #12
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #12
  %51 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %6, i8 noundef zeroext 72)
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %6, i8 noundef zeroext 71)
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  store i32 %56, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %4, i8 noundef zeroext 21)
  %6 = zext i8 %5 to i16
  %7 = mul nuw i16 %6, 257
  store i16 %7, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 70, ptr %3, align 2
  %7 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 31, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %8, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.s5h1420_state, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #12
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %16, i32 noundef 70, i32 noundef 31) #13
  br label %25

23:                                               ; preds = %2
  %24 = getelementptr %struct.s5h1420_state, ptr %6, i32 0, i32 10, i32 70
  store i8 31, ptr %24, align 1
  br label %25

25:                                               ; preds = %23, %21, %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #12
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #12
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #12
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #12
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #12
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #12
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #12
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #12
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #12
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #12
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #12
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #12
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #12
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #12
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #12
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #12
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #12
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #12
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748000) #12
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #12
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #12
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #12
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #12
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #12
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #12
  %51 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %6, i8 noundef zeroext 72)
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %6, i8 noundef zeroext 71)
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  store i32 %56, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_send_master_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1420_send_master_cmd) #13
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp ugt i8 %19, 6
  br i1 %20, label %143, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %12, i8 noundef zeroext 59)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i8 59, ptr %9, align 2
  %23 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 2, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %24 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %24, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.s5h1420_state, ptr %12, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %10, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %30, align 4
  %31 = load ptr, ptr %12, align 8
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %10, i32 noundef 1) #12
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %39, label %34

34:                                               ; preds = %21
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %32, i32 noundef 59, i32 noundef 2) #13
  br label %41

39:                                               ; preds = %21
  %40 = getelementptr %struct.s5h1420_state, ptr %12, i32 0, i32 10, i32 59
  store i8 2, ptr %40, align 1
  br label %41

41:                                               ; preds = %39, %37, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @msleep(i32 noundef 15) #12
  %42 = load i8, ptr %18, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %7, i32 1
  %46 = getelementptr inbounds i8, ptr %8, i32 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  br label %49

49:                                               ; preds = %71, %44
  %50 = phi i32 [ 0, %44 ], [ %72, %71 ]
  %51 = trunc i32 %50 to i8
  %52 = add i8 %51, 61
  %53 = getelementptr [6 x i8], ptr %1, i32 0, i32 %50
  %54 = load i8, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 %52, ptr %7, align 2
  store i8 %54, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  store i32 0, ptr %46, align 4, !annotation !8
  %55 = load ptr, ptr %25, align 4
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %8, align 4
  store i16 0, ptr %47, align 2
  store i16 2, ptr %46, align 4
  store ptr %7, ptr %48, align 4
  %58 = load ptr, ptr %12, align 8
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %8, i32 noundef 1) #12
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %68, label %61

61:                                               ; preds = %49
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = zext i8 %52 to i32
  %66 = zext i8 %54 to i32
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %59, i32 noundef %65, i32 noundef %66) #13
  br label %71

68:                                               ; preds = %49
  %69 = zext i8 %52 to i32
  %70 = getelementptr %struct.s5h1420_state, ptr %12, i32 0, i32 10, i32 %69
  store i8 %54, ptr %70, align 1
  br label %71

71:                                               ; preds = %68, %64, %61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  %72 = add nuw nsw i32 %50, 1
  %73 = load i8, ptr %18, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %49, label %76

76:                                               ; preds = %71, %41
  %77 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %12, i8 noundef zeroext 59)
  %78 = load i8, ptr %18, align 1
  %79 = shl i8 %78, 4
  %80 = add i8 %79, -16
  %81 = or i8 %77, %80
  %82 = or i8 %81, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 59, ptr %5, align 2
  %83 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %82, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %84 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %84, align 4, !annotation !8
  %85 = load ptr, ptr %25, align 4
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %6, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %88, align 2
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %89, align 4
  %90 = load ptr, ptr %12, align 8
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %6, i32 noundef 1) #12
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %99, label %93

93:                                               ; preds = %76
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = zext i8 %82 to i32
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %91, i32 noundef 59, i32 noundef %97) #13
  br label %101

99:                                               ; preds = %76
  %100 = getelementptr %struct.s5h1420_state, ptr %12, i32 0, i32 10, i32 59
  store i8 %82, ptr %100, align 1
  br label %101

101:                                              ; preds = %99, %96, %93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %102 = load volatile i32, ptr @jiffies, align 64
  %103 = add i32 %102, 10
  %104 = load volatile i32, ptr @jiffies, align 64
  %105 = sub i32 %104, %103
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %111, %101
  %108 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %12, i8 noundef zeroext 59)
  %109 = and i8 %108, 8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  call void @msleep(i32 noundef 5) #12
  %112 = load volatile i32, ptr @jiffies, align 64
  %113 = sub i32 %112, %103
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %107, label %115

115:                                              ; preds = %111, %107, %101
  %116 = load volatile i32, ptr @jiffies, align 64
  %117 = sub i32 %103, %116
  %118 = icmp slt i32 %117, 0
  %119 = select i1 %118, i32 -110, i32 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 59, ptr %3, align 2
  %120 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %22, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %121 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %121, align 4, !annotation !8
  %122 = load ptr, ptr %25, align 4
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %4, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %125, align 2
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %126, align 4
  %127 = load ptr, ptr %12, align 8
  %128 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %4, i32 noundef 1) #12
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %115
  %131 = load i32, ptr @debug, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = zext i8 %22 to i32
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %128, i32 noundef 59, i32 noundef %134) #13
  br label %138

136:                                              ; preds = %115
  %137 = getelementptr %struct.s5h1420_state, ptr %12, i32 0, i32 10, i32 59
  store i8 %22, ptr %137, align 1
  br label %138

138:                                              ; preds = %136, %133, %130
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @msleep(i32 noundef 15) #12
  %139 = load i32, ptr @debug, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1420_send_master_cmd) #13
  br label %143

143:                                              ; preds = %141, %138, %17
  %144 = phi i32 [ -22, %17 ], [ %119, %141 ], [ %119, %138 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_recv_slave_reply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 59)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 59, ptr %5, align 2
  %10 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -126, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = load ptr, ptr %8, align 8
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %6, i32 noundef 1) #12
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %19, i32 noundef 59, i32 noundef 130) #13
  br label %28

26:                                               ; preds = %2
  %27 = getelementptr %struct.s5h1420_state, ptr %8, i32 0, i32 10, i32 59
  store i8 -126, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %24, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @msleep(i32 noundef 15) #12
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, 100
  %33 = sdiv i32 %32, 1000
  %34 = add i32 %33, %29
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = sub i32 %35, %34
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %41, %28
  %39 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 59)
  %40 = icmp sgt i8 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  call void @msleep(i32 noundef 5) #12
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = sub i32 %42, %34
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %38, label %45

45:                                               ; preds = %41, %38, %28
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = sub i32 %34, %46
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %86, label %49

49:                                               ; preds = %45
  %50 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 73)
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 59)
  %54 = lshr i8 %53, 4
  %55 = and i8 %54, 7
  %56 = icmp ugt i8 %55, 4
  br i1 %56, label %86, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %1, i32 0, i32 1
  store i8 %55, ptr %58, align 4
  %59 = icmp eq i8 %55, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %57
  %61 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 61)
  store i8 %61, ptr %1, align 1
  %62 = icmp eq i8 %55, 1
  br i1 %62, label %86, label %63

63:                                               ; preds = %60
  %64 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 62)
  %65 = getelementptr [4 x i8], ptr %1, i32 0, i32 1
  store i8 %64, ptr %65, align 1
  %66 = icmp eq i8 %55, 2
  br i1 %66, label %86, label %67

67:                                               ; preds = %63
  %68 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 63)
  %69 = getelementptr [4 x i8], ptr %1, i32 0, i32 2
  store i8 %68, ptr %69, align 1
  %70 = icmp eq i8 %55, 3
  br i1 %70, label %86, label %71

71:                                               ; preds = %67
  %72 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 64)
  %73 = getelementptr [4 x i8], ptr %1, i32 0, i32 3
  store i8 %72, ptr %73, align 1
  %74 = icmp eq i8 %55, 4
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 65)
  %77 = getelementptr [4 x i8], ptr %1, i32 0, i32 4
  store i8 %76, ptr %77, align 1
  %78 = icmp eq i8 %55, 5
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 66)
  %81 = getelementptr [4 x i8], ptr %1, i32 0, i32 5
  store i8 %80, ptr %81, align 1
  %82 = icmp eq i8 %55, 6
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 67)
  %85 = getelementptr [4 x i8], ptr %1, i32 0, i32 6
  store i8 %84, ptr %85, align 1
  br label %86

86:                                               ; preds = %83, %79, %75, %71, %67, %63, %60, %57, %52, %49, %45
  %87 = phi i32 [ -110, %45 ], [ -5, %49 ], [ -75, %52 ], [ 0, %57 ], [ 0, %83 ], [ 0, %79 ], [ 0, %75 ], [ 0, %71 ], [ 0, %67 ], [ 0, %63 ], [ 0, %60 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 59, ptr %3, align 2
  %88 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %9, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %89 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %89, align 4, !annotation !8
  %90 = load ptr, ptr %12, align 4
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %4, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %94, align 4
  %95 = load ptr, ptr %8, align 8
  %96 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %4, i32 noundef 1) #12
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %104, label %98

98:                                               ; preds = %86
  %99 = load i32, ptr @debug, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = zext i8 %9 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %96, i32 noundef 59, i32 noundef %102) #13
  br label %106

104:                                              ; preds = %86
  %105 = getelementptr %struct.s5h1420_state, ptr %8, i32 0, i32 10, i32 59
  store i8 %9, ptr %105, align 1
  br label %106

106:                                              ; preds = %104, %101, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @msleep(i32 noundef 15) #12
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %12, i8 noundef zeroext 59)
  %14 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %12, i8 noundef zeroext 59)
  %15 = and i8 %14, 112
  %16 = or i8 %15, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i8 59, ptr %9, align 2
  %17 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %16, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %18 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %18, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.s5h1420_state, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %10, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %24, align 4
  %25 = load ptr, ptr %12, align 8
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %10, i32 noundef 1) #12
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = zext i8 %16 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %26, i32 noundef 59, i32 noundef %32) #13
  br label %36

34:                                               ; preds = %2
  %35 = getelementptr %struct.s5h1420_state, ptr %12, i32 0, i32 10, i32 59
  store i8 %16, ptr %35, align 1
  br label %36

36:                                               ; preds = %34, %31, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  %37 = icmp eq i32 %1, 1
  br i1 %37, label %38, label %60

38:                                               ; preds = %36
  %39 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %12, i8 noundef zeroext 59)
  %40 = or i8 %39, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 59, ptr %7, align 2
  %41 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %40, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %42 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %42, align 4, !annotation !8
  %43 = load ptr, ptr %19, align 4
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %8, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %47, align 4
  %48 = load ptr, ptr %12, align 8
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %8, i32 noundef 1) #12
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %57, label %51

51:                                               ; preds = %38
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = zext i8 %40 to i32
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %49, i32 noundef 59, i32 noundef %55) #13
  br label %59

57:                                               ; preds = %38
  %58 = getelementptr %struct.s5h1420_state, ptr %12, i32 0, i32 10, i32 59
  store i8 %40, ptr %58, align 1
  br label %59

59:                                               ; preds = %57, %54, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %60

60:                                               ; preds = %59, %36
  call void @msleep(i32 noundef 15) #12
  %61 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %12, i8 noundef zeroext 59)
  %62 = or i8 %61, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 59, ptr %5, align 2
  %63 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %62, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %64 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %64, align 4, !annotation !8
  %65 = load ptr, ptr %19, align 4
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i16
  store i16 %67, ptr %6, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %69, align 4
  %70 = load ptr, ptr %12, align 8
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %6, i32 noundef 1) #12
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %79, label %73

73:                                               ; preds = %60
  %74 = load i32, ptr @debug, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = zext i8 %62 to i32
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %71, i32 noundef 59, i32 noundef %77) #13
  br label %81

79:                                               ; preds = %60
  %80 = getelementptr %struct.s5h1420_state, ptr %12, i32 0, i32 10, i32 59
  store i8 %62, ptr %80, align 1
  br label %81

81:                                               ; preds = %79, %76, %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = add i32 %82, 10
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = sub i32 %84, %83
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %91, %81
  %88 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %12, i8 noundef zeroext 59)
  %89 = and i8 %88, 8
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  call void @msleep(i32 noundef 5) #12
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = sub i32 %92, %83
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %87, label %95

95:                                               ; preds = %91, %87, %81
  %96 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 59, ptr %3, align 2
  %97 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %13, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %98 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %98, align 4, !annotation !8
  %99 = load ptr, ptr %19, align 4
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %4, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %102, align 2
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %103, align 4
  %104 = load ptr, ptr %12, align 8
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %4, i32 noundef 1) #12
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %113, label %107

107:                                              ; preds = %95
  %108 = load i32, ptr @debug, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = zext i8 %13 to i32
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %105, i32 noundef 59, i32 noundef %111) #13
  br label %115

113:                                              ; preds = %95
  %114 = getelementptr %struct.s5h1420_state, ptr %12, i32 0, i32 10, i32 59
  store i8 %13, ptr %114, align 1
  br label %115

115:                                              ; preds = %113, %110, %107
  %116 = sub i32 %83, %96
  %117 = icmp slt i32 %116, 0
  %118 = select i1 %117, i32 -110, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @msleep(i32 noundef 15) #12
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1420_set_tone) #13
  br label %13

13:                                               ; preds = %11, %2
  switch i32 %1, label %62 [
    i32 0, label %14
    i32 1, label %38
  ]

14:                                               ; preds = %13
  %15 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 59)
  %16 = and i8 %15, 116
  %17 = or i8 %16, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 59, ptr %5, align 2
  %18 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %17, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %19 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %19, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %6, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %25, align 4
  %26 = load ptr, ptr %8, align 8
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %6, i32 noundef 1) #12
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = zext i8 %17 to i32
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %27, i32 noundef 59, i32 noundef %33) #13
  br label %37

35:                                               ; preds = %14
  %36 = getelementptr %struct.s5h1420_state, ptr %8, i32 0, i32 10, i32 59
  store i8 %17, ptr %36, align 1
  br label %37

37:                                               ; preds = %35, %32, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br label %62

38:                                               ; preds = %13
  %39 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %8, i8 noundef zeroext 59)
  %40 = and i8 %39, 116
  %41 = or i8 %40, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 59, ptr %3, align 2
  %42 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %41, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %43 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %43, align 4, !annotation !8
  %44 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %4, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %49, align 4
  %50 = load ptr, ptr %8, align 8
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %4, i32 noundef 1) #12
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %59, label %53

53:                                               ; preds = %38
  %54 = load i32, ptr @debug, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = zext i8 %41 to i32
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %51, i32 noundef 59, i32 noundef %57) #13
  br label %61

59:                                               ; preds = %38
  %60 = getelementptr %struct.s5h1420_state, ptr %8, i32 0, i32 10, i32 59
  store i8 %41, ptr %60, align 1
  br label %61

61:                                               ; preds = %59, %56, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %62

62:                                               ; preds = %61, %37, %13
  %63 = load i32, ptr @debug, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1420_set_tone) #13
  br label %67

67:                                               ; preds = %65, %62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1420_set_voltage) #13
  br label %15

15:                                               ; preds = %13, %2
  switch i32 %1, label %86 [
    i32 0, label %16
    i32 1, label %40
    i32 2, label %63
  ]

16:                                               ; preds = %15
  %17 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %10, i8 noundef zeroext 60)
  %18 = and i8 %17, -4
  %19 = or i8 %18, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 60, ptr %7, align 2
  %20 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %19, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %21 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %21, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.s5h1420_state, ptr %10, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %8, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %27, align 4
  %28 = load ptr, ptr %10, align 8
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %8, i32 noundef 1) #12
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %37, label %31

31:                                               ; preds = %16
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = zext i8 %19 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %29, i32 noundef 60, i32 noundef %35) #13
  br label %39

37:                                               ; preds = %16
  %38 = getelementptr %struct.s5h1420_state, ptr %10, i32 0, i32 10, i32 60
  store i8 %19, ptr %38, align 1
  br label %39

39:                                               ; preds = %37, %34, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %86

40:                                               ; preds = %15
  %41 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %10, i8 noundef zeroext 60)
  %42 = or i8 %41, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 60, ptr %5, align 2
  %43 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %42, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %44 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %44, align 4, !annotation !8
  %45 = getelementptr inbounds %struct.s5h1420_state, ptr %10, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %6, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %50, align 4
  %51 = load ptr, ptr %10, align 8
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %6, i32 noundef 1) #12
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %60, label %54

54:                                               ; preds = %40
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = zext i8 %42 to i32
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %52, i32 noundef 60, i32 noundef %58) #13
  br label %62

60:                                               ; preds = %40
  %61 = getelementptr %struct.s5h1420_state, ptr %10, i32 0, i32 10, i32 60
  store i8 %42, ptr %61, align 1
  br label %62

62:                                               ; preds = %60, %57, %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br label %86

63:                                               ; preds = %15
  %64 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %10, i8 noundef zeroext 60)
  %65 = and i8 %64, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 60, ptr %3, align 2
  %66 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %65, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %67 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %67, align 4, !annotation !8
  %68 = getelementptr inbounds %struct.s5h1420_state, ptr %10, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = load ptr, ptr %10, align 8
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %4, i32 noundef 1) #12
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %83, label %77

77:                                               ; preds = %63
  %78 = load i32, ptr @debug, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = zext i8 %65 to i32
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %75, i32 noundef 60, i32 noundef %81) #13
  br label %85

83:                                               ; preds = %63
  %84 = getelementptr %struct.s5h1420_state, ptr %10, i32 0, i32 10, i32 60
  store i8 %65, ptr %84, align 1
  br label %85

85:                                               ; preds = %83, %80, %77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %86

86:                                               ; preds = %85, %62, %39, %15
  %87 = load i32, ptr @debug, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1420_set_voltage) #13
  br label %91

91:                                               ; preds = %89, %86
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1420_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 4
  %11 = load i8, ptr %10, align 8
  br i1 %9, label %35, label %12

12:                                               ; preds = %2
  %13 = or i8 %11, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 2, ptr %5, align 2
  %14 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %13, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %15 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %6, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %21, align 4
  %22 = load ptr, ptr %8, align 8
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %6, i32 noundef 1) #12
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = zext i8 %13 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %23, i32 noundef 2, i32 noundef %29) #13
  br label %33

31:                                               ; preds = %12
  %32 = getelementptr %struct.s5h1420_state, ptr %8, i32 0, i32 10, i32 2
  store i8 %13, ptr %32, align 1
  br label %33

33:                                               ; preds = %31, %28, %25
  %34 = phi i32 [ 0, %31 ], [ -121, %28 ], [ -121, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br label %58

35:                                               ; preds = %2
  %36 = and i8 %11, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 2, ptr %3, align 2
  %37 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %36, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %38 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  %39 = getelementptr inbounds %struct.s5h1420_state, ptr %8, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %4, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %44, align 4
  %45 = load ptr, ptr %8, align 8
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %4, i32 noundef 1) #12
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %54, label %48

48:                                               ; preds = %35
  %49 = load i32, ptr @debug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = zext i8 %36 to i32
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %46, i32 noundef 2, i32 noundef %52) #13
  br label %56

54:                                               ; preds = %35
  %55 = getelementptr %struct.s5h1420_state, ptr %8, i32 0, i32 10, i32 2
  store i8 %36, ptr %55, align 1
  br label %56

56:                                               ; preds = %54, %51, %48
  %57 = phi i32 [ 0, %54 ], [ -121, %51 ], [ -121, %48 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %58

58:                                               ; preds = %56, %33
  %59 = phi i32 [ %34, %33 ], [ %57, %56 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1420_reset(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5h1420_reset) #13
  br label %10

10:                                               ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 1, ptr %4, align 2
  %11 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.s5h1420_state, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = load ptr, ptr %0, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 1) #12
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %10
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %20, i32 noundef 1, i32 noundef 8) #13
  br label %29

27:                                               ; preds = %10
  %28 = getelementptr %struct.s5h1420_state, ptr %0, i32 0, i32 10, i32 1
  store i8 8, ptr %28, align 1
  br label %29

29:                                               ; preds = %27, %25, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 1, ptr %2, align 2
  %30 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %31 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %31, align 4, !annotation !8
  %32 = load ptr, ptr %13, align 4
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %3, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %36, align 4
  %37 = load ptr, ptr %0, align 8
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %3, i32 noundef 1) #12
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %38, i32 noundef 1, i32 noundef 0) #13
  br label %47

45:                                               ; preds = %29
  %46 = getelementptr %struct.s5h1420_state, ptr %0, i32 0, i32 10, i32 1
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %45, %43, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 2147480) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1420_setfreqoffset(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = shl i32 %1, 24
  %17 = getelementptr inbounds %struct.s5h1420_state, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = udiv i32 %18, 1000000
  %20 = udiv i32 %16, %19
  %21 = sub i32 0, %20
  br label %34

22:                                               ; preds = %2
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1420_setfreqoffset) #13
  %24 = load i32, ptr @debug, align 4
  %25 = shl i32 %1, 24
  %26 = getelementptr inbounds %struct.s5h1420_state, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = udiv i32 %27, 1000000
  %29 = udiv i32 %25, %28
  %30 = sub i32 0, %29
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %30) #13
  br label %34

34:                                               ; preds = %32, %22, %15
  %35 = phi i32 [ %21, %15 ], [ %30, %32 ], [ %30, %22 ]
  %36 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %0, i8 noundef zeroext 9)
  %37 = and i8 %36, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  store i8 9, ptr %11, align 2
  %38 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %37, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %39 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %39, align 4, !annotation !8
  %40 = getelementptr inbounds %struct.s5h1420_state, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %12, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %45, align 4
  %46 = load ptr, ptr %0, align 8
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %12, i32 noundef 1) #12
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %55, label %49

49:                                               ; preds = %34
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = zext i8 %37 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %47, i32 noundef 9, i32 noundef %53) #13
  br label %57

55:                                               ; preds = %34
  %56 = getelementptr %struct.s5h1420_state, ptr %0, i32 0, i32 10, i32 9
  store i8 %37, ptr %56, align 1
  br label %57

57:                                               ; preds = %55, %52, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  %58 = lshr i32 %35, 16
  %59 = trunc i32 %58 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i8 14, ptr %9, align 2
  %60 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %59, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %61 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %61, align 4, !annotation !8
  %62 = load ptr, ptr %40, align 4
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %10, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %66, align 4
  %67 = load ptr, ptr %0, align 8
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %10, i32 noundef 1) #12
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %76, label %70

70:                                               ; preds = %57
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = and i32 %58, 255
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %68, i32 noundef 14, i32 noundef %74) #13
  br label %78

76:                                               ; preds = %57
  %77 = getelementptr %struct.s5h1420_state, ptr %0, i32 0, i32 10, i32 14
  store i8 %59, ptr %77, align 1
  br label %78

78:                                               ; preds = %76, %73, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  %79 = lshr i32 %35, 8
  %80 = trunc i32 %79 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 15, ptr %7, align 2
  %81 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %80, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %82 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %82, align 4, !annotation !8
  %83 = load ptr, ptr %40, align 4
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %8, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %86, align 2
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %87, align 4
  %88 = load ptr, ptr %0, align 8
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %8, i32 noundef 1) #12
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %97, label %91

91:                                               ; preds = %78
  %92 = load i32, ptr @debug, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = and i32 %79, 255
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %89, i32 noundef 15, i32 noundef %95) #13
  br label %99

97:                                               ; preds = %78
  %98 = getelementptr %struct.s5h1420_state, ptr %0, i32 0, i32 10, i32 15
  store i8 %80, ptr %98, align 1
  br label %99

99:                                               ; preds = %97, %94, %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  %100 = trunc i32 %35 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 16, ptr %5, align 2
  %101 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %100, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %102 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %102, align 4, !annotation !8
  %103 = load ptr, ptr %40, align 4
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i16
  store i16 %105, ptr %6, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %106, align 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %107, align 4
  %108 = load ptr, ptr %0, align 8
  %109 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %6, i32 noundef 1) #12
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %117, label %111

111:                                              ; preds = %99
  %112 = load i32, ptr @debug, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = and i32 %35, 255
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %109, i32 noundef 16, i32 noundef %115) #13
  br label %119

117:                                              ; preds = %99
  %118 = getelementptr %struct.s5h1420_state, ptr %0, i32 0, i32 10, i32 16
  store i8 %100, ptr %118, align 1
  br label %119

119:                                              ; preds = %117, %114, %111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %120 = or i8 %36, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 9, ptr %3, align 2
  %121 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %120, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %122 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %122, align 4, !annotation !8
  %123 = load ptr, ptr %40, align 4
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i16
  store i16 %125, ptr %4, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %126, align 2
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %127, align 4
  %128 = load ptr, ptr %0, align 8
  %129 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %4, i32 noundef 1) #12
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %138, label %131

131:                                              ; preds = %119
  %132 = load i32, ptr @debug, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %145

135:                                              ; preds = %131
  %136 = zext i8 %120 to i32
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1420_writereg, i32 noundef %129, i32 noundef 9, i32 noundef %136) #13
  br label %140

138:                                              ; preds = %119
  %139 = getelementptr %struct.s5h1420_state, ptr %0, i32 0, i32 10, i32 9
  store i8 %120, ptr %139, align 1
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1420_setfreqoffset) #13
  br label %145

145:                                              ; preds = %143, %140, %134
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148348641, i64 2148348921, i64 2148349255, i64 2148349589}
