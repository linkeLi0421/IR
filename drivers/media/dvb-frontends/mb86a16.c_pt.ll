; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mb86a16.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mb86a16.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb86a16_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mb86a16_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mb86a16_attach:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cnr = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mb86a16_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.mb86a16_config = type { i8, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_verbose = internal constant [8 x i8] c"verbose\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global i32 5, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype249 = internal constant [21 x i8] c"parmtype=verbose:int\00", section ".modinfo", align 1
@mb86a16_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Fujitsu MB86A16 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 3000000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @mb86a16_release, ptr null, ptr @mb86a16_init, ptr @mb86a16_sleep, ptr null, ptr null, ptr null, ptr null, ptr @mb86a16_frontend_algo, ptr null, ptr null, ptr null, ptr @mb86a16_read_status, ptr @mb86a16_read_ber, ptr @mb86a16_read_signal_strength, ptr @mb86a16_read_snr, ptr @mb86a16_read_ucblocks, ptr null, ptr @mb86a16_send_diseqc_msg, ptr null, ptr @mb86a16_send_diseqc_burst, ptr @mb86a16_set_tone, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mb86a16_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_mb86a16_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb86a16_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mb86a16_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb86a16_attach to i32), ptr @__kstrtab_mb86a16_attach, ptr @__kstrtabns_mb86a16_attach }, section "___ksymtab+mb86a16_attach", align 4
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [20 x i8] c"author=Manu Abraham\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [38 x i8] c"\013%s: read error(reg=0x%02x, ret=%i)\0A\00", align 1
@__func__.mb86a16_read = private unnamed_addr constant [13 x i8] c"mb86a16_read\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\013%s: I2C transfer error\0A\00", align 1
@__func__.mb86a16_read_status = private unnamed_addr constant [20 x i8] c"mb86a16_read_status\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\013%s: BER coarse=[0x%02x]\0A\00", align 1
@__func__.mb86a16_read_ber = private unnamed_addr constant [17 x i8] c"mb86a16_read_ber\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\013%s: BER fine=[0x%02x]\0A\00", align 1
@__func__.mb86a16_read_signal_strength = private unnamed_addr constant [29 x i8] c"mb86a16_read_signal_strength\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"\013%s: Signal strength=[%d %%]\0A\00", align 1
@__func__.mb86a16_read_snr = private unnamed_addr constant [17 x i8] c"mb86a16_read_snr\00", align 1
@cnr_tab = internal unnamed_addr constant [21 x %struct.cnr] [%struct.cnr { i8 35, i8 2 }, %struct.cnr { i8 40, i8 3 }, %struct.cnr { i8 50, i8 4 }, %struct.cnr { i8 60, i8 5 }, %struct.cnr { i8 70, i8 6 }, %struct.cnr { i8 80, i8 7 }, %struct.cnr { i8 92, i8 8 }, %struct.cnr { i8 103, i8 9 }, %struct.cnr { i8 115, i8 10 }, %struct.cnr { i8 -118, i8 12 }, %struct.cnr { i8 -94, i8 15 }, %struct.cnr { i8 -76, i8 18 }, %struct.cnr { i8 -71, i8 19 }, %struct.cnr { i8 -67, i8 20 }, %struct.cnr { i8 -61, i8 22 }, %struct.cnr { i8 -57, i8 24 }, %struct.cnr { i8 -55, i8 25 }, %struct.cnr { i8 -54, i8 26 }, %struct.cnr { i8 -53, i8 27 }, %struct.cnr { i8 -51, i8 28 }, %struct.cnr { i8 -48, i8 30 }], align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\013%s: SNR (Quality) = [%d dB], Level=%d %%\0A\00", align 1
@__func__.mb86a16_read_ucblocks = private unnamed_addr constant [22 x i8] c"mb86a16_read_ucblocks\00", align 1
@__func__.mb86a16_send_diseqc_msg = private unnamed_addr constant [24 x i8] c"mb86a16_send_diseqc_msg\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"\013%s: writing to [0x%02x],Reg[0x%02x],Data[0x%02x]\0A\00", align 1
@__func__.mb86a16_write = private unnamed_addr constant [14 x i8] c"mb86a16_write\00", align 1
@__func__.mb86a16_send_diseqc_burst = private unnamed_addr constant [26 x i8] c"mb86a16_send_diseqc_burst\00", align 1
@__func__.mb86a16_set_tone = private unnamed_addr constant [17 x i8] c"mb86a16_set_tone\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"\013%s: Successfully acquired LOCK\0A\00", align 1
@__func__.mb86a16_search = private unnamed_addr constant [15 x i8] c"mb86a16_search\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"\013%s: Lock acquisition failed!\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"\013%s: freq=%d Mhz, symbrt=%d Ksps\0A\00", align 1
@__func__.mb86a16_set_fe = private unnamed_addr constant [15 x i8] c"mb86a16_set_fe\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"\013%s: initial set failed\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"\013%s: DAGC data set error\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"\013%s: EN set error\0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"\013%s: AFCEXEN set error\0A\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"\013%s: CNTM set error\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"\013%s: S01T set error\0A\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"\013%s: smrt info get error\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.68 = private unnamed_addr constant [24 x i8] c"\013%s: rf val set error\0A\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"\013%s: afcex data set error\0A\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"\013%s: srst error\0A\00", align 1
@.str.80 = private unnamed_addr constant [41 x i8] c"\013%s: Probably Duplicate Signal, j = %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [65 x i8] c"\013%s: ------ Signal detect ------ [swp_freq=[%07d, srate=%05d]]\0A\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"\013%s: ***** Signal Found *****\0A\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"\013%s: !!!!! No signal !!!!!, try again...\0A\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"\013%s: smrt set error\0A\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"\013%s:  Start Freq Error Check\0A\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"\013%s: AFCOFS data set error\0A\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"\013%s: afcex data set\0A\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"\013%s: rf val set\0A\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"\013%s: SWEEP Frequency = %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [52 x i8] c"\013%s: Adjusting .., DELTA Freq = %d, SWEEP Freq=%d\0A\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"\013%s: NO  --  SIGNAL !\0A\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"\013%s: -------- Viterbi=[%d] SYNC=[%d] ---------\0A\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"\013%s: NO  -- SYNC\0A\00", align 1
@.str.136 = private unnamed_addr constant [21 x i8] c"\013%s: NO  -- SIGNAL\0A\00", align 1
@.str.140 = private unnamed_addr constant [28 x i8] c"\013%s: ******* SYNC *******\0A\00", align 1
@.str.144 = private unnamed_addr constant [29 x i8] c"\013%s: AGC = %02x CNM = %02x\0A\00", align 1
@__func__.SEQ_set = private unnamed_addr constant [8 x i8] c"SEQ_set\00", align 1
@__func__.iq_vt_set = private unnamed_addr constant [10 x i8] c"iq_vt_set\00", align 1
@__func__.initial_set = private unnamed_addr constant [12 x i8] c"initial_set\00", align 1
@__func__.stlp_set = private unnamed_addr constant [9 x i8] c"stlp_set\00", align 1
@__func__.DAGC_data_set = private unnamed_addr constant [14 x i8] c"DAGC_data_set\00", align 1
@__func__.EN_set = private unnamed_addr constant [7 x i8] c"EN_set\00", align 1
@__func__.AFCEXEN_set = private unnamed_addr constant [12 x i8] c"AFCEXEN_set\00", align 1
@__func__.CNTM_set = private unnamed_addr constant [9 x i8] c"CNTM_set\00", align 1
@__func__.S01T_set = private unnamed_addr constant [9 x i8] c"S01T_set\00", align 1
@__func__.smrt_set = private unnamed_addr constant [9 x i8] c"smrt_set\00", align 1
@.str.148 = private unnamed_addr constant [37 x i8] c"\013%s: RF Setup - I2C transfer error\0A\00", align 1
@__func__.rf_val_set = private unnamed_addr constant [11 x i8] c"rf_val_set\00", align 1
@__func__.afcex_data_set = private unnamed_addr constant [15 x i8] c"afcex_data_set\00", align 1
@__func__.srst = private unnamed_addr constant [5 x i8] c"srst\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"\013%s: CNTM set Error\0A\00", align 1
@__func__.signal_det = private unnamed_addr constant [11 x i8] c"signal_det\00", align 1
@__func__.afcofs_data_set = private unnamed_addr constant [16 x i8] c"afcofs_data_set\00", align 1
@__func__.afcerr_chk = private unnamed_addr constant [11 x i8] c"afcerr_chk\00", align 1
@__func__.dagcm_val_get = private unnamed_addr constant [14 x i8] c"dagcm_val_get\00", align 1
@__func__.S2T_set = private unnamed_addr constant [8 x i8] c"S2T_set\00", align 1
@__func__.S45T_set = private unnamed_addr constant [9 x i8] c"S45T_set\00", align 1
@__func__.Vi_set = private unnamed_addr constant [7 x i8] c"Vi_set\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"\013%s: Status = %02x,\0A\00", align 1
@__func__.sync_chk = private unnamed_addr constant [9 x i8] c"sync_chk\00", align 1
@__func__.FEC_srst = private unnamed_addr constant [9 x i8] c"FEC_srst\00", align 1
@__func__.freqerr_chk = private unnamed_addr constant [12 x i8] c"freqerr_chk\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_license250, ptr @__UNIQUE_ID_verbosetype249, ptr @__ksymtab_mb86a16_attach, ptr @__param_verbose], section "llvm.metadata"
@switch.table.mb86a16_read_ber = private unnamed_addr constant [4 x i32] [i32 50000000, i32 100000000, i32 12500000, i32 25000000], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mb86a16_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1072) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mb86a16_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 127, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #11, !annotation !8
  %12 = load i8, ptr %0, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %19, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #11
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %28, label %22

22:                                               ; preds = %9
  %23 = load i32, ptr @verbose, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 127, i32 noundef %20) #12
  br label %27

27:                                               ; preds = %25, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %38

28:                                               ; preds = %9
  %29 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %30 = icmp eq i8 %29, -2
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.mb86a16_state, ptr %7, i32 0, i32 2
  %33 = getelementptr inbounds %struct.mb86a16_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %33, ptr noundef nonnull align 4 dereferenceable(544) @mb86a16_ops, i32 544, i1 false)
  %34 = getelementptr inbounds %struct.mb86a16_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %34, align 8
  %35 = getelementptr inbounds %struct.mb86a16_config, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mb86a16_state, ptr %7, i32 0, i32 2, i32 1, i32 25
  store ptr %36, ptr %37, align 8
  br label %39

38:                                               ; preds = %28, %27, %2
  call void @kfree(ptr noundef %7) #11
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi ptr [ null, %38 ], [ %32, %31 ]
  ret ptr %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb86a16_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 %1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %16 = load i8, ptr %9, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 2) #11
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %33, label %24

24:                                               ; preds = %3
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = zext i8 %1 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef %28, i32 noundef %22) #12
  br label %30

30:                                               ; preds = %27, %24
  %31 = icmp slt i32 %22, 0
  %32 = select i1 %31, i32 %22, i32 -121
  br label %35

33:                                               ; preds = %3
  %34 = load i8, ptr %5, align 1
  store i8 %34, ptr %2, align 1
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ 2, %33 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %36
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mb86a16_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mb86a16_init(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mb86a16_sleep(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mb86a16_frontend_algo(ptr nocapture noundef readnone %0) #7 {
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 55, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  %17 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #11, !annotation !8
  %18 = getelementptr inbounds %struct.mb86a16_state, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %14, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %25 = load i8, ptr %19, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %29, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %14, i32 noundef 2) #11
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load i32, ptr @verbose, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %33
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 55, i32 noundef %31) #12
  br label %55

38:                                               ; preds = %2
  %39 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 56, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  %40 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %40, i8 0, i32 16, i1 false) #11, !annotation !8
  %41 = load ptr, ptr %18, align 4
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %11, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %44, align 2
  store i16 1, ptr %40, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %47 = load i8, ptr %41, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %51, align 4
  %52 = load ptr, ptr %16, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %11, i32 noundef 2) #11
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %62, label %56

55:                                               ; preds = %36, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  br label %138

56:                                               ; preds = %38
  %57 = load i32, ptr @verbose, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 56, i32 noundef %53) #12
  br label %61

61:                                               ; preds = %59, %56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  br label %138

62:                                               ; preds = %38
  %63 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  %64 = icmp ugt i8 %39, 25
  %65 = icmp ugt i8 %63, 25
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, ptr %1, align 4
  %69 = or i32 %68, 1
  store i32 %69, ptr %1, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = icmp ugt i8 %39, 45
  %72 = icmp ugt i8 %63, 45
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, ptr %1, align 4
  %76 = or i32 %75, 2
  store i32 %76, ptr %1, align 4
  br label %77

77:                                               ; preds = %74, %70
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 13, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %78 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %78, i8 0, i32 16, i1 false) #11, !annotation !8
  %79 = load ptr, ptr %18, align 4
  %80 = load i8, ptr %79, align 4
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %8, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %82, align 2
  store i16 1, ptr %78, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %85 = load i8, ptr %79, align 4
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %84, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %87, align 2
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %89, align 4
  %90 = load ptr, ptr %16, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %8, i32 noundef 2) #11
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %98, label %93

93:                                               ; preds = %77
  %94 = load i32, ptr @verbose, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 13, i32 noundef %91) #12
  br label %102

98:                                               ; preds = %77
  %99 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %106, label %103

102:                                              ; preds = %96, %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  br label %138

103:                                              ; preds = %98
  %104 = load i32, ptr %1, align 4
  %105 = or i32 %104, 12
  store i32 %105, ptr %1, align 4
  br label %106

106:                                              ; preds = %103, %98
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 7, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %107 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %107, i8 0, i32 16, i1 false) #11, !annotation !8
  %108 = load ptr, ptr %18, align 4
  %109 = load i8, ptr %108, align 4
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %5, align 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %111, align 2
  store i16 1, ptr %107, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %112, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %114 = load i8, ptr %108, align 4
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %113, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %116, align 2
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %117, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %118, align 4
  %119 = load ptr, ptr %16, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %5, i32 noundef 2) #11
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %127, label %122

122:                                              ; preds = %106
  %123 = load i32, ptr @verbose, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 7, i32 noundef %120) #12
  br label %131

127:                                              ; preds = %106
  %128 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %129 = and i8 %128, 15
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %143, label %132

131:                                              ; preds = %125, %122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %138

132:                                              ; preds = %127
  %133 = load i32, ptr %1, align 4
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %132
  %137 = or i32 %133, 16
  store i32 %137, ptr %1, align 4
  br label %143

138:                                              ; preds = %131, %102, %61, %55
  %139 = load i32, ptr @verbose, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_read_status) #12
  br label %143

143:                                              ; preds = %141, %138, %136, %132, %127
  %144 = phi i32 [ 0, %136 ], [ 0, %132 ], [ 0, %127 ], [ -121, %138 ], [ -121, %141 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [1 x i8], align 1
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #11
  store i8 16, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #11
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #11
  %20 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #11, !annotation !8
  %21 = getelementptr inbounds %struct.mb86a16_state, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %17, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %20, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %28 = load i8, ptr %22, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %32, align 4
  %33 = load ptr, ptr %19, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %17, i32 noundef 2) #11
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = load i32, ptr @verbose, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 16, i32 noundef %34) #12
  br label %58

41:                                               ; preds = %2
  %42 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 17, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  %43 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %43, i8 0, i32 16, i1 false) #11, !annotation !8
  %44 = load ptr, ptr %21, align 4
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %14, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %47, align 2
  store i16 1, ptr %43, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %50 = load i8, ptr %44, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %54, align 4
  %55 = load ptr, ptr %19, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %14, i32 noundef 2) #11
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %64, label %59

58:                                               ; preds = %39, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  br label %183

59:                                               ; preds = %41
  %60 = load i32, ptr @verbose, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 17, i32 noundef %56) #12
  br label %81

64:                                               ; preds = %41
  %65 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 18, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  %66 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %66, i8 0, i32 16, i1 false) #11, !annotation !8
  %67 = load ptr, ptr %21, align 4
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %11, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %70, align 2
  store i16 1, ptr %66, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %73 = load i8, ptr %67, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %77, align 4
  %78 = load ptr, ptr %19, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %11, i32 noundef 2) #11
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %87, label %82

81:                                               ; preds = %62, %59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  br label %183

82:                                               ; preds = %64
  %83 = load i32, ptr @verbose, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %82
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 18, i32 noundef %79) #12
  br label %104

87:                                               ; preds = %64
  %88 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 19, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %89 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %89, i8 0, i32 16, i1 false) #11, !annotation !8
  %90 = load ptr, ptr %21, align 4
  %91 = load i8, ptr %90, align 4
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %8, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %93, align 2
  store i16 1, ptr %89, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %94, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %96 = load i8, ptr %90, align 4
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %95, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %98, align 2
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %100, align 4
  %101 = load ptr, ptr %19, align 4
  %102 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %8, i32 noundef 2) #11
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %110, label %105

104:                                              ; preds = %85, %82
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  br label %183

105:                                              ; preds = %87
  %106 = load i32, ptr @verbose, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %127, label %108

108:                                              ; preds = %105
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 19, i32 noundef %102) #12
  br label %127

110:                                              ; preds = %87
  %111 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 20, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %112 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %112, i8 0, i32 16, i1 false) #11, !annotation !8
  %113 = load ptr, ptr %21, align 4
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %5, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %116, align 2
  store i16 1, ptr %112, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %117, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %119 = load i8, ptr %113, align 4
  %120 = zext i8 %119 to i16
  store i16 %120, ptr %118, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %121, align 2
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %122, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %123, align 4
  %124 = load ptr, ptr %19, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %5, i32 noundef 2) #11
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %133, label %128

127:                                              ; preds = %108, %105
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  br label %183

128:                                              ; preds = %110
  %129 = load i32, ptr @verbose, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 20, i32 noundef %125) #12
  br label %137

133:                                              ; preds = %110
  %134 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %135 = and i8 %42, 4
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %188, label %138

137:                                              ; preds = %131, %128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %183

138:                                              ; preds = %133
  %139 = and i8 %65, 31
  %140 = zext i8 %139 to i32
  store i32 %140, ptr %1, align 4
  %141 = load i32, ptr @verbose, align 4
  %142 = icmp ugt i32 %141, 3
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mb86a16_read_ber, i32 noundef %140) #12
  br label %145

145:                                              ; preds = %143, %138
  %146 = and i8 %42, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %167, label %148

148:                                              ; preds = %145
  %149 = lshr i8 %42, 3
  %150 = zext i8 %134 to i32
  %151 = zext i8 %111 to i32
  %152 = shl nuw nsw i32 %150, 16
  %153 = shl nuw nsw i32 %151, 8
  %154 = zext i8 %88 to i32
  %155 = or i32 %153, %154
  %156 = or i32 %155, %152
  %157 = and i8 %149, 3
  %158 = xor i8 %157, 2
  %159 = zext i8 %158 to i32
  %160 = getelementptr inbounds [4 x i32], ptr @switch.table.mb86a16_read_ber, i32 0, i32 %159
  %161 = load i32, ptr %160, align 4
  %162 = udiv i32 %156, %161
  store i32 %162, ptr %1, align 4
  %163 = load i32, ptr @verbose, align 4
  %164 = icmp ugt i32 %163, 3
  br i1 %164, label %165, label %188

165:                                              ; preds = %148
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.mb86a16_read_ber, i32 noundef %162) #12
  br label %188

167:                                              ; preds = %145
  %168 = zext i8 %134 to i32
  %169 = zext i8 %111 to i32
  %170 = shl nuw nsw i32 %168, 16
  %171 = shl nuw nsw i32 %169, 8
  %172 = zext i8 %88 to i32
  %173 = or i32 %171, %172
  %174 = or i32 %173, %170
  %175 = and i8 %42, 2
  %176 = icmp eq i8 %175, 0
  %177 = select i1 %176, i32 18, i32 26
  %178 = udiv i32 %174, %177
  store i32 %178, ptr %1, align 4
  %179 = load i32, ptr @verbose, align 4
  %180 = icmp ugt i32 %179, 3
  br i1 %180, label %181, label %188

181:                                              ; preds = %167
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.mb86a16_read_ber, i32 noundef %178) #12
  br label %188

183:                                              ; preds = %137, %127, %104, %81, %58
  %184 = load i32, ptr @verbose, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_read_ber) #12
  br label %188

188:                                              ; preds = %186, %183, %181, %167, %165, %148, %133
  %189 = phi i32 [ 0, %167 ], [ 0, %148 ], [ 0, %165 ], [ 0, %181 ], [ 0, %133 ], [ -121, %183 ], [ -121, %186 ]
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  store i16 0, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 21, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #11, !annotation !8
  %9 = getelementptr inbounds %struct.mb86a16_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #11
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %48

28:                                               ; preds = %2
  %29 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %30 = xor i8 %29, -1
  %31 = zext i8 %30 to i16
  %32 = mul nuw nsw i16 %31, 100
  %33 = lshr i16 %32, 8
  store i16 %33, ptr %1, align 2
  %34 = load i32, ptr @verbose, align 4
  %35 = icmp ugt i32 %34, 3
  br i1 %35, label %42, label %45

36:                                               ; preds = %24
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 21, i32 noundef %22) #12
  %38 = load i32, ptr @verbose, align 4
  %39 = icmp eq i32 %38, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_read_signal_strength) #12
  br label %48

42:                                               ; preds = %28
  %43 = zext i16 %33 to i32
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mb86a16_read_signal_strength, i32 noundef %43) #12
  br label %45

45:                                               ; preds = %42, %28
  %46 = zext i8 %29 to i16
  %47 = or i16 %46, -256
  store i16 %47, ptr %1, align 2
  br label %48

48:                                               ; preds = %45, %40, %36, %27
  %49 = phi i32 [ 0, %45 ], [ -121, %36 ], [ -121, %40 ], [ -121, %27 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  store i16 0, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 38, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #11, !annotation !8
  %9 = getelementptr inbounds %struct.mb86a16_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #11
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %94

28:                                               ; preds = %2
  %29 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %30 = icmp ult i8 %29, 35
  br i1 %30, label %37, label %42

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 38, i32 noundef %22) #12
  %33 = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %94, label %35

35:                                               ; preds = %31
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_read_snr) #12
  br label %94

37:                                               ; preds = %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %28
  %38 = phi i32 [ 0, %28 ], [ 1, %42 ], [ 2, %44 ], [ 3, %46 ], [ 4, %48 ], [ 5, %50 ], [ 6, %52 ], [ 7, %54 ], [ 8, %56 ], [ 9, %58 ], [ 10, %60 ], [ 11, %62 ], [ 12, %64 ], [ 13, %66 ], [ 14, %68 ], [ 15, %70 ], [ 16, %72 ], [ 17, %74 ], [ 18, %76 ], [ 19, %78 ], [ 20, %80 ]
  %39 = getelementptr [21 x %struct.cnr], ptr @cnr_tab, i32 0, i32 %38, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %1, align 2
  br label %82

42:                                               ; preds = %28
  %43 = icmp ult i8 %29, 40
  br i1 %43, label %37, label %44

44:                                               ; preds = %42
  %45 = icmp ult i8 %29, 50
  br i1 %45, label %37, label %46

46:                                               ; preds = %44
  %47 = icmp ult i8 %29, 60
  br i1 %47, label %37, label %48

48:                                               ; preds = %46
  %49 = icmp ult i8 %29, 70
  br i1 %49, label %37, label %50

50:                                               ; preds = %48
  %51 = icmp ult i8 %29, 80
  br i1 %51, label %37, label %52

52:                                               ; preds = %50
  %53 = icmp ult i8 %29, 92
  br i1 %53, label %37, label %54

54:                                               ; preds = %52
  %55 = icmp ult i8 %29, 103
  br i1 %55, label %37, label %56

56:                                               ; preds = %54
  %57 = icmp ult i8 %29, 115
  br i1 %57, label %37, label %58

58:                                               ; preds = %56
  %59 = icmp ult i8 %29, -118
  br i1 %59, label %37, label %60

60:                                               ; preds = %58
  %61 = icmp ult i8 %29, -94
  br i1 %61, label %37, label %62

62:                                               ; preds = %60
  %63 = icmp ult i8 %29, -76
  br i1 %63, label %37, label %64

64:                                               ; preds = %62
  %65 = icmp ult i8 %29, -71
  br i1 %65, label %37, label %66

66:                                               ; preds = %64
  %67 = icmp ult i8 %29, -67
  br i1 %67, label %37, label %68

68:                                               ; preds = %66
  %69 = icmp ult i8 %29, -61
  br i1 %69, label %37, label %70

70:                                               ; preds = %68
  %71 = icmp ult i8 %29, -57
  br i1 %71, label %37, label %72

72:                                               ; preds = %70
  %73 = icmp ult i8 %29, -55
  br i1 %73, label %37, label %74

74:                                               ; preds = %72
  %75 = icmp eq i8 %29, -55
  br i1 %75, label %37, label %76

76:                                               ; preds = %74
  %77 = icmp ult i8 %29, -53
  br i1 %77, label %37, label %78

78:                                               ; preds = %76
  %79 = icmp ult i8 %29, -51
  br i1 %79, label %37, label %80

80:                                               ; preds = %78
  %81 = icmp ult i8 %29, -48
  br i1 %81, label %37, label %82

82:                                               ; preds = %80, %37
  %83 = load i32, ptr @verbose, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i16, ptr %1, align 2
  %87 = zext i16 %86 to i32
  %88 = mul nuw nsw i32 %87, 100
  %89 = udiv i32 %88, 28
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.mb86a16_read_snr, i32 noundef %87, i32 noundef %89) #12
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i16, ptr %1, align 2
  %93 = add i16 %92, -256
  store i16 %93, ptr %1, align 2
  br label %94

94:                                               ; preds = %91, %35, %31, %27
  %95 = phi i32 [ 0, %91 ], [ -121, %31 ], [ -121, %35 ], [ -121, %27 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 82, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #11, !annotation !8
  %9 = getelementptr inbounds %struct.mb86a16_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #11
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %37

28:                                               ; preds = %2
  %29 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %30 = zext i8 %29 to i32
  store i32 %30, ptr %1, align 4
  br label %37

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 82, i32 noundef %22) #12
  %33 = load i32, ptr @verbose, align 4
  %34 = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_read_ucblocks) #12
  br label %37

37:                                               ; preds = %35, %31, %28, %27
  %38 = phi i32 [ 0, %28 ], [ -121, %31 ], [ -121, %35 ], [ -121, %27 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i8 22, ptr %13, align 2
  %17 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 -128, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %18 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %18, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.mb86a16_state, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %14, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %24, align 4
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp ugt i32 %25, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8, ptr %20, align 4
  %29 = zext i8 %28 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %29, i32 noundef 22, i32 noundef 128) #12
  br label %31

31:                                               ; preds = %27, %2
  %32 = load ptr, ptr %16, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %14, i32 noundef 1) #11
  %34 = icmp eq i32 %33, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  br i1 %34, label %35, label %147

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i8 30, ptr %11, align 2
  %36 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %37 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %37, align 4, !annotation !8
  %38 = load ptr, ptr %19, align 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %12, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %42, align 4
  %43 = load i32, ptr @verbose, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i8, ptr %38, align 4
  %47 = zext i8 %46 to i32
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %47, i32 noundef 30, i32 noundef 0) #12
  br label %49

49:                                               ; preds = %45, %35
  %50 = load ptr, ptr %16, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %12, i32 noundef 1) #11
  %52 = icmp eq i32 %51, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  br i1 %52, label %53, label %147

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i8 32, ptr %9, align 2
  %54 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 4, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %55 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %55, align 4, !annotation !8
  %56 = load ptr, ptr %19, align 4
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %10, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %60, align 4
  %61 = load i32, ptr @verbose, align 4
  %62 = icmp ugt i32 %61, 3
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i8, ptr %56, align 4
  %65 = zext i8 %64 to i32
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %65, i32 noundef 32, i32 noundef 4) #12
  br label %67

67:                                               ; preds = %63, %53
  %68 = load ptr, ptr %16, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %10, i32 noundef 1) #11
  %70 = icmp eq i32 %69, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  br i1 %70, label %71, label %147

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = add i8 %73, -6
  %75 = icmp ult i8 %74, -2
  br i1 %75, label %152, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, ptr %7, i32 1
  %78 = getelementptr inbounds i8, ptr %8, i32 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  br label %81

81:                                               ; preds = %101, %76
  %82 = phi i32 [ 0, %76 ], [ %103, %101 ]
  %83 = phi i8 [ 24, %76 ], [ %102, %101 ]
  %84 = getelementptr [6 x i8], ptr %1, i32 0, i32 %82
  %85 = load i8, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i8 %83, ptr %7, align 2
  store i8 %85, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  store i32 0, ptr %78, align 4, !annotation !8
  %86 = load ptr, ptr %19, align 4
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %8, align 4
  store i16 0, ptr %79, align 2
  store i16 2, ptr %78, align 4
  store ptr %7, ptr %80, align 4
  %89 = load i32, ptr @verbose, align 4
  %90 = icmp ugt i32 %89, 3
  br i1 %90, label %91, label %97

91:                                               ; preds = %81
  %92 = load i8, ptr %86, align 4
  %93 = zext i8 %92 to i32
  %94 = zext i8 %83 to i32
  %95 = zext i8 %85 to i32
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %93, i32 noundef %94, i32 noundef %95) #12
  br label %97

97:                                               ; preds = %91, %81
  %98 = load ptr, ptr %16, align 4
  %99 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %8, i32 noundef 1) #11
  %100 = icmp eq i32 %99, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br i1 %100, label %101, label %147

101:                                              ; preds = %97
  %102 = add i8 %83, 1
  %103 = add nuw nsw i32 %82, 1
  %104 = load i8, ptr %72, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ult i32 %103, %105
  br i1 %106, label %81, label %107

107:                                              ; preds = %101
  %108 = trunc i32 %103 to i8
  %109 = add i8 %108, -112
  %110 = call i32 @msleep_interruptible(i32 noundef 10) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 22, ptr %5, align 2
  %111 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %109, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %112 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %112, align 4, !annotation !8
  %113 = load ptr, ptr %19, align 4
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %6, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %116, align 2
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %117, align 4
  %118 = load i32, ptr @verbose, align 4
  %119 = icmp ugt i32 %118, 3
  br i1 %119, label %120, label %125

120:                                              ; preds = %107
  %121 = load i8, ptr %113, align 4
  %122 = zext i8 %121 to i32
  %123 = zext i8 %109 to i32
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %122, i32 noundef 22, i32 noundef %123) #12
  br label %125

125:                                              ; preds = %120, %107
  %126 = load ptr, ptr %16, align 4
  %127 = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %6, i32 noundef 1) #11
  %128 = icmp eq i32 %127, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br i1 %128, label %129, label %147

129:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 30, ptr %3, align 2
  %130 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %130, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %131 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %131, align 4, !annotation !8
  %132 = load ptr, ptr %19, align 4
  %133 = load i8, ptr %132, align 4
  %134 = zext i8 %133 to i16
  store i16 %134, ptr %4, align 4
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %135, align 2
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %136, align 4
  %137 = load i32, ptr @verbose, align 4
  %138 = icmp ugt i32 %137, 3
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load i8, ptr %132, align 4
  %141 = zext i8 %140 to i32
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %141, i32 noundef 30, i32 noundef 1) #12
  br label %143

143:                                              ; preds = %139, %129
  %144 = load ptr, ptr %16, align 4
  %145 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %4, i32 noundef 1) #11
  %146 = icmp eq i32 %145, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br i1 %146, label %152, label %147

147:                                              ; preds = %143, %125, %97, %67, %49, %31
  %148 = load i32, ptr @verbose, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_send_diseqc_msg) #12
  br label %152

152:                                              ; preds = %150, %147, %143, %71
  %153 = phi i32 [ -22, %71 ], [ 0, %143 ], [ -121, %147 ], [ -121, %150 ]
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_send_diseqc_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
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
  switch i32 %1, label %92 [
    i32 0, label %13
    i32 1, label %50
  ]

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i8 22, ptr %9, align 2
  %14 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 -104, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %15 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.mb86a16_state, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %10, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %21, align 4
  %22 = load i32, ptr @verbose, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i8, ptr %17, align 4
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %26, i32 noundef 22, i32 noundef 152) #12
  br label %28

28:                                               ; preds = %24, %13
  %29 = load ptr, ptr %12, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %10, i32 noundef 1) #11
  %31 = icmp eq i32 %30, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  br i1 %31, label %32, label %87

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i8 30, ptr %7, align 2
  %33 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 1, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %34 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = load ptr, ptr %16, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %8, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %39, align 4
  %40 = load i32, ptr @verbose, align 4
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i8, ptr %35, align 4
  %44 = zext i8 %43 to i32
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %44, i32 noundef 30, i32 noundef 1) #12
  br label %46

46:                                               ; preds = %42, %32
  %47 = load ptr, ptr %12, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %8, i32 noundef 1) #11
  %49 = icmp eq i32 %48, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br i1 %49, label %92, label %87

50:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 22, ptr %5, align 2
  %51 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -112, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %52 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %52, align 4, !annotation !8
  %53 = getelementptr inbounds %struct.mb86a16_state, ptr %12, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %6, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %58, align 4
  %59 = load i32, ptr @verbose, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i8, ptr %54, align 4
  %63 = zext i8 %62 to i32
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %63, i32 noundef 22, i32 noundef 144) #12
  br label %65

65:                                               ; preds = %61, %50
  %66 = load ptr, ptr %12, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %6, i32 noundef 1) #11
  %68 = icmp eq i32 %67, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 30, ptr %3, align 2
  %70 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %71 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %71, align 4, !annotation !8
  %72 = load ptr, ptr %53, align 4
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %4, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %76, align 4
  %77 = load i32, ptr @verbose, align 4
  %78 = icmp ugt i32 %77, 3
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i8, ptr %72, align 4
  %81 = zext i8 %80 to i32
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %81, i32 noundef 30, i32 noundef 1) #12
  br label %83

83:                                               ; preds = %79, %69
  %84 = load ptr, ptr %12, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %4, i32 noundef 1) #11
  %86 = icmp eq i32 %85, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br i1 %86, label %92, label %87

87:                                               ; preds = %83, %65, %46, %28
  %88 = load i32, ptr @verbose, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_send_diseqc_burst) #12
  br label %92

92:                                               ; preds = %90, %87, %83, %46, %2
  %93 = phi i32 [ 0, %83 ], [ 0, %46 ], [ 0, %2 ], [ -121, %87 ], [ -121, %90 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
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
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  switch i32 %1, label %132 [
    i32 0, label %17
    i32 1, label %72
  ]

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i8 32, ptr %13, align 2
  %18 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %19 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %19, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.mb86a16_state, ptr %16, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %14, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %25, align 4
  %26 = load i32, ptr @verbose, align 4
  %27 = icmp ugt i32 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i8, ptr %21, align 4
  %30 = zext i8 %29 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %30, i32 noundef 32, i32 noundef 0) #12
  br label %32

32:                                               ; preds = %28, %17
  %33 = load ptr, ptr %16, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %14, i32 noundef 1) #11
  %35 = icmp eq i32 %34, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  br i1 %35, label %36, label %127

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i8 22, ptr %11, align 2
  %37 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -96, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %38 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  %39 = load ptr, ptr %20, align 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %12, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %43, align 4
  %44 = load i32, ptr @verbose, align 4
  %45 = icmp ugt i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i8, ptr %39, align 4
  %48 = zext i8 %47 to i32
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %48, i32 noundef 22, i32 noundef 160) #12
  br label %50

50:                                               ; preds = %46, %36
  %51 = load ptr, ptr %16, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %12, i32 noundef 1) #11
  %53 = icmp eq i32 %52, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  br i1 %53, label %54, label %127

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i8 30, ptr %9, align 2
  %55 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 1, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %56 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %56, align 4, !annotation !8
  %57 = load ptr, ptr %20, align 4
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %10, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %61, align 4
  %62 = load i32, ptr @verbose, align 4
  %63 = icmp ugt i32 %62, 3
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i8, ptr %57, align 4
  %66 = zext i8 %65 to i32
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %66, i32 noundef 30, i32 noundef 1) #12
  br label %68

68:                                               ; preds = %64, %54
  %69 = load ptr, ptr %16, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %10, i32 noundef 1) #11
  %71 = icmp eq i32 %70, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  br i1 %71, label %132, label %127

72:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i8 32, ptr %7, align 2
  %73 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 4, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %74 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %74, align 4, !annotation !8
  %75 = getelementptr inbounds %struct.mb86a16_state, ptr %16, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load i8, ptr %76, align 4
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %8, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %80, align 4
  %81 = load i32, ptr @verbose, align 4
  %82 = icmp ugt i32 %81, 3
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load i8, ptr %76, align 4
  %85 = zext i8 %84 to i32
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %85, i32 noundef 32, i32 noundef 4) #12
  br label %87

87:                                               ; preds = %83, %72
  %88 = load ptr, ptr %16, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %8, i32 noundef 1) #11
  %90 = icmp eq i32 %89, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 22, ptr %5, align 2
  %92 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -128, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %93 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %93, align 4, !annotation !8
  %94 = load ptr, ptr %75, align 4
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %6, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %97, align 2
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %98, align 4
  %99 = load i32, ptr @verbose, align 4
  %100 = icmp ugt i32 %99, 3
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i8, ptr %94, align 4
  %103 = zext i8 %102 to i32
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %103, i32 noundef 22, i32 noundef 128) #12
  br label %105

105:                                              ; preds = %101, %91
  %106 = load ptr, ptr %16, align 4
  %107 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %6, i32 noundef 1) #11
  %108 = icmp eq i32 %107, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 30, ptr %3, align 2
  %110 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %111 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %111, align 4, !annotation !8
  %112 = load ptr, ptr %75, align 4
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %4, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %116, align 4
  %117 = load i32, ptr @verbose, align 4
  %118 = icmp ugt i32 %117, 3
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load i8, ptr %112, align 4
  %121 = zext i8 %120 to i32
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %121, i32 noundef 30, i32 noundef 0) #12
  br label %123

123:                                              ; preds = %119, %109
  %124 = load ptr, ptr %16, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %4, i32 noundef 1) #11
  %126 = icmp eq i32 %125, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br i1 %126, label %132, label %127

127:                                              ; preds = %123, %105, %87, %68, %50, %32
  %128 = load i32, ptr @verbose, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_set_tone) #12
  br label %132

132:                                              ; preds = %130, %127, %123, %68, %2
  %133 = phi i32 [ -22, %2 ], [ 0, %123 ], [ 0, %68 ], [ -121, %127 ], [ -121, %130 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a16_search(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = udiv i32 %5, 1000
  %7 = getelementptr inbounds %struct.mb86a16_state, ptr %4, i32 0, i32 3
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = udiv i32 %9, 1000
  %11 = getelementptr inbounds %struct.mb86a16_state, ptr %4, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = tail call fastcc i32 @mb86a16_set_fe(ptr noundef %4)
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr @verbose, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = select i1 %13, ptr @.str.28, ptr @.str.32
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %17, ptr noundef nonnull @__func__.mb86a16_search) #12
  br label %19

19:                                               ; preds = %16, %1
  %20 = select i1 %13, i32 1, i32 4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb86a16_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 %1, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  %15 = load i32, ptr @verbose, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i8, ptr %9, align 4
  %19 = zext i8 %18 to i32
  %20 = zext i8 %1 to i32
  %21 = zext i8 %2 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %19, i32 noundef %20, i32 noundef %21) #12
  br label %23

23:                                               ; preds = %17, %3
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 1) #11
  %26 = icmp eq i32 %25, 1
  %27 = select i1 %26, i32 0, i32 -121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb86a16_set_fe(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [1 x i8], align 1
  %14 = alloca [1 x i8], align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [1 x i8], align 1
  %25 = alloca [1 x i8], align 1
  %26 = alloca [2 x %struct.i2c_msg], align 4
  %27 = alloca [2 x i8], align 2
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [3 x i8], align 1
  %34 = alloca [1 x i8], align 1
  %35 = alloca [1 x i8], align 1
  %36 = alloca [2 x %struct.i2c_msg], align 4
  %37 = alloca [2 x i8], align 2
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [2 x i8], align 2
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [2 x i8], align 2
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [2 x i8], align 2
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [2 x i8], align 2
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [2 x i8], align 2
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [2 x i8], align 2
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [2 x i8], align 2
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [2 x i8], align 2
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [2 x i8], align 2
  %56 = alloca %struct.i2c_msg, align 4
  %57 = alloca [2 x i8], align 2
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [60 x i32], align 4
  %60 = alloca i8, align 1
  %61 = alloca i8, align 1
  %62 = alloca i8, align 1
  %63 = alloca [20 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %59) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %60) #11
  store i8 0, ptr %60, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %61) #11
  store i8 0, ptr %61, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %62) #11
  store i8 0, ptr %62, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %63) #11
  %64 = load i32, ptr @verbose, align 4
  %65 = icmp ugt i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %1
  %67 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.mb86a16_set_fe, i32 noundef %68, i32 noundef %70) #12
  br label %72

72:                                               ; preds = %66, %1
  %73 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(240) %59, i8 -1, i32 240, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %63, i8 0, i32 80, i1 false)
  %75 = sdiv i32 %74, 4
  %76 = getelementptr inbounds i8, ptr %57, i32 1
  %77 = getelementptr inbounds i8, ptr %58, i32 4
  %78 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  %81 = getelementptr inbounds i8, ptr %55, i32 1
  %82 = getelementptr inbounds i8, ptr %56, i32 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  %85 = getelementptr inbounds i8, ptr %53, i32 1
  %86 = getelementptr inbounds i8, ptr %54, i32 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  %89 = getelementptr inbounds i8, ptr %51, i32 1
  %90 = getelementptr inbounds i8, ptr %52, i32 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  %93 = getelementptr inbounds i8, ptr %49, i32 1
  %94 = getelementptr inbounds i8, ptr %50, i32 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  %97 = getelementptr inbounds i8, ptr %47, i32 1
  %98 = getelementptr inbounds i8, ptr %48, i32 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  %101 = getelementptr inbounds i8, ptr %45, i32 1
  %102 = getelementptr inbounds i8, ptr %46, i32 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  %105 = getelementptr inbounds i8, ptr %43, i32 1
  %106 = getelementptr inbounds i8, ptr %44, i32 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  %109 = getelementptr inbounds i8, ptr %41, i32 1
  %110 = getelementptr inbounds i8, ptr %42, i32 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  %113 = getelementptr inbounds i8, ptr %39, i32 1
  %114 = getelementptr inbounds i8, ptr %40, i32 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  %117 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 3
  %118 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 5
  %119 = getelementptr inbounds i8, ptr %37, i32 1
  %120 = getelementptr inbounds i8, ptr %38, i32 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  %123 = getelementptr inbounds i8, ptr %36, i32 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 1
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 1, i32 1
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 1, i32 2
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 1, i32 3
  %130 = getelementptr inbounds i32, ptr %59, i32 30
  %131 = mul nsw i32 %75, -2
  %132 = shl nsw i32 %75, 1
  %133 = mul nsw i32 %75, 3
  %134 = sdiv i32 %133, 2
  %135 = getelementptr inbounds i8, ptr %29, i32 1
  %136 = getelementptr inbounds i8, ptr %30, i32 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  %139 = getelementptr inbounds i8, ptr %31, i32 1
  %140 = getelementptr inbounds i8, ptr %32, i32 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  %143 = getelementptr inbounds i8, ptr %27, i32 1
  %144 = getelementptr inbounds i8, ptr %28, i32 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  %147 = getelementptr inbounds i8, ptr %26, i32 4
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 1
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 2
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 3
  %154 = getelementptr inbounds [3 x i8], ptr %33, i32 0, i32 1
  %155 = getelementptr inbounds [3 x i8], ptr %33, i32 0, i32 2
  %156 = getelementptr inbounds i8, ptr %22, i32 1
  %157 = getelementptr inbounds i8, ptr %23, i32 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  %160 = getelementptr inbounds i8, ptr %20, i32 1
  %161 = getelementptr inbounds i8, ptr %21, i32 4
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  %164 = getelementptr inbounds i8, ptr %18, i32 1
  %165 = getelementptr inbounds i8, ptr %19, i32 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  %168 = getelementptr inbounds i8, ptr %16, i32 1
  %169 = getelementptr inbounds i8, ptr %17, i32 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  %172 = getelementptr inbounds i8, ptr %15, i32 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  %179 = getelementptr inbounds i8, ptr %12, i32 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  %186 = getelementptr inbounds i8, ptr %8, i32 1
  %187 = getelementptr inbounds i8, ptr %9, i32 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %190 = getelementptr inbounds i32, ptr %59, i32 29
  br label %194

191:                                              ; preds = %1756
  %192 = add nuw nsw i32 %195, 1
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %1767, label %194

194:                                              ; preds = %191, %72
  %195 = phi i32 [ 0, %72 ], [ %192, %191 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #11
  store i8 50, ptr %57, align 2
  store i8 2, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #11
  store i32 2, ptr %77, align 4, !annotation !8
  %196 = load ptr, ptr %78, align 4
  %197 = load i8, ptr %196, align 4
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %58, align 4
  store i16 0, ptr %79, align 2
  store ptr %57, ptr %80, align 4
  %199 = load i32, ptr @verbose, align 4
  %200 = icmp ugt i32 %199, 3
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load i8, ptr %196, align 4
  %203 = zext i8 %202 to i32
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %203, i32 noundef 50, i32 noundef 2) #12
  br label %205

205:                                              ; preds = %201, %194
  %206 = load ptr, ptr %0, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %58, i32 noundef 1) #11
  %208 = icmp eq i32 %207, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #11
  %209 = load i32, ptr @verbose, align 4
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %208, i1 true, i1 %210
  br i1 %211, label %215, label %212

212:                                              ; preds = %205
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.SEQ_set) #12
  %214 = load i32, ptr @verbose, align 4
  br label %215

215:                                              ; preds = %212, %205
  %216 = phi i32 [ %209, %205 ], [ %214, %212 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #11
  store i8 6, ptr %55, align 2
  store i8 -33, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #11
  store i32 2, ptr %82, align 4, !annotation !8
  %217 = load ptr, ptr %78, align 4
  %218 = load i8, ptr %217, align 4
  %219 = zext i8 %218 to i16
  store i16 %219, ptr %56, align 4
  store i16 0, ptr %83, align 2
  store ptr %55, ptr %84, align 4
  %220 = icmp ugt i32 %216, 3
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load i8, ptr %217, align 4
  %223 = zext i8 %222 to i32
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %223, i32 noundef 6, i32 noundef 223) #12
  br label %225

225:                                              ; preds = %221, %215
  %226 = load ptr, ptr %0, align 4
  %227 = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %56, i32 noundef 1) #11
  %228 = icmp eq i32 %227, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #11
  %229 = load i32, ptr @verbose, align 4
  %230 = icmp eq i32 %229, 0
  %231 = select i1 %228, i1 true, i1 %230
  br i1 %231, label %235, label %232

232:                                              ; preds = %225
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.iq_vt_set) #12
  %234 = load i32, ptr @verbose, align 4
  br label %235

235:                                              ; preds = %232, %225
  %236 = phi i32 [ %229, %225 ], [ %234, %232 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #11
  store i8 10, ptr %53, align 2
  store i8 61, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #11
  store i32 2, ptr %86, align 4, !annotation !8
  %237 = load ptr, ptr %78, align 4
  %238 = load i8, ptr %237, align 4
  %239 = zext i8 %238 to i16
  store i16 %239, ptr %54, align 4
  store i16 0, ptr %87, align 2
  store ptr %53, ptr %88, align 4
  %240 = icmp ugt i32 %236, 3
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i8, ptr %237, align 4
  %243 = zext i8 %242 to i32
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %243, i32 noundef 10, i32 noundef 61) #12
  br label %245

245:                                              ; preds = %241, %235
  %246 = load ptr, ptr %0, align 4
  %247 = call i32 @i2c_transfer(ptr noundef %246, ptr noundef nonnull %54, i32 noundef 1) #11
  %248 = icmp eq i32 %247, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #11
  br i1 %248, label %254, label %249

249:                                              ; preds = %245
  %250 = load i32, ptr @verbose, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %1824, label %252

252:                                              ; preds = %249
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stlp_set) #12
  br label %326

254:                                              ; preds = %245
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %255(i32 noundef 21474800) #11
  %256 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %326

258:                                              ; preds = %254
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %259(i32 noundef 21474800) #11
  %260 = call fastcc i32 @afcofs_data_set(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %326

262:                                              ; preds = %258
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %263(i32 noundef 21474800) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #11
  store i8 8, ptr %51, align 2
  store i8 22, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #11
  store i32 2, ptr %90, align 4, !annotation !8
  %264 = load ptr, ptr %78, align 4
  %265 = load i8, ptr %264, align 4
  %266 = zext i8 %265 to i16
  store i16 %266, ptr %52, align 4
  store i16 0, ptr %91, align 2
  store ptr %51, ptr %92, align 4
  %267 = load i32, ptr @verbose, align 4
  %268 = icmp ugt i32 %267, 3
  br i1 %268, label %269, label %273

269:                                              ; preds = %262
  %270 = load i8, ptr %264, align 4
  %271 = zext i8 %270 to i32
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %271, i32 noundef 8, i32 noundef 22) #12
  br label %273

273:                                              ; preds = %269, %262
  %274 = load ptr, ptr %0, align 4
  %275 = call i32 @i2c_transfer(ptr noundef %274, ptr noundef nonnull %52, i32 noundef 1) #11
  %276 = icmp eq i32 %275, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #11
  br i1 %276, label %277, label %326

277:                                              ; preds = %273
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #11
  store i8 47, ptr %49, align 2
  store i8 33, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #11
  store i32 2, ptr %94, align 4, !annotation !8
  %278 = load ptr, ptr %78, align 4
  %279 = load i8, ptr %278, align 4
  %280 = zext i8 %279 to i16
  store i16 %280, ptr %50, align 4
  store i16 0, ptr %95, align 2
  store ptr %49, ptr %96, align 4
  %281 = load i32, ptr @verbose, align 4
  %282 = icmp ugt i32 %281, 3
  br i1 %282, label %283, label %287

283:                                              ; preds = %277
  %284 = load i8, ptr %278, align 4
  %285 = zext i8 %284 to i32
  %286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %285, i32 noundef 47, i32 noundef 33) #12
  br label %287

287:                                              ; preds = %283, %277
  %288 = load ptr, ptr %0, align 4
  %289 = call i32 @i2c_transfer(ptr noundef %288, ptr noundef nonnull %50, i32 noundef 1) #11
  %290 = icmp eq i32 %289, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #11
  br i1 %290, label %291, label %326

291:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #11
  store i8 57, ptr %47, align 2
  store i8 56, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #11
  store i32 2, ptr %98, align 4, !annotation !8
  %292 = load ptr, ptr %78, align 4
  %293 = load i8, ptr %292, align 4
  %294 = zext i8 %293 to i16
  store i16 %294, ptr %48, align 4
  store i16 0, ptr %99, align 2
  store ptr %47, ptr %100, align 4
  %295 = load i32, ptr @verbose, align 4
  %296 = icmp ugt i32 %295, 3
  br i1 %296, label %297, label %301

297:                                              ; preds = %291
  %298 = load i8, ptr %292, align 4
  %299 = zext i8 %298 to i32
  %300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %299, i32 noundef 57, i32 noundef 56) #12
  br label %301

301:                                              ; preds = %297, %291
  %302 = load ptr, ptr %0, align 4
  %303 = call i32 @i2c_transfer(ptr noundef %302, ptr noundef nonnull %48, i32 noundef 1) #11
  %304 = icmp eq i32 %303, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #11
  br i1 %304, label %305, label %326

305:                                              ; preds = %301
  %306 = call fastcc i32 @mb86a16_write(ptr noundef %0, i8 noundef zeroext 61, i8 noundef zeroext 0) #11
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %326, label %308

308:                                              ; preds = %305
  %309 = call fastcc i32 @mb86a16_write(ptr noundef %0, i8 noundef zeroext 62, i8 noundef zeroext 28) #11
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %326, label %311

311:                                              ; preds = %308
  %312 = call fastcc i32 @mb86a16_write(ptr noundef %0, i8 noundef zeroext 63, i8 noundef zeroext 32) #11
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %326, label %314

314:                                              ; preds = %311
  %315 = call fastcc i32 @mb86a16_write(ptr noundef %0, i8 noundef zeroext 64, i8 noundef zeroext 30) #11
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %326, label %317

317:                                              ; preds = %314
  %318 = call fastcc i32 @mb86a16_write(ptr noundef %0, i8 noundef zeroext 65, i8 noundef zeroext 35) #11
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %317
  %321 = call fastcc i32 @mb86a16_write(ptr noundef %0, i8 noundef zeroext 84, i8 noundef zeroext -1) #11
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = call fastcc i32 @mb86a16_write(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %323, %320, %317, %314, %311, %308, %305, %301, %287, %273, %258, %254, %252
  %327 = load i32, ptr @verbose, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %1824, label %329

329:                                              ; preds = %326
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.initial_set) #12
  %331 = load i32, ptr @verbose, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %1824, label %333

333:                                              ; preds = %329
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

335:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #11
  store i8 45, ptr %45, align 2
  store i8 26, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #11
  store i32 2, ptr %102, align 4, !annotation !8
  %336 = load ptr, ptr %78, align 4
  %337 = load i8, ptr %336, align 4
  %338 = zext i8 %337 to i16
  store i16 %338, ptr %46, align 4
  store i16 0, ptr %103, align 2
  store ptr %45, ptr %104, align 4
  %339 = load i32, ptr @verbose, align 4
  %340 = icmp ugt i32 %339, 3
  br i1 %340, label %341, label %345

341:                                              ; preds = %335
  %342 = load i8, ptr %336, align 4
  %343 = zext i8 %342 to i32
  %344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %343, i32 noundef 45, i32 noundef 26) #12
  br label %345

345:                                              ; preds = %341, %335
  %346 = load ptr, ptr %0, align 4
  %347 = call i32 @i2c_transfer(ptr noundef %346, ptr noundef nonnull %46, i32 noundef 1) #11
  %348 = icmp eq i32 %347, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #11
  br i1 %348, label %358, label %349

349:                                              ; preds = %345
  %350 = load i32, ptr @verbose, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %1824, label %352

352:                                              ; preds = %349
  %353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.DAGC_data_set) #12
  %354 = load i32, ptr @verbose, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %1824, label %356

356:                                              ; preds = %352
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

358:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #11
  store i8 73, ptr %43, align 2
  store i8 122, ptr %105, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #11
  store i32 2, ptr %106, align 4, !annotation !8
  %359 = load ptr, ptr %78, align 4
  %360 = load i8, ptr %359, align 4
  %361 = zext i8 %360 to i16
  store i16 %361, ptr %44, align 4
  store i16 0, ptr %107, align 2
  store ptr %43, ptr %108, align 4
  %362 = load i32, ptr @verbose, align 4
  %363 = icmp ugt i32 %362, 3
  br i1 %363, label %364, label %368

364:                                              ; preds = %358
  %365 = load i8, ptr %359, align 4
  %366 = zext i8 %365 to i32
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %366, i32 noundef 73, i32 noundef 122) #12
  br label %368

368:                                              ; preds = %364, %358
  %369 = load ptr, ptr %0, align 4
  %370 = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %44, i32 noundef 1) #11
  %371 = icmp eq i32 %370, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #11
  br i1 %371, label %381, label %372

372:                                              ; preds = %368
  %373 = load i32, ptr @verbose, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %1824, label %375

375:                                              ; preds = %372
  %376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.EN_set) #12
  %377 = load i32, ptr @verbose, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %1824, label %379

379:                                              ; preds = %375
  %380 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

381:                                              ; preds = %368
  %382 = load i32, ptr %73, align 4
  %383 = call fastcc i32 @AFCEXEN_set(ptr noundef %0, i32 noundef 1, i32 noundef %382)
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %381
  %386 = load i32, ptr @verbose, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %1824, label %388

388:                                              ; preds = %385
  %389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

390:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #11
  store i8 54, ptr %41, align 2
  store i8 6, ptr %109, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #11
  store i32 2, ptr %110, align 4, !annotation !8
  %391 = load ptr, ptr %78, align 4
  %392 = load i8, ptr %391, align 4
  %393 = zext i8 %392 to i16
  store i16 %393, ptr %42, align 4
  store i16 0, ptr %111, align 2
  store ptr %41, ptr %112, align 4
  %394 = load i32, ptr @verbose, align 4
  %395 = icmp ugt i32 %394, 3
  br i1 %395, label %396, label %400

396:                                              ; preds = %390
  %397 = load i8, ptr %391, align 4
  %398 = zext i8 %397 to i32
  %399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %398, i32 noundef 54, i32 noundef 6) #12
  br label %400

400:                                              ; preds = %396, %390
  %401 = load ptr, ptr %0, align 4
  %402 = call i32 @i2c_transfer(ptr noundef %401, ptr noundef nonnull %42, i32 noundef 1) #11
  %403 = icmp eq i32 %402, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #11
  br i1 %403, label %413, label %404

404:                                              ; preds = %400
  %405 = load i32, ptr @verbose, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %1824, label %407

407:                                              ; preds = %404
  %408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.CNTM_set) #12
  %409 = load i32, ptr @verbose, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %1824, label %411

411:                                              ; preds = %407
  %412 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

413:                                              ; preds = %400
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #11
  store i8 51, ptr %39, align 2
  store i8 0, ptr %113, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #11
  store i32 2, ptr %114, align 4, !annotation !8
  %414 = load ptr, ptr %78, align 4
  %415 = load i8, ptr %414, align 4
  %416 = zext i8 %415 to i16
  store i16 %416, ptr %40, align 4
  store i16 0, ptr %115, align 2
  store ptr %39, ptr %116, align 4
  %417 = load i32, ptr @verbose, align 4
  %418 = icmp ugt i32 %417, 3
  br i1 %418, label %419, label %423

419:                                              ; preds = %413
  %420 = load i8, ptr %414, align 4
  %421 = zext i8 %420 to i32
  %422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %421, i32 noundef 51, i32 noundef 0) #12
  br label %423

423:                                              ; preds = %419, %413
  %424 = load ptr, ptr %0, align 4
  %425 = call i32 @i2c_transfer(ptr noundef %424, ptr noundef nonnull %40, i32 noundef 1) #11
  %426 = icmp eq i32 %425, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #11
  br i1 %426, label %436, label %427

427:                                              ; preds = %423
  %428 = load i32, ptr @verbose, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %1824, label %430

430:                                              ; preds = %427
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.S01T_set) #12
  %432 = load i32, ptr @verbose, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %1824, label %434

434:                                              ; preds = %430
  %435 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

436:                                              ; preds = %423
  %437 = load i32, ptr %73, align 4
  call fastcc void @smrt_info_get(ptr noundef %0, i32 noundef %437)
  %438 = load i32, ptr %73, align 4
  %439 = call fastcc i32 @smrt_set(ptr noundef %0, i32 noundef %438)
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %436
  %442 = load i32, ptr @verbose, align 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %1824, label %444

444:                                              ; preds = %441
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

446:                                              ; preds = %436
  %447 = load i32, ptr %73, align 4
  %448 = icmp slt i32 %447, 9376
  %449 = zext i1 %448 to i8
  %450 = load i32, ptr %117, align 4
  %451 = and i32 %450, 1
  %452 = icmp eq i32 %451, 0
  %453 = select i1 %448, i1 true, i1 %452
  %454 = add i32 %450, 1
  %455 = icmp sgt i32 %454, 2150
  %456 = add i32 %450, -1
  %457 = select i1 %455, i32 %456, i32 %454
  %458 = select i1 %453, i32 %450, i32 %457
  %459 = mul i32 %458, 1000
  %460 = sdiv i32 %447, 4
  %461 = add nsw i32 %460, 3000
  %462 = mul i32 %450, -1000
  br label %466

463:                                              ; preds = %471, %466
  %464 = phi i32 [ %468, %466 ], [ %472, %471 ]
  %465 = mul i32 %450, 1000
  br label %477

466:                                              ; preds = %471, %446
  %467 = phi i32 [ %459, %446 ], [ %469, %471 ]
  %468 = phi i32 [ 0, %446 ], [ %472, %471 ]
  %469 = add i32 %467, %75
  %470 = icmp sgt i32 %469, 2150000
  br i1 %470, label %463, label %471

471:                                              ; preds = %466
  %472 = add i32 %468, 1
  %473 = icmp ne i32 %469, 2150000
  %474 = add i32 %462, %469
  %475 = icmp slt i32 %474, %461
  %476 = select i1 %473, i1 %475, i1 false
  br i1 %476, label %466, label %463

477:                                              ; preds = %482, %463
  %478 = phi i32 [ %459, %463 ], [ %480, %482 ]
  %479 = phi i32 [ 0, %463 ], [ %483, %482 ]
  %480 = sub i32 %478, %75
  %481 = icmp slt i32 %480, 950000
  br i1 %481, label %488, label %482

482:                                              ; preds = %477
  %483 = add i32 %479, -1
  %484 = icmp ne i32 %480, 950000
  %485 = sub i32 %465, %480
  %486 = icmp slt i32 %485, %461
  %487 = select i1 %484, i1 %486, i1 false
  br i1 %487, label %477, label %488

488:                                              ; preds = %482, %477
  %489 = phi i32 [ %479, %477 ], [ %483, %482 ]
  %490 = sdiv i32 %447, 2
  %491 = add nsw i32 %490, 8000
  %492 = sdiv i32 %491, %447
  %493 = icmp eq i32 %492, 0
  %494 = select i1 %493, i32 1, i32 %492
  %495 = load i8, ptr %60, align 1
  %496 = or i32 %489, %464
  %497 = icmp eq i32 %496, 0
  br label %498

498:                                              ; preds = %1059, %488
  %499 = phi i32 [ 0, %488 ], [ %1081, %1059 ]
  %500 = phi i32 [ 0, %488 ], [ %1087, %1059 ]
  %501 = phi i32 [ 0, %488 ], [ %1090, %1059 ]
  %502 = phi i32 [ 0, %488 ], [ %1089, %1059 ]
  %503 = phi i32 [ 0, %488 ], [ %1064, %1059 ]
  %504 = phi i32 [ 0, %488 ], [ %1063, %1059 ]
  %505 = phi i8 [ %495, %488 ], [ %1060, %1059 ]
  %506 = mul i32 %500, %75
  %507 = add i32 %506, %459
  br i1 %448, label %512, label %508

508:                                              ; preds = %498
  %509 = add i32 %507, 1000
  %510 = sdiv i32 %509, 2000
  %511 = shl nsw i32 %510, 1
  br label %515

512:                                              ; preds = %498
  %513 = add i32 %507, 500
  %514 = sdiv i32 %513, 1000
  br label %515

515:                                              ; preds = %512, %508
  %516 = phi i32 [ %514, %512 ], [ %511, %508 ]
  %517 = icmp slt i32 %516, %507
  %518 = mul i32 %516, -1000
  %519 = add i32 %518, %507
  %520 = mul i32 %516, 1000
  %521 = sub i32 %520, %507
  %522 = select i1 %517, i32 %519, i32 %521
  %523 = load i32, ptr %118, align 4
  %524 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %524(i32 noundef 21474800) #11
  %525 = load i32, ptr %73, align 4
  %526 = call fastcc i32 @rf_val_set(ptr noundef %0, i32 noundef %516, i32 noundef %525, i8 noundef zeroext %449)
  %527 = icmp slt i32 %526, 0
  br i1 %527, label %528, label %533

528:                                              ; preds = %515
  store i8 %505, ptr %60, align 1
  %529 = load i32, ptr @verbose, align 4
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %1824, label %531

531:                                              ; preds = %528
  %532 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

533:                                              ; preds = %515
  %534 = shl i32 %522, 13
  %535 = sdiv i32 %534, %523
  %536 = lshr i32 %535, 8
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 15
  %539 = trunc i32 %535 to i8
  %540 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %540(i32 noundef 21474800) #11
  %541 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext %539, i8 noundef zeroext %538)
  %542 = icmp slt i32 %541, 0
  br i1 %542, label %543, label %548

543:                                              ; preds = %533
  store i8 %505, ptr %60, align 1
  %544 = load i32, ptr @verbose, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %1824, label %546

546:                                              ; preds = %543
  %547 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

548:                                              ; preds = %533
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #11
  store i8 12, ptr %37, align 2
  store i8 4, ptr %119, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #11
  store i32 2, ptr %120, align 4, !annotation !8
  %549 = load ptr, ptr %78, align 4
  %550 = load i8, ptr %549, align 4
  %551 = zext i8 %550 to i16
  store i16 %551, ptr %38, align 4
  store i16 0, ptr %121, align 2
  store ptr %37, ptr %122, align 4
  %552 = load i32, ptr @verbose, align 4
  %553 = icmp ugt i32 %552, 3
  br i1 %553, label %554, label %558

554:                                              ; preds = %548
  %555 = load i8, ptr %549, align 4
  %556 = zext i8 %555 to i32
  %557 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %556, i32 noundef 12, i32 noundef 4) #12
  br label %558

558:                                              ; preds = %554, %548
  %559 = load ptr, ptr %0, align 4
  %560 = call i32 @i2c_transfer(ptr noundef %559, ptr noundef nonnull %38, i32 noundef 1) #11
  %561 = icmp eq i32 %560, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #11
  br i1 %561, label %571, label %562

562:                                              ; preds = %558
  store i8 %505, ptr %60, align 1
  %563 = load i32, ptr @verbose, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %1824, label %565

565:                                              ; preds = %562
  %566 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.srst) #12
  %567 = load i32, ptr @verbose, align 4
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %1824, label %569

569:                                              ; preds = %565
  %570 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

571:                                              ; preds = %558
  %572 = call i32 @msleep_interruptible(i32 noundef %494) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #11
  store i8 55, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #11
  store i8 0, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %36) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %123, i8 0, i32 16, i1 false) #11, !annotation !8
  %573 = load ptr, ptr %78, align 4
  %574 = load i8, ptr %573, align 4
  %575 = zext i8 %574 to i16
  store i16 %575, ptr %36, align 4
  store i16 0, ptr %124, align 2
  store i16 1, ptr %123, align 4
  store ptr %34, ptr %125, align 4
  %576 = load i8, ptr %573, align 4
  %577 = zext i8 %576 to i16
  store i16 %577, ptr %126, align 4
  store i16 1, ptr %127, align 2
  store i16 1, ptr %128, align 4
  store ptr %35, ptr %129, align 4
  %578 = load ptr, ptr %0, align 4
  %579 = call i32 @i2c_transfer(ptr noundef %578, ptr noundef nonnull %36, i32 noundef 2) #11
  %580 = icmp eq i32 %579, 2
  br i1 %580, label %585, label %581

581:                                              ; preds = %571
  store i8 %505, ptr %60, align 1
  %582 = load i32, ptr @verbose, align 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %594

584:                                              ; preds = %581
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #11
  br label %1824

585:                                              ; preds = %571
  %586 = load i8, ptr %35, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #11
  %587 = zext i8 %586 to i32
  %588 = add nsw i32 %500, 30
  %589 = getelementptr [60 x i32], ptr %59, i32 0, i32 %588
  store i32 %587, ptr %589, align 4
  %590 = srem i32 %499, 2
  %591 = icmp ne i32 %590, 1
  %592 = icmp sgt i32 %500, %464
  %593 = or i1 %592, %591
  br i1 %593, label %677, label %600

594:                                              ; preds = %581
  %595 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 55, i32 noundef %579) #12
  %596 = load i32, ptr @verbose, align 4
  %597 = icmp eq i32 %596, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #11
  br i1 %597, label %1824, label %598

598:                                              ; preds = %594
  %599 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

600:                                              ; preds = %585
  %601 = add nsw i32 %500, -1
  %602 = icmp eq i32 %601, %489
  br i1 %602, label %603, label %612

603:                                              ; preds = %600
  %604 = getelementptr i32, ptr %190, i32 %500
  %605 = load i32, ptr %604, align 4
  %606 = icmp sgt i32 %605, %587
  %607 = icmp sgt i32 %605, 25
  %608 = select i1 %607, i1 %606, i1 false
  br i1 %608, label %609, label %612

609:                                              ; preds = %603
  %610 = add i32 %522, %520
  %611 = sub i32 %610, %75
  br label %805

612:                                              ; preds = %603, %600
  %613 = icmp eq i32 %500, %464
  %614 = getelementptr i32, ptr %130, i32 %500
  br i1 %613, label %615, label %625

615:                                              ; preds = %612
  %616 = getelementptr i32, ptr %614, i32 -1
  %617 = load i32, ptr %616, align 4
  %618 = icmp sgt i32 %617, -1
  %619 = icmp slt i32 %617, %587
  %620 = select i1 %618, i1 %619, i1 false
  %621 = icmp ugt i8 %586, 25
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %623, label %625

623:                                              ; preds = %615
  %624 = add i32 %522, %520
  br label %805

625:                                              ; preds = %615, %612
  %626 = icmp eq i8 %586, 0
  br i1 %626, label %654, label %627

627:                                              ; preds = %625
  %628 = getelementptr i32, ptr %614, i32 -1
  %629 = load i32, ptr %628, align 4
  %630 = icmp sgt i32 %629, 0
  br i1 %630, label %631, label %654

631:                                              ; preds = %627
  %632 = getelementptr i32, ptr %614, i32 -2
  %633 = load i32, ptr %632, align 4
  %634 = icmp sgt i32 %633, 0
  br i1 %634, label %635, label %654

635:                                              ; preds = %631
  %636 = getelementptr i32, ptr %614, i32 -3
  %637 = load i32, ptr %636, align 4
  %638 = icmp sgt i32 %637, 0
  %639 = icmp ugt i32 %629, %587
  %640 = select i1 %638, i1 %639, i1 false
  %641 = icmp sgt i32 %633, %637
  %642 = select i1 %640, i1 %641, i1 false
  br i1 %642, label %643, label %654

643:                                              ; preds = %635
  %644 = icmp ugt i32 %629, 25
  %645 = icmp ugt i32 %633, 25
  %646 = select i1 %644, i1 true, i1 %645
  br i1 %646, label %647, label %654

647:                                              ; preds = %643
  %648 = icmp ult i32 %629, %633
  %649 = add i32 %522, %520
  br i1 %648, label %652, label %650

650:                                              ; preds = %647
  %651 = sub i32 %649, %75
  br label %805

652:                                              ; preds = %647
  %653 = add i32 %649, %131
  br label %805

654:                                              ; preds = %643, %635, %631, %627, %625
  br i1 %613, label %655, label %809

655:                                              ; preds = %654
  %656 = getelementptr i32, ptr %614, i32 -1
  %657 = load i32, ptr %656, align 4
  %658 = icmp sgt i32 %657, -1
  br i1 %658, label %659, label %809

659:                                              ; preds = %655
  %660 = getelementptr i32, ptr %614, i32 -2
  %661 = load i32, ptr %660, align 4
  %662 = icmp sgt i32 %661, -1
  %663 = icmp slt i32 %661, %587
  %664 = select i1 %662, i1 %663, i1 false
  %665 = icmp sgt i32 %657, %661
  %666 = select i1 %664, i1 %665, i1 false
  br i1 %666, label %667, label %809

667:                                              ; preds = %659
  %668 = icmp ugt i8 %586, 25
  %669 = icmp ugt i32 %657, 25
  %670 = select i1 %668, i1 true, i1 %669
  br i1 %670, label %671, label %809

671:                                              ; preds = %667
  %672 = icmp ugt i32 %657, %587
  %673 = add i32 %522, %520
  %674 = call i32 @llvm.umax.i32(i32 %587, i32 %657) #11
  %675 = select i1 %672, i32 %75, i32 0
  %676 = sub i32 %673, %675
  br label %805

677:                                              ; preds = %585
  %678 = icmp ne i32 %590, 0
  %679 = icmp slt i32 %500, %489
  %680 = or i1 %679, %678
  br i1 %680, label %809, label %681

681:                                              ; preds = %677
  %682 = getelementptr i32, ptr %130, i32 %500
  %683 = icmp eq i8 %586, 0
  br i1 %683, label %701, label %684

684:                                              ; preds = %681
  %685 = getelementptr i32, ptr %682, i32 1
  %686 = load i32, ptr %685, align 4
  %687 = icmp sgt i32 %686, 0
  br i1 %687, label %688, label %701

688:                                              ; preds = %684
  %689 = getelementptr i32, ptr %682, i32 2
  %690 = load i32, ptr %689, align 4
  %691 = icmp sgt i32 %690, 0
  %692 = icmp ugt i32 %686, %587
  %693 = select i1 %691, i1 %692, i1 false
  %694 = icmp sgt i32 %686, %690
  %695 = select i1 %693, i1 %694, i1 false
  %696 = icmp ugt i32 %686, 25
  %697 = select i1 %695, i1 %696, i1 false
  br i1 %697, label %698, label %701

698:                                              ; preds = %688
  %699 = add i32 %522, %520
  %700 = add i32 %699, %75
  br label %805

701:                                              ; preds = %688, %684, %681
  %702 = add nsw i32 %500, 1
  %703 = icmp eq i32 %702, %464
  br i1 %703, label %704, label %713

704:                                              ; preds = %701
  %705 = getelementptr i32, ptr %682, i32 1
  %706 = load i32, ptr %705, align 4
  %707 = icmp sgt i32 %706, %587
  %708 = icmp sgt i32 %706, 25
  %709 = select i1 %708, i1 %707, i1 false
  br i1 %709, label %710, label %713

710:                                              ; preds = %704
  %711 = add i32 %522, %520
  %712 = add i32 %711, %75
  br label %805

713:                                              ; preds = %704, %701
  %714 = icmp ne i32 %500, %489
  %715 = select i1 %714, i1 true, i1 %683
  %716 = getelementptr i32, ptr %682, i32 1
  %717 = load i32, ptr %716, align 4
  %718 = xor i1 %715, true
  %719 = icmp sgt i32 %717, 0
  %720 = select i1 %718, i1 %719, i1 false
  br i1 %720, label %721, label %733

721:                                              ; preds = %713
  %722 = getelementptr i32, ptr %682, i32 2
  %723 = load i32, ptr %722, align 4
  %724 = icmp sgt i32 %723, 0
  %725 = icmp ult i32 %717, %587
  %726 = select i1 %724, i1 %725, i1 false
  %727 = icmp slt i32 %723, %587
  %728 = select i1 %726, i1 %727, i1 false
  %729 = icmp ugt i8 %586, 25
  %730 = select i1 %728, i1 %729, i1 false
  br i1 %730, label %731, label %738

731:                                              ; preds = %721
  %732 = add i32 %522, %520
  br label %805

733:                                              ; preds = %713
  %734 = icmp sgt i32 %717, -1
  br i1 %734, label %735, label %778

735:                                              ; preds = %733
  %736 = getelementptr i32, ptr %682, i32 2
  %737 = load i32, ptr %736, align 4
  br label %738

738:                                              ; preds = %735, %721
  %739 = phi i32 [ %737, %735 ], [ %723, %721 ]
  %740 = icmp sgt i32 %739, -1
  br i1 %740, label %741, label %778

741:                                              ; preds = %738
  %742 = getelementptr i32, ptr %682, i32 3
  %743 = load i32, ptr %742, align 4
  %744 = icmp sgt i32 %743, -1
  %745 = icmp ugt i32 %717, %587
  %746 = select i1 %744, i1 %745, i1 false
  %747 = icmp sgt i32 %739, %743
  %748 = select i1 %746, i1 %747, i1 false
  br i1 %748, label %749, label %760

749:                                              ; preds = %741
  %750 = icmp ugt i32 %717, 25
  %751 = icmp ugt i32 %739, 25
  %752 = select i1 %750, i1 true, i1 %751
  br i1 %752, label %753, label %760

753:                                              ; preds = %749
  %754 = icmp ult i32 %717, %739
  %755 = add i32 %522, %520
  br i1 %754, label %758, label %756

756:                                              ; preds = %753
  %757 = add i32 %755, %75
  br label %805

758:                                              ; preds = %753
  %759 = add i32 %755, %132
  br label %805

760:                                              ; preds = %749, %741
  %761 = icmp ult i32 %739, %587
  %762 = select i1 %744, i1 %761, i1 false
  %763 = icmp ugt i32 %717, %739
  %764 = select i1 %762, i1 %763, i1 false
  %765 = icmp slt i32 %743, %587
  %766 = select i1 %764, i1 %765, i1 false
  %767 = icmp sgt i32 %717, %743
  %768 = select i1 %766, i1 %767, i1 false
  br i1 %768, label %769, label %778

769:                                              ; preds = %760
  %770 = icmp ugt i8 %586, 25
  %771 = icmp ugt i32 %717, 25
  %772 = select i1 %770, i1 true, i1 %771
  br i1 %772, label %773, label %778

773:                                              ; preds = %769
  %774 = add i32 %522, %520
  %775 = call i32 @llvm.umax.i32(i32 %717, i32 %587)
  %776 = select i1 %745, i32 %75, i32 0
  %777 = add i32 %774, %776
  br label %805

778:                                              ; preds = %769, %760, %738, %733
  %779 = add nsw i32 %500, 2
  %780 = icmp eq i32 %779, %489
  %781 = icmp sgt i32 %717, -1
  %782 = select i1 %780, i1 %781, i1 false
  br i1 %782, label %783, label %802

783:                                              ; preds = %778
  %784 = getelementptr i32, ptr %682, i32 2
  %785 = load i32, ptr %784, align 4
  %786 = icmp sgt i32 %785, -1
  %787 = icmp ugt i32 %717, %587
  %788 = select i1 %786, i1 %787, i1 false
  %789 = icmp sgt i32 %785, %587
  %790 = select i1 %788, i1 %789, i1 false
  br i1 %790, label %791, label %802

791:                                              ; preds = %783
  %792 = icmp ugt i32 %717, 25
  %793 = icmp ugt i32 %785, 25
  %794 = select i1 %792, i1 true, i1 %793
  br i1 %794, label %795, label %802

795:                                              ; preds = %791
  %796 = icmp ult i32 %717, %785
  %797 = add i32 %522, %520
  br i1 %796, label %800, label %798

798:                                              ; preds = %795
  %799 = add i32 %797, %75
  br label %805

800:                                              ; preds = %795
  %801 = add i32 %797, %132
  br label %805

802:                                              ; preds = %791, %783, %778
  %803 = icmp ugt i8 %586, 25
  %804 = select i1 %497, i1 %803, i1 false
  br i1 %804, label %805, label %809

805:                                              ; preds = %802, %800, %798, %773, %758, %756, %731, %710, %698, %671, %652, %650, %623, %609
  %806 = phi i32 [ %587, %710 ], [ %739, %758 ], [ %717, %756 ], [ %785, %800 ], [ %717, %798 ], [ %587, %731 ], [ %686, %698 ], [ %605, %609 ], [ %633, %652 ], [ %629, %650 ], [ %587, %623 ], [ %674, %671 ], [ %587, %802 ], [ %775, %773 ]
  %807 = phi i32 [ %712, %710 ], [ %759, %758 ], [ %757, %756 ], [ %801, %800 ], [ %799, %798 ], [ %732, %731 ], [ %700, %698 ], [ %611, %609 ], [ %653, %652 ], [ %651, %650 ], [ %624, %623 ], [ %676, %671 ], [ %520, %802 ], [ %777, %773 ]
  %808 = trunc i32 %806 to i8
  br label %809

809:                                              ; preds = %805, %802, %677, %667, %659, %655, %654
  %810 = phi i8 [ %586, %667 ], [ %586, %659 ], [ %586, %655 ], [ %586, %654 ], [ %586, %802 ], [ %586, %677 ], [ %808, %805 ]
  %811 = phi i32 [ -1, %667 ], [ -1, %659 ], [ -1, %655 ], [ -1, %654 ], [ -1, %802 ], [ -1, %677 ], [ %807, %805 ]
  %812 = icmp sgt i32 %503, 0
  br i1 %812, label %813, label %830

813:                                              ; preds = %826, %809
  %814 = phi i32 [ %828, %826 ], [ 0, %809 ]
  %815 = phi i32 [ %827, %826 ], [ 0, %809 ]
  %816 = getelementptr [20 x i32], ptr %63, i32 0, i32 %814
  %817 = load i32, ptr %816, align 4
  %818 = sub i32 %817, %811
  %819 = call i32 @llvm.abs.i32(i32 %818, i1 false)
  %820 = icmp slt i32 %819, %134
  br i1 %820, label %821, label %826

821:                                              ; preds = %813
  %822 = load i32, ptr @verbose, align 4
  %823 = icmp ugt i32 %822, 2
  br i1 %823, label %824, label %826

824:                                              ; preds = %821
  %825 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.mb86a16_set_fe, i32 noundef %814) #12
  br label %826

826:                                              ; preds = %824, %821, %813
  %827 = phi i32 [ 1, %824 ], [ %815, %813 ], [ 1, %821 ]
  %828 = add nuw nsw i32 %814, 1
  %829 = icmp eq i32 %828, %503
  br i1 %829, label %830, label %813

830:                                              ; preds = %826, %809
  %831 = phi i32 [ 0, %809 ], [ %827, %826 ]
  %832 = icmp eq i32 %831, 0
  %833 = icmp sgt i32 %811, 0
  %834 = select i1 %832, i1 %833, i1 false
  br i1 %834, label %835, label %1059

835:                                              ; preds = %830
  %836 = load i32, ptr %117, align 4
  %837 = mul i32 %836, -1000
  %838 = add i32 %837, %811
  %839 = call i32 @llvm.abs.i32(i32 %838, i1 false)
  %840 = load i32, ptr %73, align 4
  %841 = sdiv i32 %840, 6
  %842 = add nsw i32 %841, 3000
  %843 = icmp slt i32 %839, %842
  br i1 %843, label %844, label %1059

844:                                              ; preds = %835
  %845 = load i32, ptr @verbose, align 4
  %846 = icmp ugt i32 %845, 3
  br i1 %846, label %847, label %849

847:                                              ; preds = %844
  %848 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.mb86a16_set_fe, i32 noundef %811, i32 noundef %840) #12
  br label %849

849:                                              ; preds = %847, %844
  %850 = getelementptr [20 x i32], ptr %63, i32 0, i32 %503
  store i32 %811, ptr %850, align 4
  %851 = add i32 %503, 1
  br i1 %448, label %856, label %852

852:                                              ; preds = %849
  %853 = add nuw i32 %811, 1000
  %854 = sdiv i32 %853, 2000
  %855 = shl nsw i32 %854, 1
  br label %859

856:                                              ; preds = %849
  %857 = add nuw i32 %811, 500
  %858 = sdiv i32 %857, 1000
  br label %859

859:                                              ; preds = %856, %852
  %860 = phi i32 [ %858, %856 ], [ %855, %852 ]
  %861 = icmp slt i32 %860, %811
  %862 = mul i32 %860, -1000
  %863 = add i32 %862, %811
  %864 = mul i32 %860, 1000
  %865 = sub i32 %864, %811
  %866 = select i1 %861, i32 %863, i32 %865
  %867 = load i32, ptr %118, align 4
  %868 = load i32, ptr %73, align 4
  %869 = call fastcc i32 @rf_val_set(ptr noundef %0, i32 noundef %860, i32 noundef %868, i8 noundef zeroext %449)
  %870 = icmp slt i32 %869, 0
  br i1 %870, label %871, label %876

871:                                              ; preds = %859
  store i8 %810, ptr %60, align 1
  %872 = load i32, ptr @verbose, align 4
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %1824, label %874

874:                                              ; preds = %871
  %875 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

876:                                              ; preds = %859
  %877 = shl i32 %866, 13
  %878 = sdiv i32 %877, %867
  %879 = lshr i32 %878, 8
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 15
  %882 = trunc i32 %878 to i8
  %883 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext %882, i8 noundef zeroext %881)
  %884 = icmp slt i32 %883, 0
  br i1 %884, label %885, label %890

885:                                              ; preds = %876
  store i8 %810, ptr %60, align 1
  %886 = load i32, ptr @verbose, align 4
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %1824, label %888

888:                                              ; preds = %885
  %889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

890:                                              ; preds = %876
  %891 = load i32, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %33) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %33, i8 0, i32 3, i1 false) #11, !annotation !8
  %892 = icmp ugt i8 %810, 45
  br i1 %892, label %893, label %916

893:                                              ; preds = %890
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #11
  store i8 54, ptr %31, align 2
  store i8 38, ptr %139, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #11
  store i32 2, ptr %140, align 4, !annotation !8
  %894 = load ptr, ptr %78, align 4
  %895 = load i8, ptr %894, align 4
  %896 = zext i8 %895 to i16
  store i16 %896, ptr %32, align 4
  store i16 0, ptr %141, align 2
  store ptr %31, ptr %142, align 4
  %897 = load i32, ptr @verbose, align 4
  %898 = icmp ugt i32 %897, 3
  br i1 %898, label %899, label %903

899:                                              ; preds = %893
  %900 = load i8, ptr %894, align 4
  %901 = zext i8 %900 to i32
  %902 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %901, i32 noundef 54, i32 noundef 38) #12
  br label %903

903:                                              ; preds = %899, %893
  %904 = load ptr, ptr %0, align 4
  %905 = call i32 @i2c_transfer(ptr noundef %904, ptr noundef nonnull %32, i32 noundef 1) #11
  %906 = icmp eq i32 %905, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #11
  br i1 %906, label %939, label %907

907:                                              ; preds = %903
  %908 = load i32, ptr @verbose, align 4
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %1033, label %910

910:                                              ; preds = %907
  %911 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.CNTM_set) #12
  %912 = load i32, ptr @verbose, align 4
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %1033, label %914

914:                                              ; preds = %910
  %915 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.signal_det) #12
  br label %1033

916:                                              ; preds = %890
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #11
  store i8 54, ptr %29, align 2
  store i8 54, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #11
  store i32 2, ptr %136, align 4, !annotation !8
  %917 = load ptr, ptr %78, align 4
  %918 = load i8, ptr %917, align 4
  %919 = zext i8 %918 to i16
  store i16 %919, ptr %30, align 4
  store i16 0, ptr %137, align 2
  store ptr %29, ptr %138, align 4
  %920 = load i32, ptr @verbose, align 4
  %921 = icmp ugt i32 %920, 3
  br i1 %921, label %922, label %926

922:                                              ; preds = %916
  %923 = load i8, ptr %917, align 4
  %924 = zext i8 %923 to i32
  %925 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %924, i32 noundef 54, i32 noundef 54) #12
  br label %926

926:                                              ; preds = %922, %916
  %927 = load ptr, ptr %0, align 4
  %928 = call i32 @i2c_transfer(ptr noundef %927, ptr noundef nonnull %30, i32 noundef 1) #11
  %929 = icmp eq i32 %928, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #11
  br i1 %929, label %939, label %930

930:                                              ; preds = %926
  %931 = load i32, ptr @verbose, align 4
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1033, label %933

933:                                              ; preds = %930
  %934 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.CNTM_set) #12
  %935 = load i32, ptr @verbose, align 4
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %1033, label %937

937:                                              ; preds = %933
  %938 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.signal_det) #12
  br label %1033

939:                                              ; preds = %926, %903
  %940 = mul i32 %891, 98
  %941 = sdiv i32 %940, 100
  %942 = mul i32 %891, 102
  %943 = sdiv i32 %942, 100
  br label %944

944:                                              ; preds = %983, %939
  %945 = phi i32 [ 0, %939 ], [ %986, %983 ]
  switch i32 %945, label %947 [
    i32 0, label %946
    i32 1, label %948
  ]

946:                                              ; preds = %944
  br label %948

947:                                              ; preds = %944
  br label %948

948:                                              ; preds = %947, %946, %944
  %949 = phi i32 [ %941, %946 ], [ %943, %947 ], [ %891, %944 ]
  call fastcc void @smrt_info_get(ptr noundef %0, i32 noundef %949) #11
  %950 = call fastcc i32 @smrt_set(ptr noundef %0, i32 noundef %949) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i8 12, ptr %27, align 2
  store i8 4, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  store i32 2, ptr %144, align 4, !annotation !8
  %951 = load ptr, ptr %78, align 4
  %952 = load i8, ptr %951, align 4
  %953 = zext i8 %952 to i16
  store i16 %953, ptr %28, align 4
  store i16 0, ptr %145, align 2
  store ptr %27, ptr %146, align 4
  %954 = load i32, ptr @verbose, align 4
  %955 = icmp ugt i32 %954, 3
  br i1 %955, label %956, label %960

956:                                              ; preds = %948
  %957 = load i8, ptr %951, align 4
  %958 = zext i8 %957 to i32
  %959 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %958, i32 noundef 12, i32 noundef 4) #12
  br label %960

960:                                              ; preds = %956, %948
  %961 = load ptr, ptr %0, align 4
  %962 = call i32 @i2c_transfer(ptr noundef %961, ptr noundef nonnull %28, i32 noundef 1) #11
  %963 = icmp eq i32 %962, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %964 = load i32, ptr @verbose, align 4
  %965 = icmp eq i32 %964, 0
  %966 = select i1 %963, i1 true, i1 %965
  br i1 %966, label %969, label %967

967:                                              ; preds = %960
  %968 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.srst) #12
  br label %969

969:                                              ; preds = %967, %960
  %970 = call i32 @msleep_interruptible(i32 noundef 10) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #11
  store i8 55, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #11
  store i8 0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %147, i8 0, i32 16, i1 false) #11, !annotation !8
  %971 = load ptr, ptr %78, align 4
  %972 = load i8, ptr %971, align 4
  %973 = zext i8 %972 to i16
  store i16 %973, ptr %26, align 4
  store i16 0, ptr %148, align 2
  store i16 1, ptr %147, align 4
  store ptr %24, ptr %149, align 4
  %974 = load i8, ptr %971, align 4
  %975 = zext i8 %974 to i16
  store i16 %975, ptr %150, align 4
  store i16 1, ptr %151, align 2
  store i16 1, ptr %152, align 4
  store ptr %25, ptr %153, align 4
  %976 = load ptr, ptr %0, align 4
  %977 = call i32 @i2c_transfer(ptr noundef %976, ptr noundef nonnull %26, i32 noundef 2) #11
  %978 = icmp eq i32 %977, 2
  br i1 %978, label %983, label %979

979:                                              ; preds = %969
  %980 = load i32, ptr @verbose, align 4
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %988

982:                                              ; preds = %979
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #11
  br label %1033

983:                                              ; preds = %969
  %984 = getelementptr [3 x i8], ptr %33, i32 0, i32 %945
  %985 = load i8, ptr %25, align 1
  store i8 %985, ptr %984, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #11
  %986 = add nuw nsw i32 %945, 1
  %987 = icmp eq i32 %986, 3
  br i1 %987, label %994, label %944

988:                                              ; preds = %979
  %989 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 55, i32 noundef %977) #12
  %990 = load i32, ptr @verbose, align 4
  %991 = icmp eq i32 %990, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #11
  br i1 %991, label %1033, label %992

992:                                              ; preds = %988
  %993 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.signal_det) #12
  br label %1033

994:                                              ; preds = %983
  %995 = load i8, ptr %154, align 1
  %996 = load i8, ptr %33, align 1
  %997 = zext i8 %996 to i16
  %998 = mul nuw nsw i16 %997, 112
  %999 = udiv i16 %998, 100
  %1000 = zext i8 %995 to i16
  %1001 = icmp ult i16 %999, %1000
  br i1 %1001, label %1002, label %1008

1002:                                             ; preds = %994
  %1003 = load i8, ptr %155, align 1
  %1004 = zext i8 %1003 to i16
  %1005 = mul nuw nsw i16 %1004, 112
  %1006 = udiv i16 %1005, 100
  %1007 = icmp ult i16 %1006, %1000
  br i1 %1007, label %1009, label %1008

1008:                                             ; preds = %1002, %994
  br label %1009

1009:                                             ; preds = %1008, %1002
  %1010 = phi i1 [ false, %1008 ], [ true, %1002 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #11
  store i8 54, ptr %22, align 2
  store i8 6, ptr %156, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #11
  store i32 2, ptr %157, align 4, !annotation !8
  %1011 = load ptr, ptr %78, align 4
  %1012 = load i8, ptr %1011, align 4
  %1013 = zext i8 %1012 to i16
  store i16 %1013, ptr %23, align 4
  store i16 0, ptr %158, align 2
  store ptr %22, ptr %159, align 4
  %1014 = load i32, ptr @verbose, align 4
  %1015 = icmp ugt i32 %1014, 3
  br i1 %1015, label %1016, label %1020

1016:                                             ; preds = %1009
  %1017 = load i8, ptr %1011, align 4
  %1018 = zext i8 %1017 to i32
  %1019 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %1018, i32 noundef 54, i32 noundef 6) #12
  br label %1020

1020:                                             ; preds = %1016, %1009
  %1021 = load ptr, ptr %0, align 4
  %1022 = call i32 @i2c_transfer(ptr noundef %1021, ptr noundef nonnull %23, i32 noundef 1) #11
  %1023 = icmp eq i32 %1022, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #11
  br i1 %1023, label %1036, label %1024

1024:                                             ; preds = %1020
  %1025 = load i32, ptr @verbose, align 4
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1033, label %1027

1027:                                             ; preds = %1024
  %1028 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.CNTM_set) #12
  %1029 = load i32, ptr @verbose, align 4
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1033, label %1031

1031:                                             ; preds = %1027
  %1032 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.signal_det) #12
  br label %1033

1033:                                             ; preds = %1031, %1027, %1024, %992, %988, %982, %937, %933, %930, %914, %910, %907
  %1034 = phi i8 [ %810, %982 ], [ %995, %1024 ], [ %810, %930 ], [ %810, %907 ], [ %995, %1031 ], [ %995, %1027 ], [ %810, %992 ], [ %810, %988 ], [ %810, %937 ], [ %810, %933 ], [ %810, %914 ], [ %810, %910 ]
  %1035 = phi i32 [ -121, %982 ], [ -1, %1024 ], [ -1, %930 ], [ -1, %907 ], [ -1, %1031 ], [ -1, %1027 ], [ -121, %992 ], [ -121, %988 ], [ -1, %937 ], [ -1, %933 ], [ -1, %914 ], [ -1, %910 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %33) #11
  br label %1042

1036:                                             ; preds = %1020
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %33) #11
  br i1 %1010, label %1037, label %1042

1037:                                             ; preds = %1036
  %1038 = load i32, ptr @verbose, align 4
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1059, label %1040

1040:                                             ; preds = %1037
  %1041 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1059

1042:                                             ; preds = %1036, %1033
  %1043 = phi i8 [ %1034, %1033 ], [ %995, %1036 ]
  %1044 = phi i32 [ %1035, %1033 ], [ 0, %1036 ]
  %1045 = load i32, ptr @verbose, align 4
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1049, label %1047

1047:                                             ; preds = %1042
  %1048 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1049

1049:                                             ; preds = %1047, %1042
  %1050 = load i32, ptr %73, align 4
  call fastcc void @smrt_info_get(ptr noundef %0, i32 noundef %1050)
  %1051 = load i32, ptr %73, align 4
  %1052 = call fastcc i32 @smrt_set(ptr noundef %0, i32 noundef %1051)
  %1053 = icmp slt i32 %1052, 0
  br i1 %1053, label %1054, label %1059

1054:                                             ; preds = %1049
  store i8 %1043, ptr %60, align 1
  %1055 = load i32, ptr @verbose, align 4
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1824, label %1057

1057:                                             ; preds = %1054
  %1058 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1059:                                             ; preds = %1049, %1040, %1037, %835, %830
  %1060 = phi i8 [ %995, %1037 ], [ %995, %1040 ], [ %1043, %1049 ], [ %810, %835 ], [ %810, %830 ]
  %1061 = phi i32 [ %860, %1037 ], [ %860, %1040 ], [ %860, %1049 ], [ %516, %835 ], [ %516, %830 ]
  %1062 = phi i32 [ %866, %1037 ], [ %866, %1040 ], [ %866, %1049 ], [ %522, %835 ], [ %522, %830 ]
  %1063 = phi i32 [ 1, %1037 ], [ 1, %1040 ], [ %1044, %1049 ], [ %504, %835 ], [ %504, %830 ]
  %1064 = phi i32 [ %851, %1037 ], [ %851, %1040 ], [ %851, %1049 ], [ %503, %835 ], [ %503, %830 ]
  %1065 = phi i1 [ false, %1037 ], [ false, %1040 ], [ true, %1049 ], [ true, %835 ], [ true, %830 ]
  %1066 = select i1 %592, i32 1, i32 %501
  %1067 = icmp slt i32 %500, %489
  %1068 = select i1 %1067, i32 1, i32 %502
  %1069 = add i32 %499, 1
  %1070 = and i32 %1069, -2147483647
  %1071 = icmp eq i32 %1070, 1
  %1072 = icmp eq i32 %1066, 1
  %1073 = select i1 %1071, i1 %1072, i1 false
  %1074 = add i32 %499, 2
  %1075 = select i1 %1073, i32 %1074, i32 %1069
  %1076 = and i32 %1075, 1
  %1077 = icmp eq i32 %1076, 0
  %1078 = icmp eq i32 %1068, 1
  %1079 = select i1 %1077, i1 %1078, i1 false
  %1080 = zext i1 %1079 to i32
  %1081 = add i32 %1075, %1080
  %1082 = and i32 %1081, -2147483647
  %1083 = icmp eq i32 %1082, 1
  %1084 = add i32 %1081, 1
  %1085 = sub i32 0, %1081
  %1086 = select i1 %1083, i32 %1084, i32 %1085
  %1087 = sdiv i32 %1086, 2
  %1088 = select i1 %1072, i1 %1078, i1 false
  %1089 = select i1 %1088, i32 1, i32 %1068
  %1090 = select i1 %1088, i32 1, i32 %1066
  %1091 = xor i1 %1088, true
  %1092 = and i1 %1065, %1091
  br i1 %1092, label %498, label %1093

1093:                                             ; preds = %1059
  store i8 %1060, ptr %60, align 1
  %1094 = icmp eq i32 %1063, 1
  %1095 = load i32, ptr @verbose, align 4
  %1096 = icmp ugt i32 %1095, 2
  br i1 %1094, label %1097, label %1753

1097:                                             ; preds = %1093
  br i1 %1096, label %1098, label %1101

1098:                                             ; preds = %1097
  %1099 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  %1100 = load i32, ptr @verbose, align 4
  br label %1101

1101:                                             ; preds = %1098, %1097
  %1102 = phi i32 [ %1095, %1097 ], [ %1100, %1098 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #11
  store i8 51, ptr %20, align 2
  store i8 57, ptr %160, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  store i32 2, ptr %161, align 4, !annotation !8
  %1103 = load ptr, ptr %78, align 4
  %1104 = load i8, ptr %1103, align 4
  %1105 = zext i8 %1104 to i16
  store i16 %1105, ptr %21, align 4
  store i16 0, ptr %162, align 2
  store ptr %20, ptr %163, align 4
  %1106 = icmp ugt i32 %1102, 3
  br i1 %1106, label %1107, label %1111

1107:                                             ; preds = %1101
  %1108 = load i8, ptr %1103, align 4
  %1109 = zext i8 %1108 to i32
  %1110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %1109, i32 noundef 51, i32 noundef 57) #12
  br label %1111

1111:                                             ; preds = %1107, %1101
  %1112 = load ptr, ptr %0, align 4
  %1113 = call i32 @i2c_transfer(ptr noundef %1112, ptr noundef nonnull %21, i32 noundef 1) #11
  %1114 = icmp eq i32 %1113, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  br i1 %1114, label %1124, label %1115

1115:                                             ; preds = %1111
  %1116 = load i32, ptr @verbose, align 4
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1824, label %1118

1118:                                             ; preds = %1115
  %1119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.S01T_set) #12
  %1120 = load i32, ptr @verbose, align 4
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1824, label %1122

1122:                                             ; preds = %1118
  %1123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1124:                                             ; preds = %1111
  %1125 = load i32, ptr %73, align 4
  call fastcc void @smrt_info_get(ptr noundef %0, i32 noundef %1125)
  %1126 = load i32, ptr %73, align 4
  %1127 = call fastcc i32 @smrt_set(ptr noundef %0, i32 noundef %1126)
  %1128 = icmp slt i32 %1127, 0
  br i1 %1128, label %1129, label %1134

1129:                                             ; preds = %1124
  %1130 = load i32, ptr @verbose, align 4
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1824, label %1132

1132:                                             ; preds = %1129
  %1133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1134:                                             ; preds = %1124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  store i8 73, ptr %18, align 2
  store i8 126, ptr %164, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  store i32 2, ptr %165, align 4, !annotation !8
  %1135 = load ptr, ptr %78, align 4
  %1136 = load i8, ptr %1135, align 4
  %1137 = zext i8 %1136 to i16
  store i16 %1137, ptr %19, align 4
  store i16 0, ptr %166, align 2
  store ptr %18, ptr %167, align 4
  %1138 = load i32, ptr @verbose, align 4
  %1139 = icmp ugt i32 %1138, 3
  br i1 %1139, label %1140, label %1144

1140:                                             ; preds = %1134
  %1141 = load i8, ptr %1135, align 4
  %1142 = zext i8 %1141 to i32
  %1143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %1142, i32 noundef 73, i32 noundef 126) #12
  br label %1144

1144:                                             ; preds = %1140, %1134
  %1145 = load ptr, ptr %0, align 4
  %1146 = call i32 @i2c_transfer(ptr noundef %1145, ptr noundef nonnull %19, i32 noundef 1) #11
  %1147 = icmp eq i32 %1146, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  br i1 %1147, label %1157, label %1148

1148:                                             ; preds = %1144
  %1149 = load i32, ptr @verbose, align 4
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1824, label %1151

1151:                                             ; preds = %1148
  %1152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.EN_set) #12
  %1153 = load i32, ptr @verbose, align 4
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1824, label %1155

1155:                                             ; preds = %1151
  %1156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1157:                                             ; preds = %1144
  %1158 = load i32, ptr %73, align 4
  %1159 = call fastcc i32 @AFCEXEN_set(ptr noundef %0, i32 noundef 0, i32 noundef %1158)
  %1160 = icmp slt i32 %1159, 0
  br i1 %1160, label %1161, label %1166

1161:                                             ; preds = %1157
  %1162 = load i32, ptr @verbose, align 4
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1824, label %1164

1164:                                             ; preds = %1161
  %1165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1166:                                             ; preds = %1157
  %1167 = shl i32 %1062, 13
  %1168 = load i32, ptr %118, align 4
  %1169 = sdiv i32 %1167, %1168
  %1170 = trunc i32 %1169 to i8
  %1171 = lshr i32 %1169, 8
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 15
  %1174 = call fastcc i32 @afcofs_data_set(ptr noundef %0, i8 noundef zeroext %1170, i8 noundef zeroext %1173)
  %1175 = icmp slt i32 %1174, 0
  br i1 %1175, label %1176, label %1181

1176:                                             ; preds = %1166
  %1177 = load i32, ptr @verbose, align 4
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1824, label %1179

1179:                                             ; preds = %1176
  %1180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1181:                                             ; preds = %1166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #11
  store i8 12, ptr %16, align 2
  store i8 4, ptr %168, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  store i32 2, ptr %169, align 4, !annotation !8
  %1182 = load ptr, ptr %78, align 4
  %1183 = load i8, ptr %1182, align 4
  %1184 = zext i8 %1183 to i16
  store i16 %1184, ptr %17, align 4
  store i16 0, ptr %170, align 2
  store ptr %16, ptr %171, align 4
  %1185 = load i32, ptr @verbose, align 4
  %1186 = icmp ugt i32 %1185, 3
  br i1 %1186, label %1187, label %1191

1187:                                             ; preds = %1181
  %1188 = load i8, ptr %1182, align 4
  %1189 = zext i8 %1188 to i32
  %1190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %1189, i32 noundef 12, i32 noundef 4) #12
  br label %1191

1191:                                             ; preds = %1187, %1181
  %1192 = load ptr, ptr %0, align 4
  %1193 = call i32 @i2c_transfer(ptr noundef %1192, ptr noundef nonnull %17, i32 noundef 1) #11
  %1194 = icmp eq i32 %1193, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  br i1 %1194, label %1204, label %1195

1195:                                             ; preds = %1191
  %1196 = load i32, ptr @verbose, align 4
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1824, label %1198

1198:                                             ; preds = %1195
  %1199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.srst) #12
  %1200 = load i32, ptr @verbose, align 4
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1824, label %1202

1202:                                             ; preds = %1198
  %1203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1204:                                             ; preds = %1191
  %1205 = load i32, ptr %118, align 4
  %1206 = sdiv i32 200000, %1205
  %1207 = load i32, ptr %73, align 4
  %1208 = sdiv i32 200000, %1207
  %1209 = add nsw i32 %1208, %1206
  call void @msleep(i32 noundef %1209) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  store i8 14, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %172, i8 0, i32 16, i1 false) #11, !annotation !8
  %1210 = load ptr, ptr %78, align 4
  %1211 = load i8, ptr %1210, align 4
  %1212 = zext i8 %1211 to i16
  store i16 %1212, ptr %15, align 4
  store i16 0, ptr %173, align 2
  store i16 1, ptr %172, align 4
  store ptr %13, ptr %174, align 4
  %1213 = load i8, ptr %1210, align 4
  %1214 = zext i8 %1213 to i16
  store i16 %1214, ptr %175, align 4
  store i16 1, ptr %176, align 2
  store i16 1, ptr %177, align 4
  store ptr %14, ptr %178, align 4
  %1215 = load ptr, ptr %0, align 4
  %1216 = call i32 @i2c_transfer(ptr noundef %1215, ptr noundef nonnull %15, i32 noundef 2) #11
  %1217 = icmp eq i32 %1216, 2
  br i1 %1217, label %1223, label %1218

1218:                                             ; preds = %1204
  %1219 = load i32, ptr @verbose, align 4
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1233, label %1221

1221:                                             ; preds = %1218
  %1222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 14, i32 noundef %1216) #12
  br label %1233

1223:                                             ; preds = %1204
  %1224 = load i8, ptr %14, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 15, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %179, i8 0, i32 16, i1 false) #11, !annotation !8
  %1225 = load ptr, ptr %78, align 4
  %1226 = load i8, ptr %1225, align 4
  %1227 = zext i8 %1226 to i16
  store i16 %1227, ptr %12, align 4
  store i16 0, ptr %180, align 2
  store i16 1, ptr %179, align 4
  store ptr %10, ptr %181, align 4
  %1228 = load i8, ptr %1225, align 4
  %1229 = zext i8 %1228 to i16
  store i16 %1229, ptr %182, align 4
  store i16 1, ptr %183, align 2
  store i16 1, ptr %184, align 4
  store ptr %11, ptr %185, align 4
  %1230 = load ptr, ptr %0, align 4
  %1231 = call i32 @i2c_transfer(ptr noundef %1230, ptr noundef nonnull %12, i32 noundef 2) #11
  %1232 = icmp eq i32 %1231, 2
  br i1 %1232, label %1245, label %1234

1233:                                             ; preds = %1221, %1218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  br label %1240

1234:                                             ; preds = %1223
  %1235 = load i32, ptr @verbose, align 4
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1239, label %1237

1237:                                             ; preds = %1234
  %1238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 15, i32 noundef %1231) #12
  br label %1239

1239:                                             ; preds = %1237, %1234
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  br label %1240

1240:                                             ; preds = %1239, %1233
  %1241 = load i32, ptr @verbose, align 4
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1259, label %1243

1243:                                             ; preds = %1240
  %1244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.afcerr_chk) #12
  br label %1259

1245:                                             ; preds = %1223
  %1246 = load i8, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  %1247 = zext i8 %1246 to i32
  %1248 = shl nuw nsw i32 %1247, 8
  %1249 = zext i8 %1224 to i32
  %1250 = or i32 %1248, %1249
  %1251 = icmp ugt i32 %1250, 2048
  %1252 = add nsw i32 %1250, -4096
  %1253 = select i1 %1251, i32 %1252, i32 %1250
  %1254 = load i32, ptr %118, align 4
  %1255 = mul i32 %1253, %1254
  %1256 = sdiv i32 %1255, 8192
  %1257 = add i32 %1255, 16383
  %1258 = icmp ult i32 %1257, 8192
  br i1 %1258, label %1824, label %1259

1259:                                             ; preds = %1245, %1243, %1240
  %1260 = phi i32 [ %1256, %1245 ], [ -121, %1240 ], [ -121, %1243 ]
  %1261 = mul i32 %1061, 1000
  %1262 = add i32 %1260, %1261
  %1263 = load i32, ptr %73, align 4
  %1264 = icmp sgt i32 %1263, 1499
  %1265 = select i1 %1264, i32 3, i32 2
  %1266 = sdiv i32 %1263, %1265
  call fastcc void @smrt_info_get(ptr noundef %0, i32 noundef %1266)
  %1267 = call fastcc i32 @smrt_set(ptr noundef %0, i32 noundef %1266)
  %1268 = icmp slt i32 %1267, 0
  br i1 %1268, label %1269, label %1274

1269:                                             ; preds = %1259
  %1270 = load i32, ptr @verbose, align 4
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1824, label %1272

1272:                                             ; preds = %1269
  %1273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1274:                                             ; preds = %1259
  %1275 = call fastcc i32 @AFCEXEN_set(ptr noundef %0, i32 noundef 1, i32 noundef %1266)
  %1276 = icmp slt i32 %1275, 0
  br i1 %1276, label %1277, label %1282

1277:                                             ; preds = %1274
  %1278 = load i32, ptr @verbose, align 4
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1824, label %1280

1280:                                             ; preds = %1277
  %1281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1282:                                             ; preds = %1274
  %1283 = icmp slt i32 %1266, 9376
  %1284 = zext i1 %1283 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i8 45, ptr %8, align 2
  store i8 16, ptr %186, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  store i32 2, ptr %187, align 4, !annotation !8
  %1285 = load ptr, ptr %78, align 4
  %1286 = load i8, ptr %1285, align 4
  %1287 = zext i8 %1286 to i16
  store i16 %1287, ptr %9, align 4
  store i16 0, ptr %188, align 2
  store ptr %8, ptr %189, align 4
  %1288 = load i32, ptr @verbose, align 4
  %1289 = icmp ugt i32 %1288, 3
  br i1 %1289, label %1290, label %1294

1290:                                             ; preds = %1282
  %1291 = load i8, ptr %1285, align 4
  %1292 = zext i8 %1291 to i32
  %1293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %1292, i32 noundef 45, i32 noundef 16) #12
  br label %1294

1294:                                             ; preds = %1290, %1282
  %1295 = load ptr, ptr %0, align 4
  %1296 = call i32 @i2c_transfer(ptr noundef %1295, ptr noundef nonnull %9, i32 noundef 1) #11
  %1297 = icmp eq i32 %1296, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  br i1 %1297, label %1298, label %1303

1298:                                             ; preds = %1294
  %1299 = load i32, ptr %73, align 4
  %1300 = sub i32 0, %1299
  %1301 = sdiv i32 %1300, 8
  %1302 = add i32 %1301, %1262
  br i1 %1283, label %1316, label %1312

1303:                                             ; preds = %1294
  %1304 = load i32, ptr @verbose, align 4
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1824, label %1306

1306:                                             ; preds = %1303
  %1307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.DAGC_data_set) #12
  %1308 = load i32, ptr @verbose, align 4
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1824, label %1310

1310:                                             ; preds = %1306
  %1311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1312:                                             ; preds = %1298
  %1313 = add i32 %1302, 1000
  %1314 = sdiv i32 %1313, 2000
  %1315 = shl nsw i32 %1314, 1
  br label %1319

1316:                                             ; preds = %1298
  %1317 = add i32 %1302, 500
  %1318 = sdiv i32 %1317, 1000
  br label %1319

1319:                                             ; preds = %1316, %1312
  %1320 = phi i32 [ %1318, %1316 ], [ %1315, %1312 ]
  %1321 = load i32, ptr %118, align 4
  %1322 = call fastcc i32 @rf_val_set(ptr noundef %0, i32 noundef %1320, i32 noundef %1266, i8 noundef zeroext %1284)
  %1323 = icmp slt i32 %1322, 0
  br i1 %1323, label %1324, label %1329

1324:                                             ; preds = %1397, %1362, %1319
  %1325 = load i32, ptr @verbose, align 4
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1824, label %1327

1327:                                             ; preds = %1324
  %1328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1329:                                             ; preds = %1319
  %1330 = icmp slt i32 %1320, %1302
  %1331 = mul i32 %1320, 523288
  %1332 = add i32 %1331, %1302
  %1333 = mul i32 %1320, 1000
  %1334 = sub i32 %1333, %1302
  %1335 = select i1 %1330, i32 %1332, i32 %1334
  %1336 = shl i32 %1335, 13
  %1337 = sdiv i32 %1336, %1321
  %1338 = lshr i32 %1337, 8
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 15
  %1341 = trunc i32 %1337 to i8
  %1342 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext %1341, i8 noundef zeroext %1340)
  %1343 = icmp slt i32 %1342, 0
  br i1 %1343, label %1344, label %1349

1344:                                             ; preds = %1402, %1367, %1329
  %1345 = load i32, ptr @verbose, align 4
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %1824, label %1347

1347:                                             ; preds = %1344
  %1348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1349:                                             ; preds = %1329
  %1350 = load i32, ptr %118, align 4
  %1351 = sdiv i32 200000, %1350
  %1352 = sdiv i32 40000, %1266
  %1353 = add nsw i32 %1352, %1351
  call void @msleep(i32 noundef %1353) #11
  %1354 = call fastcc i32 @dagcm_val_get(ptr noundef %0)
  br i1 %1283, label %1359, label %1355

1355:                                             ; preds = %1349
  %1356 = add i32 %1262, 1000
  %1357 = sdiv i32 %1356, 2000
  %1358 = shl nsw i32 %1357, 1
  br label %1362

1359:                                             ; preds = %1349
  %1360 = add i32 %1262, 500
  %1361 = sdiv i32 %1360, 1000
  br label %1362

1362:                                             ; preds = %1359, %1355
  %1363 = phi i32 [ %1361, %1359 ], [ %1358, %1355 ]
  %1364 = load i32, ptr %118, align 4
  %1365 = call fastcc i32 @rf_val_set(ptr noundef %0, i32 noundef %1363, i32 noundef %1266, i8 noundef zeroext %1284)
  %1366 = icmp slt i32 %1365, 0
  br i1 %1366, label %1324, label %1367

1367:                                             ; preds = %1362
  %1368 = icmp slt i32 %1363, %1262
  %1369 = mul i32 %1363, 523288
  %1370 = add i32 %1369, %1262
  %1371 = mul i32 %1363, 1000
  %1372 = sub i32 %1371, %1262
  %1373 = select i1 %1368, i32 %1370, i32 %1372
  %1374 = shl i32 %1373, 13
  %1375 = sdiv i32 %1374, %1364
  %1376 = lshr i32 %1375, 8
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 15
  %1379 = trunc i32 %1375 to i8
  %1380 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext %1379, i8 noundef zeroext %1378)
  %1381 = icmp slt i32 %1380, 0
  br i1 %1381, label %1344, label %1382

1382:                                             ; preds = %1367
  %1383 = load i32, ptr %118, align 4
  %1384 = sdiv i32 200000, %1383
  %1385 = add nsw i32 %1352, %1384
  call void @msleep(i32 noundef %1385) #11
  %1386 = call fastcc i32 @dagcm_val_get(ptr noundef %0)
  %1387 = load i32, ptr %73, align 4
  %1388 = sdiv i32 %1387, 8
  %1389 = add i32 %1388, %1262
  br i1 %1283, label %1394, label %1390

1390:                                             ; preds = %1382
  %1391 = add i32 %1389, 1000
  %1392 = sdiv i32 %1391, 2000
  %1393 = shl nsw i32 %1392, 1
  br label %1397

1394:                                             ; preds = %1382
  %1395 = add i32 %1389, 500
  %1396 = sdiv i32 %1395, 1000
  br label %1397

1397:                                             ; preds = %1394, %1390
  %1398 = phi i32 [ %1396, %1394 ], [ %1393, %1390 ]
  %1399 = load i32, ptr %118, align 4
  %1400 = call fastcc i32 @rf_val_set(ptr noundef %0, i32 noundef %1398, i32 noundef %1266, i8 noundef zeroext %1284)
  %1401 = icmp slt i32 %1400, 0
  br i1 %1401, label %1324, label %1402

1402:                                             ; preds = %1397
  %1403 = icmp slt i32 %1398, %1389
  %1404 = mul i32 %1398, 523288
  %1405 = add i32 %1404, %1389
  %1406 = mul i32 %1398, 1000
  %1407 = sub i32 %1406, %1389
  %1408 = select i1 %1403, i32 %1405, i32 %1407
  %1409 = shl i32 %1408, 13
  %1410 = sdiv i32 %1409, %1399
  %1411 = lshr i32 %1410, 8
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 15
  %1414 = trunc i32 %1410 to i8
  %1415 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext %1414, i8 noundef zeroext %1413)
  %1416 = icmp slt i32 %1415, 0
  br i1 %1416, label %1344, label %1417

1417:                                             ; preds = %1402
  %1418 = load i32, ptr %118, align 4
  %1419 = sdiv i32 200000, %1418
  %1420 = add nsw i32 %1352, %1419
  call void @msleep(i32 noundef %1420) #11
  %1421 = call fastcc i32 @dagcm_val_get(ptr noundef %0)
  %1422 = icmp sgt i32 %1354, %1386
  %1423 = icmp sgt i32 %1354, %1421
  %1424 = select i1 %1422, i1 %1423, i1 false
  br i1 %1424, label %1425, label %1482

1425:                                             ; preds = %1417
  %1426 = sub i32 %1354, %1386
  %1427 = sub i32 %1421, %1386
  %1428 = shl i32 %1427, 1
  %1429 = icmp sgt i32 %1426, %1428
  br i1 %1429, label %1430, label %1482

1430:                                             ; preds = %1425
  %1431 = load i32, ptr %73, align 4
  %1432 = shl i32 %1431, 1
  %1433 = sdiv i32 %1432, -8
  %1434 = add i32 %1433, %1262
  br i1 %1283, label %1439, label %1435

1435:                                             ; preds = %1430
  %1436 = add i32 %1434, 1000
  %1437 = sdiv i32 %1436, 2000
  %1438 = shl nsw i32 %1437, 1
  br label %1442

1439:                                             ; preds = %1430
  %1440 = add i32 %1434, 500
  %1441 = sdiv i32 %1440, 1000
  br label %1442

1442:                                             ; preds = %1439, %1435
  %1443 = phi i32 [ %1441, %1439 ], [ %1438, %1435 ]
  %1444 = load i32, ptr %118, align 4
  %1445 = call fastcc i32 @rf_val_set(ptr noundef %0, i32 noundef %1443, i32 noundef %1266, i8 noundef zeroext %1284)
  %1446 = icmp slt i32 %1445, 0
  br i1 %1446, label %1447, label %1452

1447:                                             ; preds = %1442
  %1448 = load i32, ptr @verbose, align 4
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1824, label %1450

1450:                                             ; preds = %1447
  %1451 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1452:                                             ; preds = %1442
  %1453 = icmp slt i32 %1443, %1434
  %1454 = mul i32 %1443, 523288
  %1455 = add i32 %1454, %1434
  %1456 = mul i32 %1443, 1000
  %1457 = sub i32 %1456, %1434
  %1458 = select i1 %1453, i32 %1455, i32 %1457
  %1459 = shl i32 %1458, 13
  %1460 = sdiv i32 %1459, %1444
  %1461 = lshr i32 %1460, 8
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 15
  %1464 = trunc i32 %1460 to i8
  %1465 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext %1464, i8 noundef zeroext %1463)
  %1466 = icmp slt i32 %1465, 0
  br i1 %1466, label %1467, label %1472

1467:                                             ; preds = %1452
  %1468 = load i32, ptr @verbose, align 4
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1824, label %1470

1470:                                             ; preds = %1467
  %1471 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1472:                                             ; preds = %1452
  %1473 = load i32, ptr %118, align 4
  %1474 = sdiv i32 200000, %1473
  %1475 = add nsw i32 %1352, %1474
  call void @msleep(i32 noundef %1475) #11
  %1476 = call fastcc i32 @dagcm_val_get(ptr noundef %0)
  %1477 = icmp sgt i32 %1476, %1386
  br i1 %1477, label %1478, label %1548

1478:                                             ; preds = %1472
  %1479 = add i32 %1386, %1421
  %1480 = add i32 %1354, %1476
  %1481 = sub i32 %1479, %1480
  br label %1543

1482:                                             ; preds = %1425, %1417
  %1483 = icmp sgt i32 %1421, %1386
  %1484 = icmp sgt i32 %1421, %1354
  %1485 = select i1 %1483, i1 %1484, i1 false
  br i1 %1485, label %1486, label %1548

1486:                                             ; preds = %1482
  %1487 = sub i32 %1421, %1386
  %1488 = sub i32 %1354, %1386
  %1489 = shl i32 %1488, 1
  %1490 = icmp sgt i32 %1487, %1489
  br i1 %1490, label %1491, label %1548

1491:                                             ; preds = %1486
  %1492 = load i32, ptr %73, align 4
  %1493 = shl i32 %1492, 1
  %1494 = sdiv i32 %1493, 8
  %1495 = add i32 %1494, %1262
  br i1 %1283, label %1500, label %1496

1496:                                             ; preds = %1491
  %1497 = add i32 %1495, 1000
  %1498 = sdiv i32 %1497, 2000
  %1499 = shl nsw i32 %1498, 1
  br label %1503

1500:                                             ; preds = %1491
  %1501 = add i32 %1495, 500
  %1502 = sdiv i32 %1501, 1000
  br label %1503

1503:                                             ; preds = %1500, %1496
  %1504 = phi i32 [ %1502, %1500 ], [ %1499, %1496 ]
  %1505 = load i32, ptr %118, align 4
  %1506 = call fastcc i32 @rf_val_set(ptr noundef %0, i32 noundef %1504, i32 noundef %1266, i8 noundef zeroext %1284)
  %1507 = icmp slt i32 %1506, 0
  br i1 %1507, label %1508, label %1513

1508:                                             ; preds = %1503
  %1509 = load i32, ptr @verbose, align 4
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1824, label %1511

1511:                                             ; preds = %1508
  %1512 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1513:                                             ; preds = %1503
  %1514 = icmp slt i32 %1504, %1495
  %1515 = mul i32 %1504, 523288
  %1516 = add i32 %1515, %1495
  %1517 = mul i32 %1504, 1000
  %1518 = sub i32 %1517, %1495
  %1519 = select i1 %1514, i32 %1516, i32 %1518
  %1520 = shl i32 %1519, 13
  %1521 = sdiv i32 %1520, %1505
  %1522 = lshr i32 %1521, 8
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 15
  %1525 = trunc i32 %1521 to i8
  %1526 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext %1525, i8 noundef zeroext %1524)
  %1527 = icmp slt i32 %1526, 0
  br i1 %1527, label %1528, label %1533

1528:                                             ; preds = %1513
  %1529 = load i32, ptr @verbose, align 4
  %1530 = icmp eq i32 %1529, 0
  br i1 %1530, label %1824, label %1531

1531:                                             ; preds = %1528
  %1532 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1533:                                             ; preds = %1513
  %1534 = load i32, ptr %118, align 4
  %1535 = sdiv i32 200000, %1534
  %1536 = add nsw i32 %1352, %1535
  call void @msleep(i32 noundef %1536) #11
  %1537 = call fastcc i32 @dagcm_val_get(ptr noundef %0)
  %1538 = icmp sgt i32 %1537, %1386
  br i1 %1538, label %1539, label %1548

1539:                                             ; preds = %1533
  %1540 = add i32 %1386, %1354
  %1541 = sub i32 %1421, %1540
  %1542 = add i32 %1541, %1537
  br label %1543

1543:                                             ; preds = %1539, %1478
  %1544 = phi i32 [ %1481, %1478 ], [ %1542, %1539 ]
  %1545 = load i32, ptr %73, align 4
  %1546 = mul i32 %1545, %1544
  %1547 = sdiv i32 %1546, 300
  br label %1548

1548:                                             ; preds = %1543, %1533, %1486, %1482, %1472
  %1549 = phi i32 [ 0, %1472 ], [ 0, %1533 ], [ 0, %1486 ], [ 0, %1482 ], [ %1547, %1543 ]
  %1550 = load i32, ptr @verbose, align 4
  %1551 = icmp ugt i32 %1550, 2
  br i1 %1551, label %1554, label %1552

1552:                                             ; preds = %1548
  %1553 = add i32 %1549, %1262
  br label %1561

1554:                                             ; preds = %1548
  %1555 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.mb86a16_set_fe, i32 noundef %1262) #12
  %1556 = load i32, ptr @verbose, align 4
  %1557 = add i32 %1549, %1262
  %1558 = icmp ugt i32 %1556, 2
  br i1 %1558, label %1559, label %1561

1559:                                             ; preds = %1554
  %1560 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.mb86a16_set_fe, i32 noundef %1549, i32 noundef %1557) #12
  br label %1561

1561:                                             ; preds = %1559, %1554, %1552
  %1562 = phi i32 [ %1553, %1552 ], [ %1557, %1554 ], [ %1557, %1559 ]
  %1563 = load i32, ptr %117, align 4
  %1564 = mul i32 %1563, 1000
  %1565 = sub i32 %1564, %1562
  %1566 = call i32 @llvm.abs.i32(i32 %1565, i1 false)
  %1567 = icmp sgt i32 %1566, 3800
  br i1 %1567, label %1568, label %1573

1568:                                             ; preds = %1561
  %1569 = load i32, ptr @verbose, align 4
  %1570 = icmp ugt i32 %1569, 2
  br i1 %1570, label %1571, label %1756

1571:                                             ; preds = %1568
  %1572 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1756

1573:                                             ; preds = %1561
  %1574 = call fastcc i32 @S01T_set(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 3)
  %1575 = icmp slt i32 %1574, 0
  br i1 %1575, label %1576, label %1581

1576:                                             ; preds = %1573
  %1577 = load i32, ptr @verbose, align 4
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1824, label %1579

1579:                                             ; preds = %1576
  %1580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1581:                                             ; preds = %1573
  %1582 = call fastcc i32 @DAGC_data_set(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %1583 = icmp slt i32 %1582, 0
  br i1 %1583, label %1584, label %1589

1584:                                             ; preds = %1581
  %1585 = load i32, ptr @verbose, align 4
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1824, label %1587

1587:                                             ; preds = %1584
  %1588 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1589:                                             ; preds = %1581
  %1590 = load i32, ptr %73, align 4
  %1591 = icmp slt i32 %1590, 9376
  %1592 = zext i1 %1591 to i8
  call fastcc void @smrt_info_get(ptr noundef %0, i32 noundef %1590)
  %1593 = load i32, ptr %73, align 4
  %1594 = call fastcc i32 @smrt_set(ptr noundef %0, i32 noundef %1593)
  %1595 = icmp slt i32 %1594, 0
  br i1 %1595, label %1596, label %1601

1596:                                             ; preds = %1589
  %1597 = load i32, ptr @verbose, align 4
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1824, label %1599

1599:                                             ; preds = %1596
  %1600 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1601:                                             ; preds = %1589
  %1602 = call fastcc i32 @EN_set(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  %1603 = icmp slt i32 %1602, 0
  br i1 %1603, label %1604, label %1609

1604:                                             ; preds = %1601
  %1605 = load i32, ptr @verbose, align 4
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1824, label %1607

1607:                                             ; preds = %1604
  %1608 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1609:                                             ; preds = %1601
  %1610 = load i32, ptr %73, align 4
  %1611 = call fastcc i32 @AFCEXEN_set(ptr noundef %0, i32 noundef 1, i32 noundef %1610)
  %1612 = icmp slt i32 %1611, 0
  br i1 %1612, label %1613, label %1618

1613:                                             ; preds = %1609
  %1614 = load i32, ptr @verbose, align 4
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1824, label %1616

1616:                                             ; preds = %1613
  %1617 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1618:                                             ; preds = %1609
  br i1 %1591, label %1623, label %1619

1619:                                             ; preds = %1618
  %1620 = add i32 %1562, 1000
  %1621 = sdiv i32 %1620, 2000
  %1622 = shl nsw i32 %1621, 1
  br label %1626

1623:                                             ; preds = %1618
  %1624 = add i32 %1562, 500
  %1625 = sdiv i32 %1624, 1000
  br label %1626

1626:                                             ; preds = %1623, %1619
  %1627 = phi i32 [ %1625, %1623 ], [ %1622, %1619 ]
  %1628 = load i32, ptr %118, align 4
  %1629 = load i32, ptr %73, align 4
  %1630 = call fastcc i32 @rf_val_set(ptr noundef %0, i32 noundef %1627, i32 noundef %1629, i8 noundef zeroext %1592)
  %1631 = icmp slt i32 %1630, 0
  br i1 %1631, label %1632, label %1637

1632:                                             ; preds = %1626
  %1633 = load i32, ptr @verbose, align 4
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1824, label %1635

1635:                                             ; preds = %1632
  %1636 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1637:                                             ; preds = %1626
  %1638 = icmp slt i32 %1627, %1562
  %1639 = mul i32 %1627, 523288
  %1640 = add i32 %1639, %1562
  %1641 = mul i32 %1627, 1000
  %1642 = sub i32 %1641, %1562
  %1643 = select i1 %1638, i32 %1640, i32 %1642
  %1644 = shl i32 %1643, 13
  %1645 = sdiv i32 %1644, %1628
  %1646 = lshr i32 %1645, 8
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 15
  %1649 = trunc i32 %1645 to i8
  %1650 = call fastcc i32 @afcex_data_set(ptr noundef %0, i8 noundef zeroext %1649, i8 noundef zeroext %1648)
  %1651 = icmp slt i32 %1650, 0
  br i1 %1651, label %1652, label %1657

1652:                                             ; preds = %1637
  %1653 = load i32, ptr @verbose, align 4
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1824, label %1655

1655:                                             ; preds = %1652
  %1656 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1657:                                             ; preds = %1637
  %1658 = call fastcc i32 @srst(ptr noundef %0)
  %1659 = icmp slt i32 %1658, 0
  br i1 %1659, label %1660, label %1665

1660:                                             ; preds = %1657
  %1661 = load i32, ptr @verbose, align 4
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %1824, label %1663

1663:                                             ; preds = %1660
  %1664 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1665:                                             ; preds = %1657
  %1666 = load i32, ptr %73, align 4
  %1667 = sdiv i32 %1666, 2
  %1668 = add nsw i32 %1667, 10000
  %1669 = sdiv i32 %1668, %1666
  %1670 = add nsw i32 %1669, 7
  %1671 = icmp eq i32 %1670, 0
  %1672 = select i1 %1671, i32 1, i32 %1670
  %1673 = call i32 @msleep_interruptible(i32 noundef %1672) #11
  %1674 = call fastcc i32 @mb86a16_read(ptr noundef %0, i8 noundef zeroext 55, ptr noundef nonnull %60)
  %1675 = icmp eq i32 %1674, 2
  br i1 %1675, label %1681, label %1676

1676:                                             ; preds = %1665
  %1677 = load i32, ptr @verbose, align 4
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1824, label %1679

1679:                                             ; preds = %1676
  %1680 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1824

1681:                                             ; preds = %1665
  %1682 = load i8, ptr %60, align 1
  %1683 = icmp ugt i8 %1682, 110
  br i1 %1683, label %1684, label %1689

1684:                                             ; preds = %1681
  %1685 = load i32, ptr %73, align 4
  %1686 = sdiv i32 %1685, 2
  %1687 = add nsw i32 %1686, 917504
  %1688 = sdiv i32 %1687, %1685
  br label %1713

1689:                                             ; preds = %1681
  %1690 = icmp ugt i8 %1682, 105
  br i1 %1690, label %1691, label %1696

1691:                                             ; preds = %1689
  %1692 = load i32, ptr %73, align 4
  %1693 = sdiv i32 %1692, 2
  %1694 = add nsw i32 %1693, 1048576
  %1695 = sdiv i32 %1694, %1692
  br label %1713

1696:                                             ; preds = %1689
  %1697 = icmp ugt i8 %1682, 85
  br i1 %1697, label %1698, label %1703

1698:                                             ; preds = %1696
  %1699 = load i32, ptr %73, align 4
  %1700 = sdiv i32 %1699, 2
  %1701 = add nsw i32 %1700, 1310720
  %1702 = sdiv i32 %1701, %1699
  br label %1713

1703:                                             ; preds = %1696
  %1704 = icmp ugt i8 %1682, 65
  %1705 = load i32, ptr %73, align 4
  %1706 = sdiv i32 %1705, 2
  br i1 %1704, label %1707, label %1710

1707:                                             ; preds = %1703
  %1708 = add nsw i32 %1706, 1572864
  %1709 = sdiv i32 %1708, %1705
  br label %1713

1710:                                             ; preds = %1703
  %1711 = add nsw i32 %1706, 2097152
  %1712 = sdiv i32 %1711, %1705
  br label %1713

1713:                                             ; preds = %1710, %1707, %1698, %1691, %1684
  %1714 = phi i8 [ 6, %1684 ], [ 8, %1691 ], [ 8, %1698 ], [ 8, %1707 ], [ 8, %1710 ]
  %1715 = phi i8 [ 1, %1684 ], [ 2, %1691 ], [ 2, %1698 ], [ 2, %1707 ], [ 2, %1710 ]
  %1716 = phi i8 [ 4, %1684 ], [ 4, %1691 ], [ 5, %1698 ], [ 6, %1707 ], [ 7, %1710 ]
  %1717 = phi i32 [ %1688, %1684 ], [ %1695, %1691 ], [ %1702, %1698 ], [ %1709, %1707 ], [ %1712, %1710 ]
  %1718 = shl i32 %1717, 1
  %1719 = add i32 %1718, 14
  call fastcc void @S2T_set(ptr noundef %0, i8 noundef zeroext %1716)
  call fastcc void @S45T_set(ptr noundef %0, i8 noundef zeroext %1715, i8 noundef zeroext %1714)
  call fastcc void @Vi_set(ptr noundef %0)
  %1720 = call fastcc i32 @srst(ptr noundef %0)
  %1721 = call i32 @msleep_interruptible(i32 noundef %1719) #11
  %1722 = call fastcc i32 @sync_chk(ptr noundef %0, ptr noundef nonnull %61)
  %1723 = load i32, ptr @verbose, align 4
  %1724 = icmp ugt i32 %1723, 2
  %1725 = load i8, ptr %61, align 1
  br i1 %1724, label %1726, label %1729

1726:                                             ; preds = %1713
  %1727 = zext i8 %1725 to i32
  %1728 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.mb86a16_set_fe, i32 noundef %1727, i32 noundef %1722) #12
  br label %1729

1729:                                             ; preds = %1726, %1713
  switch i8 %1725, label %1740 [
    i8 0, label %1747
    i8 4, label %1730
  ]

1730:                                             ; preds = %1729
  %1731 = load i32, ptr %73, align 4
  %1732 = sdiv i32 %1731, 2
  %1733 = select i1 %1683, i32 786432, i32 1572864
  %1734 = add nsw i32 %1732, %1733
  %1735 = sdiv i32 %1734, %1731
  %1736 = call i32 @msleep_interruptible(i32 noundef %1735) #11
  %1737 = call fastcc i32 @sync_chk(ptr noundef %0, ptr noundef nonnull %62)
  %1738 = icmp eq i32 %1737, 0
  br i1 %1738, label %1739, label %1740

1739:                                             ; preds = %1730
  call fastcc void @iq_vt_set(ptr noundef %0, i8 noundef zeroext 1)
  call fastcc void @FEC_srst(ptr noundef %0)
  br label %1740

1740:                                             ; preds = %1739, %1730, %1729
  %1741 = load i32, ptr %73, align 4
  %1742 = sdiv i32 %1741, 2
  %1743 = select i1 %1683, i32 786432, i32 1572864
  %1744 = add nsw i32 %1742, %1743
  %1745 = sdiv i32 %1744, %1741
  %1746 = call i32 @msleep_interruptible(i32 noundef %1745) #11
  call fastcc void @SEQ_set(ptr noundef %0, i8 noundef zeroext 1)
  br label %1756

1747:                                             ; preds = %1729
  %1748 = load i32, ptr @verbose, align 4
  %1749 = icmp ugt i32 %1748, 2
  br i1 %1749, label %1750, label %1752

1750:                                             ; preds = %1747
  %1751 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1752

1752:                                             ; preds = %1750, %1747
  call fastcc void @SEQ_set(ptr noundef %0, i8 noundef zeroext 1)
  br label %1756

1753:                                             ; preds = %1093
  br i1 %1096, label %1754, label %1756

1754:                                             ; preds = %1753
  %1755 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1756

1756:                                             ; preds = %1754, %1753, %1752, %1740, %1571, %1568
  %1757 = call fastcc i32 @sync_chk(ptr noundef %0, ptr noundef nonnull %62)
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %191, label %1759

1759:                                             ; preds = %1756
  %1760 = load i32, ptr @verbose, align 4
  %1761 = icmp ugt i32 %1760, 2
  br i1 %1761, label %1762, label %1764

1762:                                             ; preds = %1759
  %1763 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.mb86a16_set_fe) #12
  br label %1764

1764:                                             ; preds = %1762, %1759
  %1765 = load i32, ptr %117, align 4
  %1766 = load i32, ptr %73, align 4
  call fastcc void @freqerr_chk(ptr noundef %0, i32 noundef %1765, i32 noundef %1766)
  br label %1767

1767:                                             ; preds = %1764, %191
  %1768 = phi i32 [ 0, %1764 ], [ -1, %191 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 21, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  %1769 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1769, i8 0, i32 16, i1 false) #11, !annotation !8
  %1770 = load ptr, ptr %78, align 4
  %1771 = load i8, ptr %1770, align 4
  %1772 = zext i8 %1771 to i16
  store i16 %1772, ptr %7, align 4
  %1773 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %1773, align 2
  store i16 1, ptr %1769, align 4
  %1774 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %1774, align 4
  %1775 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %1776 = load i8, ptr %1770, align 4
  %1777 = zext i8 %1776 to i16
  store i16 %1777, ptr %1775, align 4
  %1778 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %1778, align 2
  %1779 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %1779, align 4
  %1780 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %1780, align 4
  %1781 = load ptr, ptr %0, align 4
  %1782 = call i32 @i2c_transfer(ptr noundef %1781, ptr noundef nonnull %7, i32 noundef 2) #11
  %1783 = icmp eq i32 %1782, 2
  br i1 %1783, label %1789, label %1784

1784:                                             ; preds = %1767
  %1785 = load i32, ptr @verbose, align 4
  %1786 = icmp eq i32 %1785, 0
  br i1 %1786, label %1792, label %1787

1787:                                             ; preds = %1784
  %1788 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 21, i32 noundef %1782) #12
  br label %1792

1789:                                             ; preds = %1767
  %1790 = load i8, ptr %6, align 1
  %1791 = zext i8 %1790 to i32
  br label %1792

1792:                                             ; preds = %1789, %1787, %1784
  %1793 = phi i32 [ %1791, %1789 ], [ 0, %1787 ], [ 0, %1784 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 38, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %1794 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1794, i8 0, i32 16, i1 false) #11, !annotation !8
  %1795 = load ptr, ptr %78, align 4
  %1796 = load i8, ptr %1795, align 4
  %1797 = zext i8 %1796 to i16
  store i16 %1797, ptr %4, align 4
  %1798 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %1798, align 2
  store i16 1, ptr %1794, align 4
  %1799 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %1799, align 4
  %1800 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %1801 = load i8, ptr %1795, align 4
  %1802 = zext i8 %1801 to i16
  store i16 %1802, ptr %1800, align 4
  %1803 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %1803, align 2
  %1804 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %1804, align 4
  %1805 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %1805, align 4
  %1806 = load ptr, ptr %0, align 4
  %1807 = call i32 @i2c_transfer(ptr noundef %1806, ptr noundef nonnull %4, i32 noundef 2) #11
  %1808 = icmp eq i32 %1807, 2
  br i1 %1808, label %1815, label %1809

1809:                                             ; preds = %1792
  %1810 = load i32, ptr @verbose, align 4
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1812, label %1813

1812:                                             ; preds = %1809
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %1824

1813:                                             ; preds = %1809
  %1814 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 38, i32 noundef %1807) #12
  br label %1818

1815:                                             ; preds = %1792
  %1816 = load i8, ptr %3, align 1
  %1817 = zext i8 %1816 to i32
  br label %1818

1818:                                             ; preds = %1815, %1813
  %1819 = phi i32 [ 0, %1813 ], [ %1817, %1815 ]
  %1820 = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %1821 = icmp ugt i32 %1820, 2
  br i1 %1821, label %1822, label %1824

1822:                                             ; preds = %1818
  %1823 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.mb86a16_set_fe, i32 noundef %1793, i32 noundef %1819) #12
  br label %1824

1824:                                             ; preds = %1822, %1818, %1812, %1679, %1676, %1663, %1660, %1655, %1652, %1635, %1632, %1616, %1613, %1607, %1604, %1599, %1596, %1587, %1584, %1579, %1576, %1531, %1528, %1511, %1508, %1470, %1467, %1450, %1447, %1347, %1344, %1327, %1324, %1310, %1306, %1303, %1280, %1277, %1272, %1269, %1245, %1202, %1198, %1195, %1179, %1176, %1164, %1161, %1155, %1151, %1148, %1132, %1129, %1122, %1118, %1115, %1057, %1054, %888, %885, %874, %871, %598, %594, %584, %569, %565, %562, %546, %543, %531, %528, %444, %441, %434, %430, %427, %411, %407, %404, %388, %385, %379, %375, %372, %356, %352, %349, %333, %329, %326, %249
  %1825 = phi i32 [ -1, %329 ], [ -1, %333 ], [ -1, %352 ], [ -1, %356 ], [ -1, %375 ], [ -1, %379 ], [ -1, %385 ], [ -1, %388 ], [ -1, %407 ], [ -1, %411 ], [ -1, %430 ], [ -1, %434 ], [ -1, %441 ], [ -1, %444 ], [ -1, %528 ], [ -1, %531 ], [ -1, %543 ], [ -1, %546 ], [ -1, %565 ], [ -1, %569 ], [ -1, %594 ], [ -1, %598 ], [ -1, %871 ], [ -1, %874 ], [ -1, %885 ], [ -1, %888 ], [ -1, %1054 ], [ -1, %1057 ], [ -1, %1118 ], [ -1, %1122 ], [ -1, %1129 ], [ -1, %1132 ], [ -1, %1151 ], [ -1, %1155 ], [ -1, %1161 ], [ -1, %1164 ], [ -1, %1176 ], [ -1, %1179 ], [ -1, %1198 ], [ -1, %1202 ], [ -1, %1269 ], [ -1, %1272 ], [ -1, %1277 ], [ -1, %1280 ], [ -1, %1306 ], [ -1, %1310 ], [ -1, %1324 ], [ -1, %1327 ], [ -1, %1344 ], [ -1, %1347 ], [ -1, %1447 ], [ -1, %1450 ], [ -1, %1467 ], [ -1, %1470 ], [ -1, %1508 ], [ -1, %1511 ], [ -1, %1528 ], [ -1, %1531 ], [ -1, %1576 ], [ -1, %1579 ], [ -1, %1584 ], [ -1, %1587 ], [ -1, %1596 ], [ -1, %1599 ], [ -1, %1604 ], [ -1, %1607 ], [ -1, %1613 ], [ -1, %1616 ], [ -1, %1632 ], [ -1, %1635 ], [ -1, %1652 ], [ -1, %1655 ], [ -1, %1660 ], [ -1, %1663 ], [ -121, %1676 ], [ -121, %1679 ], [ %1768, %1818 ], [ %1768, %1822 ], [ -1, %326 ], [ -1, %249 ], [ -1, %349 ], [ -1, %372 ], [ -1, %404 ], [ -1, %427 ], [ -1, %562 ], [ -1, %1115 ], [ -1, %1148 ], [ -1, %1195 ], [ -1, %1303 ], [ -1, %584 ], [ %1768, %1812 ], [ -1, %1245 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %63) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %62) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %61) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %60) #11
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %59) #11
  ret i32 %1825
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @SEQ_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = shl i8 %1, 2
  %6 = or i8 %5, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 50, ptr %3, align 2
  %7 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %6, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %8, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = load i32, ptr @verbose, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8, ptr %10, align 4
  %19 = zext i8 %18 to i32
  %20 = zext i8 %6 to i32
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %19, i32 noundef 50, i32 noundef %20) #12
  br label %22

22:                                               ; preds = %17, %2
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 1) #11
  %25 = icmp eq i32 %24, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  %26 = load i32, ptr @verbose, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.SEQ_set) #12
  br label %31

31:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iq_vt_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = shl i8 %1, 5
  %6 = or i8 %5, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 6, ptr %3, align 2
  %7 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %6, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %8, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = load i32, ptr @verbose, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8, ptr %10, align 4
  %19 = zext i8 %18 to i32
  %20 = zext i8 %6 to i32
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %19, i32 noundef 6, i32 noundef %20) #12
  br label %22

22:                                               ; preds = %17, %2
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 1) #11
  %25 = icmp eq i32 %24, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  %26 = load i32, ptr @verbose, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.iq_vt_set) #12
  br label %31

31:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @DAGC_data_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = shl i8 %1, 3
  %7 = or i8 %6, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 45, ptr %4, align 2
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %7, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %15, align 4
  %16 = load i32, ptr @verbose, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8, ptr %11, align 4
  %20 = zext i8 %19 to i32
  %21 = zext i8 %7 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %20, i32 noundef 45, i32 noundef %21) #12
  br label %23

23:                                               ; preds = %18, %3
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 1) #11
  %26 = icmp eq i32 %25, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr @verbose, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.DAGC_data_set) #12
  br label %32

32:                                               ; preds = %30, %27, %23
  %33 = phi i32 [ 0, %23 ], [ -121, %27 ], [ -121, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @EN_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = shl i32 %1, 7
  %7 = shl i32 %2, 2
  %8 = or i32 %7, %6
  %9 = trunc i32 %8 to i8
  %10 = or i8 %9, 122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 73, ptr %4, align 2
  %11 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %10, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = load i32, ptr @verbose, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i8, ptr %14, align 4
  %23 = zext i8 %22 to i32
  %24 = zext i8 %10 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %23, i32 noundef 73, i32 noundef %24) #12
  br label %26

26:                                               ; preds = %21, %3
  %27 = load ptr, ptr %0, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 1) #11
  %29 = icmp eq i32 %28, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr @verbose, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.EN_set) #12
  br label %35

35:                                               ; preds = %33, %30, %26
  %36 = phi i32 [ 0, %26 ], [ -121, %30 ], [ -121, %33 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @AFCEXEN_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = icmp sgt i32 %2, 18875
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %2, 9375
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = icmp sgt i32 %2, 2250
  %11 = select i1 %10, i32 8, i32 4
  br label %12

12:                                               ; preds = %9, %7, %3
  %13 = phi i32 [ 16, %3 ], [ 12, %7 ], [ %11, %9 ]
  %14 = shl i32 %1, 5
  %15 = or i32 %13, %14
  %16 = trunc i32 %15 to i8
  %17 = or i8 %16, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 42, ptr %4, align 2
  %18 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %17, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %19 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %19, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %5, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %25, align 4
  %26 = load i32, ptr @verbose, align 4
  %27 = icmp ugt i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %12
  %29 = load i8, ptr %21, align 4
  %30 = zext i8 %29 to i32
  %31 = zext i8 %17 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %30, i32 noundef 42, i32 noundef %31) #12
  br label %33

33:                                               ; preds = %28, %12
  %34 = load ptr, ptr %0, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 1) #11
  %36 = icmp eq i32 %35, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr @verbose, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.AFCEXEN_set) #12
  br label %42

42:                                               ; preds = %40, %37, %33
  %43 = phi i32 [ 0, %33 ], [ -121, %37 ], [ -121, %40 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @S01T_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = zext i8 %1 to i32
  %7 = shl nuw nsw i32 %6, 3
  %8 = or i32 %7, %2
  %9 = trunc i32 %8 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 51, ptr %4, align 2
  %10 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %9, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %17, align 4
  %18 = load i32, ptr @verbose, align 4
  %19 = icmp ugt i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i8, ptr %13, align 4
  %22 = zext i8 %21 to i32
  %23 = and i32 %8, 255
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %22, i32 noundef 51, i32 noundef %23) #12
  br label %25

25:                                               ; preds = %20, %3
  %26 = load ptr, ptr %0, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %5, i32 noundef 1) #11
  %28 = icmp eq i32 %27, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @verbose, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.S01T_set) #12
  br label %34

34:                                               ; preds = %32, %29, %25
  %35 = phi i32 [ 0, %25 ], [ -121, %29 ], [ -121, %32 ]
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @smrt_info_get(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp sgt i32 %1, 37500
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %7, align 4
  br label %141

8:                                                ; preds = %2
  %9 = icmp sgt i32 %1, 30000
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %13, align 4
  br label %141

14:                                               ; preds = %8
  %15 = icmp sgt i32 %1, 26250
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %19, align 4
  br label %141

20:                                               ; preds = %14
  %21 = icmp sgt i32 %1, 22500
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %25, align 4
  br label %141

26:                                               ; preds = %20
  %27 = icmp sgt i32 %1, 18750
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %31, align 4
  br label %141

32:                                               ; preds = %26
  %33 = icmp sgt i32 %1, 15000
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %37, align 4
  br label %141

38:                                               ; preds = %32
  %39 = icmp sgt i32 %1, 13125
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %43, align 4
  br label %141

44:                                               ; preds = %38
  %45 = icmp sgt i32 %1, 11250
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %49, align 4
  br label %141

50:                                               ; preds = %44
  %51 = icmp sgt i32 %1, 9375
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 2, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %55, align 4
  br label %141

56:                                               ; preds = %50
  %57 = icmp sgt i32 %1, 7500
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 2, ptr %59, align 4
  %60 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %61, align 4
  br label %141

62:                                               ; preds = %56
  %63 = icmp sgt i32 %1, 6562
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 2, ptr %65, align 4
  %66 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %67, align 4
  br label %141

68:                                               ; preds = %62
  %69 = icmp sgt i32 %1, 5625
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 2, ptr %71, align 4
  %72 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %72, align 4
  %73 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %73, align 4
  br label %141

74:                                               ; preds = %68
  %75 = icmp sgt i32 %1, 4687
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 3, ptr %77, align 4
  %78 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %79, align 4
  br label %141

80:                                               ; preds = %74
  %81 = icmp sgt i32 %1, 3750
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 3, ptr %83, align 4
  %84 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %85, align 4
  br label %141

86:                                               ; preds = %80
  %87 = icmp sgt i32 %1, 3281
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 3, ptr %89, align 4
  %90 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %91, align 4
  br label %141

92:                                               ; preds = %86
  %93 = icmp sgt i32 %1, 2813
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 3, ptr %95, align 4
  %96 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %96, align 4
  %97 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %97, align 4
  br label %141

98:                                               ; preds = %92
  %99 = icmp sgt i32 %1, 2343
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 4, ptr %101, align 4
  %102 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %103, align 4
  br label %141

104:                                              ; preds = %98
  %105 = icmp sgt i32 %1, 1875
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 4, ptr %107, align 4
  %108 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %108, align 4
  %109 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %109, align 4
  br label %141

110:                                              ; preds = %104
  %111 = icmp sgt i32 %1, 1640
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 4, ptr %113, align 4
  %114 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %114, align 4
  %115 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %115, align 4
  br label %141

116:                                              ; preds = %110
  %117 = icmp sgt i32 %1, 1406
  br i1 %117, label %118, label %122

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 4, ptr %119, align 4
  %120 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %120, align 4
  %121 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %121, align 4
  br label %141

122:                                              ; preds = %116
  %123 = icmp sgt i32 %1, 1171
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 5, ptr %125, align 4
  %126 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 0, ptr %127, align 4
  br label %141

128:                                              ; preds = %122
  %129 = icmp sgt i32 %1, 938
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 5, ptr %131, align 4
  %132 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %132, align 4
  %133 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  store i32 1, ptr %133, align 4
  br label %141

134:                                              ; preds = %128
  %135 = icmp sgt i32 %1, 820
  %136 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  store i32 5, ptr %136, align 4
  %137 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  store i32 1, ptr %137, align 4
  %138 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  br i1 %135, label %139, label %140

139:                                              ; preds = %134
  store i32 0, ptr %138, align 4
  br label %141

140:                                              ; preds = %134
  store i32 1, ptr %138, align 4
  br label %141

141:                                              ; preds = %140, %139, %130, %124, %118, %112, %106, %100, %94, %88, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10, %4
  %142 = phi i32 [ 92000, %10 ], [ 92000, %34 ], [ 92000, %58 ], [ 92000, %82 ], [ 92000, %106 ], [ 92000, %130 ], [ 92000, %124 ], [ 92000, %100 ], [ 92000, %76 ], [ 92000, %52 ], [ 92000, %28 ], [ 92000, %4 ], [ 61333, %16 ], [ 61333, %40 ], [ 61333, %64 ], [ 61333, %88 ], [ 61333, %112 ], [ 61333, %139 ], [ 61333, %140 ], [ 61333, %118 ], [ 61333, %94 ], [ 61333, %70 ], [ 61333, %46 ], [ 61333, %22 ]
  %143 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 5
  store i32 %142, ptr %143, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smrt_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 -2, %10
  %14 = mul i32 %13, %1
  %15 = add i32 %14, %12
  %16 = shl i32 %15, 13
  %17 = sdiv i32 %12, 2
  %18 = add i32 %16, %17
  %19 = sdiv i32 %18, %12
  %20 = lshr i32 %19, 8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 15
  %23 = shl i32 %10, 2
  %24 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 1
  %27 = or i32 %26, %23
  %28 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i8 3, ptr %7, align 2
  %32 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %31, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %33, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %8, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %39, align 4
  %40 = load i32, ptr @verbose, align 4
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load i8, ptr %35, align 4
  %44 = zext i8 %43 to i32
  %45 = and i32 %30, 255
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %44, i32 noundef 3, i32 noundef %45) #12
  br label %47

47:                                               ; preds = %42, %2
  %48 = load ptr, ptr %0, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %8, i32 noundef 1) #11
  %50 = icmp eq i32 %49, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br i1 %50, label %51, label %90

51:                                               ; preds = %47
  %52 = trunc i32 %19 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 4, ptr %5, align 2
  %53 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %52, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %54 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %54, align 4, !annotation !8
  %55 = load ptr, ptr %34, align 4
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %6, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %59, align 4
  %60 = load i32, ptr @verbose, align 4
  %61 = icmp ugt i32 %60, 3
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i8, ptr %55, align 4
  %64 = zext i8 %63 to i32
  %65 = and i32 %19, 255
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %64, i32 noundef 4, i32 noundef %65) #12
  br label %67

67:                                               ; preds = %62, %51
  %68 = load ptr, ptr %0, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %6, i32 noundef 1) #11
  %70 = icmp eq i32 %69, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 5, ptr %3, align 2
  %72 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %22, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %73 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %73, align 4, !annotation !8
  %74 = load ptr, ptr %34, align 4
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %4, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %78, align 4
  %79 = load i32, ptr @verbose, align 4
  %80 = icmp ugt i32 %79, 3
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load i8, ptr %74, align 4
  %83 = zext i8 %82 to i32
  %84 = zext i8 %22 to i32
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %83, i32 noundef 5, i32 noundef %84) #12
  br label %86

86:                                               ; preds = %81, %71
  %87 = load ptr, ptr %0, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %4, i32 noundef 1) #11
  %89 = icmp eq i32 %88, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br i1 %89, label %95, label %90

90:                                               ; preds = %86, %67, %47
  %91 = load i32, ptr @verbose, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.smrt_set) #12
  br label %95

95:                                               ; preds = %93, %90, %86
  %96 = phi i32 [ 0, %86 ], [ -1, %90 ], [ -1, %93 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rf_val_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
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
  %15 = icmp sgt i32 %2, 37750
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = icmp sgt i32 %2, 18875
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = icmp ugt i32 %2, 30500
  %20 = select i1 %19, i8 6, i8 2
  br label %28

21:                                               ; preds = %16
  %22 = icmp sgt i32 %2, 5500
  %23 = select i1 %22, i8 25, i8 33
  %24 = icmp sgt i32 %2, 9375
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = icmp sgt i32 %2, 4625
  %27 = select i1 %26, i8 0, i8 4
  br label %28

28:                                               ; preds = %25, %21, %18, %4
  %29 = phi i8 [ %23, %21 ], [ %23, %25 ], [ 9, %4 ], [ 17, %18 ]
  %30 = phi i8 [ 2, %21 ], [ %27, %25 ], [ 6, %4 ], [ %20, %18 ]
  %31 = icmp slt i32 %1, 1060
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = icmp ult i32 %1, 1175
  br i1 %33, label %49, label %34

34:                                               ; preds = %32
  %35 = icmp ult i32 %1, 1305
  br i1 %35, label %49, label %36

36:                                               ; preds = %34
  %37 = icmp ult i32 %1, 1435
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = icmp ult i32 %1, 1570
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = icmp ult i32 %1, 1715
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = icmp ult i32 %1, 1845
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = icmp ult i32 %1, 1980
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = icmp ult i32 %1, 2080
  %48 = select i1 %47, i32 8, i32 9
  br label %49

49:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32, %28
  %50 = phi i32 [ 0, %28 ], [ 1, %32 ], [ 2, %34 ], [ 3, %36 ], [ 4, %38 ], [ 5, %40 ], [ 6, %42 ], [ 7, %44 ], [ %48, %46 ]
  %51 = zext i8 %3 to i32
  %52 = shl i32 %1, %51
  %53 = sdiv i32 %52, 2
  %54 = or i8 %30, %29
  %55 = shl nuw nsw i32 %51, 5
  %56 = lshr i32 %53, 12
  %57 = and i32 %56, 31
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i8
  %60 = lshr i32 %53, 4
  %61 = trunc i32 %60 to i8
  %62 = shl i32 %53, 4
  %63 = or i32 %50, %62
  %64 = trunc i32 %63 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i8 33, ptr %13, align 2
  %65 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 %54, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %66 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %66, align 4, !annotation !8
  %67 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %14, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %71, align 2
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %72, align 4
  %73 = load i32, ptr @verbose, align 4
  %74 = icmp ugt i32 %73, 3
  br i1 %74, label %75, label %80

75:                                               ; preds = %49
  %76 = load i8, ptr %68, align 4
  %77 = zext i8 %76 to i32
  %78 = zext i8 %54 to i32
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %77, i32 noundef 33, i32 noundef %78) #12
  br label %80

80:                                               ; preds = %75, %49
  %81 = load ptr, ptr %0, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %14, i32 noundef 1) #11
  %83 = icmp ne i32 %82, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i8 34, ptr %11, align 2
  %84 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %59, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %85 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %85, align 4, !annotation !8
  %86 = load ptr, ptr %67, align 4
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %12, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %89, align 2
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %90, align 4
  %91 = load i32, ptr @verbose, align 4
  %92 = icmp ugt i32 %91, 3
  br i1 %92, label %93, label %98

93:                                               ; preds = %80
  %94 = load i8, ptr %86, align 4
  %95 = zext i8 %94 to i32
  %96 = and i32 %58, 255
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %95, i32 noundef 34, i32 noundef %96) #12
  br label %98

98:                                               ; preds = %93, %80
  %99 = load ptr, ptr %0, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %12, i32 noundef 1) #11
  %101 = icmp ne i32 %100, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i8 35, ptr %9, align 2
  %102 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %61, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %103 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %103, align 4, !annotation !8
  %104 = load ptr, ptr %67, align 4
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %10, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %108, align 4
  %109 = load i32, ptr @verbose, align 4
  %110 = icmp ugt i32 %109, 3
  br i1 %110, label %111, label %116

111:                                              ; preds = %98
  %112 = load i8, ptr %104, align 4
  %113 = zext i8 %112 to i32
  %114 = and i32 %60, 255
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %113, i32 noundef 35, i32 noundef %114) #12
  br label %116

116:                                              ; preds = %111, %98
  %117 = load ptr, ptr %0, align 4
  %118 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %10, i32 noundef 1) #11
  %119 = icmp ne i32 %118, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i8 36, ptr %7, align 2
  %120 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %64, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %121 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %121, align 4, !annotation !8
  %122 = load ptr, ptr %67, align 4
  %123 = load i8, ptr %122, align 4
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %8, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %125, align 2
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %126, align 4
  %127 = load i32, ptr @verbose, align 4
  %128 = icmp ugt i32 %127, 3
  br i1 %128, label %129, label %134

129:                                              ; preds = %116
  %130 = load i8, ptr %122, align 4
  %131 = zext i8 %130 to i32
  %132 = and i32 %63, 255
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %131, i32 noundef 36, i32 noundef %132) #12
  br label %134

134:                                              ; preds = %129, %116
  %135 = load ptr, ptr %0, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %8, i32 noundef 1) #11
  %137 = icmp ne i32 %136, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 37, ptr %5, align 2
  %138 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 1, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %139 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %139, align 4, !annotation !8
  %140 = load ptr, ptr %67, align 4
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %6, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %144, align 4
  %145 = load i32, ptr @verbose, align 4
  %146 = icmp ugt i32 %145, 3
  br i1 %146, label %147, label %151

147:                                              ; preds = %134
  %148 = load i8, ptr %140, align 4
  %149 = zext i8 %148 to i32
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %149, i32 noundef 37, i32 noundef 1) #12
  br label %151

151:                                              ; preds = %147, %134
  %152 = load ptr, ptr %0, align 4
  %153 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %6, i32 noundef 1) #11
  %154 = icmp ne i32 %153, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %155 = select i1 %154, i1 true, i1 %137
  %156 = select i1 %155, i1 true, i1 %119
  %157 = select i1 %156, i1 true, i1 %101
  %158 = select i1 %157, i1 true, i1 %83
  br i1 %158, label %159, label %164

159:                                              ; preds = %151
  %160 = load i32, ptr @verbose, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.rf_val_set) #12
  br label %164

164:                                              ; preds = %162, %159, %151
  %165 = phi i32 [ -121, %159 ], [ -121, %162 ], [ 0, %151 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @afcex_data_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i8 43, ptr %6, align 2
  %8 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %1, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %9 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %7, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = load i32, ptr @verbose, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8, ptr %11, align 4
  %20 = zext i8 %19 to i32
  %21 = zext i8 %1 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %20, i32 noundef 43, i32 noundef %21) #12
  br label %23

23:                                               ; preds = %18, %3
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %7, i32 noundef 1) #11
  %26 = icmp eq i32 %25, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 44, ptr %4, align 2
  %28 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %29 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %29, align 4, !annotation !8
  %30 = load ptr, ptr %10, align 4
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %5, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %34, align 4
  %35 = load i32, ptr @verbose, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load i8, ptr %30, align 4
  %39 = zext i8 %38 to i32
  %40 = zext i8 %2 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %39, i32 noundef 44, i32 noundef %40) #12
  br label %42

42:                                               ; preds = %37, %27
  %43 = load ptr, ptr %0, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %5, i32 noundef 1) #11
  %45 = icmp eq i32 %44, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br i1 %45, label %51, label %46

46:                                               ; preds = %42, %23
  %47 = load i32, ptr @verbose, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.afcex_data_set) #12
  br label %51

51:                                               ; preds = %49, %46, %42
  %52 = phi i32 [ 0, %42 ], [ -1, %46 ], [ -1, %49 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @srst(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i8 12, ptr %2, align 2
  %4 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 4, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = load i32, ptr @verbose, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8, ptr %7, align 4
  %16 = zext i8 %15 to i32
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %16, i32 noundef 12, i32 noundef 4) #12
  br label %18

18:                                               ; preds = %14, %1
  %19 = load ptr, ptr %0, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #11
  %21 = icmp eq i32 %20, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr @verbose, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.srst) #12
  br label %27

27:                                               ; preds = %25, %22, %18
  %28 = phi i32 [ 0, %18 ], [ -121, %22 ], [ -121, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @afcofs_data_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i8 88, ptr %6, align 2
  %8 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %1, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %9 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %7, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = load i32, ptr @verbose, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8, ptr %11, align 4
  %20 = zext i8 %19 to i32
  %21 = zext i8 %1 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %20, i32 noundef 88, i32 noundef %21) #12
  br label %23

23:                                               ; preds = %18, %3
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %7, i32 noundef 1) #11
  %26 = icmp eq i32 %25, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 89, ptr %4, align 2
  %28 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %29 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %29, align 4, !annotation !8
  %30 = load ptr, ptr %10, align 4
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %5, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %34, align 4
  %35 = load i32, ptr @verbose, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load i8, ptr %30, align 4
  %39 = zext i8 %38 to i32
  %40 = zext i8 %2 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %39, i32 noundef 89, i32 noundef %40) #12
  br label %42

42:                                               ; preds = %37, %27
  %43 = load ptr, ptr %0, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %5, i32 noundef 1) #11
  %45 = icmp eq i32 %44, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br i1 %45, label %51, label %46

46:                                               ; preds = %42, %23
  %47 = load i32, ptr @verbose, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.afcofs_data_set) #12
  br label %51

51:                                               ; preds = %49, %46, %42
  %52 = phi i32 [ 0, %42 ], [ -121, %46 ], [ -121, %49 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dagcm_val_get(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 69, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #11, !annotation !8
  %9 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %20, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %7, i32 noundef 2) #11
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 69, i32 noundef %22) #12
  br label %46

29:                                               ; preds = %1
  %30 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 70, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %31 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #11, !annotation !8
  %32 = load ptr, ptr %9, align 4
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %4, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %35, align 2
  store i16 1, ptr %31, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %38 = load i8, ptr %32, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %42, align 4
  %43 = load ptr, ptr %0, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %4, i32 noundef 2) #11
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %52, label %47

46:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %59

47:                                               ; preds = %29
  %48 = load i32, ptr @verbose, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 70, i32 noundef %44) #12
  br label %58

52:                                               ; preds = %29
  %53 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = zext i8 %30 to i32
  %57 = or i32 %55, %56
  br label %64

58:                                               ; preds = %50, %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, ptr @verbose, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dagcm_val_get) #12
  br label %64

64:                                               ; preds = %62, %59, %52
  %65 = phi i32 [ %57, %52 ], [ -121, %59 ], [ -121, %62 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @S2T_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = or i8 %1, 112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 52, ptr %3, align 2
  %6 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = load i32, ptr @verbose, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8, ptr %9, align 4
  %18 = zext i8 %17 to i32
  %19 = zext i8 %5 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %18, i32 noundef 52, i32 noundef %19) #12
  br label %21

21:                                               ; preds = %16, %2
  %22 = load ptr, ptr %0, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %4, i32 noundef 1) #11
  %24 = icmp eq i32 %23, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.S2T_set) #12
  br label %30

30:                                               ; preds = %28, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @S45T_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = shl i8 %2, 4
  %7 = or i8 %6, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 53, ptr %4, align 2
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %7, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %15, align 4
  %16 = load i32, ptr @verbose, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8, ptr %11, align 4
  %20 = zext i8 %19 to i32
  %21 = zext i8 %7 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %20, i32 noundef 53, i32 noundef %21) #12
  br label %23

23:                                               ; preds = %18, %3
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 1) #11
  %26 = icmp eq i32 %25, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  %27 = load i32, ptr @verbose, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.S45T_set) #12
  br label %32

32:                                               ; preds = %30, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @Vi_set(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 59, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 4, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = load i32, ptr @verbose, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8, ptr %9, align 4
  %18 = zext i8 %17 to i32
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %18, i32 noundef 59, i32 noundef 4) #12
  br label %20

20:                                               ; preds = %16, %1
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #11
  %23 = icmp eq i32 %22, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i8 60, ptr %2, align 2
  %25 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -11, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  %27 = load ptr, ptr %8, align 4
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %3, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %31, align 4
  %32 = load i32, ptr @verbose, align 4
  %33 = icmp ugt i32 %32, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i8, ptr %27, align 4
  %36 = zext i8 %35 to i32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %36, i32 noundef 60, i32 noundef 245) #12
  br label %38

38:                                               ; preds = %34, %24
  %39 = load ptr, ptr %0, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %3, i32 noundef 1) #11
  %41 = icmp eq i32 %40, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  %42 = load i32, ptr @verbose, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %50, label %48

45:                                               ; preds = %20
  %46 = load i32, ptr @verbose, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %38
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.Vi_set) #12
  br label %50

50:                                               ; preds = %48, %45, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sync_chk(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 13, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false) #11, !annotation !8
  %7 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  store i16 1, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %14 = load i8, ptr %8, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %18, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 2) #11
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, ptr @verbose, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %44

26:                                               ; preds = %2
  %27 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %28 = load i32, ptr @verbose, align 4
  %29 = icmp ugt i32 %28, 2
  br i1 %29, label %34, label %37

30:                                               ; preds = %22
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 13, i32 noundef %20) #12
  %32 = load i32, ptr @verbose, align 4
  %33 = icmp eq i32 %32, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br i1 %33, label %44, label %42

34:                                               ; preds = %26
  %35 = zext i8 %27 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @__func__.sync_chk, i32 noundef %35) #12
  br label %37

37:                                               ; preds = %34, %26
  %38 = and i8 %27, 1
  %39 = zext i8 %38 to i32
  %40 = lshr i8 %27, 2
  %41 = and i8 %40, 7
  br label %44

42:                                               ; preds = %30
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.sync_chk) #12
  br label %44

44:                                               ; preds = %42, %37, %30, %25
  %45 = phi i8 [ %41, %37 ], [ 0, %30 ], [ 0, %42 ], [ 0, %25 ]
  %46 = phi i32 [ %39, %37 ], [ -121, %30 ], [ -121, %42 ], [ -121, %25 ]
  store i8 %45, ptr %1, align 1
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @FEC_srst(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i8 12, ptr %2, align 2
  %4 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 2, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = load i32, ptr @verbose, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8, ptr %7, align 4
  %16 = zext i8 %15 to i32
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mb86a16_write, i32 noundef %16, i32 noundef 12, i32 noundef 2) #12
  br label %18

18:                                               ; preds = %14, %1
  %19 = load ptr, ptr %0, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #11
  %21 = icmp eq i32 %20, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  %22 = load i32, ptr @verbose, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.FEC_srst) #12
  br label %27

27:                                               ; preds = %25, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @freqerr_chk(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [1 x i8], align 1
  %14 = alloca [1 x i8], align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [1 x i8], align 1
  %17 = alloca [1 x i8], align 1
  %18 = alloca [2 x %struct.i2c_msg], align 4
  %19 = alloca [1 x i8], align 1
  %20 = alloca [1 x i8], align 1
  %21 = alloca [2 x %struct.i2c_msg], align 4
  %22 = alloca [1 x i8], align 1
  %23 = alloca [1 x i8], align 1
  %24 = alloca [2 x %struct.i2c_msg], align 4
  %25 = alloca [1 x i8], align 1
  %26 = alloca [1 x i8], align 1
  %27 = alloca [2 x %struct.i2c_msg], align 4
  %28 = alloca [1 x i8], align 1
  %29 = alloca [1 x i8], align 1
  %30 = alloca [2 x %struct.i2c_msg], align 4
  %31 = alloca [1 x i8], align 1
  %32 = alloca [1 x i8], align 1
  %33 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #11
  store i8 67, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %32) #11
  store i8 0, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %33) #11
  %34 = getelementptr inbounds i8, ptr %33, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #11, !annotation !8
  %35 = getelementptr inbounds %struct.mb86a16_state, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %33, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %39, align 2
  store i16 1, ptr %34, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %31, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1
  %42 = load i8, ptr %36, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 1
  store i16 1, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 2
  store i16 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 3
  store ptr %32, ptr %46, align 4
  %47 = load ptr, ptr %0, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %33, i32 noundef 2) #11
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %66

50:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #11
  store i8 73, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #11
  store i8 0, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #11
  %51 = getelementptr inbounds i8, ptr %30, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %51, i8 0, i32 16, i1 false) #11, !annotation !8
  %52 = load ptr, ptr %35, align 4
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %30, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %55, align 2
  store i16 1, ptr %51, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %28, ptr %56, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1
  %58 = load i8, ptr %52, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %57, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 1
  store i16 1, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 2
  store i16 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 3
  store ptr %29, ptr %62, align 4
  %63 = load ptr, ptr %0, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %30, i32 noundef 2) #11
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %78, label %72

66:                                               ; preds = %3
  %67 = load i32, ptr @verbose, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 67, i32 noundef %48) #12
  br label %71

71:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #11
  br label %268

72:                                               ; preds = %50
  %73 = load i32, ptr @verbose, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 73, i32 noundef %64) #12
  br label %77

77:                                               ; preds = %75, %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #11
  br label %268

78:                                               ; preds = %50
  %79 = load i8, ptr %29, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #11
  %80 = and i8 %79, 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #11
  store i8 42, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #11
  store i8 0, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #11
  %83 = getelementptr inbounds i8, ptr %27, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %83, i8 0, i32 16, i1 false) #11, !annotation !8
  %84 = load ptr, ptr %35, align 4
  %85 = load i8, ptr %84, align 4
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %27, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %87, align 2
  store i16 1, ptr %83, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %25, ptr %88, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1
  %90 = load i8, ptr %84, align 4
  %91 = zext i8 %90 to i16
  store i16 %91, ptr %89, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 1
  store i16 1, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 2
  store i16 1, ptr %93, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 3
  store ptr %26, ptr %94, align 4
  %95 = load ptr, ptr %0, align 4
  %96 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %27, i32 noundef 2) #11
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %103, label %98

98:                                               ; preds = %82
  %99 = load i32, ptr @verbose, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 42, i32 noundef %96) #12
  br label %107

103:                                              ; preds = %82
  %104 = load i8, ptr %26, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #11
  %105 = and i8 %104, 32
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %199, label %153

107:                                              ; preds = %101, %98
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #11
  br label %268

108:                                              ; preds = %78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #11
  store i8 14, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #11
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #11
  %109 = getelementptr inbounds i8, ptr %24, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %109, i8 0, i32 16, i1 false) #11, !annotation !8
  %110 = load ptr, ptr %35, align 4
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %24, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %113, align 2
  store i16 1, ptr %109, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %22, ptr %114, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1
  %116 = load i8, ptr %110, align 4
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 1
  store i16 1, ptr %118, align 2
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 2
  store i16 1, ptr %119, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 3
  store ptr %23, ptr %120, align 4
  %121 = load ptr, ptr %0, align 4
  %122 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %24, i32 noundef 2) #11
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %140

124:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #11
  store i8 15, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #11
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #11
  %125 = getelementptr inbounds i8, ptr %21, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %125, i8 0, i32 16, i1 false) #11, !annotation !8
  %126 = load ptr, ptr %35, align 4
  %127 = load i8, ptr %126, align 4
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %21, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %129, align 2
  store i16 1, ptr %125, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %19, ptr %130, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1
  %132 = load i8, ptr %126, align 4
  %133 = zext i8 %132 to i16
  store i16 %133, ptr %131, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 1
  store i16 1, ptr %134, align 2
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 2
  store i16 1, ptr %135, align 4
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 3
  store ptr %20, ptr %136, align 4
  %137 = load ptr, ptr %0, align 4
  %138 = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %21, i32 noundef 2) #11
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %146, label %147

140:                                              ; preds = %108
  %141 = load i32, ptr @verbose, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 14, i32 noundef %122) #12
  br label %145

145:                                              ; preds = %143, %140
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #11
  br label %268

146:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #11
  br label %198

147:                                              ; preds = %124
  %148 = load i32, ptr @verbose, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 15, i32 noundef %138) #12
  br label %152

152:                                              ; preds = %150, %147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #11
  br label %268

153:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #11
  store i8 43, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #11
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #11
  %154 = getelementptr inbounds i8, ptr %18, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %154, i8 0, i32 16, i1 false) #11, !annotation !8
  %155 = load ptr, ptr %35, align 4
  %156 = load i8, ptr %155, align 4
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %18, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %158, align 2
  store i16 1, ptr %154, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %16, ptr %159, align 4
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1
  %161 = load i8, ptr %155, align 4
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %160, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 1
  store i16 1, ptr %163, align 2
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 2
  store i16 1, ptr %164, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 3
  store ptr %17, ptr %165, align 4
  %166 = load ptr, ptr %0, align 4
  %167 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %18, i32 noundef 2) #11
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %185

169:                                              ; preds = %153
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  store i8 44, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #11
  %170 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %170, i8 0, i32 16, i1 false) #11, !annotation !8
  %171 = load ptr, ptr %35, align 4
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %15, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %174, align 2
  store i16 1, ptr %170, align 4
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %13, ptr %175, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %177 = load i8, ptr %171, align 4
  %178 = zext i8 %177 to i16
  store i16 %178, ptr %176, align 4
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %179, align 2
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %180, align 4
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %14, ptr %181, align 4
  %182 = load ptr, ptr %0, align 4
  %183 = call i32 @i2c_transfer(ptr noundef %182, ptr noundef nonnull %15, i32 noundef 2) #11
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %191, label %192

185:                                              ; preds = %153
  %186 = load i32, ptr @verbose, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 43, i32 noundef %167) #12
  br label %190

190:                                              ; preds = %188, %185
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  br label %268

191:                                              ; preds = %169
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  br label %198

192:                                              ; preds = %169
  %193 = load i32, ptr @verbose, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %192
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 44, i32 noundef %183) #12
  br label %197

197:                                              ; preds = %195, %192
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  br label %268

198:                                              ; preds = %191, %146
  call fastcc void @smrt_info_get(ptr noundef %0, i32 noundef %2)
  br label %199

199:                                              ; preds = %198, %103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 34, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #11
  %200 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %200, i8 0, i32 16, i1 false) #11, !annotation !8
  %201 = load ptr, ptr %35, align 4
  %202 = load i8, ptr %201, align 4
  %203 = zext i8 %202 to i16
  store i16 %203, ptr %12, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %204, align 2
  store i16 1, ptr %200, align 4
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %205, align 4
  %206 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %207 = load i8, ptr %201, align 4
  %208 = zext i8 %207 to i16
  store i16 %208, ptr %206, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %209, align 2
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %210, align 4
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %211, align 4
  %212 = load ptr, ptr %0, align 4
  %213 = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %12, i32 noundef 2) #11
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %215, label %231

215:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 35, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  %216 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %216, i8 0, i32 16, i1 false) #11, !annotation !8
  %217 = load ptr, ptr %35, align 4
  %218 = load i8, ptr %217, align 4
  %219 = zext i8 %218 to i16
  store i16 %219, ptr %9, align 4
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %220, align 2
  store i16 1, ptr %216, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %221, align 4
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %223 = load i8, ptr %217, align 4
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %222, align 4
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %225, align 2
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %226, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %227, align 4
  %228 = load ptr, ptr %0, align 4
  %229 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %9, i32 noundef 2) #11
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %237, label %253

231:                                              ; preds = %199
  %232 = load i32, ptr @verbose, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 34, i32 noundef %213) #12
  br label %236

236:                                              ; preds = %234, %231
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  br label %268

237:                                              ; preds = %215
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 36, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %238 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %238, i8 0, i32 16, i1 false) #11, !annotation !8
  %239 = load ptr, ptr %35, align 4
  %240 = load i8, ptr %239, align 4
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %6, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %242, align 2
  store i16 1, ptr %238, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %243, align 4
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %245 = load i8, ptr %239, align 4
  %246 = zext i8 %245 to i16
  store i16 %246, ptr %244, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %247, align 2
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %248, align 4
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %249, align 4
  %250 = load ptr, ptr %0, align 4
  %251 = call i32 @i2c_transfer(ptr noundef %250, ptr noundef nonnull %6, i32 noundef 2) #11
  %252 = icmp eq i32 %251, 2
  br i1 %252, label %259, label %260

253:                                              ; preds = %215
  %254 = load i32, ptr @verbose, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 35, i32 noundef %229) #12
  br label %258

258:                                              ; preds = %256, %253
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  br label %268

259:                                              ; preds = %237
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %273

260:                                              ; preds = %237
  %261 = load i32, ptr @verbose, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %273

264:                                              ; preds = %260
  %265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mb86a16_read, i32 noundef 36, i32 noundef %251) #12
  %266 = load i32, ptr @verbose, align 4
  %267 = icmp eq i32 %266, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br i1 %267, label %273, label %271

268:                                              ; preds = %258, %236, %197, %190, %152, %145, %107, %77, %71
  %269 = load i32, ptr @verbose, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %268, %264
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.freqerr_chk) #12
  br label %273

273:                                              ; preds = %271, %268, %264, %263, %259
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
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
