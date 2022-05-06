; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cx24120.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24120.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24120_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24120_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24120_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cx24120_modfec_table = type { i32, i32, i32, i8 }
%struct.cx24120_modfec = type { i32, i32, i32, i8 }
%struct.cx24120_clock_ratios_table = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx24120_state = type { ptr, ptr, %struct.dvb_frontend, i8, i8, i8, %struct.cx24120_tuning, %struct.cx24120_tuning, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cx24120_tuning = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.cx24120_cmd = type { i8, i8, [30 x i8] }
%struct.cx24120_config = type { i8, i32, %struct.cx24120_initial_mpeg_config, ptr, i16 }
%struct.cx24120_initial_mpeg_config = type { i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@.str = private unnamed_addr constant [69 x i8] c"\016cx24120: Conexant cx24120/cx24118 - DVBS/S2 Satellite demod/tuner\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"\013cx24120: ### ERROR: Unable to allocate memory for cx24120_state\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\016cx24120: Demod cx24120 rev. 0x07 detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\016cx24120: Demod cx24120 rev. 0x05 detected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"\013cx24120: ### ERROR: Unsupported demod revision: 0x%x detected.\0A\00", align 1
@cx24120_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24120/CX24118\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @cx24120_release, ptr null, ptr @cx24120_init, ptr @cx24120_sleep, ptr null, ptr null, ptr null, ptr @cx24120_tune, ptr @cx24120_get_algo, ptr @cx24120_set_frontend, ptr null, ptr @cx24120_get_frontend, ptr @cx24120_read_status, ptr @cx24120_read_ber, ptr @cx24120_read_signal_strength, ptr @cx24120_read_snr, ptr @cx24120_read_ucblocks, ptr null, ptr @cx24120_send_diseqc_msg, ptr null, ptr @cx24120_diseqc_send_burst, ptr @cx24120_set_tone, ptr @cx24120_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"\016cx24120: Conexant cx24120/cx24118 attached.\0A\00", align 1
@__kstrtab_cx24120_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24120_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24120_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24120_attach to i32), ptr @__kstrtab_cx24120_attach, ptr @__kstrtabns_cx24120_attach }, section "___ksymtab+cx24120_attach", align 4
@__UNIQUE_ID_description249 = internal constant [70 x i8] c"description=DVB Frontend module for Conexant CX24120/CX24118 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [20 x i8] c"author=Jemma Denson\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"\013cx24120: ### ERROR: Read error: reg=0x%02x, ret=%i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"dvb-fe-cx24120-1.20.58.2.fw\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"\013cx24120: ### ERROR: Could not load firmware (%s): %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"\013cx24120: ### ERROR: Firmware upload failed. Last byte returned=0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\013cx24120: ### ERROR: Error tuner start! :(\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\013cx24120: ### ERROR: Error set VCO! :(\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\013cx24120: ### ERROR: Error set bandwidth!\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\013cx24120: ### ERROR: Error initialising tuner!\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"\013cx24120: ### ERROR: Error initialising mpeg output. :(\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"\013cx24120: ### ERROR: Error setting ber window\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\016cx24120: FW version %i.%i.%i.%i\0A\00", align 1
@.str.17 = private unnamed_addr constant [79 x i8] c"\013cx24120: ### ERROR: Write error: i2c_write error(err == %i, 0x%02x: 0x%02x)\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"\013cx24120: ### ERROR: i2c_write error(err == %i, 0x%02x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"\013cx24120: ### ERROR: Error sending message to firmware\0A\00", align 1
@modfec_table = internal unnamed_addr constant [20 x %struct.cx24120_modfec_table] [%struct.cx24120_modfec_table { i32 5, i32 0, i32 1, i8 46 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 2, i8 47 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 3, i8 48 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 5, i8 49 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 6, i8 50 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 7, i8 51 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 1, i8 4 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 10, i8 5 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 2, i8 6 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 3, i8 7 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 4, i8 8 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 5, i8 9 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 8, i8 10 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 11, i8 11 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 10, i8 12 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 2, i8 13 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 3, i8 14 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 5, i8 15 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 8, i8 16 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 11, i8 17 }], align 4
@modfec_lookup_table = internal unnamed_addr constant [21 x %struct.cx24120_modfec] [%struct.cx24120_modfec { i32 5, i32 0, i32 1, i8 1 }, %struct.cx24120_modfec { i32 5, i32 0, i32 2, i8 2 }, %struct.cx24120_modfec { i32 5, i32 0, i32 3, i8 3 }, %struct.cx24120_modfec { i32 5, i32 0, i32 4, i8 4 }, %struct.cx24120_modfec { i32 5, i32 0, i32 5, i8 5 }, %struct.cx24120_modfec { i32 5, i32 0, i32 6, i8 6 }, %struct.cx24120_modfec { i32 5, i32 0, i32 7, i8 7 }, %struct.cx24120_modfec { i32 6, i32 0, i32 1, i8 4 }, %struct.cx24120_modfec { i32 6, i32 0, i32 10, i8 5 }, %struct.cx24120_modfec { i32 6, i32 0, i32 2, i8 6 }, %struct.cx24120_modfec { i32 6, i32 0, i32 3, i8 7 }, %struct.cx24120_modfec { i32 6, i32 0, i32 4, i8 8 }, %struct.cx24120_modfec { i32 6, i32 0, i32 5, i8 9 }, %struct.cx24120_modfec { i32 6, i32 0, i32 8, i8 10 }, %struct.cx24120_modfec { i32 6, i32 0, i32 11, i8 11 }, %struct.cx24120_modfec { i32 6, i32 9, i32 10, i8 12 }, %struct.cx24120_modfec { i32 6, i32 9, i32 2, i8 13 }, %struct.cx24120_modfec { i32 6, i32 9, i32 3, i8 14 }, %struct.cx24120_modfec { i32 6, i32 9, i32 5, i8 15 }, %struct.cx24120_modfec { i32 6, i32 9, i32 8, i8 16 }, %struct.cx24120_modfec { i32 6, i32 9, i32 11, i8 17 }], align 4
@.str.20 = private unnamed_addr constant [53 x i8] c"\013cx24120: ### ERROR: error reading signal strength\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@clock_ratios_table = internal unnamed_addr constant [33 x %struct.cx24120_clock_ratios_table] [%struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 1, i32 273088, i32 254505, i32 274 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 10, i32 17272, i32 13395, i32 330 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 2, i32 24344, i32 16967, i32 367 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 3, i32 410788, i32 254505, i32 413 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 4, i32 438328, i32 254505, i32 440 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 5, i32 30464, i32 16967, i32 459 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 8, i32 487832, i32 254505, i32 490 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 11, i32 493952, i32 254505, i32 496 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 10, i32 328168, i32 169905, i32 494 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 2, i32 24344, i32 11327, i32 550 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 3, i32 410788, i32 169905, i32 618 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 5, i32 30464, i32 11327, i32 688 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 8, i32 487832, i32 169905, i32 735 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 11, i32 493952, i32 169905, i32 744 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 1, i32 273088, i32 260709, i32 268 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 10, i32 328168, i32 260709, i32 322 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 2, i32 121720, i32 86903, i32 358 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 3, i32 410788, i32 260709, i32 403 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 4, i32 438328, i32 260709, i32 430 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 5, i32 152320, i32 86903, i32 448 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 8, i32 487832, i32 260709, i32 479 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 11, i32 493952, i32 260709, i32 485 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 10, i32 328168, i32 173853, i32 483 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 2, i32 121720, i32 57951, i32 537 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 3, i32 410788, i32 173853, i32 604 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 5, i32 152320, i32 57951, i32 672 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 8, i32 487832, i32 173853, i32 718 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 11, i32 493952, i32 173853, i32 727 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 1, i32 152592, i32 152592, i32 256 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 2, i32 305184, i32 228888, i32 341 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 3, i32 457776, i32 305184, i32 384 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 5, i32 762960, i32 457776, i32 427 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 7, i32 1068144, i32 610368, i32 448 }], align 4
@.str.21 = private unnamed_addr constant [61 x i8] c"\016cx24120: Clock ratio not found - data reception in danger\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"\013cx24120: ### ERROR: send 1st message(0x%x) failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"\013cx24120: ### ERROR: send 2nd message(0x%x) failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"\013cx24120: ### ERROR: Too long waiting for diseqc.\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"\013cx24120: ### ERROR: Invalid tone=%d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_cx24120_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cx24120_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1152) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %45

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.cx24120_state, ptr %8, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  store ptr %1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #14
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #14, !annotation !8
  %15 = load i8, ptr %0, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %22, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #14
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %29, label %25

25:                                               ; preds = %12
  %26 = load i8, ptr %3, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %27, i32 noundef %23) #12
  br label %32

29:                                               ; preds = %12
  %30 = load i8, ptr %4, align 1
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ %23, %25 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  switch i32 %33, label %35 [
    i32 7, label %37
    i32 5, label %34
  ]

34:                                               ; preds = %32
  br label %37

35:                                               ; preds = %32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %33) #12
  br label %45

37:                                               ; preds = %34, %32
  %38 = phi ptr [ @.str.3, %34 ], [ @.str.2, %32 ]
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %38) #12
  %40 = getelementptr inbounds %struct.cx24120_state, ptr %8, i32 0, i32 3
  store i8 0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.cx24120_state, ptr %8, i32 0, i32 2
  %42 = getelementptr inbounds %struct.cx24120_state, ptr %8, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %42, ptr noundef nonnull align 4 dereferenceable(544) @cx24120_ops, i32 544, i1 false)
  %43 = getelementptr inbounds %struct.cx24120_state, ptr %8, i32 0, i32 2, i32 3
  store ptr %8, ptr %43, align 8
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %46

45:                                               ; preds = %35, %10
  call void @kfree(ptr noundef %8) #14
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi ptr [ null, %45 ], [ %41, %37 ]
  ret ptr %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cx24120_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_init(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca %struct.cx24120_cmd, align 1
  %6 = alloca %struct.cx24120_cmd, align 1
  %7 = alloca %struct.cx24120_cmd, align 1
  %8 = alloca %struct.cx24120_cmd, align 1
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca %struct.cx24120_cmd, align 1
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [2 x %struct.i2c_msg], align 4
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
  %44 = alloca i8, align 1
  %45 = alloca i8, align 1
  %46 = alloca [2 x %struct.i2c_msg], align 4
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
  %59 = alloca [2 x i8], align 2
  %60 = alloca %struct.i2c_msg, align 4
  %61 = alloca [2 x i8], align 2
  %62 = alloca %struct.i2c_msg, align 4
  %63 = alloca [2 x i8], align 2
  %64 = alloca %struct.i2c_msg, align 4
  %65 = alloca [2 x i8], align 2
  %66 = alloca %struct.i2c_msg, align 4
  %67 = alloca [2 x i8], align 2
  %68 = alloca %struct.i2c_msg, align 4
  %69 = alloca [2 x i8], align 2
  %70 = alloca %struct.i2c_msg, align 4
  %71 = alloca [2 x i8], align 2
  %72 = alloca %struct.i2c_msg, align 4
  %73 = alloca [2 x i8], align 2
  %74 = alloca %struct.i2c_msg, align 4
  %75 = alloca [2 x i8], align 2
  %76 = alloca %struct.i2c_msg, align 4
  %77 = alloca i8, align 1
  %78 = alloca i8, align 1
  %79 = alloca [2 x %struct.i2c_msg], align 4
  %80 = alloca [2 x i8], align 2
  %81 = alloca %struct.i2c_msg, align 4
  %82 = alloca [2 x i8], align 2
  %83 = alloca %struct.i2c_msg, align 4
  %84 = alloca [2 x i8], align 2
  %85 = alloca %struct.i2c_msg, align 4
  %86 = alloca [2 x i8], align 2
  %87 = alloca %struct.i2c_msg, align 4
  %88 = alloca [2 x i8], align 2
  %89 = alloca %struct.i2c_msg, align 4
  %90 = alloca i8, align 1
  %91 = alloca i8, align 1
  %92 = alloca [2 x %struct.i2c_msg], align 4
  %93 = alloca [2 x i8], align 2
  %94 = alloca %struct.i2c_msg, align 4
  %95 = alloca i8, align 1
  %96 = alloca i8, align 1
  %97 = alloca [2 x %struct.i2c_msg], align 4
  %98 = alloca [2 x i8], align 2
  %99 = alloca %struct.i2c_msg, align 4
  %100 = alloca ptr, align 4
  %101 = alloca %struct.cx24120_cmd, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %100) #14
  store ptr null, ptr %100, align 4, !annotation !8
  %102 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %101) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %101, i8 0, i32 32, i1 false), !annotation !8
  %104 = getelementptr inbounds %struct.cx24120_state, ptr %103, i32 0, i32 3
  %105 = load i8, ptr %104, align 4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %1120

107:                                              ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %98) #14
  store i8 -22, ptr %98, align 2
  %108 = getelementptr inbounds i8, ptr %98, i32 1
  store i8 0, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %99) #14
  %109 = getelementptr inbounds i8, ptr %99, i32 4
  store i32 0, ptr %109, align 4, !annotation !8
  %110 = getelementptr inbounds %struct.cx24120_state, ptr %103, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i8, ptr %111, align 4
  %113 = zext i8 %112 to i16
  store i16 %113, ptr %99, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 1
  store i16 0, ptr %114, align 2
  store i16 2, ptr %109, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 3
  store ptr %98, ptr %115, align 4
  %116 = load ptr, ptr %103, align 4
  %117 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %99, i32 noundef 1) #14
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %121, label %119

119:                                              ; preds = %107
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %117, i32 noundef 234, i32 noundef 0) #12
  br label %121

121:                                              ; preds = %119, %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %99) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %98) #14
  call fastcc void @cx24120_test_rom(ptr noundef %103)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %95)
  store i8 -5, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %96) #14
  store i8 0, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %97) #14
  %122 = getelementptr inbounds i8, ptr %97, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %122, i8 0, i32 16, i1 false) #14, !annotation !8
  %123 = load ptr, ptr %110, align 4
  %124 = load i8, ptr %123, align 4
  %125 = zext i8 %124 to i16
  store i16 %125, ptr %97, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 1
  store i16 0, ptr %126, align 2
  store i16 1, ptr %122, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 3
  store ptr %95, ptr %127, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 1
  %129 = load i8, ptr %123, align 4
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %128, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 1, i32 1
  store i16 1, ptr %131, align 2
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 1, i32 2
  store i16 1, ptr %132, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 1, i32 3
  store ptr %96, ptr %133, align 4
  %134 = load ptr, ptr %103, align 4
  %135 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %97, i32 noundef 2) #14
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %141, label %137

137:                                              ; preds = %121
  %138 = load i8, ptr %95, align 1
  %139 = zext i8 %138 to i32
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %139, i32 noundef %135) #12
  br label %144

141:                                              ; preds = %121
  %142 = load i8, ptr %96, align 1
  %143 = zext i8 %142 to i32
  br label %144

144:                                              ; preds = %141, %137
  %145 = phi i32 [ %135, %137 ], [ %143, %141 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %97) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %96) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %95)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %93) #14
  store i8 -5, ptr %93, align 2
  %148 = getelementptr inbounds i8, ptr %93, i32 1
  store i8 %147, ptr %148, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %94) #14
  %149 = getelementptr inbounds i8, ptr %94, i32 4
  store i32 0, ptr %149, align 4, !annotation !8
  %150 = load ptr, ptr %110, align 4
  %151 = load i8, ptr %150, align 4
  %152 = zext i8 %151 to i16
  store i16 %152, ptr %94, align 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 1
  store i16 0, ptr %153, align 2
  store i16 2, ptr %149, align 4
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 3
  store ptr %93, ptr %154, align 4
  %155 = load ptr, ptr %103, align 4
  %156 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %94, i32 noundef 1) #14
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %161, label %158

158:                                              ; preds = %144
  %159 = zext i8 %147 to i32
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %156, i32 noundef 251, i32 noundef %159) #12
  br label %161

161:                                              ; preds = %158, %144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %94) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %93) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %90)
  store i8 -4, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %91) #14
  store i8 0, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %92) #14
  %162 = getelementptr inbounds i8, ptr %92, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %162, i8 0, i32 16, i1 false) #14, !annotation !8
  %163 = load ptr, ptr %110, align 4
  %164 = load i8, ptr %163, align 4
  %165 = zext i8 %164 to i16
  store i16 %165, ptr %92, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 1
  store i16 0, ptr %166, align 2
  store i16 1, ptr %162, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 3
  store ptr %90, ptr %167, align 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 1
  %169 = load i8, ptr %163, align 4
  %170 = zext i8 %169 to i16
  store i16 %170, ptr %168, align 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 1, i32 1
  store i16 1, ptr %171, align 2
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 1, i32 2
  store i16 1, ptr %172, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 1, i32 3
  store ptr %91, ptr %173, align 4
  %174 = load ptr, ptr %103, align 4
  %175 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %92, i32 noundef 2) #14
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %181, label %177

177:                                              ; preds = %161
  %178 = load i8, ptr %90, align 1
  %179 = zext i8 %178 to i32
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %179, i32 noundef %175) #12
  br label %184

181:                                              ; preds = %161
  %182 = load i8, ptr %91, align 1
  %183 = zext i8 %182 to i32
  br label %184

184:                                              ; preds = %181, %177
  %185 = phi i32 [ %175, %177 ], [ %183, %181 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %92) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %91) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %90)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %88) #14
  store i8 -4, ptr %88, align 2
  %188 = getelementptr inbounds i8, ptr %88, i32 1
  store i8 %187, ptr %188, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %89) #14
  %189 = getelementptr inbounds i8, ptr %89, i32 4
  store i32 0, ptr %189, align 4, !annotation !8
  %190 = load ptr, ptr %110, align 4
  %191 = load i8, ptr %190, align 4
  %192 = zext i8 %191 to i16
  store i16 %192, ptr %89, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 1
  store i16 0, ptr %193, align 2
  store i16 2, ptr %189, align 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 3
  store ptr %88, ptr %194, align 4
  %195 = load ptr, ptr %103, align 4
  %196 = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %89, i32 noundef 1) #14
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %201, label %198

198:                                              ; preds = %184
  %199 = zext i8 %187 to i32
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %196, i32 noundef 252, i32 noundef %199) #12
  br label %201

201:                                              ; preds = %198, %184
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %89) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %88) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %86) #14
  store i8 -61, ptr %86, align 2
  %202 = getelementptr inbounds i8, ptr %86, i32 1
  store i8 4, ptr %202, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %87) #14
  %203 = getelementptr inbounds i8, ptr %87, i32 4
  store i32 0, ptr %203, align 4, !annotation !8
  %204 = load ptr, ptr %110, align 4
  %205 = load i8, ptr %204, align 4
  %206 = zext i8 %205 to i16
  store i16 %206, ptr %87, align 4
  %207 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 1
  store i16 0, ptr %207, align 2
  store i16 2, ptr %203, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 3
  store ptr %86, ptr %208, align 4
  %209 = load ptr, ptr %103, align 4
  %210 = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %87, i32 noundef 1) #14
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %214, label %212

212:                                              ; preds = %201
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %210, i32 noundef 195, i32 noundef 4) #12
  br label %214

214:                                              ; preds = %212, %201
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %87) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %86) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %84) #14
  store i8 -60, ptr %84, align 2
  %215 = getelementptr inbounds i8, ptr %84, i32 1
  store i8 4, ptr %215, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %85) #14
  %216 = getelementptr inbounds i8, ptr %85, i32 4
  store i32 0, ptr %216, align 4, !annotation !8
  %217 = load ptr, ptr %110, align 4
  %218 = load i8, ptr %217, align 4
  %219 = zext i8 %218 to i16
  store i16 %219, ptr %85, align 4
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  store i16 0, ptr %220, align 2
  store i16 2, ptr %216, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  store ptr %84, ptr %221, align 4
  %222 = load ptr, ptr %103, align 4
  %223 = call i32 @i2c_transfer(ptr noundef %222, ptr noundef nonnull %85, i32 noundef 1) #14
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %227, label %225

225:                                              ; preds = %214
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %223, i32 noundef 196, i32 noundef 4) #12
  br label %227

227:                                              ; preds = %225, %214
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %84) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %82) #14
  store i8 -50, ptr %82, align 2
  %228 = getelementptr inbounds i8, ptr %82, i32 1
  store i8 0, ptr %228, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %83) #14
  %229 = getelementptr inbounds i8, ptr %83, i32 4
  store i32 0, ptr %229, align 4, !annotation !8
  %230 = load ptr, ptr %110, align 4
  %231 = load i8, ptr %230, align 4
  %232 = zext i8 %231 to i16
  store i16 %232, ptr %83, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  store i16 0, ptr %233, align 2
  store i16 2, ptr %229, align 4
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  store ptr %82, ptr %234, align 4
  %235 = load ptr, ptr %103, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %83, i32 noundef 1) #14
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %240, label %238

238:                                              ; preds = %227
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %236, i32 noundef 206, i32 noundef 0) #12
  br label %240

240:                                              ; preds = %238, %227
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %83) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %82) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %80) #14
  store i8 -49, ptr %80, align 2
  %241 = getelementptr inbounds i8, ptr %80, i32 1
  store i8 0, ptr %241, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %81) #14
  %242 = getelementptr inbounds i8, ptr %81, i32 4
  store i32 0, ptr %242, align 4, !annotation !8
  %243 = load ptr, ptr %110, align 4
  %244 = load i8, ptr %243, align 4
  %245 = zext i8 %244 to i16
  store i16 %245, ptr %81, align 4
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %246, align 2
  store i16 2, ptr %242, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %80, ptr %247, align 4
  %248 = load ptr, ptr %103, align 4
  %249 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %81, i32 noundef 1) #14
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %253, label %251

251:                                              ; preds = %240
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %249, i32 noundef 207, i32 noundef 0) #12
  br label %253

253:                                              ; preds = %251, %240
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %81) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %80) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %77)
  store i8 -22, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %78) #14
  store i8 0, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %79) #14
  %254 = getelementptr inbounds i8, ptr %79, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %254, i8 0, i32 16, i1 false) #14, !annotation !8
  %255 = load ptr, ptr %110, align 4
  %256 = load i8, ptr %255, align 4
  %257 = zext i8 %256 to i16
  store i16 %257, ptr %79, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  store i16 0, ptr %258, align 2
  store i16 1, ptr %254, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  store ptr %77, ptr %259, align 4
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 1
  %261 = load i8, ptr %255, align 4
  %262 = zext i8 %261 to i16
  store i16 %262, ptr %260, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 1, i32 1
  store i16 1, ptr %263, align 2
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 1, i32 2
  store i16 1, ptr %264, align 4
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 1, i32 3
  store ptr %78, ptr %265, align 4
  %266 = load ptr, ptr %103, align 4
  %267 = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %79, i32 noundef 2) #14
  %268 = icmp eq i32 %267, 2
  br i1 %268, label %273, label %269

269:                                              ; preds = %253
  %270 = load i8, ptr %77, align 1
  %271 = zext i8 %270 to i32
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %271, i32 noundef %267) #12
  br label %276

273:                                              ; preds = %253
  %274 = load i8, ptr %78, align 1
  %275 = zext i8 %274 to i32
  br label %276

276:                                              ; preds = %273, %269
  %277 = phi i32 [ %267, %269 ], [ %275, %273 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %79) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %78) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %77)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %75) #14
  store i8 -22, ptr %75, align 2
  %280 = getelementptr inbounds i8, ptr %75, i32 1
  store i8 %279, ptr %280, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %76) #14
  %281 = getelementptr inbounds i8, ptr %76, i32 4
  store i32 0, ptr %281, align 4, !annotation !8
  %282 = load ptr, ptr %110, align 4
  %283 = load i8, ptr %282, align 4
  %284 = zext i8 %283 to i16
  store i16 %284, ptr %76, align 4
  %285 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 1
  store i16 0, ptr %285, align 2
  store i16 2, ptr %281, align 4
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 3
  store ptr %75, ptr %286, align 4
  %287 = load ptr, ptr %103, align 4
  %288 = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %76, i32 noundef 1) #14
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %293, label %290

290:                                              ; preds = %276
  %291 = zext i8 %279 to i32
  %292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %288, i32 noundef 234, i32 noundef %291) #12
  br label %293

293:                                              ; preds = %290, %276
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %76) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %75) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %73) #14
  store i8 -21, ptr %73, align 2
  %294 = getelementptr inbounds i8, ptr %73, i32 1
  store i8 12, ptr %294, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %74) #14
  %295 = getelementptr inbounds i8, ptr %74, i32 4
  store i32 0, ptr %295, align 4, !annotation !8
  %296 = load ptr, ptr %110, align 4
  %297 = load i8, ptr %296, align 4
  %298 = zext i8 %297 to i16
  store i16 %298, ptr %74, align 4
  %299 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  store i16 0, ptr %299, align 2
  store i16 2, ptr %295, align 4
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 3
  store ptr %73, ptr %300, align 4
  %301 = load ptr, ptr %103, align 4
  %302 = call i32 @i2c_transfer(ptr noundef %301, ptr noundef nonnull %74, i32 noundef 1) #14
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %306, label %304

304:                                              ; preds = %293
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %302, i32 noundef 235, i32 noundef 12) #12
  br label %306

306:                                              ; preds = %304, %293
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %74) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %73) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %71) #14
  store i8 -20, ptr %71, align 2
  %307 = getelementptr inbounds i8, ptr %71, i32 1
  store i8 6, ptr %307, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %72) #14
  %308 = getelementptr inbounds i8, ptr %72, i32 4
  store i32 0, ptr %308, align 4, !annotation !8
  %309 = load ptr, ptr %110, align 4
  %310 = load i8, ptr %309, align 4
  %311 = zext i8 %310 to i16
  store i16 %311, ptr %72, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 1
  store i16 0, ptr %312, align 2
  store i16 2, ptr %308, align 4
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 3
  store ptr %71, ptr %313, align 4
  %314 = load ptr, ptr %103, align 4
  %315 = call i32 @i2c_transfer(ptr noundef %314, ptr noundef nonnull %72, i32 noundef 1) #14
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %319, label %317

317:                                              ; preds = %306
  %318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %315, i32 noundef 236, i32 noundef 6) #12
  br label %319

319:                                              ; preds = %317, %306
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %72) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %71) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %69) #14
  store i8 -19, ptr %69, align 2
  %320 = getelementptr inbounds i8, ptr %69, i32 1
  store i8 5, ptr %320, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %70) #14
  %321 = getelementptr inbounds i8, ptr %70, i32 4
  store i32 0, ptr %321, align 4, !annotation !8
  %322 = load ptr, ptr %110, align 4
  %323 = load i8, ptr %322, align 4
  %324 = zext i8 %323 to i16
  store i16 %324, ptr %70, align 4
  %325 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %325, align 2
  store i16 2, ptr %321, align 4
  %326 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %69, ptr %326, align 4
  %327 = load ptr, ptr %103, align 4
  %328 = call i32 @i2c_transfer(ptr noundef %327, ptr noundef nonnull %70, i32 noundef 1) #14
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %332, label %330

330:                                              ; preds = %319
  %331 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %328, i32 noundef 237, i32 noundef 5) #12
  br label %332

332:                                              ; preds = %330, %319
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %70) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %69) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %67) #14
  store i8 -18, ptr %67, align 2
  %333 = getelementptr inbounds i8, ptr %67, i32 1
  store i8 3, ptr %333, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %68) #14
  %334 = getelementptr inbounds i8, ptr %68, i32 4
  store i32 0, ptr %334, align 4, !annotation !8
  %335 = load ptr, ptr %110, align 4
  %336 = load i8, ptr %335, align 4
  %337 = zext i8 %336 to i16
  store i16 %337, ptr %68, align 4
  %338 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 1
  store i16 0, ptr %338, align 2
  store i16 2, ptr %334, align 4
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  store ptr %67, ptr %339, align 4
  %340 = load ptr, ptr %103, align 4
  %341 = call i32 @i2c_transfer(ptr noundef %340, ptr noundef nonnull %68, i32 noundef 1) #14
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %345, label %343

343:                                              ; preds = %332
  %344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %341, i32 noundef 238, i32 noundef 3) #12
  br label %345

345:                                              ; preds = %343, %332
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %68) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %67) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %65) #14
  store i8 -17, ptr %65, align 2
  %346 = getelementptr inbounds i8, ptr %65, i32 1
  store i8 5, ptr %346, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %66) #14
  %347 = getelementptr inbounds i8, ptr %66, i32 4
  store i32 0, ptr %347, align 4, !annotation !8
  %348 = load ptr, ptr %110, align 4
  %349 = load i8, ptr %348, align 4
  %350 = zext i8 %349 to i16
  store i16 %350, ptr %66, align 4
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 1
  store i16 0, ptr %351, align 2
  store i16 2, ptr %347, align 4
  %352 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 3
  store ptr %65, ptr %352, align 4
  %353 = load ptr, ptr %103, align 4
  %354 = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %66, i32 noundef 1) #14
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %358, label %356

356:                                              ; preds = %345
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %354, i32 noundef 239, i32 noundef 5) #12
  br label %358

358:                                              ; preds = %356, %345
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %66) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %65) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %63) #14
  store i8 -13, ptr %63, align 2
  %359 = getelementptr inbounds i8, ptr %63, i32 1
  store i8 3, ptr %359, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %64) #14
  %360 = getelementptr inbounds i8, ptr %64, i32 4
  store i32 0, ptr %360, align 4, !annotation !8
  %361 = load ptr, ptr %110, align 4
  %362 = load i8, ptr %361, align 4
  %363 = zext i8 %362 to i16
  store i16 %363, ptr %64, align 4
  %364 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 1
  store i16 0, ptr %364, align 2
  store i16 2, ptr %360, align 4
  %365 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 3
  store ptr %63, ptr %365, align 4
  %366 = load ptr, ptr %103, align 4
  %367 = call i32 @i2c_transfer(ptr noundef %366, ptr noundef nonnull %64, i32 noundef 1) #14
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %371, label %369

369:                                              ; preds = %358
  %370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %367, i32 noundef 243, i32 noundef 3) #12
  br label %371

371:                                              ; preds = %369, %358
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %64) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %63) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %61) #14
  store i8 -12, ptr %61, align 2
  %372 = getelementptr inbounds i8, ptr %61, i32 1
  store i8 68, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %62) #14
  %373 = getelementptr inbounds i8, ptr %62, i32 4
  store i32 0, ptr %373, align 4, !annotation !8
  %374 = load ptr, ptr %110, align 4
  %375 = load i8, ptr %374, align 4
  %376 = zext i8 %375 to i16
  store i16 %376, ptr %62, align 4
  %377 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 1
  store i16 0, ptr %377, align 2
  store i16 2, ptr %373, align 4
  %378 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 3
  store ptr %61, ptr %378, align 4
  %379 = load ptr, ptr %103, align 4
  %380 = call i32 @i2c_transfer(ptr noundef %379, ptr noundef nonnull %62, i32 noundef 1) #14
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %384, label %382

382:                                              ; preds = %371
  %383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %380, i32 noundef 244, i32 noundef 68) #12
  br label %384

384:                                              ; preds = %382, %371
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %61) #14
  %385 = getelementptr inbounds i8, ptr %59, i32 1
  %386 = getelementptr inbounds i8, ptr %60, i32 4
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  %389 = getelementptr inbounds i8, ptr %57, i32 1
  %390 = getelementptr inbounds i8, ptr %58, i32 4
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #14
  store i8 -16, ptr %59, align 2
  store i8 4, ptr %385, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #14
  store i32 0, ptr %386, align 4, !annotation !8
  %393 = load ptr, ptr %110, align 4
  %394 = load i8, ptr %393, align 4
  %395 = zext i8 %394 to i16
  store i16 %395, ptr %60, align 4
  store i16 0, ptr %387, align 2
  store i16 2, ptr %386, align 4
  store ptr %59, ptr %388, align 4
  %396 = load ptr, ptr %103, align 4
  %397 = call i32 @i2c_transfer(ptr noundef %396, ptr noundef nonnull %60, i32 noundef 1) #14
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %401, label %399

399:                                              ; preds = %384
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %397, i32 noundef 240, i32 noundef 4) #12
  br label %401

401:                                              ; preds = %399, %384
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #14
  store i8 -26, ptr %57, align 2
  store i8 2, ptr %389, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #14
  store i32 0, ptr %390, align 4, !annotation !8
  %402 = load ptr, ptr %110, align 4
  %403 = load i8, ptr %402, align 4
  %404 = zext i8 %403 to i16
  store i16 %404, ptr %58, align 4
  store i16 0, ptr %391, align 2
  store i16 2, ptr %390, align 4
  store ptr %57, ptr %392, align 4
  %405 = load ptr, ptr %103, align 4
  %406 = call i32 @i2c_transfer(ptr noundef %405, ptr noundef nonnull %58, i32 noundef 1) #14
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %410, label %408

408:                                              ; preds = %401
  %409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %406, i32 noundef 230, i32 noundef 2) #12
  br label %410

410:                                              ; preds = %408, %401
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #14
  store i8 -15, ptr %59, align 2
  store i8 4, ptr %385, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #14
  store i32 0, ptr %386, align 4, !annotation !8
  %411 = load ptr, ptr %110, align 4
  %412 = load i8, ptr %411, align 4
  %413 = zext i8 %412 to i16
  store i16 %413, ptr %60, align 4
  store i16 0, ptr %387, align 2
  store i16 2, ptr %386, align 4
  store ptr %59, ptr %388, align 4
  %414 = load ptr, ptr %103, align 4
  %415 = call i32 @i2c_transfer(ptr noundef %414, ptr noundef nonnull %60, i32 noundef 1) #14
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %419, label %417

417:                                              ; preds = %410
  %418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %415, i32 noundef 241, i32 noundef 4) #12
  br label %419

419:                                              ; preds = %417, %410
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #14
  store i8 -25, ptr %57, align 2
  store i8 2, ptr %389, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #14
  store i32 0, ptr %390, align 4, !annotation !8
  %420 = load ptr, ptr %110, align 4
  %421 = load i8, ptr %420, align 4
  %422 = zext i8 %421 to i16
  store i16 %422, ptr %58, align 4
  store i16 0, ptr %391, align 2
  store i16 2, ptr %390, align 4
  store ptr %57, ptr %392, align 4
  %423 = load ptr, ptr %103, align 4
  %424 = call i32 @i2c_transfer(ptr noundef %423, ptr noundef nonnull %58, i32 noundef 1) #14
  %425 = icmp eq i32 %424, 1
  br i1 %425, label %428, label %426

426:                                              ; preds = %419
  %427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %424, i32 noundef 231, i32 noundef 2) #12
  br label %428

428:                                              ; preds = %426, %419
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #14
  store i8 -14, ptr %59, align 2
  store i8 4, ptr %385, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #14
  store i32 0, ptr %386, align 4, !annotation !8
  %429 = load ptr, ptr %110, align 4
  %430 = load i8, ptr %429, align 4
  %431 = zext i8 %430 to i16
  store i16 %431, ptr %60, align 4
  store i16 0, ptr %387, align 2
  store i16 2, ptr %386, align 4
  store ptr %59, ptr %388, align 4
  %432 = load ptr, ptr %103, align 4
  %433 = call i32 @i2c_transfer(ptr noundef %432, ptr noundef nonnull %60, i32 noundef 1) #14
  %434 = icmp eq i32 %433, 1
  br i1 %434, label %437, label %435

435:                                              ; preds = %428
  %436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %433, i32 noundef 242, i32 noundef 4) #12
  br label %437

437:                                              ; preds = %435, %428
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #14
  store i8 -24, ptr %57, align 2
  store i8 2, ptr %389, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #14
  store i32 0, ptr %390, align 4, !annotation !8
  %438 = load ptr, ptr %110, align 4
  %439 = load i8, ptr %438, align 4
  %440 = zext i8 %439 to i16
  store i16 %440, ptr %58, align 4
  store i16 0, ptr %391, align 2
  store i16 2, ptr %390, align 4
  store ptr %57, ptr %392, align 4
  %441 = load ptr, ptr %103, align 4
  %442 = call i32 @i2c_transfer(ptr noundef %441, ptr noundef nonnull %58, i32 noundef 1) #14
  %443 = icmp eq i32 %442, 1
  br i1 %443, label %446, label %444

444:                                              ; preds = %437
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %442, i32 noundef 232, i32 noundef 2) #12
  br label %446

446:                                              ; preds = %444, %437
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #14
  %447 = or i8 %278, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #14
  store i8 -22, ptr %55, align 2
  %448 = getelementptr inbounds i8, ptr %55, i32 1
  store i8 %447, ptr %448, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #14
  %449 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 0, ptr %449, align 4, !annotation !8
  %450 = load ptr, ptr %110, align 4
  %451 = load i8, ptr %450, align 4
  %452 = zext i8 %451 to i16
  store i16 %452, ptr %56, align 4
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %453, align 2
  store i16 2, ptr %449, align 4
  %454 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %454, align 4
  %455 = load ptr, ptr %103, align 4
  %456 = call i32 @i2c_transfer(ptr noundef %455, ptr noundef nonnull %56, i32 noundef 1) #14
  %457 = icmp eq i32 %456, 1
  br i1 %457, label %461, label %458

458:                                              ; preds = %446
  %459 = zext i8 %447 to i32
  %460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %456, i32 noundef 234, i32 noundef %459) #12
  br label %461

461:                                              ; preds = %458, %446
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #14
  %462 = getelementptr inbounds i8, ptr %53, i32 1
  %463 = getelementptr inbounds i8, ptr %54, i32 4
  %464 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  %465 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  %466 = getelementptr inbounds i8, ptr %51, i32 1
  %467 = getelementptr inbounds i8, ptr %52, i32 4
  %468 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  %469 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #14
  store i8 -59, ptr %53, align 2
  store i8 0, ptr %462, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #14
  store i32 0, ptr %463, align 4, !annotation !8
  %470 = load ptr, ptr %110, align 4
  %471 = load i8, ptr %470, align 4
  %472 = zext i8 %471 to i16
  store i16 %472, ptr %54, align 4
  store i16 0, ptr %464, align 2
  store i16 2, ptr %463, align 4
  store ptr %53, ptr %465, align 4
  %473 = load ptr, ptr %103, align 4
  %474 = call i32 @i2c_transfer(ptr noundef %473, ptr noundef nonnull %54, i32 noundef 1) #14
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %478, label %476

476:                                              ; preds = %461
  %477 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %474, i32 noundef 197, i32 noundef 0) #12
  br label %478

478:                                              ; preds = %476, %461
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #14
  store i8 -58, ptr %51, align 2
  store i8 0, ptr %466, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #14
  store i32 0, ptr %467, align 4, !annotation !8
  %479 = load ptr, ptr %110, align 4
  %480 = load i8, ptr %479, align 4
  %481 = zext i8 %480 to i16
  store i16 %481, ptr %52, align 4
  store i16 0, ptr %468, align 2
  store i16 2, ptr %467, align 4
  store ptr %51, ptr %469, align 4
  %482 = load ptr, ptr %103, align 4
  %483 = call i32 @i2c_transfer(ptr noundef %482, ptr noundef nonnull %52, i32 noundef 1) #14
  %484 = icmp eq i32 %483, 1
  br i1 %484, label %487, label %485

485:                                              ; preds = %478
  %486 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %483, i32 noundef 198, i32 noundef 0) #12
  br label %487

487:                                              ; preds = %485, %478
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #14
  store i8 -57, ptr %53, align 2
  store i8 0, ptr %462, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #14
  store i32 0, ptr %463, align 4, !annotation !8
  %488 = load ptr, ptr %110, align 4
  %489 = load i8, ptr %488, align 4
  %490 = zext i8 %489 to i16
  store i16 %490, ptr %54, align 4
  store i16 0, ptr %464, align 2
  store i16 2, ptr %463, align 4
  store ptr %53, ptr %465, align 4
  %491 = load ptr, ptr %103, align 4
  %492 = call i32 @i2c_transfer(ptr noundef %491, ptr noundef nonnull %54, i32 noundef 1) #14
  %493 = icmp eq i32 %492, 1
  br i1 %493, label %496, label %494

494:                                              ; preds = %487
  %495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %492, i32 noundef 199, i32 noundef 0) #12
  br label %496

496:                                              ; preds = %494, %487
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #14
  store i8 -56, ptr %51, align 2
  store i8 0, ptr %466, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #14
  store i32 0, ptr %467, align 4, !annotation !8
  %497 = load ptr, ptr %110, align 4
  %498 = load i8, ptr %497, align 4
  %499 = zext i8 %498 to i16
  store i16 %499, ptr %52, align 4
  store i16 0, ptr %468, align 2
  store i16 2, ptr %467, align 4
  store ptr %51, ptr %469, align 4
  %500 = load ptr, ptr %103, align 4
  %501 = call i32 @i2c_transfer(ptr noundef %500, ptr noundef nonnull %52, i32 noundef 1) #14
  %502 = icmp eq i32 %501, 1
  br i1 %502, label %505, label %503

503:                                              ; preds = %496
  %504 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %501, i32 noundef 200, i32 noundef 0) #12
  br label %505

505:                                              ; preds = %503, %496
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #14
  store i8 -55, ptr %53, align 2
  store i8 0, ptr %462, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #14
  store i32 0, ptr %463, align 4, !annotation !8
  %506 = load ptr, ptr %110, align 4
  %507 = load i8, ptr %506, align 4
  %508 = zext i8 %507 to i16
  store i16 %508, ptr %54, align 4
  store i16 0, ptr %464, align 2
  store i16 2, ptr %463, align 4
  store ptr %53, ptr %465, align 4
  %509 = load ptr, ptr %103, align 4
  %510 = call i32 @i2c_transfer(ptr noundef %509, ptr noundef nonnull %54, i32 noundef 1) #14
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %514, label %512

512:                                              ; preds = %505
  %513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %510, i32 noundef 201, i32 noundef 0) #12
  br label %514

514:                                              ; preds = %512, %505
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #14
  store i8 -54, ptr %51, align 2
  store i8 0, ptr %466, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #14
  store i32 0, ptr %467, align 4, !annotation !8
  %515 = load ptr, ptr %110, align 4
  %516 = load i8, ptr %515, align 4
  %517 = zext i8 %516 to i16
  store i16 %517, ptr %52, align 4
  store i16 0, ptr %468, align 2
  store i16 2, ptr %467, align 4
  store ptr %51, ptr %469, align 4
  %518 = load ptr, ptr %103, align 4
  %519 = call i32 @i2c_transfer(ptr noundef %518, ptr noundef nonnull %52, i32 noundef 1) #14
  %520 = icmp eq i32 %519, 1
  br i1 %520, label %523, label %521

521:                                              ; preds = %514
  %522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %519, i32 noundef 202, i32 noundef 0) #12
  br label %523

523:                                              ; preds = %521, %514
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #14
  store i8 -28, ptr %49, align 2
  %524 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 3, ptr %524, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #14
  %525 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 0, ptr %525, align 4, !annotation !8
  %526 = load ptr, ptr %110, align 4
  %527 = load i8, ptr %526, align 4
  %528 = zext i8 %527 to i16
  store i16 %528, ptr %50, align 4
  %529 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %529, align 2
  store i16 2, ptr %525, align 4
  %530 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %530, align 4
  %531 = load ptr, ptr %103, align 4
  %532 = call i32 @i2c_transfer(ptr noundef %531, ptr noundef nonnull %50, i32 noundef 1) #14
  %533 = icmp eq i32 %532, 1
  br i1 %533, label %536, label %534

534:                                              ; preds = %523
  %535 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %532, i32 noundef 228, i32 noundef 3) #12
  br label %536

536:                                              ; preds = %534, %523
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #14
  store i8 -21, ptr %47, align 2
  %537 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 10, ptr %537, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #14
  %538 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 0, ptr %538, align 4, !annotation !8
  %539 = load ptr, ptr %110, align 4
  %540 = load i8, ptr %539, align 4
  %541 = zext i8 %540 to i16
  store i16 %541, ptr %48, align 4
  %542 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %542, align 2
  store i16 2, ptr %538, align 4
  %543 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %543, align 4
  %544 = load ptr, ptr %103, align 4
  %545 = call i32 @i2c_transfer(ptr noundef %544, ptr noundef nonnull %48, i32 noundef 1) #14
  %546 = icmp eq i32 %545, 1
  br i1 %546, label %549, label %547

547:                                              ; preds = %536
  %548 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %545, i32 noundef 235, i32 noundef 10) #12
  br label %549

549:                                              ; preds = %547, %536
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #14
  %550 = load ptr, ptr %110, align 4
  %551 = getelementptr inbounds %struct.cx24120_config, ptr %550, i32 0, i32 3
  %552 = load ptr, ptr %551, align 4
  %553 = call i32 %552(ptr noundef %0, ptr noundef nonnull %100, ptr noundef nonnull @.str.7) #14
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %557, label %555

555:                                              ; preds = %549
  %556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %553) #12
  br label %1120

557:                                              ; preds = %549
  call fastcc void @cx24120_test_rom(ptr noundef %103)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %44)
  store i8 -5, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %45) #14
  store i8 0, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %46) #14
  %558 = getelementptr inbounds i8, ptr %46, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %558, i8 0, i32 16, i1 false) #14, !annotation !8
  %559 = load ptr, ptr %110, align 4
  %560 = load i8, ptr %559, align 4
  %561 = zext i8 %560 to i16
  store i16 %561, ptr %46, align 4
  %562 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %562, align 2
  store i16 1, ptr %558, align 4
  %563 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %44, ptr %563, align 4
  %564 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 1
  %565 = load i8, ptr %559, align 4
  %566 = zext i8 %565 to i16
  store i16 %566, ptr %564, align 4
  %567 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 1, i32 1
  store i16 1, ptr %567, align 2
  %568 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 1, i32 2
  store i16 1, ptr %568, align 4
  %569 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 1, i32 3
  store ptr %45, ptr %569, align 4
  %570 = load ptr, ptr %103, align 4
  %571 = call i32 @i2c_transfer(ptr noundef %570, ptr noundef nonnull %46, i32 noundef 2) #14
  %572 = icmp eq i32 %571, 2
  br i1 %572, label %577, label %573

573:                                              ; preds = %557
  %574 = load i8, ptr %44, align 1
  %575 = zext i8 %574 to i32
  %576 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %575, i32 noundef %571) #12
  br label %580

577:                                              ; preds = %557
  %578 = load i8, ptr %45, align 1
  %579 = zext i8 %578 to i32
  br label %580

580:                                              ; preds = %577, %573
  %581 = phi i32 [ %571, %573 ], [ %579, %577 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %46) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %45) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %44)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #14
  store i8 -5, ptr %42, align 2
  %584 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 %583, ptr %584, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #14
  %585 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 0, ptr %585, align 4, !annotation !8
  %586 = load ptr, ptr %110, align 4
  %587 = load i8, ptr %586, align 4
  %588 = zext i8 %587 to i16
  store i16 %588, ptr %43, align 4
  %589 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %589, align 2
  store i16 2, ptr %585, align 4
  %590 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %590, align 4
  %591 = load ptr, ptr %103, align 4
  %592 = call i32 @i2c_transfer(ptr noundef %591, ptr noundef nonnull %43, i32 noundef 1) #14
  %593 = icmp eq i32 %592, 1
  br i1 %593, label %597, label %594

594:                                              ; preds = %580
  %595 = zext i8 %583 to i32
  %596 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %592, i32 noundef 251, i32 noundef %595) #12
  br label %597

597:                                              ; preds = %594, %580
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #14
  store i8 -32, ptr %40, align 2
  %598 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 118, ptr %598, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #14
  %599 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 0, ptr %599, align 4, !annotation !8
  %600 = load ptr, ptr %110, align 4
  %601 = load i8, ptr %600, align 4
  %602 = zext i8 %601 to i16
  store i16 %602, ptr %41, align 4
  %603 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %603, align 2
  store i16 2, ptr %599, align 4
  %604 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %604, align 4
  %605 = load ptr, ptr %103, align 4
  %606 = call i32 @i2c_transfer(ptr noundef %605, ptr noundef nonnull %41, i32 noundef 1) #14
  %607 = icmp eq i32 %606, 1
  br i1 %607, label %610, label %608

608:                                              ; preds = %597
  %609 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %606, i32 noundef 224, i32 noundef 118) #12
  br label %610

610:                                              ; preds = %608, %597
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #14
  store i8 -9, ptr %38, align 2
  %611 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 -127, ptr %611, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #14
  %612 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 0, ptr %612, align 4, !annotation !8
  %613 = load ptr, ptr %110, align 4
  %614 = load i8, ptr %613, align 4
  %615 = zext i8 %614 to i16
  store i16 %615, ptr %39, align 4
  %616 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %616, align 2
  store i16 2, ptr %612, align 4
  %617 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %617, align 4
  %618 = load ptr, ptr %103, align 4
  %619 = call i32 @i2c_transfer(ptr noundef %618, ptr noundef nonnull %39, i32 noundef 1) #14
  %620 = icmp eq i32 %619, 1
  br i1 %620, label %623, label %621

621:                                              ; preds = %610
  %622 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %619, i32 noundef 247, i32 noundef 129) #12
  br label %623

623:                                              ; preds = %621, %610
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #14
  store i8 -8, ptr %36, align 2
  %624 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 0, ptr %624, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #14
  %625 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 0, ptr %625, align 4, !annotation !8
  %626 = load ptr, ptr %110, align 4
  %627 = load i8, ptr %626, align 4
  %628 = zext i8 %627 to i16
  store i16 %628, ptr %37, align 4
  %629 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %629, align 2
  store i16 2, ptr %625, align 4
  %630 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %630, align 4
  %631 = load ptr, ptr %103, align 4
  %632 = call i32 @i2c_transfer(ptr noundef %631, ptr noundef nonnull %37, i32 noundef 1) #14
  %633 = icmp eq i32 %632, 1
  br i1 %633, label %636, label %634

634:                                              ; preds = %623
  %635 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %632, i32 noundef 248, i32 noundef 0) #12
  br label %636

636:                                              ; preds = %634, %623
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #14
  store i8 -7, ptr %34, align 2
  %637 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 0, ptr %637, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #14
  %638 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %638, align 4, !annotation !8
  %639 = load ptr, ptr %110, align 4
  %640 = load i8, ptr %639, align 4
  %641 = zext i8 %640 to i16
  store i16 %641, ptr %35, align 4
  %642 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %642, align 2
  store i16 2, ptr %638, align 4
  %643 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %643, align 4
  %644 = load ptr, ptr %103, align 4
  %645 = call i32 @i2c_transfer(ptr noundef %644, ptr noundef nonnull %35, i32 noundef 1) #14
  %646 = icmp eq i32 %645, 1
  br i1 %646, label %649, label %647

647:                                              ; preds = %636
  %648 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %645, i32 noundef 249, i32 noundef 0) #12
  br label %649

649:                                              ; preds = %647, %636
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #14
  %650 = load ptr, ptr %100, align 4
  %651 = getelementptr inbounds %struct.firmware, ptr %650, i32 0, i32 1
  %652 = load ptr, ptr %651, align 4
  %653 = load i32, ptr %650, align 4
  %654 = trunc i32 %653 to i16
  %655 = add i16 %654, -1
  call fastcc void @cx24120_writeregs(ptr noundef %103, i8 noundef zeroext -6, ptr noundef %652, i16 noundef zeroext %655, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #14
  store i8 -9, ptr %32, align 2
  %656 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 -64, ptr %656, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #14
  %657 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 0, ptr %657, align 4, !annotation !8
  %658 = load ptr, ptr %110, align 4
  %659 = load i8, ptr %658, align 4
  %660 = zext i8 %659 to i16
  store i16 %660, ptr %33, align 4
  %661 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %661, align 2
  store i16 2, ptr %657, align 4
  %662 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %662, align 4
  %663 = load ptr, ptr %103, align 4
  %664 = call i32 @i2c_transfer(ptr noundef %663, ptr noundef nonnull %33, i32 noundef 1) #14
  %665 = icmp eq i32 %664, 1
  br i1 %665, label %668, label %666

666:                                              ; preds = %649
  %667 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %664, i32 noundef 247, i32 noundef 192) #12
  br label %668

668:                                              ; preds = %666, %649
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #14
  store i8 -32, ptr %30, align 2
  %669 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 0, ptr %669, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #14
  %670 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %670, align 4, !annotation !8
  %671 = load ptr, ptr %110, align 4
  %672 = load i8, ptr %671, align 4
  %673 = zext i8 %672 to i16
  store i16 %673, ptr %31, align 4
  %674 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %674, align 2
  store i16 2, ptr %670, align 4
  %675 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %675, align 4
  %676 = load ptr, ptr %103, align 4
  %677 = call i32 @i2c_transfer(ptr noundef %676, ptr noundef nonnull %31, i32 noundef 1) #14
  %678 = icmp eq i32 %677, 1
  br i1 %678, label %681, label %679

679:                                              ; preds = %668
  %680 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %677, i32 noundef 224, i32 noundef 0) #12
  br label %681

681:                                              ; preds = %679, %668
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #14
  %682 = load ptr, ptr %100, align 4
  %683 = load i32, ptr %682, align 4
  %684 = trunc i32 %683 to i8
  %685 = add i8 %684, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #14
  store i8 -8, ptr %28, align 2
  %686 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 %685, ptr %686, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #14
  %687 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %687, align 4, !annotation !8
  %688 = load ptr, ptr %110, align 4
  %689 = load i8, ptr %688, align 4
  %690 = zext i8 %689 to i16
  store i16 %690, ptr %29, align 4
  %691 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %691, align 2
  store i16 2, ptr %687, align 4
  %692 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %692, align 4
  %693 = load ptr, ptr %103, align 4
  %694 = call i32 @i2c_transfer(ptr noundef %693, ptr noundef nonnull %29, i32 noundef 1) #14
  %695 = icmp eq i32 %694, 1
  br i1 %695, label %699, label %696

696:                                              ; preds = %681
  %697 = zext i8 %685 to i32
  %698 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %694, i32 noundef 248, i32 noundef %697) #12
  br label %699

699:                                              ; preds = %696, %681
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #14
  %700 = load ptr, ptr %100, align 4
  %701 = load i32, ptr %700, align 4
  %702 = add i32 %701, 65534
  %703 = lshr i32 %702, 8
  %704 = trunc i32 %703 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #14
  store i8 -7, ptr %26, align 2
  %705 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %704, ptr %705, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #14
  %706 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 0, ptr %706, align 4, !annotation !8
  %707 = load ptr, ptr %110, align 4
  %708 = load i8, ptr %707, align 4
  %709 = zext i8 %708 to i16
  store i16 %709, ptr %27, align 4
  %710 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %710, align 2
  store i16 2, ptr %706, align 4
  %711 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %711, align 4
  %712 = load ptr, ptr %103, align 4
  %713 = call i32 @i2c_transfer(ptr noundef %712, ptr noundef nonnull %27, i32 noundef 1) #14
  %714 = icmp eq i32 %713, 1
  br i1 %714, label %718, label %715

715:                                              ; preds = %699
  %716 = and i32 %703, 255
  %717 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %713, i32 noundef 249, i32 noundef %716) #12
  br label %718

718:                                              ; preds = %715, %699
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #14
  store i8 -9, ptr %24, align 2
  %719 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 0, ptr %719, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #14
  %720 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 0, ptr %720, align 4, !annotation !8
  %721 = load ptr, ptr %110, align 4
  %722 = load i8, ptr %721, align 4
  %723 = zext i8 %722 to i16
  store i16 %723, ptr %25, align 4
  %724 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %724, align 2
  store i16 2, ptr %720, align 4
  %725 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %725, align 4
  %726 = load ptr, ptr %103, align 4
  %727 = call i32 @i2c_transfer(ptr noundef %726, ptr noundef nonnull %25, i32 noundef 1) #14
  %728 = icmp eq i32 %727, 1
  br i1 %728, label %731, label %729

729:                                              ; preds = %718
  %730 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %727, i32 noundef 247, i32 noundef 0) #12
  br label %731

731:                                              ; preds = %729, %718
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #14
  store i8 -36, ptr %22, align 2
  %732 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 0, ptr %732, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #14
  %733 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 0, ptr %733, align 4, !annotation !8
  %734 = load ptr, ptr %110, align 4
  %735 = load i8, ptr %734, align 4
  %736 = zext i8 %735 to i16
  store i16 %736, ptr %23, align 4
  %737 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %737, align 2
  store i16 2, ptr %733, align 4
  %738 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %738, align 4
  %739 = load ptr, ptr %103, align 4
  %740 = call i32 @i2c_transfer(ptr noundef %739, ptr noundef nonnull %23, i32 noundef 1) #14
  %741 = icmp eq i32 %740, 1
  br i1 %741, label %744, label %742

742:                                              ; preds = %731
  %743 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %740, i32 noundef 220, i32 noundef 0) #12
  br label %744

744:                                              ; preds = %742, %731
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #14
  store i8 -36, ptr %20, align 2
  %745 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 7, ptr %745, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #14
  %746 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 0, ptr %746, align 4, !annotation !8
  %747 = load ptr, ptr %110, align 4
  %748 = load i8, ptr %747, align 4
  %749 = zext i8 %748 to i16
  store i16 %749, ptr %21, align 4
  %750 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %750, align 2
  store i16 2, ptr %746, align 4
  %751 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %751, align 4
  %752 = load ptr, ptr %103, align 4
  %753 = call i32 @i2c_transfer(ptr noundef %752, ptr noundef nonnull %21, i32 noundef 1) #14
  %754 = icmp eq i32 %753, 1
  br i1 %754, label %757, label %755

755:                                              ; preds = %744
  %756 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %753, i32 noundef 220, i32 noundef 7) #12
  br label %757

757:                                              ; preds = %755, %744
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #14
  call void @msleep(i32 noundef 500) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17)
  store i8 -31, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #14
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #14
  %758 = getelementptr inbounds i8, ptr %19, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %758, i8 0, i32 16, i1 false) #14, !annotation !8
  %759 = load ptr, ptr %110, align 4
  %760 = load i8, ptr %759, align 4
  %761 = zext i8 %760 to i16
  store i16 %761, ptr %19, align 4
  %762 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %762, align 2
  store i16 1, ptr %758, align 4
  %763 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %17, ptr %763, align 4
  %764 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1
  %765 = load i8, ptr %759, align 4
  %766 = zext i8 %765 to i16
  store i16 %766, ptr %764, align 4
  %767 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 1
  store i16 1, ptr %767, align 2
  %768 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 2
  store i16 1, ptr %768, align 4
  %769 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 3
  store ptr %18, ptr %769, align 4
  %770 = load ptr, ptr %103, align 4
  %771 = call i32 @i2c_transfer(ptr noundef %770, ptr noundef nonnull %19, i32 noundef 2) #14
  %772 = icmp eq i32 %771, 2
  br i1 %772, label %777, label %773

773:                                              ; preds = %757
  %774 = load i8, ptr %17, align 1
  %775 = zext i8 %774 to i32
  %776 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %775, i32 noundef %771) #12
  br label %780

777:                                              ; preds = %757
  %778 = load i8, ptr %18, align 1
  %779 = zext i8 %778 to i32
  br label %780

780:                                              ; preds = %777, %773
  %781 = phi i32 [ %771, %773 ], [ %779, %777 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17)
  %782 = load ptr, ptr %100, align 4
  %783 = getelementptr inbounds %struct.firmware, ptr %782, i32 0, i32 1
  %784 = load ptr, ptr %783, align 4
  %785 = load i32, ptr %782, align 4
  %786 = add i32 %785, -1
  %787 = getelementptr i8, ptr %784, i32 %786
  %788 = load i8, ptr %787, align 1
  %789 = trunc i32 %781 to i8
  %790 = icmp eq i8 %788, %789
  br i1 %790, label %793, label %791

791:                                              ; preds = %780
  %792 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 0) #12
  br label %793

793:                                              ; preds = %791, %780
  %794 = phi i32 [ -121, %791 ], [ 0, %780 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #14
  store i8 -36, ptr %15, align 2
  %795 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 0, ptr %795, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #14
  %796 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 0, ptr %796, align 4, !annotation !8
  %797 = load ptr, ptr %110, align 4
  %798 = load i8, ptr %797, align 4
  %799 = zext i8 %798 to i16
  store i16 %799, ptr %16, align 4
  %800 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %800, align 2
  store i16 2, ptr %796, align 4
  %801 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %801, align 4
  %802 = load ptr, ptr %103, align 4
  %803 = call i32 @i2c_transfer(ptr noundef %802, ptr noundef nonnull %16, i32 noundef 1) #14
  %804 = icmp eq i32 %803, 1
  br i1 %804, label %807, label %805

805:                                              ; preds = %793
  %806 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %803, i32 noundef 220, i32 noundef 0) #12
  br label %807

807:                                              ; preds = %805, %793
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #14
  %808 = load ptr, ptr %100, align 4
  call void @release_firmware(ptr noundef %808) #14
  br i1 %790, label %809, label %1120

809:                                              ; preds = %807
  store i8 27, ptr %101, align 1
  %810 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 1
  store i8 3, ptr %810, align 1
  %811 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2
  store i8 0, ptr %811, align 1
  %812 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 1
  store i8 0, ptr %812, align 1
  %813 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 2
  store i8 0, ptr %813, align 1
  %814 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %101)
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %818, label %816

816:                                              ; preds = %809
  %817 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %1120

818:                                              ; preds = %809
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #14
  %819 = getelementptr inbounds i8, ptr %14, i32 14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %819, i8 0, i32 18, i1 false) #14, !annotation !8
  %820 = load ptr, ptr %110, align 4
  %821 = getelementptr inbounds %struct.cx24120_config, ptr %820, i32 0, i32 1
  %822 = load i32, ptr %821, align 4
  %823 = mul i32 %822, 40
  %824 = lshr exact i32 %823, 1
  %825 = zext i32 %824 to i64
  %826 = or i64 %825, 17179869184
  %827 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %823, i64 %826) #15, !srcloc !9
  %828 = extractvalue { i64, i64 } %827, 1
  %829 = lshr i64 %828, 8
  %830 = trunc i64 %829 to i8
  %831 = trunc i64 %828 to i8
  %832 = shl i32 %822, 2
  store i8 16, ptr %14, align 1
  %833 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 1
  store i8 12, ptr %833, align 1
  %834 = lshr i32 %823, 16
  %835 = trunc i32 %834 to i8
  %836 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2
  store i8 %835, ptr %836, align 1
  %837 = lshr i32 %823, 8
  %838 = trunc i32 %837 to i8
  %839 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 1
  store i8 %838, ptr %839, align 1
  %840 = trunc i32 %823 to i8
  %841 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 2
  store i8 %840, ptr %841, align 1
  %842 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 3
  store i8 %830, ptr %842, align 1
  %843 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 4
  store i8 %831, ptr %843, align 1
  %844 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 5
  store i8 3, ptr %844, align 1
  %845 = lshr i32 %832, 8
  %846 = trunc i32 %845 to i8
  %847 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 6
  store i8 %846, ptr %847, align 1
  %848 = trunc i32 %832 to i8
  %849 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 7
  store i8 %848, ptr %849, align 1
  %850 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 8
  store i8 6, ptr %850, align 1
  %851 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 9
  store i8 3, ptr %851, align 1
  %852 = lshr i32 %822, 16
  %853 = trunc i32 %852 to i8
  %854 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 10
  store i8 %853, ptr %854, align 1
  %855 = trunc i32 %822 to i8
  %856 = getelementptr inbounds %struct.cx24120_cmd, ptr %14, i32 0, i32 2, i32 11
  store i8 %855, ptr %856, align 1
  %857 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #14
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %861, label %859

859:                                              ; preds = %818
  %860 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %1120

861:                                              ; preds = %818
  store i8 21, ptr %101, align 1
  store i8 12, ptr %810, align 1
  %862 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 4
  store i32 0, ptr %811, align 1
  store i8 5, ptr %862, align 1
  %863 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 5
  store i8 2, ptr %863, align 1
  %864 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 6
  store i8 2, ptr %864, align 1
  %865 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 7
  store i8 0, ptr %865, align 1
  %866 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 8
  store i8 5, ptr %866, align 1
  %867 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 9
  store i8 2, ptr %867, align 1
  %868 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 10
  store i8 2, ptr %868, align 1
  %869 = getelementptr inbounds %struct.cx24120_cmd, ptr %101, i32 0, i32 2, i32 11
  store i8 0, ptr %869, align 1
  %870 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %101)
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %874, label %872

872:                                              ; preds = %861
  %873 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %1120

874:                                              ; preds = %861
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11)
  store i8 -70, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #14
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #14
  %875 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %875, i8 0, i32 16, i1 false) #14, !annotation !8
  %876 = load ptr, ptr %110, align 4
  %877 = load i8, ptr %876, align 4
  %878 = zext i8 %877 to i16
  store i16 %878, ptr %13, align 4
  %879 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %879, align 2
  store i16 1, ptr %875, align 4
  %880 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %880, align 4
  %881 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %882 = load i8, ptr %876, align 4
  %883 = zext i8 %882 to i16
  store i16 %883, ptr %881, align 4
  %884 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %884, align 2
  %885 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %885, align 4
  %886 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %886, align 4
  %887 = load ptr, ptr %103, align 4
  %888 = call i32 @i2c_transfer(ptr noundef %887, ptr noundef nonnull %13, i32 noundef 2) #14
  %889 = icmp eq i32 %888, 2
  br i1 %889, label %894, label %890

890:                                              ; preds = %874
  %891 = load i8, ptr %11, align 1
  %892 = zext i8 %891 to i32
  %893 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %892, i32 noundef %888) #12
  br label %897

894:                                              ; preds = %874
  %895 = load i8, ptr %12, align 1
  %896 = zext i8 %895 to i32
  br label %897

897:                                              ; preds = %894, %890
  %898 = phi i32 [ %888, %890 ], [ %896, %894 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11)
  %899 = and i32 %898, 252
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %903, label %901

901:                                              ; preds = %897
  %902 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %1120

903:                                              ; preds = %897
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #14
  store i8 -21, ptr %9, align 2
  %904 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 10, ptr %904, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %905 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %905, align 4, !annotation !8
  %906 = load ptr, ptr %110, align 4
  %907 = load i8, ptr %906, align 4
  %908 = zext i8 %907 to i16
  store i16 %908, ptr %10, align 4
  %909 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %909, align 2
  %910 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %910, align 4
  %911 = load ptr, ptr %103, align 4
  %912 = call i32 @i2c_transfer(ptr noundef %911, ptr noundef nonnull %10, i32 noundef 1) #14
  %913 = icmp eq i32 %912, 1
  br i1 %913, label %916, label %914

914:                                              ; preds = %903
  %915 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %912, i32 noundef 235, i32 noundef 10) #12
  br label %916

916:                                              ; preds = %914, %903
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #14
  %917 = getelementptr inbounds i8, ptr %8, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %917, i8 0, i32 26, i1 false) #14, !annotation !8
  store i8 19, ptr %8, align 1
  %918 = getelementptr inbounds %struct.cx24120_cmd, ptr %8, i32 0, i32 1
  store i8 4, ptr %918, align 1
  %919 = getelementptr inbounds %struct.cx24120_cmd, ptr %8, i32 0, i32 2
  store i8 1, ptr %919, align 1
  %920 = getelementptr inbounds %struct.cx24120_cmd, ptr %8, i32 0, i32 2, i32 1
  store i8 0, ptr %920, align 1
  %921 = getelementptr inbounds %struct.cx24120_cmd, ptr %8, i32 0, i32 2, i32 2
  store i8 -1, ptr %921, align 1
  %922 = getelementptr inbounds %struct.cx24120_cmd, ptr %8, i32 0, i32 2, i32 3
  store i8 1, ptr %922, align 1
  %923 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %8) #14
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %926, label %925

925:                                              ; preds = %916
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #14
  br label %1008

926:                                              ; preds = %916
  %927 = getelementptr inbounds %struct.cx24120_state, ptr %103, i32 0, i32 4
  store i8 0, ptr %927, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #14
  %928 = getelementptr inbounds i8, ptr %7, i32 9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %928, i8 0, i32 23, i1 false) #14, !annotation !8
  %929 = load ptr, ptr %110, align 4
  %930 = getelementptr inbounds %struct.cx24120_config, ptr %929, i32 0, i32 2
  %931 = load i8, ptr %930, align 4
  %932 = getelementptr inbounds %struct.cx24120_config, ptr %929, i32 0, i32 2, i32 1
  %933 = load i8, ptr %932, align 1
  %934 = getelementptr inbounds %struct.cx24120_config, ptr %929, i32 0, i32 2, i32 2
  %935 = load i8, ptr %934, align 2
  store i8 20, ptr %7, align 1
  %936 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 1
  store i8 7, ptr %936, align 1
  %937 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2
  store i8 0, ptr %937, align 1
  %938 = trunc i8 %931 to i2
  %939 = call i2 @llvm.bitreverse.i2(i2 %938) #14
  %940 = zext i2 %939 to i8
  %941 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 1
  store i8 %940, ptr %941, align 1
  %942 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 2
  store i8 5, ptr %942, align 1
  %943 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 3
  store i8 2, ptr %943, align 1
  %944 = lshr i8 %933, 1
  %945 = and i8 %944, 1
  %946 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 4
  store i8 %945, ptr %946, align 1
  %947 = and i8 %933, -16
  %948 = and i8 %935, 15
  %949 = or i8 %948, %947
  %950 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 5
  store i8 %949, ptr %950, align 1
  %951 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 6
  store i8 16, ptr %951, align 1
  %952 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %1008

954:                                              ; preds = %926
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  %955 = getelementptr inbounds i8, ptr %6, i32 9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %955, i8 0, i32 23, i1 false) #14, !annotation !8
  %956 = load ptr, ptr %110, align 4
  %957 = getelementptr inbounds %struct.cx24120_config, ptr %956, i32 0, i32 2
  %958 = load i8, ptr %957, align 4
  %959 = getelementptr inbounds %struct.cx24120_config, ptr %956, i32 0, i32 2, i32 1
  %960 = load i8, ptr %959, align 1
  %961 = getelementptr inbounds %struct.cx24120_config, ptr %956, i32 0, i32 2, i32 2
  %962 = load i8, ptr %961, align 2
  store i8 20, ptr %6, align 1
  %963 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 1
  store i8 7, ptr %963, align 1
  %964 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2
  store i8 1, ptr %964, align 1
  %965 = trunc i8 %958 to i2
  %966 = call i2 @llvm.bitreverse.i2(i2 %965) #14
  %967 = zext i2 %966 to i8
  %968 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 1
  store i8 %967, ptr %968, align 1
  %969 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 2
  store i8 5, ptr %969, align 1
  %970 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 3
  store i8 2, ptr %970, align 1
  %971 = lshr i8 %960, 1
  %972 = and i8 %971, 1
  %973 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 4
  store i8 %972, ptr %973, align 1
  %974 = and i8 %960, -16
  %975 = and i8 %962, 15
  %976 = or i8 %975, %974
  %977 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 5
  store i8 %976, ptr %977, align 1
  %978 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 6
  store i8 16, ptr %978, align 1
  %979 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %1008

981:                                              ; preds = %954
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %982 = getelementptr inbounds i8, ptr %5, i32 9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %982, i8 0, i32 23, i1 false) #14, !annotation !8
  %983 = load ptr, ptr %110, align 4
  %984 = getelementptr inbounds %struct.cx24120_config, ptr %983, i32 0, i32 2
  %985 = load i8, ptr %984, align 4
  %986 = getelementptr inbounds %struct.cx24120_config, ptr %983, i32 0, i32 2, i32 1
  %987 = load i8, ptr %986, align 1
  %988 = getelementptr inbounds %struct.cx24120_config, ptr %983, i32 0, i32 2, i32 2
  %989 = load i8, ptr %988, align 2
  store i8 20, ptr %5, align 1
  %990 = getelementptr inbounds %struct.cx24120_cmd, ptr %5, i32 0, i32 1
  store i8 7, ptr %990, align 1
  %991 = getelementptr inbounds %struct.cx24120_cmd, ptr %5, i32 0, i32 2
  store i8 2, ptr %991, align 1
  %992 = trunc i8 %985 to i2
  %993 = call i2 @llvm.bitreverse.i2(i2 %992) #14
  %994 = zext i2 %993 to i8
  %995 = getelementptr inbounds %struct.cx24120_cmd, ptr %5, i32 0, i32 2, i32 1
  store i8 %994, ptr %995, align 1
  %996 = getelementptr inbounds %struct.cx24120_cmd, ptr %5, i32 0, i32 2, i32 2
  store i8 5, ptr %996, align 1
  %997 = getelementptr inbounds %struct.cx24120_cmd, ptr %5, i32 0, i32 2, i32 3
  store i8 2, ptr %997, align 1
  %998 = lshr i8 %987, 1
  %999 = and i8 %998, 1
  %1000 = getelementptr inbounds %struct.cx24120_cmd, ptr %5, i32 0, i32 2, i32 4
  store i8 %999, ptr %1000, align 1
  %1001 = and i8 %987, -16
  %1002 = and i8 %989, 15
  %1003 = or i8 %1002, %1001
  %1004 = getelementptr inbounds %struct.cx24120_cmd, ptr %5, i32 0, i32 2, i32 5
  store i8 %1003, ptr %1004, align 1
  %1005 = getelementptr inbounds %struct.cx24120_cmd, ptr %5, i32 0, i32 2, i32 6
  store i8 16, ptr %1005, align 1
  %1006 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1010, label %1008

1008:                                             ; preds = %981, %954, %926, %925
  %1009 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %1120

1010:                                             ; preds = %981
  store i8 60, ptr %101, align 1
  store i8 3, ptr %810, align 1
  store i8 0, ptr %811, align 1
  store i8 16, ptr %812, align 1
  store i8 16, ptr %813, align 1
  %1011 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %101)
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1015, label %1013

1013:                                             ; preds = %1010
  %1014 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %1120

1015:                                             ; preds = %1010
  store i8 53, ptr %101, align 1
  store i8 1, ptr %810, align 1
  %1016 = getelementptr inbounds i8, ptr %4, i32 4
  %1017 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %1018 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %1019 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %1020 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %1021 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %1022 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store i8 0, ptr %811, align 1
  %1023 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %101)
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1025, label %1120

1025:                                             ; preds = %1015
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 51, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1016, i8 0, i32 16, i1 false) #14, !annotation !8
  %1026 = load ptr, ptr %110, align 4
  %1027 = load i8, ptr %1026, align 4
  %1028 = zext i8 %1027 to i16
  store i16 %1028, ptr %4, align 4
  store i16 0, ptr %1017, align 2
  store i16 1, ptr %1016, align 4
  store ptr %2, ptr %1018, align 4
  %1029 = load i8, ptr %1026, align 4
  %1030 = zext i8 %1029 to i16
  store i16 %1030, ptr %1019, align 4
  store i16 1, ptr %1020, align 2
  store i16 1, ptr %1021, align 4
  store ptr %3, ptr %1022, align 4
  %1031 = load ptr, ptr %103, align 4
  %1032 = call i32 @i2c_transfer(ptr noundef %1031, ptr noundef nonnull %4, i32 noundef 2) #14
  %1033 = icmp eq i32 %1032, 2
  br i1 %1033, label %1038, label %1034

1034:                                             ; preds = %1025
  %1035 = load i8, ptr %2, align 1
  %1036 = zext i8 %1035 to i32
  %1037 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1036, i32 noundef %1032) #12
  br label %1041

1038:                                             ; preds = %1025
  %1039 = load i8, ptr %3, align 1
  %1040 = zext i8 %1039 to i32
  br label %1041

1041:                                             ; preds = %1038, %1034
  %1042 = phi i32 [ %1032, %1034 ], [ %1040, %1038 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  store i8 1, ptr %811, align 1
  %1043 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %101)
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1045, label %1120

1045:                                             ; preds = %1041
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 51, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1016, i8 0, i32 16, i1 false) #14, !annotation !8
  %1046 = load ptr, ptr %110, align 4
  %1047 = load i8, ptr %1046, align 4
  %1048 = zext i8 %1047 to i16
  store i16 %1048, ptr %4, align 4
  store i16 0, ptr %1017, align 2
  store i16 1, ptr %1016, align 4
  store ptr %2, ptr %1018, align 4
  %1049 = load i8, ptr %1046, align 4
  %1050 = zext i8 %1049 to i16
  store i16 %1050, ptr %1019, align 4
  store i16 1, ptr %1020, align 2
  store i16 1, ptr %1021, align 4
  store ptr %3, ptr %1022, align 4
  %1051 = load ptr, ptr %103, align 4
  %1052 = call i32 @i2c_transfer(ptr noundef %1051, ptr noundef nonnull %4, i32 noundef 2) #14
  %1053 = icmp eq i32 %1052, 2
  br i1 %1053, label %1058, label %1054

1054:                                             ; preds = %1045
  %1055 = load i8, ptr %2, align 1
  %1056 = zext i8 %1055 to i32
  %1057 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1056, i32 noundef %1052) #12
  br label %1061

1058:                                             ; preds = %1045
  %1059 = load i8, ptr %3, align 1
  %1060 = zext i8 %1059 to i32
  br label %1061

1061:                                             ; preds = %1058, %1054
  %1062 = phi i32 [ %1052, %1054 ], [ %1060, %1058 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  store i8 2, ptr %811, align 1
  %1063 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %101)
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1065, label %1120

1065:                                             ; preds = %1061
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 51, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1016, i8 0, i32 16, i1 false) #14, !annotation !8
  %1066 = load ptr, ptr %110, align 4
  %1067 = load i8, ptr %1066, align 4
  %1068 = zext i8 %1067 to i16
  store i16 %1068, ptr %4, align 4
  store i16 0, ptr %1017, align 2
  store i16 1, ptr %1016, align 4
  store ptr %2, ptr %1018, align 4
  %1069 = load i8, ptr %1066, align 4
  %1070 = zext i8 %1069 to i16
  store i16 %1070, ptr %1019, align 4
  store i16 1, ptr %1020, align 2
  store i16 1, ptr %1021, align 4
  store ptr %3, ptr %1022, align 4
  %1071 = load ptr, ptr %103, align 4
  %1072 = call i32 @i2c_transfer(ptr noundef %1071, ptr noundef nonnull %4, i32 noundef 2) #14
  %1073 = icmp eq i32 %1072, 2
  br i1 %1073, label %1078, label %1074

1074:                                             ; preds = %1065
  %1075 = load i8, ptr %2, align 1
  %1076 = zext i8 %1075 to i32
  %1077 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1076, i32 noundef %1072) #12
  br label %1081

1078:                                             ; preds = %1065
  %1079 = load i8, ptr %3, align 1
  %1080 = zext i8 %1079 to i32
  br label %1081

1081:                                             ; preds = %1078, %1074
  %1082 = phi i32 [ %1072, %1074 ], [ %1080, %1078 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  store i8 3, ptr %811, align 1
  %1083 = call fastcc i32 @cx24120_message_send(ptr noundef %103, ptr noundef nonnull %101)
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1085, label %1120

1085:                                             ; preds = %1081
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 51, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1016, i8 0, i32 16, i1 false) #14, !annotation !8
  %1086 = load ptr, ptr %110, align 4
  %1087 = load i8, ptr %1086, align 4
  %1088 = zext i8 %1087 to i16
  store i16 %1088, ptr %4, align 4
  store i16 0, ptr %1017, align 2
  store i16 1, ptr %1016, align 4
  store ptr %2, ptr %1018, align 4
  %1089 = load i8, ptr %1086, align 4
  %1090 = zext i8 %1089 to i16
  store i16 %1090, ptr %1019, align 4
  store i16 1, ptr %1020, align 2
  store i16 1, ptr %1021, align 4
  store ptr %3, ptr %1022, align 4
  %1091 = load ptr, ptr %103, align 4
  %1092 = call i32 @i2c_transfer(ptr noundef %1091, ptr noundef nonnull %4, i32 noundef 2) #14
  %1093 = icmp eq i32 %1092, 2
  br i1 %1093, label %1098, label %1094

1094:                                             ; preds = %1085
  %1095 = load i8, ptr %2, align 1
  %1096 = zext i8 %1095 to i32
  %1097 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1096, i32 noundef %1092) #12
  br label %1101

1098:                                             ; preds = %1085
  %1099 = load i8, ptr %3, align 1
  %1100 = zext i8 %1099 to i32
  br label %1101

1101:                                             ; preds = %1098, %1094
  %1102 = phi i32 [ %1092, %1094 ], [ %1100, %1098 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %1103 = and i32 %1042, 255
  %1104 = and i32 %1062, 255
  %1105 = and i32 %1082, 255
  %1106 = and i32 %1102, 255
  %1107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %1103, i32 noundef %1104, i32 noundef %1105, i32 noundef %1106) #12
  %1108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %1108, align 4
  %1109 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %1109, align 1
  %1110 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %1110, align 1
  %1111 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %1111, align 1
  %1112 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %1112, align 4
  %1113 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %1113, align 1
  %1114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %1114, align 1
  %1115 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %1115, align 1
  %1116 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %1116, align 2
  %1117 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %1117, align 1
  %1118 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %1118, align 1
  %1119 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %1119, align 1
  store i8 1, ptr %104, align 4
  br label %1120

1120:                                             ; preds = %1101, %1081, %1061, %1041, %1015, %1013, %1008, %901, %872, %859, %816, %807, %555, %1
  %1121 = phi i32 [ %553, %555 ], [ -121, %816 ], [ %857, %859 ], [ -121, %872 ], [ -121, %901 ], [ -121, %1008 ], [ -121, %1013 ], [ 0, %1101 ], [ 0, %1 ], [ %794, %807 ], [ %1023, %1015 ], [ %1043, %1041 ], [ %1063, %1061 ], [ %1083, %1081 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %101) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %100) #14
  ret i32 %1121
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_sleep(ptr nocapture noundef readnone %0) #8 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_tune(ptr nocapture noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef %4) #0 {
  br i1 %1, label %6, label %9

6:                                                ; preds = %5
  %7 = tail call i32 @cx24120_set_frontend(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %5
  %10 = tail call i32 @cx24120_read_status(ptr noundef %0, ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ 0, %9 ], [ %7, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_get_algo(ptr nocapture noundef readnone %0) #8 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_set_frontend(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.cx24120_cmd, align 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  %12 = getelementptr inbounds i8, ptr %9, i32 17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %12, i8 0, i32 15, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -5
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %196

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %19 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7
  %20 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 4
  store i32 %14, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 5
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %18, align 4
  store i32 %24, ptr %19, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 6
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %196

31:                                               ; preds = %17
  %32 = trunc i32 %29 to i24
  %33 = shl i24 %32, 3
  %34 = lshr i24 787456, %33
  %35 = trunc i24 %34 to i8
  %36 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 11
  store i8 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 2
  store i32 %29, ptr %37, align 4
  %38 = load i32, ptr %21, align 4
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 3
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %60, %31
  %43 = phi i32 [ 0, %31 ], [ %61, %60 ]
  %44 = getelementptr [20 x %struct.cx24120_modfec_table], ptr @modfec_table, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %14
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = getelementptr [20 x %struct.cx24120_modfec_table], ptr @modfec_table, i32 0, i32 %43, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr [20 x %struct.cx24120_modfec_table], ptr @modfec_table, i32 0, i32 %43, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %40
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 8
  store i8 0, ptr %56, align 1
  %57 = getelementptr [20 x %struct.cx24120_modfec_table], ptr @modfec_table, i32 0, i32 %43, i32 3
  %58 = load i8, ptr %57, align 4
  %59 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 7
  store i8 %58, ptr %59, align 4
  br label %71

60:                                               ; preds = %51, %47, %42
  %61 = add nuw nsw i32 %43, 1
  %62 = icmp eq i32 %61, 20
  br i1 %62, label %63, label %42

63:                                               ; preds = %60
  %64 = icmp eq i32 %14, 6
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 8
  store i8 0, ptr %66, align 1
  %67 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 7
  store i8 0, ptr %67, align 4
  br label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 7
  store i8 46, ptr %69, align 4
  %70 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 8
  store i8 -84, ptr %70, align 1
  br label %71

71:                                               ; preds = %68, %65, %55
  %72 = load i32, ptr %25, align 4
  %73 = icmp eq i32 %14, 6
  %74 = icmp eq i32 %72, 0
  %75 = select i1 %74, i8 64, i8 -128
  %76 = icmp eq i32 %72, 1
  %77 = select i1 %76, i8 0, i8 %75
  %78 = select i1 %73, i8 %77, i8 0
  %79 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 12
  store i8 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 1
  store i32 %81, ptr %82, align 4
  %83 = icmp ugt i32 %81, 31000000
  %84 = select i1 %83, i8 2, i8 3
  %85 = select i1 %83, i8 4, i8 6
  %86 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 9
  store i8 %84, ptr %86, align 2
  %87 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 7, i32 10
  store i8 %85, ptr %87, align 1
  %88 = load ptr, ptr %10, align 4
  %89 = getelementptr inbounds %struct.cx24120_state, ptr %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.cx24120_state, ptr %88, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %89, ptr noundef align 4 dereferenceable(36) %90, i32 36, i1 false) #14
  %91 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 5
  store i8 1, ptr %91, align 2
  store i8 17, ptr %9, align 1
  %92 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 1
  store i8 15, ptr %92, align 1
  %93 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2
  store i8 0, ptr %93, align 1
  %94 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 16
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 1
  store i8 %97, ptr %98, align 1
  %99 = lshr i32 %95, 8
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 2
  store i8 %100, ptr %101, align 1
  %102 = trunc i32 %95 to i8
  %103 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 3
  store i8 %102, ptr %103, align 1
  %104 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 6, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = udiv i32 %105, 1000
  %107 = lshr i32 %106, 8
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 4
  store i8 %108, ptr %109, align 1
  %110 = trunc i32 %106 to i8
  %111 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 5
  store i8 %110, ptr %111, align 1
  %112 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 6, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 6
  store i8 %114, ptr %115, align 1
  %116 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 6, i32 7
  %117 = load i8, ptr %116, align 4
  %118 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 6, i32 12
  %119 = load i8, ptr %118, align 1
  %120 = or i8 %119, %117
  %121 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 7
  store i8 %120, ptr %121, align 1
  %122 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 8
  store i8 19, ptr %122, align 1
  %123 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 9
  store i8 -120, ptr %123, align 1
  %124 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 10
  store i8 0, ptr %124, align 1
  %125 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 6, i32 8
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 11
  store i8 %126, ptr %127, align 1
  %128 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 6, i32 10
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 12
  store i8 %129, ptr %130, align 1
  %131 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 6, i32 9
  %132 = load i8, ptr %131, align 2
  %133 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 13
  store i8 %132, ptr %133, align 1
  %134 = getelementptr inbounds %struct.cx24120_cmd, ptr %9, i32 0, i32 2, i32 14
  store i8 0, ptr %134, align 1
  %135 = call fastcc i32 @cx24120_message_send(ptr noundef %11, ptr noundef nonnull %9)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %196

137:                                              ; preds = %71
  %138 = load i8, ptr %131, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  store i8 -26, ptr %7, align 2
  %139 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %138, ptr %139, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  %140 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %140, align 4, !annotation !8
  %141 = getelementptr inbounds %struct.cx24120_state, ptr %11, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = load i8, ptr %142, align 4
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %8, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %145, align 2
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %146, align 4
  %147 = load ptr, ptr %11, align 4
  %148 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %8, i32 noundef 1) #14
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %153, label %150

150:                                              ; preds = %137
  %151 = zext i8 %138 to i32
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %148, i32 noundef 230, i32 noundef %151) #12
  br label %153

153:                                              ; preds = %150, %137
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 -16, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %154 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %154, i8 0, i32 16, i1 false) #14, !annotation !8
  %155 = load ptr, ptr %141, align 4
  %156 = load i8, ptr %155, align 4
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %6, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %158, align 2
  store i16 1, ptr %154, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %159, align 4
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %161 = load i8, ptr %155, align 4
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %160, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %163, align 2
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %164, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %165, align 4
  %166 = load ptr, ptr %11, align 4
  %167 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %6, i32 noundef 2) #14
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %173, label %169

169:                                              ; preds = %153
  %170 = load i8, ptr %4, align 1
  %171 = zext i8 %170 to i32
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %171, i32 noundef %167) #12
  br label %176

173:                                              ; preds = %153
  %174 = load i8, ptr %5, align 1
  %175 = zext i8 %174 to i32
  br label %176

176:                                              ; preds = %173, %169
  %177 = phi i32 [ %167, %169 ], [ %175, %173 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %178 = load i8, ptr %128, align 1
  %179 = trunc i32 %177 to i8
  %180 = and i8 %179, -16
  %181 = or i8 %178, %180
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  store i8 -16, ptr %2, align 2
  %182 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %181, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %183 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %183, align 4, !annotation !8
  %184 = load ptr, ptr %141, align 4
  %185 = load i8, ptr %184, align 4
  %186 = zext i8 %185 to i16
  store i16 %186, ptr %3, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %187, align 2
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %188, align 4
  %189 = load ptr, ptr %11, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %3, i32 noundef 1) #14
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %195, label %192

192:                                              ; preds = %176
  %193 = zext i8 %181 to i32
  %194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %190, i32 noundef 240, i32 noundef %193) #12
  br label %195

195:                                              ; preds = %192, %176
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  br label %196

196:                                              ; preds = %195, %71, %17, %1
  %197 = phi i32 [ 0, %195 ], [ -22, %1 ], [ %135, %71 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  ret i32 %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_get_frontend(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12)
  store i8 58, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #14
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #14
  %17 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #14, !annotation !8
  %18 = getelementptr inbounds %struct.cx24120_state, ptr %16, i32 0, i32 1
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
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %14, i32 noundef 2) #14
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load i8, ptr %12, align 1
  %35 = zext i8 %34 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %35, i32 noundef %31) #12
  br label %40

37:                                               ; preds = %2
  %38 = load i8, ptr %13, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i32 [ %31, %33 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12)
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %125, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 54, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #14
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  %45 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #14, !annotation !8
  %46 = load ptr, ptr %18, align 4
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %11, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %45, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %52 = load i8, ptr %46, align 4
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %56, align 4
  %57 = load ptr, ptr %16, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %11, i32 noundef 2) #14
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %64, label %60

60:                                               ; preds = %44
  %61 = load i8, ptr %9, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %62, i32 noundef %58) #12
  br label %67

64:                                               ; preds = %44
  %65 = load i8, ptr %10, align 1
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %58, %60 ], [ %66, %64 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 53, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  %69 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %69, i8 0, i32 16, i1 false) #14, !annotation !8
  %70 = load ptr, ptr %18, align 4
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %8, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %73, align 2
  store i16 1, ptr %69, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %76 = load i8, ptr %70, align 4
  %77 = zext i8 %76 to i16
  store i16 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %78, align 2
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %79, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %80, align 4
  %81 = load ptr, ptr %16, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %8, i32 noundef 2) #14
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %88, label %84

84:                                               ; preds = %67
  %85 = load i8, ptr %6, align 1
  %86 = zext i8 %85 to i32
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %86, i32 noundef %82) #12
  br label %91

88:                                               ; preds = %67
  %89 = load i8, ptr %7, align 1
  %90 = zext i8 %89 to i32
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i32 [ %82, %84 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 52, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #14
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %93 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %93, i8 0, i32 16, i1 false) #14, !annotation !8
  %94 = load ptr, ptr %18, align 4
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %5, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %97, align 2
  store i16 1, ptr %93, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %98, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %100 = load i8, ptr %94, align 4
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %99, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %102, align 2
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %104, align 4
  %105 = load ptr, ptr %16, align 4
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %5, i32 noundef 2) #14
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %112, label %108

108:                                              ; preds = %91
  %109 = load i8, ptr %3, align 1
  %110 = zext i8 %109 to i32
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %110, i32 noundef %106) #12
  br label %115

112:                                              ; preds = %91
  %113 = load i8, ptr %4, align 1
  %114 = zext i8 %113 to i32
  br label %115

115:                                              ; preds = %112, %108
  %116 = phi i32 [ %106, %108 ], [ %114, %112 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %117 = shl i32 %116, 16
  %118 = and i32 %117, 16711680
  %119 = shl i32 %92, 8
  %120 = and i32 %119, 65280
  %121 = and i32 %68, 255
  %122 = or i32 %120, %121
  %123 = or i32 %122, %118
  store i32 %123, ptr %1, align 4
  %124 = call fastcc i32 @cx24120_get_fec(ptr noundef %0)
  br label %125

125:                                              ; preds = %115, %40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.cx24120_cmd, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca %struct.cx24120_cmd, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [2 x %struct.i2c_msg], align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca [2 x %struct.i2c_msg], align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca [2 x %struct.i2c_msg], align 4
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca [2 x %struct.i2c_msg], align 4
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca [2 x %struct.i2c_msg], align 4
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca [2 x %struct.i2c_msg], align 4
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca [2 x %struct.i2c_msg], align 4
  %38 = alloca %struct.cx24120_cmd, align 1
  %39 = alloca i8, align 1
  %40 = alloca i8, align 1
  %41 = alloca [2 x %struct.i2c_msg], align 4
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39)
  store i8 58, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %40) #14
  store i8 0, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %41) #14
  %44 = getelementptr inbounds i8, ptr %41, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %44, i8 0, i32 16, i1 false) #14, !annotation !8
  %45 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %41, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %44, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %39, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 1
  %52 = load i8, ptr %46, align 4
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 1, i32 1
  store i16 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 1, i32 2
  store i16 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 1, i32 3
  store ptr %40, ptr %56, align 4
  %57 = load ptr, ptr %43, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %41, i32 noundef 2) #14
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %64, label %60

60:                                               ; preds = %2
  %61 = load i8, ptr %39, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %62, i32 noundef %58) #12
  br label %67

64:                                               ; preds = %2
  %65 = load i8, ptr %40, align 1
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %58, %60 ], [ %66, %64 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %41) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %40) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39)
  %69 = and i32 %68, 3
  %70 = and i32 %68, 4
  %71 = icmp eq i32 %70, 0
  %72 = or i32 %69, 12
  %73 = select i1 %71, i32 %69, i32 %72
  %74 = shl i32 %68, 1
  %75 = and i32 %74, 16
  %76 = or i32 %75, %73
  store i32 %76, ptr %1, align 4
  %77 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 8
  store i32 %76, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %38) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %38, i8 0, i32 32, i1 false) #14, !annotation !8
  %78 = and i32 %73, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %145, label %80

80:                                               ; preds = %67
  store i8 26, ptr %38, align 1
  %81 = getelementptr inbounds %struct.cx24120_cmd, ptr %38, i32 0, i32 1
  store i8 1, ptr %81, align 1
  %82 = call fastcc i32 @cx24120_message_send(ptr noundef %43, ptr noundef nonnull %38) #14
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %424

86:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #14
  store i8 58, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %36) #14
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %37) #14
  %87 = getelementptr inbounds i8, ptr %37, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %87, i8 0, i32 16, i1 false) #14, !annotation !8
  %88 = load ptr, ptr %45, align 4
  %89 = load i8, ptr %88, align 4
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %37, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %91, align 2
  store i16 1, ptr %87, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %35, ptr %92, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1
  %94 = load i8, ptr %88, align 4
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %93, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 1
  store i16 1, ptr %96, align 2
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 2
  store i16 1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 1, i32 3
  store ptr %36, ptr %98, align 4
  %99 = load ptr, ptr %43, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %37, i32 noundef 2) #14
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %106, label %102

102:                                              ; preds = %86
  %103 = load i8, ptr %35, align 1
  %104 = zext i8 %103 to i32
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %104, i32 noundef %100) #12
  br label %109

106:                                              ; preds = %86
  %107 = load i8, ptr %36, align 1
  %108 = zext i8 %107 to i32
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi i32 [ %100, %102 ], [ %108, %106 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %37) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #14
  %111 = shl i32 %110, 2
  %112 = and i32 %111, 65280
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %32) #14
  store i8 59, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #14
  store i8 0, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #14
  %113 = getelementptr inbounds i8, ptr %34, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %113, i8 0, i32 16, i1 false) #14, !annotation !8
  %114 = load ptr, ptr %45, align 4
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %34, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %117, align 2
  store i16 1, ptr %113, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %32, ptr %118, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1
  %120 = load i8, ptr %114, align 4
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %119, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 1
  store i16 1, ptr %122, align 2
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 2
  store i16 1, ptr %123, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 3
  store ptr %33, ptr %124, align 4
  %125 = load ptr, ptr %43, align 4
  %126 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %34, i32 noundef 2) #14
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %132, label %128

128:                                              ; preds = %109
  %129 = load i8, ptr %32, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %130, i32 noundef %126) #12
  br label %135

132:                                              ; preds = %109
  %133 = load i8, ptr %33, align 1
  %134 = zext i8 %133 to i32
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi i32 [ %126, %128 ], [ %134, %132 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %32) #14
  %137 = or i32 %136, %112
  %138 = trunc i32 %137 to i16
  %139 = mul i16 %138, -100
  %140 = add i16 %139, 28788
  %141 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 42, i32 1
  store i8 2, ptr %141, align 1
  %142 = zext i16 %140 to i64
  %143 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %142, ptr %143, align 1
  %144 = load i32, ptr %77, align 4
  br label %147

145:                                              ; preds = %67
  %146 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 42, i32 1
  store i8 0, ptr %146, align 1
  br label %147

147:                                              ; preds = %145, %135
  %148 = phi i32 [ %76, %145 ], [ %144, %135 ]
  %149 = and i32 %148, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %207, label %151

151:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #14
  store i8 64, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %30) #14
  store i8 0, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %31) #14
  %152 = getelementptr inbounds i8, ptr %31, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %152, i8 0, i32 16, i1 false) #14, !annotation !8
  %153 = load ptr, ptr %45, align 4
  %154 = load i8, ptr %153, align 4
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %31, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %156, align 2
  store i16 1, ptr %152, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %29, ptr %157, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 1
  %159 = load i8, ptr %153, align 4
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %158, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 1, i32 1
  store i16 1, ptr %161, align 2
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 1, i32 2
  store i16 1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 1, i32 3
  store ptr %30, ptr %163, align 4
  %164 = load ptr, ptr %43, align 4
  %165 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %31, i32 noundef 2) #14
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %171, label %167

167:                                              ; preds = %151
  %168 = load i8, ptr %29, align 1
  %169 = zext i8 %168 to i32
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %169, i32 noundef %165) #12
  br label %174

171:                                              ; preds = %151
  %172 = load i8, ptr %30, align 1
  %173 = zext i8 %172 to i32
  br label %174

174:                                              ; preds = %171, %167
  %175 = phi i32 [ %165, %167 ], [ %173, %171 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #14
  %176 = shl i32 %175, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #14
  store i8 65, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #14
  store i8 0, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #14
  %177 = getelementptr inbounds i8, ptr %28, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %177, i8 0, i32 16, i1 false) #14, !annotation !8
  %178 = load ptr, ptr %45, align 4
  %179 = load i8, ptr %178, align 4
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %28, align 4
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %181, align 2
  store i16 1, ptr %177, align 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %26, ptr %182, align 4
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1
  %184 = load i8, ptr %178, align 4
  %185 = zext i8 %184 to i16
  store i16 %185, ptr %183, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 1
  store i16 1, ptr %186, align 2
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 2
  store i16 1, ptr %187, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 3
  store ptr %27, ptr %188, align 4
  %189 = load ptr, ptr %43, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %28, i32 noundef 2) #14
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %196, label %192

192:                                              ; preds = %174
  %193 = load i8, ptr %26, align 1
  %194 = zext i8 %193 to i32
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %194, i32 noundef %190) #12
  br label %199

196:                                              ; preds = %174
  %197 = load i8, ptr %27, align 1
  %198 = zext i8 %197 to i32
  br label %199

199:                                              ; preds = %196, %192
  %200 = phi i32 [ %190, %192 ], [ %198, %196 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #14
  %201 = or i32 %200, %176
  %202 = mul i32 %201, 100
  %203 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 43, i32 1
  store i8 1, ptr %203, align 1
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %204, ptr %205, align 1
  %206 = load i32, ptr %77, align 4
  br label %209

207:                                              ; preds = %147
  %208 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 43, i32 1
  store i8 0, ptr %208, align 1
  br label %209

209:                                              ; preds = %207, %199
  %210 = phi i32 [ %148, %207 ], [ %206, %199 ]
  %211 = and i32 %210, 16
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 0, ptr %214, align 1
  %215 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 47, i32 1
  store i8 0, ptr %215, align 1
  %216 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 48, i32 1
  store i8 0, ptr %216, align 1
  %217 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 49, i32 1
  store i8 0, ptr %217, align 1
  br label %424

218:                                              ; preds = %209
  %219 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 13
  %220 = load i32, ptr %219, align 4
  %221 = load volatile i32, ptr @jiffies, align 64
  %222 = sub i32 %220, %221
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %343

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 10
  %226 = load i32, ptr %225, align 4
  %227 = load volatile i32, ptr @jiffies, align 64
  %228 = add i32 %226, 500
  %229 = udiv i32 %228, 1000
  %230 = call i32 @__msecs_to_jiffies(i32 noundef %229) #14
  %231 = add i32 %230, %227
  store i32 %231, ptr %219, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #14
  store i8 71, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #14
  store i8 0, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #14
  %232 = getelementptr inbounds i8, ptr %25, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %232, i8 0, i32 16, i1 false) #14, !annotation !8
  %233 = load ptr, ptr %45, align 4
  %234 = load i8, ptr %233, align 4
  %235 = zext i8 %234 to i16
  store i16 %235, ptr %25, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %236, align 2
  store i16 1, ptr %232, align 4
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %23, ptr %237, align 4
  %238 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  %239 = load i8, ptr %233, align 4
  %240 = zext i8 %239 to i16
  store i16 %240, ptr %238, align 4
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  store i16 1, ptr %241, align 2
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  store i16 1, ptr %242, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  store ptr %24, ptr %243, align 4
  %244 = load ptr, ptr %43, align 4
  %245 = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %25, i32 noundef 2) #14
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %251, label %247

247:                                              ; preds = %224
  %248 = load i8, ptr %23, align 1
  %249 = zext i8 %248 to i32
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %249, i32 noundef %245) #12
  br label %254

251:                                              ; preds = %224
  %252 = load i8, ptr %24, align 1
  %253 = zext i8 %252 to i32
  br label %254

254:                                              ; preds = %251, %247
  %255 = phi i32 [ %245, %247 ], [ %253, %251 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #14
  %256 = shl i32 %255, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #14
  store i8 72, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #14
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #14
  %257 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %257, i8 0, i32 16, i1 false) #14, !annotation !8
  %258 = load ptr, ptr %45, align 4
  %259 = load i8, ptr %258, align 4
  %260 = zext i8 %259 to i16
  store i16 %260, ptr %22, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %261, align 2
  store i16 1, ptr %257, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %20, ptr %262, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  %264 = load i8, ptr %258, align 4
  %265 = zext i8 %264 to i16
  store i16 %265, ptr %263, align 4
  %266 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %266, align 2
  %267 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 1, ptr %267, align 4
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %21, ptr %268, align 4
  %269 = load ptr, ptr %43, align 4
  %270 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %22, i32 noundef 2) #14
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %276, label %272

272:                                              ; preds = %254
  %273 = load i8, ptr %20, align 1
  %274 = zext i8 %273 to i32
  %275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %274, i32 noundef %270) #12
  br label %279

276:                                              ; preds = %254
  %277 = load i8, ptr %21, align 1
  %278 = zext i8 %277 to i32
  br label %279

279:                                              ; preds = %276, %272
  %280 = phi i32 [ %270, %272 ], [ %278, %276 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #14
  %281 = shl i32 %280, 16
  %282 = or i32 %281, %256
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #14
  store i8 73, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #14
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #14
  %283 = getelementptr inbounds i8, ptr %19, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %283, i8 0, i32 16, i1 false) #14, !annotation !8
  %284 = load ptr, ptr %45, align 4
  %285 = load i8, ptr %284, align 4
  %286 = zext i8 %285 to i16
  store i16 %286, ptr %19, align 4
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %287, align 2
  store i16 1, ptr %283, align 4
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %17, ptr %288, align 4
  %289 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1
  %290 = load i8, ptr %284, align 4
  %291 = zext i8 %290 to i16
  store i16 %291, ptr %289, align 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 1
  store i16 1, ptr %292, align 2
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 2
  store i16 1, ptr %293, align 4
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 3
  store ptr %18, ptr %294, align 4
  %295 = load ptr, ptr %43, align 4
  %296 = call i32 @i2c_transfer(ptr noundef %295, ptr noundef nonnull %19, i32 noundef 2) #14
  %297 = icmp eq i32 %296, 2
  br i1 %297, label %302, label %298

298:                                              ; preds = %279
  %299 = load i8, ptr %17, align 1
  %300 = zext i8 %299 to i32
  %301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %300, i32 noundef %296) #12
  br label %305

302:                                              ; preds = %279
  %303 = load i8, ptr %18, align 1
  %304 = zext i8 %303 to i32
  br label %305

305:                                              ; preds = %302, %298
  %306 = phi i32 [ %296, %298 ], [ %304, %302 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #14
  %307 = shl i32 %306, 8
  %308 = or i32 %282, %307
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #14
  store i8 74, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #14
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #14
  %309 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %309, i8 0, i32 16, i1 false) #14, !annotation !8
  %310 = load ptr, ptr %45, align 4
  %311 = load i8, ptr %310, align 4
  %312 = zext i8 %311 to i16
  store i16 %312, ptr %16, align 4
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %313, align 2
  store i16 1, ptr %309, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %314, align 4
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  %316 = load i8, ptr %310, align 4
  %317 = zext i8 %316 to i16
  store i16 %317, ptr %315, align 4
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %318, align 2
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %319, align 4
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %320, align 4
  %321 = load ptr, ptr %43, align 4
  %322 = call i32 @i2c_transfer(ptr noundef %321, ptr noundef nonnull %16, i32 noundef 2) #14
  %323 = icmp eq i32 %322, 2
  br i1 %323, label %328, label %324

324:                                              ; preds = %305
  %325 = load i8, ptr %14, align 1
  %326 = zext i8 %325 to i32
  %327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %326, i32 noundef %322) #12
  br label %331

328:                                              ; preds = %305
  %329 = load i8, ptr %15, align 1
  %330 = zext i8 %329 to i32
  br label %331

331:                                              ; preds = %328, %324
  %332 = phi i32 [ %322, %324 ], [ %330, %328 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #14
  %333 = or i32 %308, %332
  %334 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 3, ptr %334, align 1
  %335 = zext i32 %333 to i64
  %336 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 46, i32 1, i32 0, i32 1
  %337 = load i64, ptr %336, align 1
  %338 = add i64 %337, %335
  store i64 %338, ptr %336, align 1
  %339 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 47, i32 1
  store i8 3, ptr %339, align 1
  %340 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 47, i32 1, i32 0, i32 1
  %341 = load i64, ptr %340, align 1
  %342 = add i64 %341, 109051904
  store i64 %342, ptr %340, align 1
  br label %343

343:                                              ; preds = %331, %218
  %344 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 14
  %345 = load i32, ptr %344, align 4
  %346 = load volatile i32, ptr @jiffies, align 64
  %347 = sub i32 %345, %346
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %424

349:                                              ; preds = %343
  %350 = load volatile i32, ptr @jiffies, align 64
  %351 = add i32 %350, 100
  store i32 %351, ptr %344, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #14
  store i8 80, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #14
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #14
  %352 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %352, i8 0, i32 16, i1 false) #14, !annotation !8
  %353 = load ptr, ptr %45, align 4
  %354 = load i8, ptr %353, align 4
  %355 = zext i8 %354 to i16
  store i16 %355, ptr %13, align 4
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %356, align 2
  store i16 1, ptr %352, align 4
  %357 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %357, align 4
  %358 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %359 = load i8, ptr %353, align 4
  %360 = zext i8 %359 to i16
  store i16 %360, ptr %358, align 4
  %361 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %361, align 2
  %362 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %362, align 4
  %363 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %363, align 4
  %364 = load ptr, ptr %43, align 4
  %365 = call i32 @i2c_transfer(ptr noundef %364, ptr noundef nonnull %13, i32 noundef 2) #14
  %366 = icmp eq i32 %365, 2
  br i1 %366, label %371, label %367

367:                                              ; preds = %349
  %368 = load i8, ptr %11, align 1
  %369 = zext i8 %368 to i32
  %370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %369, i32 noundef %365) #12
  br label %374

371:                                              ; preds = %349
  %372 = load i8, ptr %12, align 1
  %373 = zext i8 %372 to i32
  br label %374

374:                                              ; preds = %371, %367
  %375 = phi i32 [ %365, %367 ], [ %373, %371 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #14
  %376 = shl i32 %375, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #14
  store i8 81, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #14
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #14
  %377 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %377, i8 0, i32 16, i1 false) #14, !annotation !8
  %378 = load ptr, ptr %45, align 4
  %379 = load i8, ptr %378, align 4
  %380 = zext i8 %379 to i16
  store i16 %380, ptr %10, align 4
  %381 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %381, align 2
  store i16 1, ptr %377, align 4
  %382 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %382, align 4
  %383 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %384 = load i8, ptr %378, align 4
  %385 = zext i8 %384 to i16
  store i16 %385, ptr %383, align 4
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %386, align 2
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %387, align 4
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %388, align 4
  %389 = load ptr, ptr %43, align 4
  %390 = call i32 @i2c_transfer(ptr noundef %389, ptr noundef nonnull %10, i32 noundef 2) #14
  %391 = icmp eq i32 %390, 2
  br i1 %391, label %396, label %392

392:                                              ; preds = %374
  %393 = load i8, ptr %8, align 1
  %394 = zext i8 %393 to i32
  %395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %394, i32 noundef %390) #12
  br label %399

396:                                              ; preds = %374
  %397 = load i8, ptr %9, align 1
  %398 = zext i8 %397 to i32
  br label %399

399:                                              ; preds = %396, %392
  %400 = phi i32 [ %390, %392 ], [ %398, %396 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #14
  %401 = or i32 %400, %376
  %402 = and i32 %401, 65535
  %403 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 12
  %404 = load i32, ptr %403, align 4
  %405 = icmp ult i32 %402, %404
  br i1 %405, label %406, label %410

406:                                              ; preds = %399
  %407 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 48, i32 1, i32 0, i32 1
  %408 = load i64, ptr %407, align 1
  %409 = trunc i64 %408 to i32
  store i32 %409, ptr %403, align 4
  br label %410

410:                                              ; preds = %406, %399
  %411 = phi i32 [ %409, %406 ], [ %404, %399 ]
  %412 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 48, i32 1
  store i8 3, ptr %412, align 1
  %413 = add i32 %411, %402
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 48, i32 1, i32 0, i32 1
  store i64 %414, ptr %415, align 1
  %416 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 49, i32 1
  store i8 3, ptr %416, align 1
  %417 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 9
  %418 = load i32, ptr %417, align 4
  %419 = udiv i32 %418, 1664
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 2, i32 8, i32 49, i32 1, i32 0, i32 1
  %422 = load i64, ptr %421, align 1
  %423 = add i64 %422, %420
  store i64 %423, ptr %421, align 1
  br label %424

424:                                              ; preds = %410, %343, %213, %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %38) #14
  %425 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 5
  %426 = load i8, ptr %425, align 2
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %564, label %428

428:                                              ; preds = %424
  %429 = load i32, ptr %1, align 4
  %430 = and i32 %429, 16
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %564, label %432

432:                                              ; preds = %428
  %433 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #14
  %434 = getelementptr inbounds i8, ptr %7, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %434, i8 0, i32 29, i1 false) #14, !annotation !8
  %435 = call fastcc i32 @cx24120_get_fec(ptr noundef %0) #14
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %548

437:                                              ; preds = %432
  %438 = getelementptr inbounds %struct.cx24120_state, ptr %433, i32 0, i32 6, i32 4
  %439 = load i32, ptr %438, align 4
  %440 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %441 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %442 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  br label %443

443:                                              ; preds = %463, %437
  %444 = phi i32 [ 0, %437 ], [ %464, %463 ]
  %445 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %444
  %446 = load i32, ptr %445, align 4
  %447 = icmp eq i32 %446, %439
  br i1 %447, label %448, label %463

448:                                              ; preds = %443
  %449 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %444, i32 2
  %450 = load i32, ptr %449, align 4
  %451 = load i32, ptr %440, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %463

453:                                              ; preds = %448
  %454 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %444, i32 3
  %455 = load i32, ptr %454, align 4
  %456 = load i32, ptr %441, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %463

458:                                              ; preds = %453
  %459 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %444, i32 1
  %460 = load i32, ptr %459, align 4
  %461 = load i32, ptr %442, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %468, label %463

463:                                              ; preds = %458, %453, %448, %443
  %464 = add nuw nsw i32 %444, 1
  %465 = icmp eq i32 %464, 33
  br i1 %465, label %466, label %443

466:                                              ; preds = %463
  %467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %548

468:                                              ; preds = %458
  store i8 22, ptr %7, align 1
  %469 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 1
  store i8 1, ptr %469, align 1
  %470 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2
  store i8 0, ptr %470, align 1
  %471 = call fastcc i32 @cx24120_message_send(ptr noundef %433, ptr noundef nonnull %7) #14
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %548

473:                                              ; preds = %468
  %474 = getelementptr inbounds i8, ptr %6, i32 4
  %475 = getelementptr inbounds %struct.cx24120_state, ptr %433, i32 0, i32 1
  %476 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %477 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %478 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %479 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %480 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %481 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  br label %482

482:                                              ; preds = %501, %473
  %483 = phi i32 [ 0, %473 ], [ %505, %501 ]
  %484 = trunc i32 %483 to i8
  %485 = add i8 %484, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #14
  store i8 %485, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %474, i8 0, i32 16, i1 false) #14, !annotation !8
  %486 = load ptr, ptr %475, align 4
  %487 = load i8, ptr %486, align 4
  %488 = zext i8 %487 to i16
  store i16 %488, ptr %6, align 4
  store i16 0, ptr %476, align 2
  store i16 1, ptr %474, align 4
  store ptr %4, ptr %477, align 4
  %489 = load i8, ptr %486, align 4
  %490 = zext i8 %489 to i16
  store i16 %490, ptr %478, align 4
  store i16 1, ptr %479, align 2
  store i16 1, ptr %480, align 4
  store ptr %5, ptr %481, align 4
  %491 = load ptr, ptr %433, align 4
  %492 = call i32 @i2c_transfer(ptr noundef %491, ptr noundef nonnull %6, i32 noundef 2) #14
  %493 = icmp eq i32 %492, 2
  br i1 %493, label %498, label %494

494:                                              ; preds = %482
  %495 = load i8, ptr %4, align 1
  %496 = zext i8 %495 to i32
  %497 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %496, i32 noundef %492) #12
  br label %501

498:                                              ; preds = %482
  %499 = load i8, ptr %5, align 1
  %500 = zext i8 %499 to i32
  br label %501

501:                                              ; preds = %498, %494
  %502 = phi i32 [ %492, %494 ], [ %500, %498 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  %503 = trunc i32 %502 to i8
  %504 = getelementptr %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 %483
  store i8 %503, ptr %504, align 1
  %505 = add nuw nsw i32 %483, 1
  %506 = icmp eq i32 %505, 6
  br i1 %506, label %507, label %482

507:                                              ; preds = %501
  store i8 23, ptr %7, align 1
  store i8 10, ptr %469, align 1
  store i8 0, ptr %470, align 1
  store i8 16, ptr %434, align 1
  %508 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %444, i32 4
  %509 = load i32, ptr %508, align 4
  %510 = lshr i32 %509, 16
  %511 = trunc i32 %510 to i8
  %512 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 2
  store i8 %511, ptr %512, align 1
  %513 = lshr i32 %509, 8
  %514 = trunc i32 %513 to i8
  %515 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 3
  store i8 %514, ptr %515, align 1
  %516 = trunc i32 %509 to i8
  %517 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 4
  store i8 %516, ptr %517, align 1
  %518 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %444, i32 5
  %519 = load i32, ptr %518, align 4
  %520 = lshr i32 %519, 16
  %521 = trunc i32 %520 to i8
  %522 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 5
  store i8 %521, ptr %522, align 1
  %523 = lshr i32 %519, 8
  %524 = trunc i32 %523 to i8
  %525 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 6
  store i8 %524, ptr %525, align 1
  %526 = trunc i32 %519 to i8
  %527 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 7
  store i8 %526, ptr %527, align 1
  %528 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %444, i32 6
  %529 = load i32, ptr %528, align 4
  %530 = lshr i32 %529, 8
  %531 = trunc i32 %530 to i8
  %532 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 8
  store i8 %531, ptr %532, align 1
  %533 = trunc i32 %529 to i8
  %534 = getelementptr inbounds %struct.cx24120_cmd, ptr %7, i32 0, i32 2, i32 9
  store i8 %533, ptr %534, align 1
  %535 = call fastcc i32 @cx24120_message_send(ptr noundef %433, ptr noundef nonnull %7) #14
  %536 = getelementptr inbounds %struct.cx24120_state, ptr %433, i32 0, i32 2, i32 8, i32 10
  %537 = load i32, ptr %536, align 4
  %538 = zext i32 %537 to i64
  %539 = zext i32 %529 to i64
  %540 = mul nuw i64 %538, %539
  %541 = lshr i64 %540, 8
  %542 = trunc i64 %541 to i32
  %543 = getelementptr inbounds %struct.cx24120_state, ptr %433, i32 0, i32 9
  store i32 %542, ptr %543, align 4
  %544 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %542, i64 109051904000000) #15, !srcloc !9
  %545 = extractvalue { i64, i64 } %544, 1
  %546 = trunc i64 %545 to i32
  %547 = getelementptr inbounds %struct.cx24120_state, ptr %433, i32 0, i32 10
  store i32 %546, ptr %547, align 4
  br label %548

548:                                              ; preds = %507, %468, %466, %432
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  %549 = getelementptr inbounds %struct.cx24120_state, ptr %43, i32 0, i32 4
  %550 = load i8, ptr %549, align 1
  %551 = icmp eq i8 %550, 0
  br i1 %551, label %552, label %563

552:                                              ; preds = %548
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %553 = getelementptr inbounds i8, ptr %3, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %553, i8 0, i32 26, i1 false) #14, !annotation !8
  store i8 19, ptr %3, align 1
  %554 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 1
  store i8 4, ptr %554, align 1
  %555 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2
  store i8 1, ptr %555, align 1
  %556 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 1
  store i8 0, ptr %556, align 1
  %557 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 2
  store i8 0, ptr %557, align 1
  %558 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 3
  store i8 1, ptr %558, align 1
  %559 = call fastcc i32 @cx24120_message_send(ptr noundef %43, ptr noundef nonnull %3) #14
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %552
  store i8 1, ptr %549, align 1
  br label %562

562:                                              ; preds = %561, %552
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %563

563:                                              ; preds = %562, %548
  store i8 0, ptr %425, align 2
  br label %564

564:                                              ; preds = %563, %428, %424
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i32 0, ptr %1, align 4
  br label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds %struct.cx24120_state, ptr %9, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = trunc i64 %11 to i32
  %15 = sub i32 %14, %13
  store i32 %15, ptr %1, align 4
  %16 = load i64, ptr %10, align 1
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %12, align 4
  br label %18

18:                                               ; preds = %7, %6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 1
  %9 = trunc i64 %8 to i16
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i16 [ %9, %6 ], [ 0, %2 ]
  store i16 %11, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = call i64 @div_s64_rem(i64 noundef %9, i32 noundef 100, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %11 = trunc i64 %10 to i16
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i16 [ %11, %7 ], [ 0, %2 ]
  store i16 %13, ptr %1, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds %struct.cx24120_state, ptr %8, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = trunc i64 %10 to i32
  %14 = sub i32 %13, %12
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ %14, %6 ], [ 0, %2 ]
  store i32 %16, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca %struct.cx24120_cmd, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  %9 = getelementptr inbounds i8, ptr %6, i32 13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %9, i8 0, i32 19, i1 false), !annotation !8
  store i8 32, ptr %6, align 1
  %10 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 1
  store i8 11, ptr %10, align 1
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 1
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 2
  store i8 3, ptr %13, align 1
  %14 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 3
  store i8 22, ptr %14, align 1
  %15 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 4
  store i8 40, ptr %15, align 1
  %16 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 5
  store i8 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 6
  store i8 1, ptr %17, align 1
  %18 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 7
  store i8 20, ptr %18, align 1
  %19 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 8
  store i8 25, ptr %19, align 1
  %20 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 9
  store i8 20, ptr %20, align 1
  %21 = getelementptr inbounds %struct.cx24120_cmd, ptr %6, i32 0, i32 2, i32 10
  store i8 30, ptr %21, align 1
  %22 = call fastcc i32 @cx24120_message_send(ptr noundef %8, ptr noundef nonnull %6)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i8, ptr %6, align 1
  %26 = zext i8 %25 to i32
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %26) #12
  br label %74

28:                                               ; preds = %2
  store i8 33, ptr %6, align 1
  %29 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %30, 6
  store i8 %31, ptr %10, align 1
  store i8 0, ptr %11, align 1
  store i8 1, ptr %12, align 1
  store i8 2, ptr %13, align 1
  store i8 0, ptr %14, align 1
  store i8 0, ptr %15, align 1
  store i8 %30, ptr %16, align 1
  %32 = zext i8 %30 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %32, i1 false)
  %33 = call fastcc i32 @cx24120_message_send(ptr noundef %8, ptr noundef nonnull %6)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = getelementptr inbounds i8, ptr %5, i32 4
  %37 = getelementptr inbounds %struct.cx24120_state, ptr %8, i32 0, i32 1
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  br label %48

44:                                               ; preds = %28
  %45 = load i8, ptr %6, align 1
  %46 = zext i8 %45 to i32
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %46) #12
  br label %74

48:                                               ; preds = %69, %35
  %49 = phi i32 [ %70, %69 ], [ 500, %35 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -109, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #14
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #14, !annotation !8
  %50 = load ptr, ptr %37, align 4
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %5, align 4
  store i16 0, ptr %38, align 2
  store i16 1, ptr %36, align 4
  store ptr %3, ptr %39, align 4
  %53 = load i8, ptr %50, align 4
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %40, align 4
  store i16 1, ptr %41, align 2
  store i16 1, ptr %42, align 4
  store ptr %4, ptr %43, align 4
  %55 = load ptr, ptr %8, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %5, i32 noundef 2) #14
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load i8, ptr %3, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %60, i32 noundef %56) #12
  br label %65

62:                                               ; preds = %48
  %63 = load i8, ptr %4, align 1
  %64 = zext i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i32 [ %56, %58 ], [ %64, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  call void @msleep(i32 noundef 20) #14
  %70 = add nsw i32 %49, -20
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %48

72:                                               ; preds = %69
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %74

74:                                               ; preds = %72, %65, %44, %24
  %75 = phi i32 [ -121, %24 ], [ -121, %44 ], [ -110, %72 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_diseqc_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cx24120_cmd, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 28, i1 false), !annotation !8
  store i8 36, ptr %3, align 1
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 1
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2
  store i8 0, ptr %8, align 1
  %9 = icmp eq i32 %1, 1
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 1
  store i8 %10, ptr %11, align 1
  %12 = call fastcc i32 @cx24120_message_send(ptr noundef %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cx24120_cmd, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %6 = getelementptr inbounds i8, ptr %3, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 26, i1 false), !annotation !8
  %7 = icmp ugt i32 %1, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %1) #12
  br label %19

10:                                               ; preds = %2
  store i8 35, ptr %3, align 1
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 1
  store i8 4, ptr %11, align 1
  %12 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 1
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 2
  store i8 0, ptr %14, align 1
  %15 = icmp eq i32 %1, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 3
  store i8 %16, ptr %17, align 1
  %18 = call fastcc i32 @cx24120_message_send(ptr noundef %5, ptr noundef nonnull %3)
  br label %19

19:                                               ; preds = %10, %8
  %20 = phi i32 [ -22, %8 ], [ %18, %10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24120_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cx24120_cmd, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 28, i1 false), !annotation !8
  store i8 34, ptr %3, align 1
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 1
  store i8 2, ptr %7, align 1
  %8 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2
  store i8 0, ptr %8, align 1
  %9 = icmp eq i32 %1, 1
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 1
  store i8 %10, ptr %11, align 1
  %12 = call fastcc i32 @cx24120_message_send(ptr noundef %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24120_test_rom(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 -3, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #14
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  %10 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #14, !annotation !8
  %11 = getelementptr inbounds %struct.cx24120_state, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %9, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %10, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %18 = load i8, ptr %12, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %9, i32 noundef 2) #14
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %24) #12
  br label %33

30:                                               ; preds = %1
  %31 = load i8, ptr %8, align 1
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %24, %26 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 -33, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %38 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %38, i8 0, i32 16, i1 false) #14, !annotation !8
  %39 = load ptr, ptr %11, align 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %6, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %42, align 2
  store i16 1, ptr %38, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %45 = load i8, ptr %39, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %49, align 4
  %50 = load ptr, ptr %0, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %6, i32 noundef 2) #14
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %57, label %53

53:                                               ; preds = %37
  %54 = load i8, ptr %4, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %55, i32 noundef %51) #12
  br label %60

57:                                               ; preds = %37
  %58 = load i8, ptr %5, align 1
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %51, %53 ], [ %59, %57 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  store i8 -33, ptr %2, align 2
  %64 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %63, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %65 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %65, align 4, !annotation !8
  %66 = load ptr, ptr %11, align 4
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %3, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %70, align 4
  %71 = load ptr, ptr %0, align 4
  %72 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %3, i32 noundef 1) #14
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %60
  %75 = zext i8 %63 to i32
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %72, i32 noundef 223, i32 noundef %75) #12
  br label %77

77:                                               ; preds = %74, %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  br label %78

78:                                               ; preds = %77, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24120_writeregs(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.cx24120_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cx24120_config, ptr %8, i32 0, i32 4
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %11, i16 %3, i16 %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %13 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %13, align 4, !annotation !8
  %14 = load i8, ptr %8, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %19 = zext i16 %12 to i32
  %20 = add nuw nsw i32 %19, 1
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #16
  store ptr %21, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %5
  %24 = icmp eq i8 %4, 0
  br label %25

25:                                               ; preds = %30, %23
  %26 = phi ptr [ %39, %30 ], [ %2, %23 ]
  %27 = phi i16 [ %38, %30 ], [ %3, %23 ]
  %28 = phi i8 [ %42, %30 ], [ %1, %23 ]
  %29 = icmp eq i16 %27, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %18, align 4
  store i8 %28, ptr %31, align 1
  %32 = call i16 @llvm.umin.i16(i16 %27, i16 %12)
  %33 = zext i16 %32 to i32
  store i16 %32, ptr %17, align 4
  %34 = load ptr, ptr %18, align 4
  %35 = getelementptr i8, ptr %34, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %26, i32 %33, i1 false)
  %36 = load i16, ptr %17, align 4
  %37 = zext i16 %36 to i32
  %38 = sub i16 %27, %36
  %39 = getelementptr i8, ptr %26, i32 %37
  %40 = trunc i16 %36 to i8
  %41 = select i1 %24, i8 0, i8 %40
  %42 = add i8 %41, %28
  %43 = add i16 %36, 1
  store i16 %43, ptr %17, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 1) #14
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %25, label %47

47:                                               ; preds = %30
  %48 = zext i8 %42 to i32
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %45, i32 noundef %48) #12
  br label %50

50:                                               ; preds = %47, %25
  %51 = load ptr, ptr %18, align 4
  call void @kfree(ptr noundef %51) #14
  br label %52

52:                                               ; preds = %50, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24120_message_send(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.cx24120_cmd, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = getelementptr inbounds %struct.cx24120_state, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load i8, ptr %1, align 1
  switch i8 %15, label %27 [
    i8 17, label %16
    i8 22, label %16
    i8 32, label %16
    i8 33, label %16
    i8 34, label %16
    i8 35, label %16
    i8 36, label %16
  ]

16:                                               ; preds = %14, %14, %14, %14, %14, %14, %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %17 = getelementptr inbounds i8, ptr %3, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %17, i8 0, i32 26, i1 false) #14, !annotation !8
  store i8 19, ptr %3, align 1
  %18 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 1
  store i8 4, ptr %18, align 1
  %19 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 1
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 2
  store i8 -1, ptr %21, align 1
  %22 = getelementptr inbounds %struct.cx24120_cmd, ptr %3, i32 0, i32 2, i32 3
  store i8 1, ptr %22, align 1
  %23 = call fastcc i32 @cx24120_message_send(ptr noundef %0, ptr noundef nonnull %3) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i8 0, ptr %11, align 1
  br label %26

26:                                               ; preds = %25, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %27

27:                                               ; preds = %26, %14, %2
  %28 = load i8, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #14
  store i8 0, ptr %9, align 2
  %29 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %28, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %30 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %30, align 4, !annotation !8
  %31 = getelementptr inbounds %struct.cx24120_state, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %10, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %36, align 4
  %37 = load ptr, ptr %0, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %10, i32 noundef 1) #14
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = zext i8 %28 to i32
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %38, i32 noundef 0, i32 noundef %41) #12
  br label %43

43:                                               ; preds = %40, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #14
  %44 = getelementptr inbounds %struct.cx24120_cmd, ptr %1, i32 0, i32 2
  %45 = getelementptr inbounds %struct.cx24120_cmd, ptr %1, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i16
  call fastcc void @cx24120_writeregs(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %44, i16 noundef zeroext %47, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  store i8 31, ptr %7, align 2
  %48 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 1, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  %49 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %49, align 4, !annotation !8
  %50 = load ptr, ptr %31, align 4
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %8, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %53, align 2
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %54, align 4
  %55 = load ptr, ptr %0, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %8, i32 noundef 1) #14
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %60, label %58

58:                                               ; preds = %43
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %56, i32 noundef 31, i32 noundef 1) #12
  br label %60

60:                                               ; preds = %58, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  %61 = getelementptr inbounds i8, ptr %6, i32 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  br label %68

68:                                               ; preds = %88, %60
  %69 = phi i32 [ 1000, %60 ], [ %89, %88 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 31, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %61, i8 0, i32 16, i1 false) #14, !annotation !8
  %70 = load ptr, ptr %31, align 4
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %6, align 4
  store i16 0, ptr %62, align 2
  store i16 1, ptr %61, align 4
  store ptr %4, ptr %63, align 4
  %73 = load i8, ptr %70, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %64, align 4
  store i16 1, ptr %65, align 2
  store i16 1, ptr %66, align 4
  store ptr %5, ptr %67, align 4
  %75 = load ptr, ptr %0, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %6, i32 noundef 2) #14
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = load i8, ptr %4, align 1
  %80 = zext i8 %79 to i32
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %80, i32 noundef %76) #12
  br label %85

82:                                               ; preds = %68
  %83 = load i8, ptr %5, align 1
  %84 = zext i8 %83 to i32
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i32 [ %76, %78 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  call void @msleep(i32 noundef 20) #14
  %89 = add nsw i32 %69, -20
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %68

91:                                               ; preds = %88
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %93

93:                                               ; preds = %91, %85
  %94 = phi i32 [ -121, %91 ], [ 0, %85 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24120_get_fec(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 57, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #14, !annotation !8
  %8 = getelementptr inbounds %struct.cx24120_state, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 1, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %15 = load i8, ptr %9, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %19, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #14
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i8, ptr %2, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %25, i32 noundef %21) #12
  br label %30

27:                                               ; preds = %1
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ %21, %23 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %32 = and i32 %31, 63
  %33 = getelementptr inbounds %struct.cx24120_state, ptr %6, i32 0, i32 6, i32 4
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %45, %30
  %36 = phi i32 [ 0, %30 ], [ %46, %45 ]
  %37 = getelementptr [21 x %struct.cx24120_modfec], ptr @modfec_lookup_table, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %34
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr [21 x %struct.cx24120_modfec], ptr @modfec_lookup_table, i32 0, i32 %36, i32 3
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %32, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %40, %35
  %46 = add nuw nsw i32 %36, 1
  %47 = icmp eq i32 %46, 21
  br i1 %47, label %59, label %35

48:                                               ; preds = %40
  %49 = getelementptr [21 x %struct.cx24120_modfec], ptr @modfec_lookup_table, i32 0, i32 %36, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  store i32 %50, ptr %51, align 4
  %52 = getelementptr [21 x %struct.cx24120_modfec], ptr @modfec_lookup_table, i32 0, i32 %36, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  store i32 %53, ptr %54, align 4
  %55 = lshr i32 %31, 7
  %56 = and i32 %55, 1
  %57 = xor i32 %56, 1
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %48, %45
  %60 = phi i32 [ 0, %48 ], [ -22, %45 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{i64 2148146553, i64 2148146833, i64 2148147167, i64 2148147501}
