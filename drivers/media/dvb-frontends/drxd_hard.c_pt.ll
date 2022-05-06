; ModuleID = '/llk/IR/drivers/media/dvb-frontends/drxd_hard.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/drxd_hard.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drxd_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22drxd_attach\22\09\09\09\09\09"
module asm "__kstrtabns_drxd_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drxd_state = type { %struct.dvb_frontend, %struct.dvb_frontend_ops, %struct.dtv_frontend_properties, ptr, ptr, ptr, ptr, %struct.drxd_config, i32, i32, %struct.mutex, i8, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i32, %struct.SCfgAgc, %struct.SCfgAgc, %struct.SNoiseCal, i32, i32, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.drxd_config = type { i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.SCfgAgc = type { i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.SNoiseCal = type { i32, i16, i16, i16 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@drxd_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Micronas DRXD DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47125000, i32 855250000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071961426 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @drxd_release, ptr null, ptr @drxd_init, ptr @drxd_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drxd_set_frontend, ptr @drxd_get_tune_settings, ptr null, ptr @drxd_read_status, ptr @drxd_read_ber, ptr @drxd_read_signal_strength, ptr @drxd_read_snr, ptr @drxd_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drxd_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@drxd_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&state->mutex\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\013drxd: not found\0A\00", align 1
@__kstrtab_drxd_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_drxd_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_drxd_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drxd_attach to i32), ptr @__kstrtab_drxd_attach, ptr @__kstrtabns_drxd_attach }, section "___ksymtab+drxd_attach", align 4
@__UNIQUE_ID_description249 = internal constant [24 x i8] c"description=DRXD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [16 x i8] c"author=Micronas\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"\016drxd: deviceId = %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\016DRX3975D-A2\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\016DRX397%dD-B1\0A\00", align 1
@DRXD_InitAtomicRead = external dso_local global [0 x i8], align 1
@DRXD_InitSC = external dso_local global [0 x i8], align 1
@DRXD_ResetECRAM = external dso_local global [0 x i8], align 1
@DRXD_ResetCEFR = external dso_local global [0 x i8], align 1
@DRXD_InitFEA2_1 = external dso_local global [0 x i8], align 1
@DRXD_InitFEA2_2 = external dso_local global [0 x i8], align 1
@DRXD_InitCPA2 = external dso_local global [0 x i8], align 1
@DRXD_InitCEA2 = external dso_local global [0 x i8], align 1
@DRXD_InitEQA2 = external dso_local global [0 x i8], align 1
@DRXD_InitECA2 = external dso_local global [0 x i8], align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"drxd-a2-1.1.fw\00", align 1
@DRXD_InitFEB1_1 = external dso_local global [0 x i8], align 1
@DRXD_InitFEB1_2 = external dso_local global [0 x i8], align 1
@DRXD_InitCPB1 = external dso_local global [0 x i8], align 1
@DRXD_InitCEB1 = external dso_local global [0 x i8], align 1
@DRXD_InitEQB1 = external dso_local global [0 x i8], align 1
@DRXD_InitECB1 = external dso_local global [0 x i8], align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"drxd-b1-1.1.fw\00", align 1
@DRXD_InitDiversityFront = external dso_local global [0 x i8], align 1
@DRXD_InitDiversityEnd = external dso_local global [0 x i8], align 1
@DRXD_DisableDiversity = external dso_local global [0 x i8], align 1
@DRXD_StartDiversityFront = external dso_local global [0 x i8], align 1
@DRXD_StartDiversityEnd = external dso_local global [0 x i8], align 1
@DRXD_DiversityDelay8MHZ = external dso_local global [0 x i8], align 1
@DRXD_DiversityDelay6MHZ = external dso_local global [0 x i8], align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\013drxd: firmware load failure [%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"\013error in write_chunk\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\013invalid osc frequency %d\0A\00", align 1
@SetCfgIfAgc.slowIncrDecLUT = internal unnamed_addr constant [5 x i16] [i16 3, i16 4, i16 4, i16 5, i16 6], align 2
@SetCfgIfAgc.fastIncrDecLUT = internal unnamed_addr constant [18 x i16] [i16 14, i16 15, i16 15, i16 16, i16 17, i16 18, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 26, i16 27, i16 28, i16 29, i16 31], align 2
@.str.10 = private unnamed_addr constant [46 x i8] c"\013Can't read SC_RA_RAM_LOCK__A status = %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\013Command Error\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_drxd_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drxd_attach(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [2 x i8], align 2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2324) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %101, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %12, ptr noundef nonnull align 4 dereferenceable(544) @drxd_ops, i32 544, i1 false)
  %13 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 4
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %14, ptr noundef align 4 dereferenceable(24) %0, i32 24, i1 false)
  %15 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 5
  store ptr %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 6
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @drxd_attach.__key) #10
  %18 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 7, i32 5
  %19 = load i8, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2, !annotation !8
  %20 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %21 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %21, i8 0, i32 16, i1 false) #10, !annotation !8
  %22 = zext i8 %19 to i16
  store i16 %22, ptr %5, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %23, align 2
  store i16 4, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %7, ptr %28, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 2) #10
  %30 = icmp eq i32 %29, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br i1 %30, label %33, label %31

31:                                               ; preds = %11
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  call void @kfree(ptr noundef nonnull %9) #10
  br label %101

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %34, ptr noundef nonnull align 4 dereferenceable(544) @drxd_ops, i32 544, i1 false)
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 3
  store ptr %9, ptr %35, align 8
  %36 = call fastcc i32 @ConfigureMPEGOutput(ptr noundef nonnull %9, i32 noundef 0)
  %37 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 7, i32 9
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 7, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26, i32 1
  store i16 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26, i32 2
  store i16 140, ptr %44, align 2
  %45 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26, i32 3
  store i16 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26, i32 4
  store i16 1023, ptr %46, align 2
  %47 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26, i32 5
  store i16 904, ptr %47, align 8
  %48 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26, i32 6
  store i16 820, ptr %48, align 2
  %49 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26, i32 7
  store i16 2200, ptr %49, align 4
  %50 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 26, i32 8
  store i16 150, ptr %50, align 2
  %51 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 27
  %52 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 27, i32 6
  store i16 820, ptr %52, align 2
  %53 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 27, i32 7
  store i16 2200, ptr %53, align 8
  %54 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 27, i32 8
  store i16 150, ptr %54, align 2
  store i32 0, ptr %51, align 8
  %55 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 27, i32 2
  store i16 528, ptr %55, align 2
  %56 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 27, i32 3
  store i16 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 27, i32 4
  store i16 1023, ptr %57, align 2
  %58 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 27, i32 5
  store i16 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 60
  store i32 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 61
  store i32 2, ptr %60, align 8
  %61 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 28
  store i32 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 28, i32 1
  store i16 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 28, i32 2
  store i16 -21, ptr %63, align 2
  %64 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 28, i32 3
  store i16 -24, ptr %64, align 4
  %65 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 34
  store i16 4, ptr %65, align 2
  %66 = load i8, ptr %18, align 1
  %67 = shl i8 %66, 1
  %68 = or i8 %67, 1
  %69 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 11
  store i8 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 37
  store ptr null, ptr %70, align 8
  %71 = udiv i32 %38, 1000
  %72 = trunc i32 %71 to i16
  %73 = select i1 %39, i16 -29536, i16 %72
  %74 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 16
  store i16 %73, ptr %74, align 2
  %75 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 22
  store i16 -17536, ptr %75, align 8
  %76 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 20
  store i16 -17536, ptr %76, align 4
  %77 = trunc i32 %41 to i16
  %78 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 17
  store i16 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 21
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 18
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 19
  store i32 0, ptr %81, align 8
  %82 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 57
  store i32 0, ptr %82, align 8
  %83 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 56
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 59
  store i32 0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 7, i32 4
  %86 = load i8, ptr %85, align 8
  %87 = zext i8 %86 to i16
  %88 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 23
  store i16 %87, ptr %88, align 2
  %89 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 24
  store i16 1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 12
  store i16 4, ptr %90, align 2
  %91 = udiv i16 %77, 1000
  %92 = mul nuw i16 %91, 750
  %93 = udiv i16 %92, 1000
  %94 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 13
  store i16 %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 32
  store i16 14, ptr %95, align 2
  %96 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 33
  store i16 0, ptr %96, align 4
  %97 = zext i8 %68 to i16
  %98 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 14
  store i16 %97, ptr %98, align 2
  %99 = getelementptr inbounds %struct.drxd_state, ptr %9, i32 0, i32 15
  store i16 1, ptr %99, align 4
  %100 = call fastcc i32 @HI_CfgCommand(ptr noundef nonnull %9) #10
  br label %101

101:                                              ; preds = %33, %31, %4
  %102 = phi ptr [ null, %31 ], [ %9, %33 ], [ null, %4 ]
  ret ptr %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ConfigureMPEGOutput(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [6 x i8], align 1
  %11 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 25
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = icmp eq i32 %1, 0
  %16 = select i1 %15, i16 4095, i16 0
  %17 = select i1 %15, i8 0, i8 16
  %18 = trunc i16 %16 to i8
  %19 = lshr i16 %16, 8
  %20 = trunc i16 %19 to i8
  br label %55

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 34
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i32 %1, 0
  %25 = select i1 %24, i16 4095, i16 0
  %26 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 23
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  %29 = and i16 %23, 254
  %30 = zext i1 %28 to i16
  %31 = or i16 %29, %30
  %32 = select i1 %28, i16 0, i16 512
  %33 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 24
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 0
  %36 = trunc i16 %31 to i8
  br i1 %35, label %46, label %37

37:                                               ; preds = %21
  %38 = and i8 %36, 127
  %39 = lshr i16 %23, 8
  %40 = trunc i16 %39 to i8
  %41 = lshr exact i16 %32, 8
  %42 = trunc i16 %41 to i8
  %43 = trunc i16 %25 to i8
  %44 = lshr i16 %25, 8
  %45 = trunc i16 %44 to i8
  br label %55

46:                                               ; preds = %21
  %47 = or i8 %36, -128
  %48 = lshr i16 %23, 8
  %49 = trunc i16 %48 to i8
  %50 = lshr exact i16 %32, 8
  %51 = trunc i16 %50 to i8
  %52 = trunc i16 %25 to i8
  %53 = lshr i16 %25, 8
  %54 = trunc i16 %53 to i8
  br label %55

55:                                               ; preds = %46, %37, %14
  %56 = phi i8 [ %43, %37 ], [ %52, %46 ], [ %18, %14 ]
  %57 = phi i8 [ %45, %37 ], [ %54, %46 ], [ %20, %14 ]
  %58 = phi i8 [ %38, %37 ], [ %47, %46 ], [ 1, %14 ]
  %59 = phi i8 [ %40, %37 ], [ %49, %46 ], [ 0, %14 ]
  %60 = phi i8 [ 0, %37 ], [ 0, %46 ], [ %17, %14 ]
  %61 = phi i8 [ %42, %37 ], [ %51, %46 ], [ 0, %14 ]
  %62 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %63 = load i8, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #10
  store i8 69, ptr %10, align 1
  %64 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 21, ptr %64, align 1
  %65 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 2, ptr %65, align 1
  %66 = getelementptr inbounds i8, ptr %10, i32 3
  store i8 0, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %10, i32 4
  store i8 0, ptr %67, align 1
  %68 = getelementptr inbounds i8, ptr %10, i32 5
  store i8 0, ptr %68, align 1
  %69 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %71 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 6, ptr %71, align 4, !annotation !8
  %72 = zext i8 %63 to i16
  store i16 %72, ptr %9, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %10, ptr %74, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %9, i32 noundef 1) #10
  %76 = icmp eq i32 %75, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #10
  br i1 %76, label %77, label %120

77:                                               ; preds = %55
  %78 = load i8, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #10
  store i8 16, ptr %8, align 1
  %79 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 21, ptr %79, align 1
  %80 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 2, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %8, i32 3
  store i8 0, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %8, i32 4
  store i8 %58, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %8, i32 5
  store i8 %59, ptr %83, align 1
  %84 = load ptr, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %85 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 6, ptr %85, align 4, !annotation !8
  %86 = zext i8 %78 to i16
  store i16 %86, ptr %7, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %87, align 2
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %8, ptr %88, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %7, i32 noundef 1) #10
  %90 = icmp eq i32 %89, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #10
  br i1 %90, label %91, label %120

91:                                               ; preds = %77
  %92 = load i8, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #10
  store i8 17, ptr %6, align 1
  %93 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 21, ptr %93, align 1
  %94 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 2, ptr %94, align 1
  %95 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 0, ptr %95, align 1
  %96 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 %60, ptr %96, align 1
  %97 = getelementptr inbounds i8, ptr %6, i32 5
  store i8 %61, ptr %97, align 1
  %98 = load ptr, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %99 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 6, ptr %99, align 4, !annotation !8
  %100 = zext i8 %92 to i16
  store i16 %100, ptr %5, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %102, align 4
  %103 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %5, i32 noundef 1) #10
  %104 = icmp eq i32 %103, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #10
  br i1 %104, label %105, label %120

105:                                              ; preds = %91
  %106 = load i8, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #10
  store i8 18, ptr %4, align 1
  %107 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 21, ptr %107, align 1
  %108 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 2, ptr %108, align 1
  %109 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %109, align 1
  %110 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 %56, ptr %110, align 1
  %111 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 %57, ptr %111, align 1
  %112 = load ptr, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %113 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 6, ptr %113, align 4, !annotation !8
  %114 = zext i8 %106 to i16
  store i16 %114, ptr %3, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %116, align 4
  %117 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %3, i32 noundef 1) #10
  %118 = icmp ne i32 %117, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #10
  %119 = sext i1 %118 to i32
  br label %120

120:                                              ; preds = %105, %91, %77, %55
  %121 = phi i32 [ -1, %55 ], [ -1, %77 ], [ -1, %91 ], [ %119, %105 ]
  ret i32 %121
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drxd_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxd_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [52 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [6 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [6 x i8], align 1
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [6 x i8], align 1
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [6 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [6 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [6 x i8], align 1
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [8 x i8], align 8
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [6 x i8], align 1
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [6 x i8], align 1
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [6 x i8], align 1
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [6 x i8], align 1
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [6 x i8], align 1
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [6 x i8], align 1
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [6 x i8], align 1
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [6 x i8], align 1
  %42 = alloca [2 x %struct.i2c_msg], align 4
  %43 = alloca [4 x i8], align 4
  %44 = alloca [2 x i8], align 2
  %45 = alloca [2 x %struct.i2c_msg], align 4
  %46 = alloca [4 x i8], align 4
  %47 = alloca [2 x i8], align 2
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %697

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 7, i32 9
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 7, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26, i32 1
  store i16 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26, i32 2
  store i16 140, ptr %61, align 2
  %62 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26, i32 3
  store i16 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26, i32 4
  store i16 1023, ptr %63, align 2
  %64 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26, i32 5
  store i16 904, ptr %64, align 4
  %65 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26, i32 6
  store i16 820, ptr %65, align 2
  %66 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26, i32 7
  store i16 2200, ptr %66, align 4
  %67 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 26, i32 8
  store i16 150, ptr %67, align 2
  %68 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 27
  %69 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 27, i32 6
  store i16 820, ptr %69, align 2
  %70 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 27, i32 7
  store i16 2200, ptr %70, align 4
  %71 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 27, i32 8
  store i16 150, ptr %71, align 2
  store i32 0, ptr %68, align 4
  %72 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 27, i32 2
  store i16 528, ptr %72, align 2
  %73 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 27, i32 3
  store i16 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 27, i32 4
  store i16 1023, ptr %74, align 2
  %75 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 27, i32 5
  store i16 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 60
  store i32 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 61
  store i32 2, ptr %77, align 4
  %78 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 28
  store i32 1, ptr %78, align 4
  %79 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 28, i32 1
  store i16 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 28, i32 2
  store i16 -21, ptr %80, align 2
  %81 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 28, i32 3
  store i16 -24, ptr %81, align 4
  %82 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 34
  store i16 4, ptr %82, align 2
  %83 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 7, i32 5
  %84 = load i8, ptr %83, align 1
  %85 = shl i8 %84, 1
  %86 = or i8 %85, 1
  %87 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 11
  store i8 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 37
  store ptr null, ptr %88, align 4
  %89 = udiv i32 %55, 1000
  %90 = trunc i32 %89 to i16
  %91 = select i1 %56, i16 -29536, i16 %90
  %92 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 16
  store i16 %91, ptr %92, align 2
  %93 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 22
  store i16 -17536, ptr %93, align 4
  %94 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 20
  store i16 -17536, ptr %94, align 4
  %95 = trunc i32 %58 to i16
  %96 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 17
  store i16 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 21
  store i16 0, ptr %97, align 2
  %98 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 18
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 19
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 57
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 56
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 59
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 7, i32 4
  %104 = load i8, ptr %103, align 4
  %105 = zext i8 %104 to i16
  %106 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 23
  store i16 %105, ptr %106, align 2
  %107 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 24
  store i16 1, ptr %107, align 4
  %108 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 12
  store i16 4, ptr %108, align 2
  %109 = udiv i16 %95, 1000
  %110 = mul nuw i16 %109, 750
  %111 = udiv i16 %110, 1000
  %112 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 13
  store i16 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 32
  store i16 14, ptr %113, align 2
  %114 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 33
  store i16 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 25
  store i32 0, ptr %115, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %46) #10
  store i8 25, ptr %46, align 4
  %116 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 65, ptr %116, align 1
  %117 = getelementptr inbounds i8, ptr %46, i32 2
  store i8 2, ptr %117, align 2
  %118 = getelementptr inbounds i8, ptr %46, i32 3
  store i8 0, ptr %118, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #10
  store i16 0, ptr %47, align 2, !annotation !8
  %119 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %45) #10
  %121 = getelementptr inbounds i8, ptr %45, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %121, i8 0, i32 16, i1 false) #10, !annotation !8
  %122 = zext i8 %84 to i16
  store i16 %122, ptr %45, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %123, align 2
  store i16 4, ptr %121, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %46, ptr %124, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1
  store i16 %122, ptr %125, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 1
  store i16 1, ptr %126, align 2
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 2
  store i16 2, ptr %127, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 3
  store ptr %47, ptr %128, align 4
  %129 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %45, i32 noundef 2) #10
  %130 = icmp eq i32 %129, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46) #10
  br i1 %130, label %131, label %697

131:                                              ; preds = %53
  %132 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #10
  store i8 25, ptr %43, align 4
  %133 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 65, ptr %133, align 1
  %134 = getelementptr inbounds i8, ptr %43, i32 2
  store i8 2, ptr %134, align 2
  %135 = getelementptr inbounds i8, ptr %43, i32 3
  store i8 0, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #10
  store i16 0, ptr %44, align 2, !annotation !8
  %136 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %42) #10
  %137 = getelementptr inbounds i8, ptr %42, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %137, i8 0, i32 16, i1 false) #10, !annotation !8
  %138 = zext i8 %132 to i16
  store i16 %138, ptr %42, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %139, align 2
  store i16 4, ptr %137, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %43, ptr %140, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1
  store i16 %138, ptr %141, align 4
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 1
  store i16 1, ptr %142, align 2
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 2
  store i16 2, ptr %143, align 4
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 3
  store ptr %44, ptr %144, align 4
  %145 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %42, i32 noundef 2) #10
  %146 = icmp eq i32 %145, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %42) #10
  br i1 %146, label %148, label %147

147:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #10
  br label %697

148:                                              ; preds = %131
  %149 = load i8, ptr %44, align 2
  %150 = getelementptr inbounds [2 x i8], ptr %44, i32 0, i32 1
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #10
  %153 = shl nuw i16 %152, 8
  %154 = zext i8 %149 to i16
  %155 = or i16 %153, %154
  %156 = zext i16 %155 to i32
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %156) #11
  store i32 0, ptr %101, align 4
  store i32 0, ptr %100, align 4
  %158 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 58
  store i32 0, ptr %158, align 4
  %159 = icmp eq i16 %155, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  store i32 1, ptr %101, align 4
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %170

162:                                              ; preds = %148
  %163 = lshr i16 %152, 4
  %164 = zext i16 %163 to i32
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %164) #11
  %166 = trunc i16 %163 to i4
  switch i4 %166, label %697 [
    i4 4, label %167
    i4 3, label %168
    i4 7, label %168
    i4 6, label %169
    i4 5, label %170
    i4 -8, label %170
  ]

167:                                              ; preds = %162
  store i32 1, ptr %158, align 4
  br label %168

168:                                              ; preds = %167, %162, %162
  store i32 1, ptr %100, align 4
  br label %170

169:                                              ; preds = %162
  store i32 1, ptr %158, align 4
  br label %170

170:                                              ; preds = %169, %168, %162, %162, %160
  %171 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 36
  store ptr @DRXD_InitAtomicRead, ptr %171, align 4
  %172 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 44
  store ptr @DRXD_InitSC, ptr %172, align 4
  %173 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 46
  store ptr @DRXD_ResetECRAM, ptr %173, align 4
  %174 = load i32, ptr %101, align 4
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 38
  br i1 %175, label %186, label %177

177:                                              ; preds = %170
  store ptr @DRXD_ResetCEFR, ptr %176, align 4
  %178 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 39
  store ptr @DRXD_InitFEA2_1, ptr %178, align 4
  %179 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 40
  store ptr @DRXD_InitFEA2_2, ptr %179, align 4
  %180 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 41
  store ptr @DRXD_InitCPA2, ptr %180, align 4
  %181 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 42
  store ptr @DRXD_InitCEA2, ptr %181, align 4
  %182 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 43
  store ptr @DRXD_InitEQA2, ptr %182, align 4
  %183 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 45
  store ptr @DRXD_InitECA2, ptr %183, align 4
  %184 = call fastcc i32 @load_firmware(ptr noundef %49, ptr noundef nonnull @.str.5) #10
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %195, label %697

186:                                              ; preds = %170
  store ptr null, ptr %176, align 4
  %187 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 39
  store ptr @DRXD_InitFEB1_1, ptr %187, align 4
  %188 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 40
  store ptr @DRXD_InitFEB1_2, ptr %188, align 4
  %189 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 41
  store ptr @DRXD_InitCPB1, ptr %189, align 4
  %190 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 42
  store ptr @DRXD_InitCEB1, ptr %190, align 4
  %191 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 43
  store ptr @DRXD_InitEQB1, ptr %191, align 4
  %192 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 45
  store ptr @DRXD_InitECB1, ptr %192, align 4
  %193 = call fastcc i32 @load_firmware(ptr noundef %49, ptr noundef nonnull @.str.6) #10
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %697

195:                                              ; preds = %186, %177
  %196 = load i32, ptr %158, align 4
  %197 = icmp eq i32 %196, 0
  %198 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 47
  br i1 %197, label %206, label %199

199:                                              ; preds = %195
  store ptr @DRXD_InitDiversityFront, ptr %198, align 4
  %200 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 48
  store ptr @DRXD_InitDiversityEnd, ptr %200, align 4
  %201 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 49
  store ptr @DRXD_DisableDiversity, ptr %201, align 4
  %202 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 50
  store ptr @DRXD_StartDiversityFront, ptr %202, align 4
  %203 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 51
  store ptr @DRXD_StartDiversityEnd, ptr %203, align 4
  %204 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 52
  store ptr @DRXD_DiversityDelay8MHZ, ptr %204, align 4
  %205 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 53
  store ptr @DRXD_DiversityDelay6MHZ, ptr %205, align 4
  br label %207

206:                                              ; preds = %195
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %198, i8 0, i64 28, i1 false) #10
  br label %207

207:                                              ; preds = %206, %199
  %208 = load i32, ptr %101, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load ptr, ptr %88, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %233, label %213

213:                                              ; preds = %210
  %214 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef nonnull %211) #10
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %697, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr %101, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %233, label %219

219:                                              ; preds = %216, %207
  %220 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %41) #10
  store i8 45, ptr %41, align 1
  %221 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 67, ptr %221, align 1
  %222 = getelementptr inbounds i8, ptr %41, i32 2
  store i8 0, ptr %222, align 1
  %223 = getelementptr inbounds i8, ptr %41, i32 3
  store i8 1, ptr %223, align 1
  %224 = getelementptr inbounds i8, ptr %41, i32 4
  store i8 127, ptr %224, align 1
  %225 = getelementptr inbounds i8, ptr %41, i32 5
  store i8 4, ptr %225, align 1
  %226 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  %227 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 6, ptr %227, align 4, !annotation !8
  %228 = zext i8 %220 to i16
  store i16 %228, ptr %40, align 4
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %229, align 2
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %41, ptr %230, align 4
  %231 = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %40, i32 noundef 1) #10
  %232 = icmp eq i32 %231, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %41) #10
  br i1 %232, label %233, label %697

233:                                              ; preds = %219, %216, %210
  %234 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 10
  call void @mutex_lock(ptr noundef %234) #10
  %235 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %39) #10
  store i8 51, ptr %39, align 1
  %236 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 66, ptr %236, align 1
  %237 = getelementptr inbounds i8, ptr %39, i32 2
  store i8 0, ptr %237, align 1
  %238 = getelementptr inbounds i8, ptr %39, i32 3
  store i8 0, ptr %238, align 1
  %239 = getelementptr inbounds i8, ptr %39, i32 4
  store i8 115, ptr %239, align 1
  %240 = getelementptr inbounds i8, ptr %39, i32 5
  store i8 57, ptr %240, align 1
  %241 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %242 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 6, ptr %242, align 4, !annotation !8
  %243 = zext i8 %235 to i16
  store i16 %243, ptr %38, align 4
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %244, align 2
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %39, ptr %245, align 4
  %246 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %38, i32 noundef 1) #10
  %247 = icmp eq i32 %246, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %39) #10
  br i1 %247, label %248, label %250

248:                                              ; preds = %233
  %249 = call fastcc i32 @HI_Command(ptr noundef %49, i16 noundef zeroext 2) #10
  br label %250

250:                                              ; preds = %248, %233
  %251 = phi i32 [ %249, %248 ], [ -1, %233 ]
  call void @mutex_unlock(ptr noundef %234) #10
  call void @msleep(i32 noundef 1) #10
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %697, label %253

253:                                              ; preds = %250
  %254 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %37) #10
  store i8 0, ptr %37, align 1
  %255 = getelementptr inbounds i8, ptr %37, i32 1
  store i8 64, ptr %255, align 1
  %256 = getelementptr inbounds i8, ptr %37, i32 2
  store i8 32, ptr %256, align 1
  %257 = getelementptr inbounds i8, ptr %37, i32 3
  store i8 0, ptr %257, align 1
  %258 = getelementptr inbounds i8, ptr %37, i32 4
  store i8 0, ptr %258, align 1
  %259 = getelementptr inbounds i8, ptr %37, i32 5
  store i8 0, ptr %259, align 1
  %260 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %261 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 6, ptr %261, align 4, !annotation !8
  %262 = zext i8 %254 to i16
  store i16 %262, ptr %36, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %263, align 2
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %37, ptr %264, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %260, ptr noundef nonnull %36, i32 noundef 1) #10
  %266 = icmp eq i32 %265, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %37) #10
  br i1 %266, label %267, label %697

267:                                              ; preds = %253
  %268 = load i16, ptr %96, align 4
  %269 = add i16 %268, -1
  %270 = icmp ult i16 %269, 20000
  %271 = urem i16 %268, 4000
  %272 = icmp eq i16 %271, 0
  %273 = and i1 %270, %272
  br i1 %273, label %277, label %274

274:                                              ; preds = %267
  %275 = zext i16 %268 to i32
  %276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %275) #11
  br label %697

277:                                              ; preds = %267
  %278 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %35) #10
  store i8 16, ptr %35, align 1
  %279 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 65, ptr %279, align 1
  %280 = getelementptr inbounds i8, ptr %35, i32 2
  store i8 2, ptr %280, align 1
  %281 = getelementptr inbounds i8, ptr %35, i32 3
  store i8 0, ptr %281, align 1
  %282 = getelementptr inbounds i8, ptr %35, i32 4
  store i8 1, ptr %282, align 1
  %283 = getelementptr inbounds i8, ptr %35, i32 5
  store i8 0, ptr %283, align 1
  %284 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %285 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 6, ptr %285, align 4, !annotation !8
  %286 = zext i8 %278 to i16
  store i16 %286, ptr %34, align 4
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %287, align 2
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %35, ptr %288, align 4
  %289 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %34, i32 noundef 1) #10
  %290 = icmp ne i32 %289, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %35) #10
  %291 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %33) #10
  store i8 17, ptr %33, align 1
  %292 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 65, ptr %292, align 1
  %293 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 2, ptr %293, align 1
  %294 = getelementptr inbounds i8, ptr %33, i32 3
  store i8 0, ptr %294, align 1
  %295 = getelementptr inbounds i8, ptr %33, i32 4
  store i8 21, ptr %295, align 1
  %296 = getelementptr inbounds i8, ptr %33, i32 5
  store i8 0, ptr %296, align 1
  %297 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  %298 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 6, ptr %298, align 4, !annotation !8
  %299 = zext i8 %291 to i16
  store i16 %299, ptr %32, align 4
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %300, align 2
  %301 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %33, ptr %301, align 4
  %302 = call i32 @i2c_transfer(ptr noundef %297, ptr noundef nonnull %32, i32 noundef 1) #10
  %303 = icmp ne i32 %302, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %33) #10
  %304 = or i1 %290, %303
  %305 = load i16, ptr %96, align 4
  %306 = udiv i16 %305, 4000
  %307 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %31) #10
  store i8 18, ptr %31, align 1
  %308 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 65, ptr %308, align 1
  %309 = getelementptr inbounds i8, ptr %31, i32 2
  store i8 2, ptr %309, align 1
  %310 = getelementptr inbounds i8, ptr %31, i32 3
  store i8 0, ptr %310, align 1
  %311 = getelementptr inbounds i8, ptr %31, i32 4
  %312 = trunc i16 %306 to i8
  store i8 %312, ptr %311, align 1
  %313 = getelementptr inbounds i8, ptr %31, i32 5
  store i8 0, ptr %313, align 1
  %314 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  %315 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 6, ptr %315, align 4, !annotation !8
  %316 = zext i8 %307 to i16
  store i16 %316, ptr %30, align 4
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %317, align 2
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %31, ptr %318, align 4
  %319 = call i32 @i2c_transfer(ptr noundef %314, ptr noundef nonnull %30, i32 noundef 1) #10
  %320 = icmp ne i32 %319, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %31) #10
  %321 = or i1 %304, %320
  %322 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %29) #10
  store i8 21, ptr %29, align 1
  %323 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 65, ptr %323, align 1
  %324 = getelementptr inbounds i8, ptr %29, i32 2
  store i8 2, ptr %324, align 1
  %325 = getelementptr inbounds i8, ptr %29, i32 3
  store i8 0, ptr %325, align 1
  %326 = getelementptr inbounds i8, ptr %29, i32 4
  store i8 2, ptr %326, align 1
  %327 = getelementptr inbounds i8, ptr %29, i32 5
  store i8 0, ptr %327, align 1
  %328 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #10
  %329 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 6, ptr %329, align 4, !annotation !8
  %330 = zext i8 %322 to i16
  store i16 %330, ptr %28, align 4
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %331, align 2
  %332 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %29, ptr %332, align 4
  %333 = call i32 @i2c_transfer(ptr noundef %328, ptr noundef nonnull %28, i32 noundef 1) #10
  %334 = icmp ne i32 %333, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %29) #10
  %335 = or i1 %321, %334
  %336 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %27) #10
  store i8 23, ptr %27, align 1
  %337 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 65, ptr %337, align 1
  %338 = getelementptr inbounds i8, ptr %27, i32 2
  store i8 2, ptr %338, align 1
  %339 = getelementptr inbounds i8, ptr %27, i32 3
  store i8 0, ptr %339, align 1
  %340 = getelementptr inbounds i8, ptr %27, i32 4
  store i8 115, ptr %340, align 1
  %341 = getelementptr inbounds i8, ptr %27, i32 5
  store i8 57, ptr %341, align 1
  %342 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %343 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 6, ptr %343, align 4, !annotation !8
  %344 = zext i8 %336 to i16
  store i16 %344, ptr %26, align 4
  %345 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %345, align 2
  %346 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %27, ptr %346, align 4
  %347 = call i32 @i2c_transfer(ptr noundef %342, ptr noundef nonnull %26, i32 noundef 1) #10
  %348 = icmp ne i32 %347, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %27) #10
  %349 = or i1 %335, %348
  br i1 %349, label %697, label %350

350:                                              ; preds = %277
  store i16 0, ptr %97, align 2
  %351 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 7, i32 10
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %359, label %354

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 6
  %356 = load ptr, ptr %355, align 4
  %357 = call signext i16 %352(ptr noundef %356, i16 noundef signext 0, i32 noundef 0) #10
  store i16 %357, ptr %97, align 2
  %358 = sext i16 %357 to i32
  br label %359

359:                                              ; preds = %354, %350
  %360 = phi i32 [ %358, %354 ], [ 0, %350 ]
  %361 = load i16, ptr %93, align 4
  %362 = zext i16 %361 to i32
  %363 = mul nsw i32 %360, %362
  %364 = freeze i32 %363
  %365 = sdiv i32 %364, 1000000
  %366 = icmp sgt i32 %363, 0
  %367 = select i1 %366, i32 2, i32 -2
  %368 = mul i32 %365, 1000000
  %369 = sub i32 %364, %368
  %370 = mul nsw i32 %367, %369
  %371 = icmp sgt i32 %370, 1000000
  %372 = trunc i32 %367 to i8
  %373 = sdiv i8 %372, 2
  %374 = sext i8 %373 to i32
  %375 = select i1 %371, i32 %374, i32 0
  %376 = add nsw i32 %375, %365
  %377 = trunc i32 %376 to i16
  %378 = add i16 %361, %377
  store i16 %378, ptr %94, align 4
  %379 = load i8, ptr %87, align 4
  %380 = zext i8 %379 to i16
  %381 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 14
  store i16 %380, ptr %381, align 2
  %382 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 15
  store i16 1, ptr %382, align 4
  %383 = call fastcc i32 @HI_CfgCommand(ptr noundef %49) #10
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %697, label %385

385:                                              ; preds = %359
  %386 = load ptr, ptr %171, align 4
  %387 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef %386) #10
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %697, label %389

389:                                              ; preds = %385
  %390 = load i32, ptr %101, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %405, label %392

392:                                              ; preds = %389
  %393 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #10
  store i8 19, ptr %7, align 1
  %394 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 21, ptr %394, align 1
  %395 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 2, ptr %395, align 1
  %396 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 0, ptr %396, align 1
  %397 = getelementptr inbounds i8, ptr %7, i32 4
  store i8 0, ptr %397, align 1
  %398 = getelementptr inbounds i8, ptr %7, i32 5
  store i8 0, ptr %398, align 1
  %399 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %400 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 6, ptr %400, align 4, !annotation !8
  %401 = zext i8 %393 to i16
  store i16 %401, ptr %6, align 4
  %402 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %402, align 2
  %403 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %403, align 4
  %404 = call i32 @i2c_transfer(ptr noundef %399, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #10
  br label %405

405:                                              ; preds = %392, %389
  %406 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #10
  store i8 2, ptr %5, align 1
  %407 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 64, ptr %407, align 1
  %408 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 32, ptr %408, align 1
  %409 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %409, align 1
  %410 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 0, ptr %410, align 1
  %411 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 0, ptr %411, align 1
  %412 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %413 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 6, ptr %413, align 4, !annotation !8
  %414 = zext i8 %406 to i16
  store i16 %414, ptr %4, align 4
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %415, align 2
  %416 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %416, align 4
  %417 = call i32 @i2c_transfer(ptr noundef %412, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #10
  %418 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  store i8 2, ptr %3, align 1
  %419 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 64, ptr %419, align 1
  %420 = getelementptr inbounds i8, ptr %3, i32 2
  store i32 0, ptr %420, align 1
  %421 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %422 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 6, ptr %422, align 4, !annotation !8
  %423 = zext i8 %418 to i16
  store i16 %423, ptr %2, align 4
  %424 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %424, align 2
  %425 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %425, align 4
  %426 = call i32 @i2c_transfer(ptr noundef %421, ptr noundef nonnull %2, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  %427 = load i32, ptr %101, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %433, label %429

429:                                              ; preds = %405
  %430 = load ptr, ptr %176, align 4
  %431 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef %430) #10
  %432 = icmp slt i32 %431, 0
  br i1 %432, label %697, label %433

433:                                              ; preds = %429, %405
  %434 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 54
  %435 = load ptr, ptr %434, align 4
  %436 = getelementptr i8, ptr %435, i32 2
  %437 = load i8, ptr %436, align 1
  %438 = zext i8 %437 to i32
  %439 = shl nuw nsw i32 %438, 8
  %440 = getelementptr i8, ptr %435, i32 3
  %441 = load i8, ptr %440, align 1
  %442 = zext i8 %441 to i32
  %443 = or i32 %439, %442
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %524, label %445

445:                                              ; preds = %433
  %446 = getelementptr i8, ptr %435, i32 4
  %447 = getelementptr inbounds i8, ptr %9, i32 4
  %448 = getelementptr inbounds i8, ptr %9, i32 1
  %449 = getelementptr inbounds i8, ptr %9, i32 2
  %450 = getelementptr inbounds i8, ptr %9, i32 3
  %451 = getelementptr inbounds i8, ptr %8, i32 4
  %452 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  br label %454

454:                                              ; preds = %517, %445
  %455 = phi i32 [ 0, %445 ], [ %520, %517 ]
  %456 = phi ptr [ %446, %445 ], [ %519, %517 ]
  %457 = getelementptr i8, ptr %456, i32 4
  %458 = load i8, ptr %457, align 1
  %459 = zext i8 %458 to i16
  %460 = getelementptr i8, ptr %456, i32 5
  %461 = load i8, ptr %460, align 1
  %462 = zext i8 %461 to i16
  %463 = shl i16 %459, 9
  %464 = shl nuw nsw i16 %462, 1
  %465 = or i16 %464, %463
  %466 = getelementptr i8, ptr %456, i32 10
  %467 = icmp eq i16 %465, 0
  br i1 %467, label %517, label %468

468:                                              ; preds = %454
  %469 = getelementptr i8, ptr %456, i32 1
  %470 = load i8, ptr %469, align 1
  %471 = zext i8 %470 to i32
  %472 = shl nuw nsw i32 %471, 16
  %473 = load i8, ptr %456, align 1
  %474 = zext i8 %473 to i32
  %475 = shl nuw i32 %474, 24
  %476 = or i32 %475, %472
  %477 = getelementptr i8, ptr %456, i32 2
  %478 = load i8, ptr %477, align 1
  %479 = zext i8 %478 to i32
  %480 = shl nuw nsw i32 %479, 8
  %481 = or i32 %476, %480
  %482 = getelementptr i8, ptr %456, i32 3
  %483 = load i8, ptr %482, align 1
  %484 = zext i8 %483 to i32
  %485 = or i32 %481, %484
  br label %486

486:                                              ; preds = %511, %468
  %487 = phi ptr [ %512, %511 ], [ %466, %468 ]
  %488 = phi i16 [ %515, %511 ], [ %465, %468 ]
  %489 = phi i32 [ %514, %511 ], [ %485, %468 ]
  %490 = call i16 @llvm.umin.i16(i16 %488, i16 48) #10
  %491 = zext i16 %490 to i32
  %492 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %9) #10
  %493 = trunc i32 %489 to i8
  store i8 %493, ptr %9, align 1
  %494 = lshr i32 %489, 16
  %495 = trunc i32 %494 to i8
  store i8 %495, ptr %448, align 1
  %496 = lshr i32 %489, 24
  %497 = trunc i32 %496 to i8
  %498 = or i8 %497, -128
  store i8 %498, ptr %449, align 1
  %499 = lshr i32 %489, 8
  %500 = trunc i32 %499 to i8
  store i8 %500, ptr %450, align 1
  %501 = icmp ugt i16 %490, 47
  %502 = sub nuw nsw i16 48, %490
  %503 = select i1 %501, i16 0, i16 %502
  %504 = zext i16 %503 to i64
  %505 = getelementptr i8, ptr %447, i32 %491
  call void @llvm.memset.p0.i64(ptr align 1 %505, i8 0, i64 %504, i1 false) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %447, ptr align 1 %487, i32 %491, i1 false) #10
  %506 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  store i32 0, ptr %451, align 4, !annotation !8
  %507 = zext i8 %492 to i16
  store i16 %507, ptr %8, align 4
  store i16 0, ptr %452, align 2
  %508 = add nuw nsw i16 %490, 4
  store i16 %508, ptr %451, align 4
  store ptr %9, ptr %453, align 4
  %509 = call i32 @i2c_transfer(ptr noundef %506, ptr noundef nonnull %8, i32 noundef 1) #10
  %510 = icmp eq i32 %509, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  br i1 %510, label %511, label %522

511:                                              ; preds = %486
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %9) #10
  %512 = getelementptr i8, ptr %487, i32 %491
  %513 = lshr i32 %491, 1
  %514 = add i32 %513, %489
  %515 = sub i16 %488, %490
  %516 = icmp eq i16 %515, 0
  br i1 %516, label %517, label %486

517:                                              ; preds = %511, %454
  %518 = zext i16 %465 to i32
  %519 = getelementptr i8, ptr %466, i32 %518
  %520 = add nuw nsw i32 %455, 1
  %521 = icmp eq i32 %520, %443
  br i1 %521, label %524, label %454

522:                                              ; preds = %486
  %523 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %9) #10
  br label %697

524:                                              ; preds = %517, %433
  %525 = load i32, ptr %100, align 4
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %524
  store i16 0, ptr %113, align 2
  %528 = call fastcc i32 @SetCfgPga(ptr noundef %49) #10
  br label %530

529:                                              ; preds = %524
  store i16 14, ptr %113, align 2
  br label %530

530:                                              ; preds = %529, %527
  store i16 0, ptr %114, align 4
  %531 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 39
  %532 = load ptr, ptr %531, align 4
  %533 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef %532) #10
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %697, label %535

535:                                              ; preds = %530
  %536 = load i32, ptr %101, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %553, label %538

538:                                              ; preds = %535
  %539 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %17) #10
  store i8 18, ptr %17, align 1
  %540 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 -62, ptr %540, align 1
  %541 = getelementptr inbounds i8, ptr %17, i32 2
  store i8 0, ptr %541, align 1
  %542 = getelementptr inbounds i8, ptr %17, i32 3
  store i8 0, ptr %542, align 1
  %543 = getelementptr inbounds i8, ptr %17, i32 4
  store i8 1, ptr %543, align 1
  %544 = getelementptr inbounds i8, ptr %17, i32 5
  store i8 0, ptr %544, align 1
  %545 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %546 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 6, ptr %546, align 4, !annotation !8
  %547 = zext i8 %539 to i16
  store i16 %547, ptr %16, align 4
  %548 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %548, align 2
  %549 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %17, ptr %549, align 4
  %550 = call i32 @i2c_transfer(ptr noundef %545, ptr noundef nonnull %16, i32 noundef 1) #10
  %551 = icmp ne i32 %550, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  %552 = sext i1 %551 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %17) #10
  br label %573

553:                                              ; preds = %535
  %554 = load i32, ptr %100, align 4
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %558, label %556

556:                                              ; preds = %553
  %557 = call fastcc i32 @SetCfgPga(ptr noundef %49) #10
  br label %573

558:                                              ; preds = %553
  %559 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #10
  store i8 18, ptr %15, align 1
  %560 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 -62, ptr %560, align 1
  %561 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 0, ptr %561, align 1
  %562 = getelementptr inbounds i8, ptr %15, i32 3
  store i8 0, ptr %562, align 1
  %563 = getelementptr inbounds i8, ptr %15, i32 4
  store i8 1, ptr %563, align 1
  %564 = getelementptr inbounds i8, ptr %15, i32 5
  store i8 0, ptr %564, align 1
  %565 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %566 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 6, ptr %566, align 4, !annotation !8
  %567 = zext i8 %559 to i16
  store i16 %567, ptr %14, align 4
  %568 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %568, align 2
  %569 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %15, ptr %569, align 4
  %570 = call i32 @i2c_transfer(ptr noundef %565, ptr noundef nonnull %14, i32 noundef 1) #10
  %571 = icmp ne i32 %570, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  %572 = sext i1 %571 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #10
  br label %573

573:                                              ; preds = %558, %556, %538
  %574 = phi i32 [ %552, %538 ], [ %557, %556 ], [ %572, %558 ]
  %575 = icmp slt i32 %574, 0
  br i1 %575, label %697, label %576

576:                                              ; preds = %573
  %577 = load i16, ptr %114, align 4
  %578 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #10
  store i8 19, ptr %13, align 1
  %579 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 -62, ptr %579, align 1
  %580 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 0, ptr %580, align 1
  %581 = getelementptr inbounds i8, ptr %13, i32 3
  store i8 0, ptr %581, align 1
  %582 = getelementptr inbounds i8, ptr %13, i32 4
  %583 = trunc i16 %577 to i8
  store i8 %583, ptr %582, align 1
  %584 = getelementptr inbounds i8, ptr %13, i32 5
  %585 = lshr i16 %577, 8
  %586 = trunc i16 %585 to i8
  store i8 %586, ptr %584, align 1
  %587 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %588 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 6, ptr %588, align 4, !annotation !8
  %589 = zext i8 %578 to i16
  store i16 %589, ptr %12, align 4
  %590 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %590, align 2
  %591 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %591, align 4
  %592 = call i32 @i2c_transfer(ptr noundef %587, ptr noundef nonnull %12, i32 noundef 1) #10
  %593 = icmp eq i32 %592, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #10
  br i1 %593, label %594, label %697

594:                                              ; preds = %576
  %595 = load i16, ptr %113, align 2
  %596 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #10
  store i8 21, ptr %11, align 1
  %597 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -62, ptr %597, align 1
  %598 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 0, ptr %598, align 1
  %599 = getelementptr inbounds i8, ptr %11, i32 3
  store i8 0, ptr %599, align 1
  %600 = getelementptr inbounds i8, ptr %11, i32 4
  %601 = trunc i16 %595 to i8
  store i8 %601, ptr %600, align 1
  %602 = getelementptr inbounds i8, ptr %11, i32 5
  %603 = lshr i16 %595, 8
  %604 = trunc i16 %603 to i8
  store i8 %604, ptr %602, align 1
  %605 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %606 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 6, ptr %606, align 4, !annotation !8
  %607 = zext i8 %596 to i16
  store i16 %607, ptr %10, align 4
  %608 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %608, align 2
  %609 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %609, align 4
  %610 = call i32 @i2c_transfer(ptr noundef %605, ptr noundef nonnull %10, i32 noundef 1) #10
  %611 = icmp eq i32 %610, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #10
  br i1 %611, label %612, label %697

612:                                              ; preds = %594
  %613 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 40
  %614 = load ptr, ptr %613, align 4
  %615 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef %614) #10
  %616 = icmp slt i32 %615, 0
  br i1 %616, label %697, label %617

617:                                              ; preds = %612
  %618 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %19) #10
  store i8 0, ptr %19, align 1
  %619 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 1, ptr %619, align 1
  %620 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 1, ptr %620, align 1
  %621 = getelementptr inbounds i8, ptr %19, i32 3
  store i8 0, ptr %621, align 1
  %622 = getelementptr inbounds i8, ptr %19, i32 4
  store i8 1, ptr %622, align 1
  %623 = getelementptr inbounds i8, ptr %19, i32 5
  store i8 0, ptr %623, align 1
  %624 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %625 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 6, ptr %625, align 4, !annotation !8
  %626 = zext i8 %618 to i16
  store i16 %626, ptr %18, align 4
  %627 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %627, align 2
  %628 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %19, ptr %628, align 4
  %629 = call i32 @i2c_transfer(ptr noundef %624, ptr noundef nonnull %18, i32 noundef 1) #10
  %630 = icmp eq i32 %629, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %19) #10
  br i1 %630, label %631, label %697

631:                                              ; preds = %617
  %632 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 41
  %633 = load ptr, ptr %632, align 4
  %634 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef %633) #10
  %635 = icmp slt i32 %634, 0
  br i1 %635, label %697, label %636

636:                                              ; preds = %631
  %637 = call fastcc i32 @InitCE(ptr noundef %49) #10
  %638 = icmp slt i32 %637, 0
  br i1 %638, label %697, label %639

639:                                              ; preds = %636
  %640 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 43
  %641 = load ptr, ptr %640, align 4
  %642 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef %641) #10
  %643 = icmp slt i32 %642, 0
  br i1 %643, label %697, label %644

644:                                              ; preds = %639
  %645 = getelementptr inbounds %struct.drxd_state, ptr %49, i32 0, i32 45
  %646 = load ptr, ptr %645, align 4
  %647 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef %646) #10
  %648 = icmp slt i32 %647, 0
  br i1 %648, label %697, label %649

649:                                              ; preds = %644
  %650 = load ptr, ptr %172, align 4
  %651 = call fastcc i32 @WriteTable(ptr noundef %49, ptr noundef %650) #10
  %652 = icmp slt i32 %651, 0
  br i1 %652, label %697, label %653

653:                                              ; preds = %649
  %654 = call fastcc i32 @SetCfgIfAgc(ptr noundef %49, ptr noundef %59) #10
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %697, label %656

656:                                              ; preds = %653
  %657 = call fastcc i32 @SetCfgRfAgc(ptr noundef %49, ptr noundef %68) #10
  %658 = icmp slt i32 %657, 0
  br i1 %658, label %697, label %659

659:                                              ; preds = %656
  store i32 0, ptr %98, align 4
  %660 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #10
  store i8 0, ptr %21, align 1
  %661 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 -128, ptr %661, align 1
  %662 = getelementptr inbounds i8, ptr %21, i32 2
  store i32 0, ptr %662, align 1
  %663 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %664 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 6, ptr %664, align 4, !annotation !8
  %665 = zext i8 %660 to i16
  store i16 %665, ptr %20, align 4
  %666 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %666, align 2
  %667 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %21, ptr %667, align 4
  %668 = call i32 @i2c_transfer(ptr noundef %663, ptr noundef nonnull %20, i32 noundef 1) #10
  %669 = icmp eq i32 %668, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #10
  br i1 %669, label %670, label %697

670:                                              ; preds = %659
  %671 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %23) #10
  store i8 0, ptr %23, align 1
  %672 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 -128, ptr %672, align 1
  %673 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 2, ptr %673, align 1
  %674 = getelementptr inbounds i8, ptr %23, i32 3
  store i8 0, ptr %674, align 1
  %675 = getelementptr inbounds i8, ptr %23, i32 4
  store i8 0, ptr %675, align 1
  %676 = getelementptr inbounds i8, ptr %23, i32 5
  store i8 0, ptr %676, align 1
  %677 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %678 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 6, ptr %678, align 4, !annotation !8
  %679 = zext i8 %671 to i16
  store i16 %679, ptr %22, align 4
  %680 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %680, align 2
  %681 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %23, ptr %681, align 4
  %682 = call i32 @i2c_transfer(ptr noundef %677, ptr noundef nonnull %22, i32 noundef 1) #10
  %683 = icmp eq i32 %682, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %23) #10
  br i1 %683, label %684, label %697

684:                                              ; preds = %670
  %685 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #10
  store i64 73183644285436670, ptr %25, align 8, !annotation !8
  %686 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %687 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 8, ptr %687, align 4, !annotation !8
  %688 = zext i8 %685 to i16
  store i16 %688, ptr %24, align 4
  %689 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %689, align 2
  %690 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %25, ptr %690, align 4
  %691 = call i32 @i2c_transfer(ptr noundef %686, ptr noundef nonnull %24, i32 noundef 1) #10
  %692 = icmp eq i32 %691, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #10
  br i1 %692, label %693, label %697

693:                                              ; preds = %684
  %694 = call fastcc i32 @StopOC(ptr noundef %49) #10
  %695 = icmp slt i32 %694, 0
  br i1 %695, label %697, label %696

696:                                              ; preds = %693
  store i32 1, ptr %99, align 4
  store i32 1, ptr %50, align 4
  br label %697

697:                                              ; preds = %696, %693, %684, %670, %659, %656, %653, %649, %644, %639, %636, %631, %617, %612, %594, %576, %573, %530, %522, %429, %385, %359, %277, %274, %253, %250, %219, %213, %186, %177, %162, %147, %53, %1
  %698 = phi i32 [ 0, %1 ], [ -1, %219 ], [ %251, %250 ], [ -1, %253 ], [ -1, %277 ], [ %383, %359 ], [ %387, %385 ], [ %431, %429 ], [ %615, %612 ], [ -1, %617 ], [ -1, %631 ], [ -1, %636 ], [ -1, %639 ], [ %647, %644 ], [ -1, %649 ], [ %654, %653 ], [ %657, %656 ], [ -1, %659 ], [ -1, %670 ], [ -1, %684 ], [ %694, %693 ], [ 0, %696 ], [ -1, %522 ], [ -1, %213 ], [ -1, %274 ], [ -1, %53 ], [ -1, %162 ], [ -1, %147 ], [ -5, %186 ], [ -5, %177 ], [ -1, %594 ], [ -1, %576 ], [ %574, %573 ], [ -1, %530 ]
  ret i32 %698
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxd_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @ConfigureMPEGOutput(ptr noundef %3, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxd_set_frontend(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [6 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [6 x i8], align 1
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [6 x i8], align 1
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [6 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [6 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [6 x i8], align 1
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [6 x i8], align 1
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [6 x i8], align 1
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [6 x i8], align 1
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [6 x i8], align 1
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [6 x i8], align 1
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [6 x i8], align 1
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [6 x i8], align 1
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [6 x i8], align 1
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [6 x i8], align 1
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [6 x i8], align 1
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [6 x i8], align 1
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [6 x i8], align 1
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [6 x i8], align 1
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [6 x i8], align 1
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [6 x i8], align 1
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [6 x i8], align 1
  %56 = alloca %struct.i2c_msg, align 4
  %57 = alloca [6 x i8], align 1
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [6 x i8], align 1
  %60 = alloca %struct.i2c_msg, align 4
  %61 = alloca [6 x i8], align 1
  %62 = alloca %struct.i2c_msg, align 4
  %63 = alloca [6 x i8], align 1
  %64 = alloca %struct.i2c_msg, align 4
  %65 = alloca [6 x i8], align 1
  %66 = alloca %struct.i2c_msg, align 4
  %67 = alloca [6 x i8], align 1
  %68 = alloca %struct.i2c_msg, align 4
  %69 = alloca [6 x i8], align 1
  %70 = alloca %struct.i2c_msg, align 4
  %71 = alloca [6 x i8], align 1
  %72 = alloca %struct.i2c_msg, align 4
  %73 = alloca [6 x i8], align 1
  %74 = alloca %struct.i2c_msg, align 4
  %75 = alloca [6 x i8], align 1
  %76 = alloca [2 x %struct.i2c_msg], align 4
  %77 = alloca [4 x i8], align 4
  %78 = alloca [2 x i8], align 2
  %79 = alloca %struct.i2c_msg, align 4
  %80 = alloca [6 x i8], align 1
  %81 = alloca %struct.i2c_msg, align 4
  %82 = alloca [6 x i8], align 1
  %83 = alloca %struct.i2c_msg, align 4
  %84 = alloca [6 x i8], align 1
  %85 = alloca %struct.i2c_msg, align 4
  %86 = alloca [6 x i8], align 1
  %87 = alloca %struct.i2c_msg, align 4
  %88 = alloca [6 x i8], align 1
  %89 = alloca [2 x %struct.i2c_msg], align 4
  %90 = alloca [4 x i8], align 4
  %91 = alloca [2 x i8], align 2
  %92 = alloca %struct.i2c_msg, align 4
  %93 = alloca [6 x i8], align 1
  %94 = alloca %struct.i2c_msg, align 4
  %95 = alloca [6 x i8], align 1
  %96 = alloca %struct.i2c_msg, align 4
  %97 = alloca [6 x i8], align 1
  %98 = alloca %struct.i2c_msg, align 4
  %99 = alloca [8 x i8], align 8
  %100 = alloca %struct.i2c_msg, align 4
  %101 = alloca [6 x i8], align 1
  %102 = alloca %struct.i2c_msg, align 4
  %103 = alloca [6 x i8], align 1
  %104 = alloca %struct.i2c_msg, align 4
  %105 = alloca [6 x i8], align 1
  %106 = alloca %struct.i2c_msg, align 4
  %107 = alloca [6 x i8], align 1
  %108 = alloca %struct.i2c_msg, align 4
  %109 = alloca [6 x i8], align 1
  %110 = alloca [2 x %struct.i2c_msg], align 4
  %111 = alloca [4 x i8], align 4
  %112 = alloca [2 x i8], align 2
  %113 = alloca %struct.i2c_msg, align 4
  %114 = alloca [6 x i8], align 1
  %115 = alloca %struct.i2c_msg, align 4
  %116 = alloca [6 x i8], align 1
  %117 = alloca %struct.i2c_msg, align 4
  %118 = alloca [6 x i8], align 1
  %119 = alloca [2 x %struct.i2c_msg], align 4
  %120 = alloca [4 x i8], align 4
  %121 = alloca [2 x i8], align 2
  %122 = alloca [2 x %struct.i2c_msg], align 4
  %123 = alloca [4 x i8], align 4
  %124 = alloca [2 x i8], align 2
  %125 = alloca %struct.i2c_msg, align 4
  %126 = alloca [6 x i8], align 1
  %127 = alloca %struct.i2c_msg, align 4
  %128 = alloca [6 x i8], align 1
  %129 = alloca %struct.i2c_msg, align 4
  %130 = alloca [6 x i8], align 1
  %131 = alloca %struct.i2c_msg, align 4
  %132 = alloca [6 x i8], align 1
  %133 = alloca %struct.i2c_msg, align 4
  %134 = alloca [6 x i8], align 1
  %135 = alloca %struct.i2c_msg, align 4
  %136 = alloca [6 x i8], align 1
  %137 = alloca [2 x %struct.i2c_msg], align 4
  %138 = alloca [4 x i8], align 4
  %139 = alloca [2 x i8], align 2
  %140 = alloca %struct.i2c_msg, align 4
  %141 = alloca [6 x i8], align 1
  %142 = alloca %struct.i2c_msg, align 4
  %143 = alloca [6 x i8], align 1
  %144 = alloca %struct.i2c_msg, align 4
  %145 = alloca [6 x i8], align 1
  %146 = alloca %struct.i2c_msg, align 4
  %147 = alloca [6 x i8], align 1
  %148 = alloca %struct.i2c_msg, align 4
  %149 = alloca [6 x i8], align 1
  %150 = alloca %struct.i2c_msg, align 4
  %151 = alloca [6 x i8], align 1
  %152 = alloca %struct.i2c_msg, align 4
  %153 = alloca [6 x i8], align 1
  %154 = alloca %struct.i2c_msg, align 4
  %155 = alloca [6 x i8], align 1
  %156 = alloca %struct.i2c_msg, align 4
  %157 = alloca [6 x i8], align 1
  %158 = alloca %struct.i2c_msg, align 4
  %159 = alloca [6 x i8], align 1
  %160 = alloca %struct.i2c_msg, align 4
  %161 = alloca [6 x i8], align 1
  %162 = alloca %struct.i2c_msg, align 4
  %163 = alloca [6 x i8], align 1
  %164 = alloca %struct.i2c_msg, align 4
  %165 = alloca [6 x i8], align 1
  %166 = alloca %struct.i2c_msg, align 4
  %167 = alloca [6 x i8], align 1
  %168 = alloca %struct.i2c_msg, align 4
  %169 = alloca [6 x i8], align 1
  %170 = alloca %struct.i2c_msg, align 4
  %171 = alloca [6 x i8], align 1
  %172 = alloca i32, align 4
  %173 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %174 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(456) %176, ptr noundef align 4 dereferenceable(456) %173, i32 456, i1 false)
  %177 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 19
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %331

180:                                              ; preds = %1
  %181 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 18
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %172) #10
  store i32 0, ptr %172, align 4, !annotation !8
  %185 = call fastcc i32 @DRX_GetLockStatus(ptr noundef %175, ptr noundef nonnull %172) #10
  %186 = icmp slt i32 %185, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %172) #10
  br i1 %186, label %331, label %187

187:                                              ; preds = %184, %180
  %188 = tail call fastcc i32 @StopOC(ptr noundef %175) #10
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %331, label %190

190:                                              ; preds = %187
  store i32 1, ptr %177, align 4
  %191 = tail call fastcc i32 @ConfigureMPEGOutput(ptr noundef %175, i32 noundef 0) #10
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %331, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 56
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  %197 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 7, i32 5
  %198 = load i8, ptr %197, align 1
  br i1 %196, label %237, label %199

199:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %171) #10
  store i8 0, ptr %171, align 1
  %200 = getelementptr inbounds i8, ptr %171, i32 1
  store i8 17, ptr %200, align 1
  %201 = getelementptr inbounds i8, ptr %171, i32 2
  store i8 2, ptr %201, align 1
  %202 = getelementptr inbounds i8, ptr %171, i32 3
  store i8 0, ptr %202, align 1
  %203 = getelementptr inbounds i8, ptr %171, i32 4
  store i8 0, ptr %203, align 1
  %204 = getelementptr inbounds i8, ptr %171, i32 5
  store i8 0, ptr %204, align 1
  %205 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 5
  %206 = load ptr, ptr %205, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %170) #10
  %207 = getelementptr inbounds i8, ptr %170, i32 4
  store i32 6, ptr %207, align 4, !annotation !8
  %208 = zext i8 %198 to i16
  store i16 %208, ptr %170, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %170, i32 0, i32 1
  store i16 0, ptr %209, align 2
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %170, i32 0, i32 3
  store ptr %171, ptr %210, align 4
  %211 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %170, i32 noundef 1) #10
  %212 = icmp eq i32 %211, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %170) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %171) #10
  br i1 %212, label %213, label %331

213:                                              ; preds = %199
  %214 = load i8, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %169) #10
  store i8 0, ptr %169, align 1
  %215 = getelementptr inbounds i8, ptr %169, i32 1
  store i8 -128, ptr %215, align 1
  %216 = getelementptr inbounds i8, ptr %169, i32 2
  store i32 0, ptr %216, align 1
  %217 = load ptr, ptr %205, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %168) #10
  %218 = getelementptr inbounds i8, ptr %168, i32 4
  store i32 6, ptr %218, align 4, !annotation !8
  %219 = zext i8 %214 to i16
  store i16 %219, ptr %168, align 4
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %168, i32 0, i32 1
  store i16 0, ptr %220, align 2
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %168, i32 0, i32 3
  store ptr %169, ptr %221, align 4
  %222 = call i32 @i2c_transfer(ptr noundef %217, ptr noundef nonnull %168, i32 noundef 1) #10
  %223 = icmp eq i32 %222, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %168) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %169) #10
  br i1 %223, label %224, label %331

224:                                              ; preds = %213
  %225 = load i8, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %167) #10
  store i8 0, ptr %167, align 1
  %226 = getelementptr inbounds i8, ptr %167, i32 1
  store i8 -128, ptr %226, align 1
  %227 = getelementptr inbounds i8, ptr %167, i32 2
  store i8 2, ptr %227, align 1
  %228 = getelementptr inbounds i8, ptr %167, i32 3
  store i8 0, ptr %228, align 1
  %229 = getelementptr inbounds i8, ptr %167, i32 4
  store i8 0, ptr %229, align 1
  %230 = getelementptr inbounds i8, ptr %167, i32 5
  store i8 0, ptr %230, align 1
  %231 = load ptr, ptr %205, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %166) #10
  %232 = getelementptr inbounds i8, ptr %166, i32 4
  store i32 6, ptr %232, align 4, !annotation !8
  %233 = zext i8 %225 to i16
  store i16 %233, ptr %166, align 4
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %166, i32 0, i32 1
  store i16 0, ptr %234, align 2
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %166, i32 0, i32 3
  store ptr %167, ptr %235, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %231, ptr noundef nonnull %166, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %166) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %167) #10
  br label %331

237:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %165) #10
  store i8 0, ptr %165, align 1
  %238 = getelementptr inbounds i8, ptr %165, i32 1
  store i8 -128, ptr %238, align 1
  %239 = getelementptr inbounds i8, ptr %165, i32 2
  %240 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 5
  store i32 0, ptr %239, align 1
  %241 = load ptr, ptr %240, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %164) #10
  %242 = getelementptr inbounds i8, ptr %164, i32 4
  store i32 6, ptr %242, align 4, !annotation !8
  %243 = zext i8 %198 to i16
  store i16 %243, ptr %164, align 4
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %164, i32 0, i32 1
  store i16 0, ptr %244, align 2
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %164, i32 0, i32 3
  store ptr %165, ptr %245, align 4
  %246 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %164, i32 noundef 1) #10
  %247 = icmp eq i32 %246, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %164) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %165) #10
  br i1 %247, label %248, label %331

248:                                              ; preds = %237
  %249 = load i8, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %163) #10
  store i8 0, ptr %163, align 1
  %250 = getelementptr inbounds i8, ptr %163, i32 1
  store i8 -128, ptr %250, align 1
  %251 = getelementptr inbounds i8, ptr %163, i32 2
  store i8 2, ptr %251, align 1
  %252 = getelementptr inbounds i8, ptr %163, i32 3
  store i8 0, ptr %252, align 1
  %253 = getelementptr inbounds i8, ptr %163, i32 4
  store i8 0, ptr %253, align 1
  %254 = getelementptr inbounds i8, ptr %163, i32 5
  store i8 0, ptr %254, align 1
  %255 = load ptr, ptr %240, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %162) #10
  %256 = getelementptr inbounds i8, ptr %162, i32 4
  store i32 6, ptr %256, align 4, !annotation !8
  %257 = zext i8 %249 to i16
  store i16 %257, ptr %162, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %162, i32 0, i32 1
  store i16 0, ptr %258, align 2
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %162, i32 0, i32 3
  store ptr %163, ptr %259, align 4
  %260 = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %162, i32 noundef 1) #10
  %261 = icmp eq i32 %260, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %162) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %163) #10
  br i1 %261, label %262, label %331

262:                                              ; preds = %248
  %263 = load i8, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %161) #10
  store i8 0, ptr %161, align 1
  %264 = getelementptr inbounds i8, ptr %161, i32 1
  store i8 0, ptr %264, align 1
  %265 = getelementptr inbounds i8, ptr %161, i32 2
  store i8 1, ptr %265, align 1
  %266 = getelementptr inbounds i8, ptr %161, i32 3
  store i8 0, ptr %266, align 1
  %267 = getelementptr inbounds i8, ptr %161, i32 4
  store i8 0, ptr %267, align 1
  %268 = getelementptr inbounds i8, ptr %161, i32 5
  store i8 0, ptr %268, align 1
  %269 = load ptr, ptr %240, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %160) #10
  %270 = getelementptr inbounds i8, ptr %160, i32 4
  store i32 6, ptr %270, align 4, !annotation !8
  %271 = zext i8 %263 to i16
  store i16 %271, ptr %160, align 4
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %160, i32 0, i32 1
  store i16 0, ptr %272, align 2
  %273 = getelementptr inbounds %struct.i2c_msg, ptr %160, i32 0, i32 3
  store ptr %161, ptr %273, align 4
  %274 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %160, i32 noundef 1) #10
  %275 = icmp eq i32 %274, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %160) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %161) #10
  br i1 %275, label %276, label %331

276:                                              ; preds = %262
  %277 = load i8, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %141) #10
  store i8 0, ptr %141, align 1
  %278 = getelementptr inbounds i8, ptr %141, i32 1
  store i8 64, ptr %278, align 1
  %279 = getelementptr inbounds i8, ptr %141, i32 2
  store i8 1, ptr %279, align 1
  %280 = getelementptr inbounds i8, ptr %141, i32 3
  store i8 0, ptr %280, align 1
  %281 = getelementptr inbounds i8, ptr %141, i32 4
  store i8 0, ptr %281, align 1
  %282 = getelementptr inbounds i8, ptr %141, i32 5
  store i8 0, ptr %282, align 1
  %283 = load ptr, ptr %240, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %140) #10
  %284 = getelementptr inbounds i8, ptr %140, i32 4
  store i32 6, ptr %284, align 4, !annotation !8
  %285 = zext i8 %277 to i16
  store i16 %285, ptr %140, align 4
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %140, i32 0, i32 1
  store i16 0, ptr %286, align 2
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %140, i32 0, i32 3
  store ptr %141, ptr %287, align 4
  %288 = call i32 @i2c_transfer(ptr noundef %283, ptr noundef nonnull %140, i32 noundef 1) #10
  %289 = icmp eq i32 %288, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %140) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %141) #10
  br i1 %289, label %290, label %331

290:                                              ; preds = %276
  %291 = load i8, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %143) #10
  store i8 0, ptr %143, align 1
  %292 = getelementptr inbounds i8, ptr %143, i32 1
  store i8 -128, ptr %292, align 1
  %293 = getelementptr inbounds i8, ptr %143, i32 2
  store i8 1, ptr %293, align 1
  %294 = getelementptr inbounds i8, ptr %143, i32 3
  store i8 0, ptr %294, align 1
  %295 = getelementptr inbounds i8, ptr %143, i32 4
  store i8 0, ptr %295, align 1
  %296 = getelementptr inbounds i8, ptr %143, i32 5
  store i8 0, ptr %296, align 1
  %297 = load ptr, ptr %240, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %142) #10
  %298 = getelementptr inbounds i8, ptr %142, i32 4
  store i32 6, ptr %298, align 4, !annotation !8
  %299 = zext i8 %291 to i16
  store i16 %299, ptr %142, align 4
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 0, i32 1
  store i16 0, ptr %300, align 2
  %301 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 0, i32 3
  store ptr %143, ptr %301, align 4
  %302 = call i32 @i2c_transfer(ptr noundef %297, ptr noundef nonnull %142, i32 noundef 1) #10
  %303 = icmp eq i32 %302, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %142) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %143) #10
  br i1 %303, label %304, label %331

304:                                              ; preds = %290
  %305 = load i8, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %145) #10
  store i8 0, ptr %145, align 1
  %306 = getelementptr inbounds i8, ptr %145, i32 1
  store i8 -64, ptr %306, align 1
  %307 = getelementptr inbounds i8, ptr %145, i32 2
  store i8 1, ptr %307, align 1
  %308 = getelementptr inbounds i8, ptr %145, i32 3
  store i8 0, ptr %308, align 1
  %309 = getelementptr inbounds i8, ptr %145, i32 4
  store i8 0, ptr %309, align 1
  %310 = getelementptr inbounds i8, ptr %145, i32 5
  store i8 0, ptr %310, align 1
  %311 = load ptr, ptr %240, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %144) #10
  %312 = getelementptr inbounds i8, ptr %144, i32 4
  store i32 6, ptr %312, align 4, !annotation !8
  %313 = zext i8 %305 to i16
  store i16 %313, ptr %144, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %144, i32 0, i32 1
  store i16 0, ptr %314, align 2
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %144, i32 0, i32 3
  store ptr %145, ptr %315, align 4
  %316 = call i32 @i2c_transfer(ptr noundef %311, ptr noundef nonnull %144, i32 noundef 1) #10
  %317 = icmp eq i32 %316, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %144) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %145) #10
  br i1 %317, label %318, label %331

318:                                              ; preds = %304
  %319 = load i8, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %147) #10
  store i8 0, ptr %147, align 1
  %320 = getelementptr inbounds i8, ptr %147, i32 1
  store i8 17, ptr %320, align 1
  %321 = getelementptr inbounds i8, ptr %147, i32 2
  store i8 2, ptr %321, align 1
  %322 = getelementptr inbounds i8, ptr %147, i32 3
  store i8 0, ptr %322, align 1
  %323 = getelementptr inbounds i8, ptr %147, i32 4
  store i8 0, ptr %323, align 1
  %324 = getelementptr inbounds i8, ptr %147, i32 5
  store i8 0, ptr %324, align 1
  %325 = load ptr, ptr %240, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %146) #10
  %326 = getelementptr inbounds i8, ptr %146, i32 4
  store i32 6, ptr %326, align 4, !annotation !8
  %327 = zext i8 %319 to i16
  store i16 %327, ptr %146, align 4
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %146, i32 0, i32 1
  store i16 0, ptr %328, align 2
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %146, i32 0, i32 3
  store ptr %147, ptr %329, align 4
  %330 = call i32 @i2c_transfer(ptr noundef %325, ptr noundef nonnull %146, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %146) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %147) #10
  br label %331

331:                                              ; preds = %318, %304, %290, %276, %262, %248, %237, %224, %213, %199, %190, %187, %184, %1
  %332 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %342, label %335

335:                                              ; preds = %331
  %336 = call i32 %333(ptr noundef %0) #10
  %337 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %335
  %341 = call i32 %338(ptr noundef %0, i32 noundef 0) #10
  br label %342

342:                                              ; preds = %340, %335, %331
  call void @msleep(i32 noundef 200) #10
  %343 = load i32, ptr %177, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %1742

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 56
  %347 = load i32, ptr %346, align 4
  %348 = icmp eq i32 %347, 0
  %349 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 7, i32 5
  %350 = load i8, ptr %349, align 1
  br i1 %348, label %364, label %351

351:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %159) #10
  store i8 16, ptr %159, align 1
  %352 = getelementptr inbounds i8, ptr %159, i32 1
  store i8 17, ptr %352, align 1
  %353 = getelementptr inbounds i8, ptr %159, i32 2
  store i8 2, ptr %353, align 1
  %354 = getelementptr inbounds i8, ptr %159, i32 3
  store i8 0, ptr %354, align 1
  %355 = getelementptr inbounds i8, ptr %159, i32 4
  store i8 100, ptr %355, align 1
  %356 = getelementptr inbounds i8, ptr %159, i32 5
  store i8 6, ptr %356, align 1
  %357 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 5
  %358 = load ptr, ptr %357, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %158) #10
  %359 = getelementptr inbounds i8, ptr %158, i32 4
  store i32 6, ptr %359, align 4, !annotation !8
  %360 = zext i8 %350 to i16
  store i16 %360, ptr %158, align 4
  %361 = getelementptr inbounds %struct.i2c_msg, ptr %158, i32 0, i32 1
  store i16 0, ptr %361, align 2
  %362 = getelementptr inbounds %struct.i2c_msg, ptr %158, i32 0, i32 3
  store ptr %159, ptr %362, align 4
  %363 = call i32 @i2c_transfer(ptr noundef %358, ptr noundef nonnull %158, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %158) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %159) #10
  br label %377

364:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %157) #10
  store i8 100, ptr %157, align 1
  %365 = getelementptr inbounds i8, ptr %157, i32 1
  store i8 17, ptr %365, align 1
  %366 = getelementptr inbounds i8, ptr %157, i32 2
  store i8 2, ptr %366, align 1
  %367 = getelementptr inbounds i8, ptr %157, i32 3
  store i8 6, ptr %367, align 1
  %368 = getelementptr inbounds i8, ptr %157, i32 4
  store i8 100, ptr %368, align 1
  %369 = getelementptr inbounds i8, ptr %157, i32 5
  store i8 6, ptr %369, align 1
  %370 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 5
  %371 = load ptr, ptr %370, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %156) #10
  %372 = getelementptr inbounds i8, ptr %156, i32 4
  store i32 6, ptr %372, align 4, !annotation !8
  %373 = zext i8 %350 to i16
  store i16 %373, ptr %156, align 4
  %374 = getelementptr inbounds %struct.i2c_msg, ptr %156, i32 0, i32 1
  store i16 0, ptr %374, align 2
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %156, i32 0, i32 3
  store ptr %157, ptr %375, align 4
  %376 = call i32 @i2c_transfer(ptr noundef %371, ptr noundef nonnull %156, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %156) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %157) #10
  br label %377

377:                                              ; preds = %364, %351
  %378 = phi i32 [ %363, %351 ], [ %376, %364 ]
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %380, label %1742

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 46
  %382 = load ptr, ptr %381, align 4
  %383 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %382) #10
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %1742, label %385

385:                                              ; preds = %380
  %386 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %155) #10
  store i8 0, ptr %155, align 1
  %387 = getelementptr inbounds i8, ptr %155, i32 1
  store i8 17, ptr %387, align 1
  %388 = getelementptr inbounds i8, ptr %155, i32 2
  store i8 2, ptr %388, align 1
  %389 = getelementptr inbounds i8, ptr %155, i32 3
  store i8 0, ptr %389, align 1
  %390 = getelementptr inbounds i8, ptr %155, i32 4
  store i8 1, ptr %390, align 1
  %391 = getelementptr inbounds i8, ptr %155, i32 5
  store i8 0, ptr %391, align 1
  %392 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 5
  %393 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %154) #10
  %394 = getelementptr inbounds i8, ptr %154, i32 4
  store i32 6, ptr %394, align 4, !annotation !8
  %395 = zext i8 %386 to i16
  store i16 %395, ptr %154, align 4
  %396 = getelementptr inbounds %struct.i2c_msg, ptr %154, i32 0, i32 1
  store i16 0, ptr %396, align 2
  %397 = getelementptr inbounds %struct.i2c_msg, ptr %154, i32 0, i32 3
  store ptr %155, ptr %397, align 4
  %398 = call i32 @i2c_transfer(ptr noundef %393, ptr noundef nonnull %154, i32 noundef 1) #10
  %399 = icmp eq i32 %398, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %154) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %155) #10
  br i1 %399, label %400, label %1742

400:                                              ; preds = %385
  %401 = load i32, ptr %346, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %408, label %403

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 44
  %405 = load ptr, ptr %404, align 4
  %406 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %405) #10
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %1742, label %440

408:                                              ; preds = %400
  %409 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %153) #10
  store i8 0, ptr %153, align 1
  %410 = getelementptr inbounds i8, ptr %153, i32 1
  store i8 1, ptr %410, align 1
  %411 = getelementptr inbounds i8, ptr %153, i32 2
  store i8 1, ptr %411, align 1
  %412 = getelementptr inbounds i8, ptr %153, i32 3
  store i8 0, ptr %412, align 1
  %413 = getelementptr inbounds i8, ptr %153, i32 4
  store i8 1, ptr %413, align 1
  %414 = getelementptr inbounds i8, ptr %153, i32 5
  store i8 0, ptr %414, align 1
  %415 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %152) #10
  %416 = getelementptr inbounds i8, ptr %152, i32 4
  store i32 6, ptr %416, align 4, !annotation !8
  %417 = zext i8 %409 to i16
  store i16 %417, ptr %152, align 4
  %418 = getelementptr inbounds %struct.i2c_msg, ptr %152, i32 0, i32 1
  store i16 0, ptr %418, align 2
  %419 = getelementptr inbounds %struct.i2c_msg, ptr %152, i32 0, i32 3
  store ptr %153, ptr %419, align 4
  %420 = call i32 @i2c_transfer(ptr noundef %415, ptr noundef nonnull %152, i32 noundef 1) #10
  %421 = icmp eq i32 %420, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %152) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %153) #10
  br i1 %421, label %422, label %1742

422:                                              ; preds = %408
  %423 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 41
  %424 = load ptr, ptr %423, align 4
  %425 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %424) #10
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %1742, label %427

427:                                              ; preds = %422
  %428 = call fastcc i32 @InitCE(ptr noundef %175) #10
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %1742, label %430

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 43
  %432 = load ptr, ptr %431, align 4
  %433 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %432) #10
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %1742, label %435

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 44
  %437 = load ptr, ptr %436, align 4
  %438 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %437) #10
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %1742, label %440

440:                                              ; preds = %435, %403
  %441 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 26
  %442 = call fastcc i32 @SetCfgIfAgc(ptr noundef %175, ptr noundef %441) #10
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %1742, label %444

444:                                              ; preds = %440
  %445 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 27
  %446 = call fastcc i32 @SetCfgRfAgc(ptr noundef %175, ptr noundef %445) #10
  %447 = icmp slt i32 %446, 0
  br i1 %447, label %1742, label %448

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 2, i32 4
  %450 = load i32, ptr %449, align 4
  %451 = icmp eq i32 %450, 1
  %452 = zext i1 %451 to i32
  %453 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 2, i32 6
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %454, 0
  %456 = load i32, ptr %346, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %455, label %474, label %458

458:                                              ; preds = %448
  br i1 %457, label %490, label %459

459:                                              ; preds = %458
  %460 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %151) #10
  store i8 16, ptr %151, align 1
  %461 = getelementptr inbounds i8, ptr %151, i32 1
  store i8 1, ptr %461, align 1
  %462 = getelementptr inbounds i8, ptr %151, i32 2
  store i8 2, ptr %462, align 1
  %463 = getelementptr inbounds i8, ptr %151, i32 3
  store i8 0, ptr %463, align 1
  %464 = getelementptr inbounds i8, ptr %151, i32 4
  store i8 0, ptr %464, align 1
  %465 = getelementptr inbounds i8, ptr %151, i32 5
  store i8 0, ptr %465, align 1
  %466 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %150) #10
  %467 = getelementptr inbounds i8, ptr %150, i32 4
  store i32 6, ptr %467, align 4, !annotation !8
  %468 = zext i8 %460 to i16
  store i16 %468, ptr %150, align 4
  %469 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 0, i32 1
  store i16 0, ptr %469, align 2
  %470 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 0, i32 3
  store ptr %151, ptr %470, align 4
  %471 = call i32 @i2c_transfer(ptr noundef %466, ptr noundef nonnull %150, i32 noundef 1) #10
  %472 = icmp eq i32 %471, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %150) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %151) #10
  br i1 %472, label %473, label %490

473:                                              ; preds = %459
  br label %490

474:                                              ; preds = %448
  br i1 %457, label %490, label %475

475:                                              ; preds = %474
  %476 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  store i8 16, ptr %3, align 1
  %477 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %477, align 1
  %478 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 2, ptr %478, align 1
  %479 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %479, align 1
  %480 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 1, ptr %480, align 1
  %481 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 0, ptr %481, align 1
  %482 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %483 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 6, ptr %483, align 4, !annotation !8
  %484 = zext i8 %476 to i16
  store i16 %484, ptr %2, align 4
  %485 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %485, align 2
  %486 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %486, align 4
  %487 = call i32 @i2c_transfer(ptr noundef %482, ptr noundef nonnull %2, i32 noundef 1) #10
  %488 = icmp eq i32 %487, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  br i1 %488, label %489, label %490

489:                                              ; preds = %475
  br label %490

490:                                              ; preds = %489, %475, %474, %473, %459, %458
  %491 = phi i32 [ -1, %459 ], [ 0, %473 ], [ %446, %458 ], [ -1, %475 ], [ 0, %489 ], [ %446, %474 ]
  %492 = phi i16 [ 1, %459 ], [ 1, %473 ], [ 1, %458 ], [ 0, %475 ], [ 0, %489 ], [ 0, %474 ]
  %493 = phi i8 [ 0, %459 ], [ 99, %473 ], [ 0, %458 ], [ 0, %475 ], [ 97, %489 ], [ 0, %474 ]
  %494 = phi i8 [ 0, %459 ], [ 83, %473 ], [ 0, %458 ], [ 0, %475 ], [ 71, %489 ], [ 0, %474 ]
  %495 = phi i8 [ 0, %459 ], [ 67, %473 ], [ 0, %458 ], [ 0, %475 ], [ 65, %489 ], [ 0, %474 ]
  %496 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 2, i32 8
  %497 = load i32, ptr %496, align 4
  switch i32 %497, label %504 [
    i32 3, label %498
    i32 2, label %500
    i32 1, label %502
    i32 0, label %506
  ]

498:                                              ; preds = %490
  %499 = or i16 %492, 12
  br label %506

500:                                              ; preds = %490
  %501 = or i16 %492, 8
  br label %506

502:                                              ; preds = %490
  %503 = or i16 %492, 4
  br label %506

504:                                              ; preds = %490
  %505 = or i16 %492, 12
  br label %506

506:                                              ; preds = %504, %502, %500, %498, %490
  %507 = phi i16 [ %505, %504 ], [ %503, %502 ], [ %501, %500 ], [ %499, %498 ], [ %492, %490 ]
  %508 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 2, i32 9
  %509 = load i32, ptr %508, align 4
  switch i32 %509, label %606 [
    i32 1, label %510
    i32 2, label %542
    i32 3, label %574
  ]

510:                                              ; preds = %506
  %511 = or i16 %507, 64
  %512 = load i32, ptr %346, align 4
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %637, label %514

514:                                              ; preds = %510
  %515 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #10
  store i8 71, ptr %5, align 1
  %516 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -63, ptr %516, align 1
  %517 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 1, ptr %517, align 1
  %518 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %518, align 1
  %519 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 1, ptr %519, align 1
  %520 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 0, ptr %520, align 1
  %521 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %522 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 6, ptr %522, align 4, !annotation !8
  %523 = zext i8 %515 to i16
  store i16 %523, ptr %4, align 4
  %524 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %524, align 2
  %525 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %525, align 4
  %526 = call i32 @i2c_transfer(ptr noundef %521, ptr noundef nonnull %4, i32 noundef 1) #10
  %527 = icmp eq i32 %526, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #10
  br i1 %527, label %528, label %1742

528:                                              ; preds = %514
  %529 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #10
  store i8 18, ptr %7, align 1
  %530 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 1, ptr %530, align 1
  %531 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 2, ptr %531, align 1
  %532 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 0, ptr %532, align 1
  %533 = getelementptr inbounds i8, ptr %7, i32 4
  store i8 1, ptr %533, align 1
  %534 = getelementptr inbounds i8, ptr %7, i32 5
  store i8 0, ptr %534, align 1
  %535 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %536 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 6, ptr %536, align 4, !annotation !8
  %537 = zext i8 %529 to i16
  store i16 %537, ptr %6, align 4
  %538 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %538, align 2
  %539 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %539, align 4
  %540 = call i32 @i2c_transfer(ptr noundef %535, ptr noundef nonnull %6, i32 noundef 1) #10
  %541 = icmp eq i32 %540, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #10
  br i1 %541, label %640, label %1742

542:                                              ; preds = %506
  %543 = or i16 %507, 128
  %544 = load i32, ptr %346, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %637, label %546

546:                                              ; preds = %542
  %547 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #10
  store i8 71, ptr %9, align 1
  %548 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 -63, ptr %548, align 1
  %549 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 1, ptr %549, align 1
  %550 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 0, ptr %550, align 1
  %551 = getelementptr inbounds i8, ptr %9, i32 4
  store i8 2, ptr %551, align 1
  %552 = getelementptr inbounds i8, ptr %9, i32 5
  store i8 0, ptr %552, align 1
  %553 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %554 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 6, ptr %554, align 4, !annotation !8
  %555 = zext i8 %547 to i16
  store i16 %555, ptr %8, align 4
  %556 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %556, align 2
  %557 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %557, align 4
  %558 = call i32 @i2c_transfer(ptr noundef %553, ptr noundef nonnull %8, i32 noundef 1) #10
  %559 = icmp eq i32 %558, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  br i1 %559, label %560, label %1742

560:                                              ; preds = %546
  %561 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #10
  store i8 18, ptr %11, align 1
  %562 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 1, ptr %562, align 1
  %563 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 2, ptr %563, align 1
  %564 = getelementptr inbounds i8, ptr %11, i32 3
  store i8 0, ptr %564, align 1
  %565 = getelementptr inbounds i8, ptr %11, i32 4
  store i8 2, ptr %565, align 1
  %566 = getelementptr inbounds i8, ptr %11, i32 5
  store i8 0, ptr %566, align 1
  %567 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %568 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 6, ptr %568, align 4, !annotation !8
  %569 = zext i8 %561 to i16
  store i16 %569, ptr %10, align 4
  %570 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %570, align 2
  %571 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %571, align 4
  %572 = call i32 @i2c_transfer(ptr noundef %567, ptr noundef nonnull %10, i32 noundef 1) #10
  %573 = icmp eq i32 %572, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #10
  br i1 %573, label %640, label %1742

574:                                              ; preds = %506
  %575 = or i16 %507, 192
  %576 = load i32, ptr %346, align 4
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %637, label %578

578:                                              ; preds = %574
  %579 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #10
  store i8 71, ptr %13, align 1
  %580 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 -63, ptr %580, align 1
  %581 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 1, ptr %581, align 1
  %582 = getelementptr inbounds i8, ptr %13, i32 3
  store i8 0, ptr %582, align 1
  %583 = getelementptr inbounds i8, ptr %13, i32 4
  store i8 3, ptr %583, align 1
  %584 = getelementptr inbounds i8, ptr %13, i32 5
  store i8 0, ptr %584, align 1
  %585 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %586 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 6, ptr %586, align 4, !annotation !8
  %587 = zext i8 %579 to i16
  store i16 %587, ptr %12, align 4
  %588 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %588, align 2
  %589 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %589, align 4
  %590 = call i32 @i2c_transfer(ptr noundef %585, ptr noundef nonnull %12, i32 noundef 1) #10
  %591 = icmp eq i32 %590, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #10
  br i1 %591, label %592, label %1742

592:                                              ; preds = %578
  %593 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #10
  store i8 18, ptr %15, align 1
  %594 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 1, ptr %594, align 1
  %595 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 2, ptr %595, align 1
  %596 = getelementptr inbounds i8, ptr %15, i32 3
  store i8 0, ptr %596, align 1
  %597 = getelementptr inbounds i8, ptr %15, i32 4
  store i8 3, ptr %597, align 1
  %598 = getelementptr inbounds i8, ptr %15, i32 5
  store i8 0, ptr %598, align 1
  %599 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %600 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 6, ptr %600, align 4, !annotation !8
  %601 = zext i8 %593 to i16
  store i16 %601, ptr %14, align 4
  %602 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %602, align 2
  %603 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %15, ptr %603, align 4
  %604 = call i32 @i2c_transfer(ptr noundef %599, ptr noundef nonnull %14, i32 noundef 1) #10
  %605 = icmp eq i32 %604, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #10
  br i1 %605, label %640, label %1742

606:                                              ; preds = %506
  %607 = load i32, ptr %346, align 4
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %637, label %609

609:                                              ; preds = %606
  %610 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %17) #10
  store i8 71, ptr %17, align 1
  %611 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 -63, ptr %611, align 1
  %612 = getelementptr inbounds i8, ptr %17, i32 2
  store i8 1, ptr %612, align 1
  %613 = getelementptr inbounds i8, ptr %17, i32 3
  store i8 0, ptr %613, align 1
  %614 = getelementptr inbounds i8, ptr %17, i32 4
  store i8 0, ptr %614, align 1
  %615 = getelementptr inbounds i8, ptr %17, i32 5
  store i8 0, ptr %615, align 1
  %616 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %617 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 6, ptr %617, align 4, !annotation !8
  %618 = zext i8 %610 to i16
  store i16 %618, ptr %16, align 4
  %619 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %619, align 2
  %620 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %17, ptr %620, align 4
  %621 = call i32 @i2c_transfer(ptr noundef %616, ptr noundef nonnull %16, i32 noundef 1) #10
  %622 = icmp eq i32 %621, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %17) #10
  br i1 %622, label %623, label %1742

623:                                              ; preds = %609
  %624 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %19) #10
  store i8 18, ptr %19, align 1
  %625 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 1, ptr %625, align 1
  %626 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 2, ptr %626, align 1
  %627 = getelementptr inbounds i8, ptr %19, i32 3
  store i8 0, ptr %627, align 1
  %628 = getelementptr inbounds i8, ptr %19, i32 4
  store i8 0, ptr %628, align 1
  %629 = getelementptr inbounds i8, ptr %19, i32 5
  store i8 0, ptr %629, align 1
  %630 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %631 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 6, ptr %631, align 4, !annotation !8
  %632 = zext i8 %624 to i16
  store i16 %632, ptr %18, align 4
  %633 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %633, align 2
  %634 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %19, ptr %634, align 4
  %635 = call i32 @i2c_transfer(ptr noundef %630, ptr noundef nonnull %18, i32 noundef 1) #10
  %636 = icmp eq i32 %635, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %19) #10
  br i1 %636, label %640, label %1742

637:                                              ; preds = %606, %574, %542, %510
  %638 = phi i16 [ %507, %606 ], [ %575, %574 ], [ %543, %542 ], [ %511, %510 ]
  %639 = icmp slt i32 %491, 0
  br i1 %639, label %1742, label %640

640:                                              ; preds = %637, %623, %592, %560, %528
  %641 = phi i8 [ 0, %637 ], [ 5, %528 ], [ 5, %560 ], [ 5, %592 ], [ 5, %623 ]
  %642 = phi i8 [ 0, %637 ], [ 5, %528 ], [ 5, %560 ], [ 6, %592 ], [ 5, %623 ]
  %643 = phi i8 [ 0, %637 ], [ 4, %528 ], [ 4, %560 ], [ 4, %592 ], [ 5, %623 ]
  %644 = phi i8 [ 0, %637 ], [ -5, %528 ], [ 47, %560 ], [ -105, %592 ], [ -5, %623 ]
  %645 = phi i8 [ 0, %637 ], [ -17, %528 ], [ 94, %560 ], [ 26, %592 ], [ -17, %623 ]
  %646 = phi i8 [ 0, %637 ], [ -42, %528 ], [ -42, %560 ], [ -42, %592 ], [ -69, %623 ]
  %647 = phi i8 [ 0, %637 ], [ -97, %528 ], [ -8, %560 ], [ 77, %592 ], [ -97, %623 ]
  %648 = phi i8 [ 0, %637 ], [ 1, %528 ], [ 0, %560 ], [ 1, %592 ], [ 1, %623 ]
  %649 = phi i8 [ 0, %637 ], [ -107, %528 ], [ 30, %560 ], [ -50, %592 ], [ -107, %623 ]
  %650 = phi i8 [ 0, %637 ], [ 1, %528 ], [ 1, %560 ], [ 1, %592 ], [ 1, %623 ]
  %651 = phi i8 [ 0, %637 ], [ -64, %528 ], [ -64, %560 ], [ -64, %592 ], [ 106, %623 ]
  %652 = phi i8 [ 0, %637 ], [ 0, %528 ], [ 0, %560 ], [ 0, %592 ], [ 1, %623 ]
  %653 = phi i16 [ %638, %637 ], [ %511, %528 ], [ %543, %560 ], [ %575, %592 ], [ %507, %623 ]
  %654 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 2, i32 1
  %655 = load i32, ptr %654, align 4
  switch i32 %655, label %656 [
    i32 1, label %899
    i32 0, label %778
  ]

656:                                              ; preds = %640
  %657 = or i16 %653, 32
  %658 = load i32, ptr %346, align 4
  %659 = icmp eq i32 %658, 0
  %660 = trunc i16 %657 to i8
  %661 = lshr i16 %653, 8
  %662 = trunc i16 %661 to i8
  br i1 %659, label %1038, label %663

663:                                              ; preds = %656
  %664 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #10
  store i8 70, ptr %21, align 1
  %665 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 -63, ptr %665, align 1
  %666 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 1, ptr %666, align 1
  %667 = getelementptr inbounds i8, ptr %21, i32 3
  store i8 0, ptr %667, align 1
  %668 = getelementptr inbounds i8, ptr %21, i32 4
  store i8 2, ptr %668, align 1
  %669 = getelementptr inbounds i8, ptr %21, i32 5
  store i8 0, ptr %669, align 1
  %670 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %671 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 6, ptr %671, align 4, !annotation !8
  %672 = zext i8 %664 to i16
  store i16 %672, ptr %20, align 4
  %673 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %673, align 2
  %674 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %21, ptr %674, align 4
  %675 = call i32 @i2c_transfer(ptr noundef %670, ptr noundef nonnull %20, i32 noundef 1) #10
  %676 = icmp eq i32 %675, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #10
  br i1 %676, label %677, label %1742

677:                                              ; preds = %663
  %678 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %23) #10
  store i8 17, ptr %23, align 1
  %679 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 1, ptr %679, align 1
  %680 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 2, ptr %680, align 1
  %681 = getelementptr inbounds i8, ptr %23, i32 3
  store i8 0, ptr %681, align 1
  %682 = getelementptr inbounds i8, ptr %23, i32 4
  store i8 2, ptr %682, align 1
  %683 = getelementptr inbounds i8, ptr %23, i32 5
  store i8 0, ptr %683, align 1
  %684 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %685 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 6, ptr %685, align 4, !annotation !8
  %686 = zext i8 %678 to i16
  store i16 %686, ptr %22, align 4
  %687 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %687, align 2
  %688 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %23, ptr %688, align 4
  %689 = call i32 @i2c_transfer(ptr noundef %684, ptr noundef nonnull %22, i32 noundef 1) #10
  %690 = icmp eq i32 %689, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %23) #10
  br i1 %690, label %691, label %1742

691:                                              ; preds = %677
  %692 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %25) #10
  store i8 26, ptr %25, align 1
  %693 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 1, ptr %693, align 1
  %694 = getelementptr inbounds i8, ptr %25, i32 2
  store i8 2, ptr %694, align 1
  %695 = getelementptr inbounds i8, ptr %25, i32 3
  store i8 0, ptr %695, align 1
  %696 = getelementptr inbounds i8, ptr %25, i32 4
  store i8 32, ptr %696, align 1
  %697 = getelementptr inbounds i8, ptr %25, i32 5
  store i8 0, ptr %697, align 1
  %698 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %699 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 6, ptr %699, align 4, !annotation !8
  %700 = zext i8 %692 to i16
  store i16 %700, ptr %24, align 4
  %701 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %701, align 2
  %702 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %25, ptr %702, align 4
  %703 = call i32 @i2c_transfer(ptr noundef %698, ptr noundef nonnull %24, i32 noundef 1) #10
  %704 = icmp eq i32 %703, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %25) #10
  br i1 %704, label %705, label %1742

705:                                              ; preds = %691
  %706 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %27) #10
  store i8 27, ptr %27, align 1
  %707 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 1, ptr %707, align 1
  %708 = getelementptr inbounds i8, ptr %27, i32 2
  store i8 2, ptr %708, align 1
  %709 = getelementptr inbounds i8, ptr %27, i32 3
  store i8 0, ptr %709, align 1
  %710 = getelementptr inbounds i8, ptr %27, i32 4
  store i8 8, ptr %710, align 1
  %711 = getelementptr inbounds i8, ptr %27, i32 5
  store i8 0, ptr %711, align 1
  %712 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %713 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 6, ptr %713, align 4, !annotation !8
  %714 = zext i8 %706 to i16
  store i16 %714, ptr %26, align 4
  %715 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %715, align 2
  %716 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %27, ptr %716, align 4
  %717 = call i32 @i2c_transfer(ptr noundef %712, ptr noundef nonnull %26, i32 noundef 1) #10
  %718 = icmp eq i32 %717, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %27) #10
  br i1 %718, label %719, label %1742

719:                                              ; preds = %705
  %720 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %29) #10
  store i8 28, ptr %29, align 1
  %721 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 1, ptr %721, align 1
  %722 = getelementptr inbounds i8, ptr %29, i32 2
  store i8 2, ptr %722, align 1
  %723 = getelementptr inbounds i8, ptr %29, i32 3
  store i8 0, ptr %723, align 1
  %724 = getelementptr inbounds i8, ptr %29, i32 4
  store i8 2, ptr %724, align 1
  %725 = getelementptr inbounds i8, ptr %29, i32 5
  store i8 0, ptr %725, align 1
  %726 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #10
  %727 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 6, ptr %727, align 4, !annotation !8
  %728 = zext i8 %720 to i16
  store i16 %728, ptr %28, align 4
  %729 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %729, align 2
  %730 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %29, ptr %730, align 4
  %731 = call i32 @i2c_transfer(ptr noundef %726, ptr noundef nonnull %28, i32 noundef 1) #10
  %732 = icmp eq i32 %731, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %29) #10
  br i1 %732, label %733, label %1742

733:                                              ; preds = %719
  %734 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %31) #10
  store i8 98, ptr %31, align 1
  %735 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 -63, ptr %735, align 1
  %736 = getelementptr inbounds i8, ptr %31, i32 2
  store i8 1, ptr %736, align 1
  %737 = getelementptr inbounds i8, ptr %31, i32 3
  store i8 0, ptr %737, align 1
  %738 = getelementptr inbounds i8, ptr %31, i32 4
  store i8 %647, ptr %738, align 1
  %739 = getelementptr inbounds i8, ptr %31, i32 5
  store i8 %648, ptr %739, align 1
  %740 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  %741 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 6, ptr %741, align 4, !annotation !8
  %742 = zext i8 %734 to i16
  store i16 %742, ptr %30, align 4
  %743 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %743, align 2
  %744 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %31, ptr %744, align 4
  %745 = call i32 @i2c_transfer(ptr noundef %740, ptr noundef nonnull %30, i32 noundef 1) #10
  %746 = icmp eq i32 %745, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %31) #10
  br i1 %746, label %747, label %1742

747:                                              ; preds = %733
  %748 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %33) #10
  store i8 42, ptr %33, align 1
  %749 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 -63, ptr %749, align 1
  %750 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 1, ptr %750, align 1
  %751 = getelementptr inbounds i8, ptr %33, i32 3
  store i8 0, ptr %751, align 1
  %752 = getelementptr inbounds i8, ptr %33, i32 4
  store i8 %495, ptr %752, align 1
  %753 = getelementptr inbounds i8, ptr %33, i32 5
  store i8 0, ptr %753, align 1
  %754 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  %755 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 6, ptr %755, align 4, !annotation !8
  %756 = zext i8 %748 to i16
  store i16 %756, ptr %32, align 4
  %757 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %757, align 2
  %758 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %33, ptr %758, align 4
  %759 = call i32 @i2c_transfer(ptr noundef %754, ptr noundef nonnull %32, i32 noundef 1) #10
  %760 = icmp eq i32 %759, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %33) #10
  br i1 %760, label %761, label %1742

761:                                              ; preds = %747
  %762 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %35) #10
  store i8 21, ptr %35, align 1
  %763 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 -63, ptr %763, align 1
  %764 = getelementptr inbounds i8, ptr %35, i32 2
  store i8 1, ptr %764, align 1
  %765 = getelementptr inbounds i8, ptr %35, i32 3
  store i8 0, ptr %765, align 1
  %766 = getelementptr inbounds i8, ptr %35, i32 4
  store i8 %644, ptr %766, align 1
  %767 = getelementptr inbounds i8, ptr %35, i32 5
  store i8 %650, ptr %767, align 1
  %768 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %769 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 6, ptr %769, align 4, !annotation !8
  %770 = zext i8 %762 to i16
  store i16 %770, ptr %34, align 4
  %771 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %771, align 2
  %772 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %35, ptr %772, align 4
  %773 = call i32 @i2c_transfer(ptr noundef %768, ptr noundef nonnull %34, i32 noundef 1) #10
  %774 = icmp eq i32 %773, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %35) #10
  %775 = trunc i16 %657 to i8
  %776 = lshr i16 %653, 8
  %777 = trunc i16 %776 to i8
  br i1 %774, label %1021, label %1742

778:                                              ; preds = %640
  %779 = load i32, ptr %346, align 4
  %780 = icmp eq i32 %779, 0
  %781 = trunc i16 %653 to i8
  %782 = lshr i16 %653, 8
  %783 = trunc i16 %782 to i8
  br i1 %780, label %1038, label %784

784:                                              ; preds = %778
  %785 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %37) #10
  store i8 70, ptr %37, align 1
  %786 = getelementptr inbounds i8, ptr %37, i32 1
  store i8 -63, ptr %786, align 1
  %787 = getelementptr inbounds i8, ptr %37, i32 2
  store i8 1, ptr %787, align 1
  %788 = getelementptr inbounds i8, ptr %37, i32 3
  store i8 0, ptr %788, align 1
  %789 = getelementptr inbounds i8, ptr %37, i32 4
  store i8 0, ptr %789, align 1
  %790 = getelementptr inbounds i8, ptr %37, i32 5
  store i8 0, ptr %790, align 1
  %791 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %792 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 6, ptr %792, align 4, !annotation !8
  %793 = zext i8 %785 to i16
  store i16 %793, ptr %36, align 4
  %794 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %794, align 2
  %795 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %37, ptr %795, align 4
  %796 = call i32 @i2c_transfer(ptr noundef %791, ptr noundef nonnull %36, i32 noundef 1) #10
  %797 = icmp eq i32 %796, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %37) #10
  br i1 %797, label %798, label %1742

798:                                              ; preds = %784
  %799 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %39) #10
  store i8 17, ptr %39, align 1
  %800 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 1, ptr %800, align 1
  %801 = getelementptr inbounds i8, ptr %39, i32 2
  store i8 2, ptr %801, align 1
  %802 = getelementptr inbounds i8, ptr %39, i32 3
  store i8 0, ptr %802, align 1
  %803 = getelementptr inbounds i8, ptr %39, i32 4
  store i8 0, ptr %803, align 1
  %804 = getelementptr inbounds i8, ptr %39, i32 5
  store i8 0, ptr %804, align 1
  %805 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %806 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 6, ptr %806, align 4, !annotation !8
  %807 = zext i8 %799 to i16
  store i16 %807, ptr %38, align 4
  %808 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %808, align 2
  %809 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %39, ptr %809, align 4
  %810 = call i32 @i2c_transfer(ptr noundef %805, ptr noundef nonnull %38, i32 noundef 1) #10
  %811 = icmp eq i32 %810, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %39) #10
  br i1 %811, label %812, label %1742

812:                                              ; preds = %798
  %813 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %41) #10
  store i8 26, ptr %41, align 1
  %814 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 1, ptr %814, align 1
  %815 = getelementptr inbounds i8, ptr %41, i32 2
  store i8 2, ptr %815, align 1
  %816 = getelementptr inbounds i8, ptr %41, i32 3
  store i8 0, ptr %816, align 1
  %817 = getelementptr inbounds i8, ptr %41, i32 4
  store i8 16, ptr %817, align 1
  %818 = getelementptr inbounds i8, ptr %41, i32 5
  store i8 0, ptr %818, align 1
  %819 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  %820 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 6, ptr %820, align 4, !annotation !8
  %821 = zext i8 %813 to i16
  store i16 %821, ptr %40, align 4
  %822 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %822, align 2
  %823 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %41, ptr %823, align 4
  %824 = call i32 @i2c_transfer(ptr noundef %819, ptr noundef nonnull %40, i32 noundef 1) #10
  %825 = icmp eq i32 %824, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %41) #10
  br i1 %825, label %826, label %1742

826:                                              ; preds = %812
  %827 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %43) #10
  store i8 27, ptr %43, align 1
  %828 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 1, ptr %828, align 1
  %829 = getelementptr inbounds i8, ptr %43, i32 2
  store i8 2, ptr %829, align 1
  %830 = getelementptr inbounds i8, ptr %43, i32 3
  store i8 0, ptr %830, align 1
  %831 = getelementptr inbounds i8, ptr %43, i32 4
  store i8 0, ptr %831, align 1
  %832 = getelementptr inbounds i8, ptr %43, i32 5
  store i8 0, ptr %832, align 1
  %833 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  %834 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 6, ptr %834, align 4, !annotation !8
  %835 = zext i8 %827 to i16
  store i16 %835, ptr %42, align 4
  %836 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %836, align 2
  %837 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %43, ptr %837, align 4
  %838 = call i32 @i2c_transfer(ptr noundef %833, ptr noundef nonnull %42, i32 noundef 1) #10
  %839 = icmp eq i32 %838, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %43) #10
  br i1 %839, label %840, label %1742

840:                                              ; preds = %826
  %841 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %45) #10
  store i8 28, ptr %45, align 1
  %842 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 1, ptr %842, align 1
  %843 = getelementptr inbounds i8, ptr %45, i32 2
  store i8 2, ptr %843, align 1
  %844 = getelementptr inbounds i8, ptr %45, i32 3
  store i8 0, ptr %844, align 1
  %845 = getelementptr inbounds i8, ptr %45, i32 4
  store i8 0, ptr %845, align 1
  %846 = getelementptr inbounds i8, ptr %45, i32 5
  store i8 0, ptr %846, align 1
  %847 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #10
  %848 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 6, ptr %848, align 4, !annotation !8
  %849 = zext i8 %841 to i16
  store i16 %849, ptr %44, align 4
  %850 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %850, align 2
  %851 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %45, ptr %851, align 4
  %852 = call i32 @i2c_transfer(ptr noundef %847, ptr noundef nonnull %44, i32 noundef 1) #10
  %853 = icmp eq i32 %852, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %45) #10
  br i1 %853, label %854, label %1742

854:                                              ; preds = %840
  %855 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %47) #10
  store i8 98, ptr %47, align 1
  %856 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 -63, ptr %856, align 1
  %857 = getelementptr inbounds i8, ptr %47, i32 2
  store i8 1, ptr %857, align 1
  %858 = getelementptr inbounds i8, ptr %47, i32 3
  store i8 0, ptr %858, align 1
  %859 = getelementptr inbounds i8, ptr %47, i32 4
  store i8 %651, ptr %859, align 1
  %860 = getelementptr inbounds i8, ptr %47, i32 5
  store i8 %652, ptr %860, align 1
  %861 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  %862 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 6, ptr %862, align 4, !annotation !8
  %863 = zext i8 %855 to i16
  store i16 %863, ptr %46, align 4
  %864 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %864, align 2
  %865 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %47, ptr %865, align 4
  %866 = call i32 @i2c_transfer(ptr noundef %861, ptr noundef nonnull %46, i32 noundef 1) #10
  %867 = icmp eq i32 %866, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %47) #10
  br i1 %867, label %868, label %1742

868:                                              ; preds = %854
  %869 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %49) #10
  store i8 42, ptr %49, align 1
  %870 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 -63, ptr %870, align 1
  %871 = getelementptr inbounds i8, ptr %49, i32 2
  store i8 1, ptr %871, align 1
  %872 = getelementptr inbounds i8, ptr %49, i32 3
  store i8 0, ptr %872, align 1
  %873 = getelementptr inbounds i8, ptr %49, i32 4
  store i8 %493, ptr %873, align 1
  %874 = getelementptr inbounds i8, ptr %49, i32 5
  store i8 0, ptr %874, align 1
  %875 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #10
  %876 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 6, ptr %876, align 4, !annotation !8
  %877 = zext i8 %869 to i16
  store i16 %877, ptr %48, align 4
  %878 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %878, align 2
  %879 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %49, ptr %879, align 4
  %880 = call i32 @i2c_transfer(ptr noundef %875, ptr noundef nonnull %48, i32 noundef 1) #10
  %881 = icmp eq i32 %880, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %49) #10
  br i1 %881, label %882, label %1742

882:                                              ; preds = %868
  %883 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %51) #10
  store i8 21, ptr %51, align 1
  %884 = getelementptr inbounds i8, ptr %51, i32 1
  store i8 -63, ptr %884, align 1
  %885 = getelementptr inbounds i8, ptr %51, i32 2
  store i8 1, ptr %885, align 1
  %886 = getelementptr inbounds i8, ptr %51, i32 3
  store i8 0, ptr %886, align 1
  %887 = getelementptr inbounds i8, ptr %51, i32 4
  store i8 %646, ptr %887, align 1
  %888 = getelementptr inbounds i8, ptr %51, i32 5
  store i8 %650, ptr %888, align 1
  %889 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #10
  %890 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 6, ptr %890, align 4, !annotation !8
  %891 = zext i8 %883 to i16
  store i16 %891, ptr %50, align 4
  %892 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %892, align 2
  %893 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %51, ptr %893, align 4
  %894 = call i32 @i2c_transfer(ptr noundef %889, ptr noundef nonnull %50, i32 noundef 1) #10
  %895 = icmp eq i32 %894, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %51) #10
  %896 = trunc i16 %653 to i8
  %897 = lshr i16 %653, 8
  %898 = trunc i16 %897 to i8
  br i1 %895, label %1021, label %1742

899:                                              ; preds = %640
  %900 = or i16 %653, 16
  %901 = load i32, ptr %346, align 4
  %902 = icmp eq i32 %901, 0
  %903 = trunc i16 %900 to i8
  %904 = lshr i16 %653, 8
  %905 = trunc i16 %904 to i8
  br i1 %902, label %1038, label %906

906:                                              ; preds = %899
  %907 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %53) #10
  store i8 70, ptr %53, align 1
  %908 = getelementptr inbounds i8, ptr %53, i32 1
  store i8 -63, ptr %908, align 1
  %909 = getelementptr inbounds i8, ptr %53, i32 2
  store i8 1, ptr %909, align 1
  %910 = getelementptr inbounds i8, ptr %53, i32 3
  store i8 0, ptr %910, align 1
  %911 = getelementptr inbounds i8, ptr %53, i32 4
  store i8 1, ptr %911, align 1
  %912 = getelementptr inbounds i8, ptr %53, i32 5
  store i8 0, ptr %912, align 1
  %913 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #10
  %914 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 6, ptr %914, align 4, !annotation !8
  %915 = zext i8 %907 to i16
  store i16 %915, ptr %52, align 4
  %916 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %916, align 2
  %917 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %53, ptr %917, align 4
  %918 = call i32 @i2c_transfer(ptr noundef %913, ptr noundef nonnull %52, i32 noundef 1) #10
  %919 = icmp eq i32 %918, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %53) #10
  br i1 %919, label %920, label %1742

920:                                              ; preds = %906
  %921 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %55) #10
  store i8 17, ptr %55, align 1
  %922 = getelementptr inbounds i8, ptr %55, i32 1
  store i8 1, ptr %922, align 1
  %923 = getelementptr inbounds i8, ptr %55, i32 2
  store i8 2, ptr %923, align 1
  %924 = getelementptr inbounds i8, ptr %55, i32 3
  store i8 0, ptr %924, align 1
  %925 = getelementptr inbounds i8, ptr %55, i32 4
  store i8 1, ptr %925, align 1
  %926 = getelementptr inbounds i8, ptr %55, i32 5
  store i8 0, ptr %926, align 1
  %927 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #10
  %928 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 6, ptr %928, align 4, !annotation !8
  %929 = zext i8 %921 to i16
  store i16 %929, ptr %54, align 4
  %930 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %930, align 2
  %931 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %55, ptr %931, align 4
  %932 = call i32 @i2c_transfer(ptr noundef %927, ptr noundef nonnull %54, i32 noundef 1) #10
  %933 = icmp eq i32 %932, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %55) #10
  br i1 %933, label %934, label %1742

934:                                              ; preds = %920
  %935 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %57) #10
  store i8 26, ptr %57, align 1
  %936 = getelementptr inbounds i8, ptr %57, i32 1
  store i8 1, ptr %936, align 1
  %937 = getelementptr inbounds i8, ptr %57, i32 2
  store i8 2, ptr %937, align 1
  %938 = getelementptr inbounds i8, ptr %57, i32 3
  store i8 0, ptr %938, align 1
  %939 = getelementptr inbounds i8, ptr %57, i32 4
  store i8 16, ptr %939, align 1
  %940 = getelementptr inbounds i8, ptr %57, i32 5
  store i8 0, ptr %940, align 1
  %941 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #10
  %942 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 6, ptr %942, align 4, !annotation !8
  %943 = zext i8 %935 to i16
  store i16 %943, ptr %56, align 4
  %944 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %944, align 2
  %945 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %57, ptr %945, align 4
  %946 = call i32 @i2c_transfer(ptr noundef %941, ptr noundef nonnull %56, i32 noundef 1) #10
  %947 = icmp eq i32 %946, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %57) #10
  br i1 %947, label %948, label %1742

948:                                              ; preds = %934
  %949 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %59) #10
  store i8 27, ptr %59, align 1
  %950 = getelementptr inbounds i8, ptr %59, i32 1
  store i8 1, ptr %950, align 1
  %951 = getelementptr inbounds i8, ptr %59, i32 2
  store i8 2, ptr %951, align 1
  %952 = getelementptr inbounds i8, ptr %59, i32 3
  store i8 0, ptr %952, align 1
  %953 = getelementptr inbounds i8, ptr %59, i32 4
  store i8 4, ptr %953, align 1
  %954 = getelementptr inbounds i8, ptr %59, i32 5
  store i8 0, ptr %954, align 1
  %955 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #10
  %956 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 6, ptr %956, align 4, !annotation !8
  %957 = zext i8 %949 to i16
  store i16 %957, ptr %58, align 4
  %958 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %958, align 2
  %959 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %59, ptr %959, align 4
  %960 = call i32 @i2c_transfer(ptr noundef %955, ptr noundef nonnull %58, i32 noundef 1) #10
  %961 = icmp eq i32 %960, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %59) #10
  br i1 %961, label %962, label %1742

962:                                              ; preds = %948
  %963 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %61) #10
  store i8 28, ptr %61, align 1
  %964 = getelementptr inbounds i8, ptr %61, i32 1
  store i8 1, ptr %964, align 1
  %965 = getelementptr inbounds i8, ptr %61, i32 2
  store i8 2, ptr %965, align 1
  %966 = getelementptr inbounds i8, ptr %61, i32 3
  store i8 0, ptr %966, align 1
  %967 = getelementptr inbounds i8, ptr %61, i32 4
  store i8 0, ptr %967, align 1
  %968 = getelementptr inbounds i8, ptr %61, i32 5
  store i8 0, ptr %968, align 1
  %969 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #10
  %970 = getelementptr inbounds i8, ptr %60, i32 4
  store i32 6, ptr %970, align 4, !annotation !8
  %971 = zext i8 %963 to i16
  store i16 %971, ptr %60, align 4
  %972 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  store i16 0, ptr %972, align 2
  %973 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  store ptr %61, ptr %973, align 4
  %974 = call i32 @i2c_transfer(ptr noundef %969, ptr noundef nonnull %60, i32 noundef 1) #10
  %975 = icmp eq i32 %974, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %61) #10
  br i1 %975, label %976, label %1742

976:                                              ; preds = %962
  %977 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %63) #10
  store i8 98, ptr %63, align 1
  %978 = getelementptr inbounds i8, ptr %63, i32 1
  store i8 -63, ptr %978, align 1
  %979 = getelementptr inbounds i8, ptr %63, i32 2
  store i8 1, ptr %979, align 1
  %980 = getelementptr inbounds i8, ptr %63, i32 3
  store i8 0, ptr %980, align 1
  %981 = getelementptr inbounds i8, ptr %63, i32 4
  store i8 %649, ptr %981, align 1
  %982 = getelementptr inbounds i8, ptr %63, i32 5
  store i8 %650, ptr %982, align 1
  %983 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %62) #10
  %984 = getelementptr inbounds i8, ptr %62, i32 4
  store i32 6, ptr %984, align 4, !annotation !8
  %985 = zext i8 %977 to i16
  store i16 %985, ptr %62, align 4
  %986 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 1
  store i16 0, ptr %986, align 2
  %987 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 3
  store ptr %63, ptr %987, align 4
  %988 = call i32 @i2c_transfer(ptr noundef %983, ptr noundef nonnull %62, i32 noundef 1) #10
  %989 = icmp eq i32 %988, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %63) #10
  br i1 %989, label %990, label %1742

990:                                              ; preds = %976
  %991 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %65) #10
  store i8 42, ptr %65, align 1
  %992 = getelementptr inbounds i8, ptr %65, i32 1
  store i8 -63, ptr %992, align 1
  %993 = getelementptr inbounds i8, ptr %65, i32 2
  store i8 1, ptr %993, align 1
  %994 = getelementptr inbounds i8, ptr %65, i32 3
  store i8 0, ptr %994, align 1
  %995 = getelementptr inbounds i8, ptr %65, i32 4
  store i8 %494, ptr %995, align 1
  %996 = getelementptr inbounds i8, ptr %65, i32 5
  store i8 0, ptr %996, align 1
  %997 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %64) #10
  %998 = getelementptr inbounds i8, ptr %64, i32 4
  store i32 6, ptr %998, align 4, !annotation !8
  %999 = zext i8 %991 to i16
  store i16 %999, ptr %64, align 4
  %1000 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 1
  store i16 0, ptr %1000, align 2
  %1001 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 3
  store ptr %65, ptr %1001, align 4
  %1002 = call i32 @i2c_transfer(ptr noundef %997, ptr noundef nonnull %64, i32 noundef 1) #10
  %1003 = icmp eq i32 %1002, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %64) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %65) #10
  br i1 %1003, label %1004, label %1742

1004:                                             ; preds = %990
  %1005 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %67) #10
  store i8 21, ptr %67, align 1
  %1006 = getelementptr inbounds i8, ptr %67, i32 1
  store i8 -63, ptr %1006, align 1
  %1007 = getelementptr inbounds i8, ptr %67, i32 2
  store i8 1, ptr %1007, align 1
  %1008 = getelementptr inbounds i8, ptr %67, i32 3
  store i8 0, ptr %1008, align 1
  %1009 = getelementptr inbounds i8, ptr %67, i32 4
  store i8 %645, ptr %1009, align 1
  %1010 = getelementptr inbounds i8, ptr %67, i32 5
  store i8 %650, ptr %1010, align 1
  %1011 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %66) #10
  %1012 = getelementptr inbounds i8, ptr %66, i32 4
  store i32 6, ptr %1012, align 4, !annotation !8
  %1013 = zext i8 %1005 to i16
  store i16 %1013, ptr %66, align 4
  %1014 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 1
  store i16 0, ptr %1014, align 2
  %1015 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 3
  store ptr %67, ptr %1015, align 4
  %1016 = call i32 @i2c_transfer(ptr noundef %1011, ptr noundef nonnull %66, i32 noundef 1) #10
  %1017 = icmp eq i32 %1016, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %66) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %67) #10
  %1018 = trunc i16 %900 to i8
  %1019 = lshr i16 %653, 8
  %1020 = trunc i16 %1019 to i8
  br i1 %1017, label %1021, label %1742

1021:                                             ; preds = %1004, %882, %761
  %1022 = phi i8 [ %641, %761 ], [ %643, %882 ], [ %642, %1004 ]
  %1023 = phi i8 [ %775, %761 ], [ %896, %882 ], [ %1018, %1004 ]
  %1024 = phi i8 [ %777, %761 ], [ %898, %882 ], [ %1020, %1004 ]
  %1025 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %69) #10
  store i8 22, ptr %69, align 1
  %1026 = getelementptr inbounds i8, ptr %69, i32 1
  store i8 -63, ptr %1026, align 1
  %1027 = getelementptr inbounds i8, ptr %69, i32 2
  store i8 1, ptr %1027, align 1
  %1028 = getelementptr inbounds i8, ptr %69, i32 3
  store i8 0, ptr %1028, align 1
  %1029 = getelementptr inbounds i8, ptr %69, i32 4
  store i8 %1022, ptr %1029, align 1
  %1030 = getelementptr inbounds i8, ptr %69, i32 5
  store i8 0, ptr %1030, align 1
  %1031 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %68) #10
  %1032 = getelementptr inbounds i8, ptr %68, i32 4
  store i32 6, ptr %1032, align 4, !annotation !8
  %1033 = zext i8 %1025 to i16
  store i16 %1033, ptr %68, align 4
  %1034 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 1
  store i16 0, ptr %1034, align 2
  %1035 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  store ptr %69, ptr %1035, align 4
  %1036 = call i32 @i2c_transfer(ptr noundef %1031, ptr noundef nonnull %68, i32 noundef 1) #10
  %1037 = icmp eq i32 %1036, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %68) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %69) #10
  br i1 %1037, label %1038, label %1742

1038:                                             ; preds = %1021, %899, %778, %656
  %1039 = phi i8 [ %1023, %1021 ], [ %781, %778 ], [ %903, %899 ], [ %660, %656 ]
  %1040 = phi i8 [ %1024, %1021 ], [ %783, %778 ], [ %905, %899 ], [ %662, %656 ]
  %1041 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %149) #10
  store i8 19, ptr %149, align 1
  %1042 = getelementptr inbounds i8, ptr %149, i32 1
  store i8 1, ptr %1042, align 1
  %1043 = getelementptr inbounds i8, ptr %149, i32 2
  store i8 2, ptr %1043, align 1
  %1044 = getelementptr inbounds i8, ptr %149, i32 3
  store i8 0, ptr %1044, align 1
  %1045 = getelementptr inbounds i8, ptr %149, i32 4
  store i8 0, ptr %1045, align 1
  %1046 = getelementptr inbounds i8, ptr %149, i32 5
  store i8 0, ptr %1046, align 1
  %1047 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %148) #10
  %1048 = getelementptr inbounds i8, ptr %148, i32 4
  store i32 6, ptr %1048, align 4, !annotation !8
  %1049 = zext i8 %1041 to i16
  store i16 %1049, ptr %148, align 4
  %1050 = getelementptr inbounds %struct.i2c_msg, ptr %148, i32 0, i32 1
  store i16 0, ptr %1050, align 2
  %1051 = getelementptr inbounds %struct.i2c_msg, ptr %148, i32 0, i32 3
  store ptr %149, ptr %1051, align 4
  %1052 = call i32 @i2c_transfer(ptr noundef %1047, ptr noundef nonnull %148, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %148) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %149) #10
  %1053 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 2, i32 11
  %1054 = load i32, ptr %1053, align 4
  switch i32 %1054, label %1058 [
    i32 1, label %1055
    i32 7, label %1070
    i32 3, label %1062
    i32 5, label %1066
  ]

1055:                                             ; preds = %1038
  %1056 = load i32, ptr %346, align 4
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1089, label %1074

1058:                                             ; preds = %1038
  %1059 = load i32, ptr %346, align 4
  %1060 = icmp eq i32 %1059, 0
  %1061 = or i8 %1040, 2
  br i1 %1060, label %1089, label %1074

1062:                                             ; preds = %1038
  %1063 = load i32, ptr %346, align 4
  %1064 = icmp eq i32 %1063, 0
  %1065 = or i8 %1040, 4
  br i1 %1064, label %1089, label %1074

1066:                                             ; preds = %1038
  %1067 = load i32, ptr %346, align 4
  %1068 = icmp eq i32 %1067, 0
  %1069 = or i8 %1040, 6
  br i1 %1068, label %1089, label %1074

1070:                                             ; preds = %1038
  %1071 = load i32, ptr %346, align 4
  %1072 = icmp eq i32 %1071, 0
  %1073 = or i8 %1040, 8
  br i1 %1072, label %1089, label %1074

1074:                                             ; preds = %1070, %1066, %1062, %1058, %1055
  %1075 = phi i8 [ 0, %1055 ], [ 1, %1058 ], [ 2, %1062 ], [ 3, %1066 ], [ 4, %1070 ]
  %1076 = phi i8 [ %1040, %1055 ], [ %1061, %1058 ], [ %1065, %1062 ], [ %1069, %1066 ], [ %1073, %1070 ]
  %1077 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %71) #10
  store i8 17, ptr %71, align 1
  %1078 = getelementptr inbounds i8, ptr %71, i32 1
  store i8 9, ptr %1078, align 1
  %1079 = getelementptr inbounds i8, ptr %71, i32 2
  store i8 2, ptr %1079, align 1
  %1080 = getelementptr inbounds i8, ptr %71, i32 3
  store i8 0, ptr %1080, align 1
  %1081 = getelementptr inbounds i8, ptr %71, i32 4
  store i8 %1075, ptr %1081, align 1
  %1082 = getelementptr inbounds i8, ptr %71, i32 5
  store i8 0, ptr %1082, align 1
  %1083 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %70) #10
  %1084 = getelementptr inbounds i8, ptr %70, i32 4
  store i32 6, ptr %1084, align 4, !annotation !8
  %1085 = zext i8 %1077 to i16
  store i16 %1085, ptr %70, align 4
  %1086 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %1086, align 2
  %1087 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %71, ptr %1087, align 4
  %1088 = call i32 @i2c_transfer(ptr noundef %1083, ptr noundef nonnull %70, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %70) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %71) #10
  br label %1089

1089:                                             ; preds = %1074, %1070, %1066, %1062, %1058, %1055
  %1090 = phi i32 [ %1052, %1058 ], [ %1052, %1070 ], [ %1052, %1066 ], [ %1052, %1062 ], [ %1052, %1055 ], [ %1088, %1074 ]
  %1091 = phi i8 [ %1061, %1058 ], [ %1073, %1070 ], [ %1069, %1066 ], [ %1065, %1062 ], [ %1040, %1055 ], [ %1076, %1074 ]
  %1092 = icmp eq i32 %1090, 1
  br i1 %1092, label %1093, label %1742

1093:                                             ; preds = %1089
  %1094 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 2, i32 7
  %1095 = load i32, ptr %1094, align 4
  switch i32 %1095, label %1742 [
    i32 0, label %1096
    i32 8000000, label %1099
    i32 7000000, label %1097
    i32 6000000, label %1098
  ]

1096:                                             ; preds = %1093
  store i32 8000000, ptr %1094, align 4
  br label %1099

1097:                                             ; preds = %1093
  br label %1099

1098:                                             ; preds = %1093
  br label %1099

1099:                                             ; preds = %1098, %1097, %1096, %1093
  %1100 = phi i8 [ 71, %1098 ], [ 59, %1097 ], [ 50, %1093 ], [ 50, %1096 ]
  %1101 = phi i32 [ 6857142, %1098 ], [ 8000000, %1097 ], [ 9142857, %1093 ], [ 9142857, %1096 ]
  %1102 = phi i8 [ 7, %1098 ], [ 7, %1097 ], [ 0, %1093 ], [ 0, %1096 ]
  %1103 = phi i8 [ 15, %1098 ], [ 72, %1097 ], [ 0, %1093 ], [ 0, %1096 ]
  %1104 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %73) #10
  store i8 63, ptr %73, align 1
  %1105 = getelementptr inbounds i8, ptr %73, i32 1
  store i8 -62, ptr %1105, align 1
  %1106 = getelementptr inbounds i8, ptr %73, i32 2
  store i8 0, ptr %1106, align 1
  %1107 = getelementptr inbounds i8, ptr %73, i32 3
  store i8 0, ptr %1107, align 1
  %1108 = getelementptr inbounds i8, ptr %73, i32 4
  store i8 %1100, ptr %1108, align 1
  %1109 = getelementptr inbounds i8, ptr %73, i32 5
  store i8 0, ptr %1109, align 1
  %1110 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %72) #10
  %1111 = getelementptr inbounds i8, ptr %72, i32 4
  store i32 6, ptr %1111, align 4, !annotation !8
  %1112 = zext i8 %1104 to i16
  store i16 %1112, ptr %72, align 4
  %1113 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 1
  store i16 0, ptr %1113, align 2
  %1114 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 3
  store ptr %73, ptr %1114, align 4
  %1115 = call i32 @i2c_transfer(ptr noundef %1110, ptr noundef nonnull %72, i32 noundef 1) #10
  %1116 = icmp eq i32 %1115, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %72) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %73) #10
  br i1 %1116, label %1117, label %1742

1117:                                             ; preds = %1099
  %1118 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %75) #10
  store i8 -20, ptr %75, align 1
  %1119 = getelementptr inbounds i8, ptr %75, i32 1
  store i8 -126, ptr %1119, align 1
  %1120 = getelementptr inbounds i8, ptr %75, i32 2
  store i8 0, ptr %1120, align 1
  %1121 = getelementptr inbounds i8, ptr %75, i32 3
  store i8 0, ptr %1121, align 1
  %1122 = getelementptr inbounds i8, ptr %75, i32 4
  store i8 %1102, ptr %1122, align 1
  %1123 = getelementptr inbounds i8, ptr %75, i32 5
  store i8 %1103, ptr %1123, align 1
  %1124 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %74) #10
  %1125 = getelementptr inbounds i8, ptr %74, i32 4
  store i32 6, ptr %1125, align 4, !annotation !8
  %1126 = zext i8 %1118 to i16
  store i16 %1126, ptr %74, align 4
  %1127 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  store i16 0, ptr %1127, align 2
  %1128 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 3
  store ptr %75, ptr %1128, align 4
  %1129 = call i32 @i2c_transfer(ptr noundef %1124, ptr noundef nonnull %74, i32 noundef 1) #10
  %1130 = icmp eq i32 %1129, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %74) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %75) #10
  br i1 %1130, label %1131, label %1742

1131:                                             ; preds = %1117
  %1132 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %77) #10
  store i8 80, ptr %77, align 4
  %1133 = getelementptr inbounds i8, ptr %77, i32 1
  store i8 -126, ptr %1133, align 1
  %1134 = getelementptr inbounds i8, ptr %77, i32 2
  store i8 0, ptr %1134, align 2
  %1135 = getelementptr inbounds i8, ptr %77, i32 3
  store i8 0, ptr %1135, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %78) #10
  store i16 0, ptr %78, align 2, !annotation !8
  %1136 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %76) #10
  %1137 = getelementptr inbounds i8, ptr %76, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1137, i8 0, i32 16, i1 false) #10, !annotation !8
  %1138 = zext i8 %1132 to i16
  store i16 %1138, ptr %76, align 4
  %1139 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 1
  store i16 0, ptr %1139, align 2
  store i16 4, ptr %1137, align 4
  %1140 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 3
  store ptr %77, ptr %1140, align 4
  %1141 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1
  store i16 %1138, ptr %1141, align 4
  %1142 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 1
  store i16 1, ptr %1142, align 2
  %1143 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 2
  store i16 2, ptr %1143, align 4
  %1144 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 3
  store ptr %78, ptr %1144, align 4
  %1145 = call i32 @i2c_transfer(ptr noundef %1136, ptr noundef nonnull %76, i32 noundef 2) #10
  %1146 = icmp eq i32 %1145, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %76) #10
  br i1 %1146, label %1148, label %1147

1147:                                             ; preds = %1131
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %78) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %77) #10
  br label %1742

1148:                                             ; preds = %1131
  %1149 = load i8, ptr %78, align 2
  %1150 = getelementptr inbounds [2 x i8], ptr %78, i32 0, i32 1
  %1151 = load i8, ptr %1150, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %78) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %77) #10
  %1152 = load i32, ptr %453, align 4
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1154, label %1159

1154:                                             ; preds = %1148
  %1155 = load i32, ptr %496, align 4
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1157, label %1159

1157:                                             ; preds = %1154
  %1158 = or i8 %1149, 32
  br label %1161

1159:                                             ; preds = %1154, %1148
  %1160 = and i8 %1149, -33
  br label %1161

1161:                                             ; preds = %1159, %1157
  %1162 = phi i8 [ %1160, %1159 ], [ %1158, %1157 ]
  %1163 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %80) #10
  store i8 80, ptr %80, align 1
  %1164 = getelementptr inbounds i8, ptr %80, i32 1
  store i8 -126, ptr %1164, align 1
  %1165 = getelementptr inbounds i8, ptr %80, i32 2
  store i8 0, ptr %1165, align 1
  %1166 = getelementptr inbounds i8, ptr %80, i32 3
  store i8 0, ptr %1166, align 1
  %1167 = getelementptr inbounds i8, ptr %80, i32 4
  store i8 %1162, ptr %1167, align 1
  %1168 = getelementptr inbounds i8, ptr %80, i32 5
  store i8 %1151, ptr %1168, align 1
  %1169 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %79) #10
  %1170 = getelementptr inbounds i8, ptr %79, i32 4
  store i32 6, ptr %1170, align 4, !annotation !8
  %1171 = zext i8 %1163 to i16
  store i16 %1171, ptr %79, align 4
  %1172 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  store i16 0, ptr %1172, align 2
  %1173 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  store ptr %80, ptr %1173, align 4
  %1174 = call i32 @i2c_transfer(ptr noundef %1169, ptr noundef nonnull %79, i32 noundef 1) #10
  %1175 = icmp eq i32 %1174, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %79) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %80) #10
  br i1 %1175, label %1176, label %1742

1176:                                             ; preds = %1161
  %1177 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %90) #10
  store i8 76, ptr %90, align 4
  %1178 = getelementptr inbounds i8, ptr %90, i32 1
  store i8 -126, ptr %1178, align 1
  %1179 = getelementptr inbounds i8, ptr %90, i32 2
  store i8 0, ptr %1179, align 2
  %1180 = getelementptr inbounds i8, ptr %90, i32 3
  store i8 0, ptr %1180, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %91) #10
  store i16 0, ptr %91, align 2, !annotation !8
  %1181 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %89) #10
  %1182 = getelementptr inbounds i8, ptr %89, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1182, i8 0, i32 16, i1 false) #10, !annotation !8
  %1183 = zext i8 %1177 to i16
  store i16 %1183, ptr %89, align 4
  %1184 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 1
  store i16 0, ptr %1184, align 2
  store i16 4, ptr %1182, align 4
  %1185 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 3
  store ptr %90, ptr %1185, align 4
  %1186 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 1
  store i16 %1183, ptr %1186, align 4
  %1187 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 1, i32 1
  store i16 1, ptr %1187, align 2
  %1188 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 1, i32 2
  store i16 2, ptr %1188, align 4
  %1189 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 1, i32 3
  store ptr %91, ptr %1189, align 4
  %1190 = call i32 @i2c_transfer(ptr noundef %1181, ptr noundef nonnull %89, i32 noundef 2) #10
  %1191 = icmp eq i32 %1190, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %89) #10
  br i1 %1191, label %1193, label %1192

1192:                                             ; preds = %1176
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %91) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %90) #10
  br label %1742

1193:                                             ; preds = %1176
  %1194 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 28
  %1195 = load i8, ptr %91, align 2
  %1196 = getelementptr inbounds [2 x i8], ptr %91, i32 0, i32 1
  %1197 = load i8, ptr %1196, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %91) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %90) #10
  %1198 = load i32, ptr %1194, align 4
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1202, label %1200

1200:                                             ; preds = %1193
  %1201 = or i8 %1195, 2
  br label %1222

1202:                                             ; preds = %1193
  %1203 = and i8 %1195, -3
  %1204 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 28, i32 1
  %1205 = load i16, ptr %1204, align 4
  %1206 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %88) #10
  store i8 64, ptr %88, align 1
  %1207 = getelementptr inbounds i8, ptr %88, i32 1
  store i8 65, ptr %1207, align 1
  %1208 = getelementptr inbounds i8, ptr %88, i32 2
  store i8 1, ptr %1208, align 1
  %1209 = getelementptr inbounds i8, ptr %88, i32 3
  store i8 0, ptr %1209, align 1
  %1210 = getelementptr inbounds i8, ptr %88, i32 4
  %1211 = trunc i16 %1205 to i8
  store i8 %1211, ptr %1210, align 1
  %1212 = getelementptr inbounds i8, ptr %88, i32 5
  %1213 = lshr i16 %1205, 8
  %1214 = trunc i16 %1213 to i8
  store i8 %1214, ptr %1212, align 1
  %1215 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %87) #10
  %1216 = getelementptr inbounds i8, ptr %87, i32 4
  store i32 6, ptr %1216, align 4, !annotation !8
  %1217 = zext i8 %1206 to i16
  store i16 %1217, ptr %87, align 4
  %1218 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 1
  store i16 0, ptr %1218, align 2
  %1219 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 3
  store ptr %88, ptr %1219, align 4
  %1220 = call i32 @i2c_transfer(ptr noundef %1215, ptr noundef nonnull %87, i32 noundef 1) #10
  %1221 = icmp eq i32 %1220, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %87) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %88) #10
  br i1 %1221, label %1222, label %1742

1222:                                             ; preds = %1202, %1200
  %1223 = phi i8 [ %1203, %1202 ], [ %1201, %1200 ]
  %1224 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %86) #10
  store i8 76, ptr %86, align 1
  %1225 = getelementptr inbounds i8, ptr %86, i32 1
  store i8 -126, ptr %1225, align 1
  %1226 = getelementptr inbounds i8, ptr %86, i32 2
  store i8 0, ptr %1226, align 1
  %1227 = getelementptr inbounds i8, ptr %86, i32 3
  store i8 0, ptr %1227, align 1
  %1228 = getelementptr inbounds i8, ptr %86, i32 4
  store i8 %1223, ptr %1228, align 1
  %1229 = getelementptr inbounds i8, ptr %86, i32 5
  store i8 %1197, ptr %1229, align 1
  %1230 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %85) #10
  %1231 = getelementptr inbounds i8, ptr %85, i32 4
  store i32 6, ptr %1231, align 4, !annotation !8
  %1232 = zext i8 %1224 to i16
  store i16 %1232, ptr %85, align 4
  %1233 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  store i16 0, ptr %1233, align 2
  %1234 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  store ptr %86, ptr %1234, align 4
  %1235 = call i32 @i2c_transfer(ptr noundef %1230, ptr noundef nonnull %85, i32 noundef 1) #10
  %1236 = icmp eq i32 %1235, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %86) #10
  br i1 %1236, label %1237, label %1742

1237:                                             ; preds = %1222
  %1238 = load i32, ptr %346, align 4
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1240, label %1278

1240:                                             ; preds = %1237
  %1241 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 28, i32 2
  %1242 = load i16, ptr %1241, align 2
  %1243 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %84) #10
  store i8 93, ptr %84, align 1
  %1244 = getelementptr inbounds i8, ptr %84, i32 1
  store i8 -126, ptr %1244, align 1
  %1245 = getelementptr inbounds i8, ptr %84, i32 2
  store i8 0, ptr %1245, align 1
  %1246 = getelementptr inbounds i8, ptr %84, i32 3
  store i8 0, ptr %1246, align 1
  %1247 = getelementptr inbounds i8, ptr %84, i32 4
  %1248 = trunc i16 %1242 to i8
  store i8 %1248, ptr %1247, align 1
  %1249 = getelementptr inbounds i8, ptr %84, i32 5
  %1250 = lshr i16 %1242, 8
  %1251 = trunc i16 %1250 to i8
  store i8 %1251, ptr %1249, align 1
  %1252 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %83) #10
  %1253 = getelementptr inbounds i8, ptr %83, i32 4
  store i32 6, ptr %1253, align 4, !annotation !8
  %1254 = zext i8 %1243 to i16
  store i16 %1254, ptr %83, align 4
  %1255 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  store i16 0, ptr %1255, align 2
  %1256 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  store ptr %84, ptr %1256, align 4
  %1257 = call i32 @i2c_transfer(ptr noundef %1252, ptr noundef nonnull %83, i32 noundef 1) #10
  %1258 = icmp eq i32 %1257, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %83) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %84) #10
  br i1 %1258, label %1259, label %1742

1259:                                             ; preds = %1240
  %1260 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 28, i32 3
  %1261 = load i16, ptr %1260, align 4
  %1262 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %82) #10
  store i8 94, ptr %82, align 1
  %1263 = getelementptr inbounds i8, ptr %82, i32 1
  store i8 -126, ptr %1263, align 1
  %1264 = getelementptr inbounds i8, ptr %82, i32 2
  store i8 0, ptr %1264, align 1
  %1265 = getelementptr inbounds i8, ptr %82, i32 3
  store i8 0, ptr %1265, align 1
  %1266 = getelementptr inbounds i8, ptr %82, i32 4
  %1267 = trunc i16 %1261 to i8
  store i8 %1267, ptr %1266, align 1
  %1268 = getelementptr inbounds i8, ptr %82, i32 5
  %1269 = lshr i16 %1261, 8
  %1270 = trunc i16 %1269 to i8
  store i8 %1270, ptr %1268, align 1
  %1271 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %81) #10
  %1272 = getelementptr inbounds i8, ptr %81, i32 4
  store i32 6, ptr %1272, align 4, !annotation !8
  %1273 = zext i8 %1262 to i16
  store i16 %1273, ptr %81, align 4
  %1274 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %1274, align 2
  %1275 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %82, ptr %1275, align 4
  %1276 = call i32 @i2c_transfer(ptr noundef %1271, ptr noundef nonnull %81, i32 noundef 1) #10
  %1277 = icmp eq i32 %1276, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %81) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %82) #10
  br i1 %1277, label %1278, label %1742

1278:                                             ; preds = %1259, %1237
  %1279 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 18
  %1280 = load i32, ptr %1279, align 4
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1282, label %1297

1282:                                             ; preds = %1278
  %1283 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %93) #10
  store i8 -24, ptr %93, align 1
  %1284 = getelementptr inbounds i8, ptr %93, i32 1
  store i8 -126, ptr %1284, align 1
  %1285 = getelementptr inbounds i8, ptr %93, i32 2
  store i8 0, ptr %1285, align 1
  %1286 = getelementptr inbounds i8, ptr %93, i32 3
  store i8 0, ptr %1286, align 1
  %1287 = getelementptr inbounds i8, ptr %93, i32 4
  store i8 16, ptr %1287, align 1
  %1288 = getelementptr inbounds i8, ptr %93, i32 5
  store i8 0, ptr %1288, align 1
  %1289 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %92) #10
  %1290 = getelementptr inbounds i8, ptr %92, i32 4
  store i32 6, ptr %1290, align 4, !annotation !8
  %1291 = zext i8 %1283 to i16
  store i16 %1291, ptr %92, align 4
  %1292 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 1
  store i16 0, ptr %1292, align 2
  %1293 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 3
  store ptr %93, ptr %1293, align 4
  %1294 = call i32 @i2c_transfer(ptr noundef %1289, ptr noundef nonnull %92, i32 noundef 1) #10
  %1295 = icmp eq i32 %1294, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %92) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %93) #10
  br i1 %1295, label %1296, label %1742

1296:                                             ; preds = %1282
  store i32 1, ptr %1279, align 4
  br label %1297

1297:                                             ; preds = %1296, %1278
  %1298 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 20
  %1299 = load i16, ptr %1298, align 4
  %1300 = zext i16 %1299 to i32
  %1301 = mul nuw nsw i32 %1300, 1000
  %1302 = zext i32 %1301 to i64
  %1303 = shl nuw nsw i64 %1302, 21
  %1304 = icmp ult i32 %1301, 2048
  br i1 %1304, label %1305, label %1308, !prof !9

1305:                                             ; preds = %1297
  %1306 = trunc i64 %1303 to i32
  %1307 = udiv i32 %1306, %1101
  br label %1312

1308:                                             ; preds = %1297
  %1309 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1101, i64 %1303) #12, !srcloc !10
  %1310 = extractvalue { i64, i64 } %1309, 1
  %1311 = trunc i64 %1310 to i32
  br label %1312

1312:                                             ; preds = %1308, %1305
  %1313 = phi i32 [ %1307, %1305 ], [ %1311, %1308 ]
  %1314 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %95) #10
  store i8 16, ptr %95, align 1
  %1315 = getelementptr inbounds i8, ptr %95, i32 1
  store i8 -59, ptr %1315, align 1
  %1316 = getelementptr inbounds i8, ptr %95, i32 2
  store i8 0, ptr %1316, align 1
  %1317 = getelementptr inbounds i8, ptr %95, i32 3
  store i8 0, ptr %1317, align 1
  %1318 = getelementptr inbounds i8, ptr %95, i32 4
  %1319 = trunc i32 %1313 to i8
  store i8 %1319, ptr %1318, align 1
  %1320 = getelementptr inbounds i8, ptr %95, i32 5
  %1321 = lshr i32 %1313, 8
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, ptr %1320, align 1
  %1323 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %94) #10
  %1324 = getelementptr inbounds i8, ptr %94, i32 4
  store i32 6, ptr %1324, align 4, !annotation !8
  %1325 = zext i8 %1314 to i16
  store i16 %1325, ptr %94, align 4
  %1326 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 1
  store i16 0, ptr %1326, align 2
  %1327 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 3
  store ptr %95, ptr %1327, align 4
  %1328 = call i32 @i2c_transfer(ptr noundef %1323, ptr noundef nonnull %94, i32 noundef 1) #10
  %1329 = icmp eq i32 %1328, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %94) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %95) #10
  br i1 %1329, label %1330, label %1742

1330:                                             ; preds = %1312
  %1331 = add i32 %1313, 8388608
  %1332 = lshr i32 %1331, 16
  %1333 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %97) #10
  store i8 17, ptr %97, align 1
  %1334 = getelementptr inbounds i8, ptr %97, i32 1
  store i8 -59, ptr %1334, align 1
  %1335 = getelementptr inbounds i8, ptr %97, i32 2
  store i8 0, ptr %1335, align 1
  %1336 = getelementptr inbounds i8, ptr %97, i32 3
  store i8 0, ptr %1336, align 1
  %1337 = getelementptr inbounds i8, ptr %97, i32 4
  %1338 = trunc i32 %1332 to i8
  store i8 %1338, ptr %1337, align 1
  %1339 = getelementptr inbounds i8, ptr %97, i32 5
  store i8 0, ptr %1339, align 1
  %1340 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %96) #10
  %1341 = getelementptr inbounds i8, ptr %96, i32 4
  store i32 6, ptr %1341, align 4, !annotation !8
  %1342 = zext i8 %1333 to i16
  store i16 %1342, ptr %96, align 4
  %1343 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 1
  store i16 0, ptr %1343, align 2
  %1344 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 3
  store ptr %97, ptr %1344, align 4
  %1345 = call i32 @i2c_transfer(ptr noundef %1340, ptr noundef nonnull %96, i32 noundef 1) #10
  %1346 = icmp eq i32 %1345, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %96) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %97) #10
  br i1 %1346, label %1347, label %1742

1347:                                             ; preds = %1330
  %1348 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 59
  %1349 = load i32, ptr %1348, align 4
  %1350 = icmp eq i32 %1349, %452
  %1351 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 16
  %1352 = load i16, ptr %1351, align 2
  %1353 = load i16, ptr %1298, align 4
  %1354 = zext i16 %1353 to i32
  %1355 = zext i16 %1352 to i64
  %1356 = shl nuw nsw i64 %1355, 28
  %1357 = icmp ult i16 %1352, 16
  br i1 %1357, label %1358, label %1365, !prof !9

1358:                                             ; preds = %1347
  %1359 = trunc i64 %1356 to i32
  %1360 = udiv i32 %1359, %1354
  %1361 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 29
  %1362 = and i32 %1360, 268435455
  %1363 = sub nuw nsw i32 268435456, %1362
  %1364 = select i1 %1350, i32 %1363, i32 %1362
  store i32 %1364, ptr %1361, align 4
  br label %1373

1365:                                             ; preds = %1347
  %1366 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1354, i64 %1356) #12
  %1367 = extractvalue { i64, i64 } %1366, 1
  %1368 = trunc i64 %1367 to i32
  %1369 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 29
  %1370 = and i32 %1368, 268435455
  %1371 = sub nuw nsw i32 268435456, %1370
  %1372 = select i1 %1350, i32 %1371, i32 %1370
  store i32 %1372, ptr %1369, align 4
  br label %1373

1373:                                             ; preds = %1365, %1358
  %1374 = phi i32 [ %1364, %1358 ], [ %1372, %1365 ]
  %1375 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 30
  store i32 %1374, ptr %1375, align 4
  %1376 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %99) #10
  store i64 49936, ptr %99, align 8, !annotation !8
  %1377 = getelementptr inbounds i8, ptr %99, i32 4
  %1378 = trunc i32 %1374 to i8
  store i8 %1378, ptr %1377, align 4
  %1379 = getelementptr inbounds i8, ptr %99, i32 5
  %1380 = lshr i32 %1374, 8
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, ptr %1379, align 1
  %1382 = getelementptr inbounds i8, ptr %99, i32 6
  %1383 = lshr i32 %1374, 16
  %1384 = trunc i32 %1383 to i8
  store i8 %1384, ptr %1382, align 2
  %1385 = getelementptr inbounds i8, ptr %99, i32 7
  %1386 = lshr i32 %1374, 24
  %1387 = trunc i32 %1386 to i8
  store i8 %1387, ptr %1385, align 1
  %1388 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %98) #10
  %1389 = getelementptr inbounds i8, ptr %98, i32 4
  store i32 8, ptr %1389, align 4, !annotation !8
  %1390 = zext i8 %1376 to i16
  store i16 %1390, ptr %98, align 4
  %1391 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 0, i32 1
  store i16 0, ptr %1391, align 2
  %1392 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 0, i32 3
  store ptr %99, ptr %1392, align 4
  %1393 = call i32 @i2c_transfer(ptr noundef %1388, ptr noundef nonnull %98, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %98) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %99) #10
  %1394 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %101) #10
  store i8 1, ptr %101, align 1
  %1395 = getelementptr inbounds i8, ptr %101, i32 1
  store i8 -128, ptr %1395, align 1
  %1396 = getelementptr inbounds i8, ptr %101, i32 2
  store i32 0, ptr %1396, align 1
  %1397 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %100) #10
  %1398 = getelementptr inbounds i8, ptr %100, i32 4
  store i32 6, ptr %1398, align 4, !annotation !8
  %1399 = zext i8 %1394 to i16
  store i16 %1399, ptr %100, align 4
  %1400 = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 1
  store i16 0, ptr %1400, align 2
  %1401 = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 3
  store ptr %101, ptr %1401, align 4
  %1402 = call i32 @i2c_transfer(ptr noundef %1397, ptr noundef nonnull %100, i32 noundef 1) #10
  %1403 = icmp eq i32 %1402, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %100) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %101) #10
  br i1 %1403, label %1404, label %1742

1404:                                             ; preds = %1373
  %1405 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %103) #10
  store i8 0, ptr %103, align 1
  %1406 = getelementptr inbounds i8, ptr %103, i32 1
  store i8 -128, ptr %1406, align 1
  %1407 = getelementptr inbounds i8, ptr %103, i32 2
  store i8 0, ptr %1407, align 1
  %1408 = getelementptr inbounds i8, ptr %103, i32 3
  store i8 0, ptr %1408, align 1
  %1409 = getelementptr inbounds i8, ptr %103, i32 4
  store i8 1, ptr %1409, align 1
  %1410 = getelementptr inbounds i8, ptr %103, i32 5
  store i8 0, ptr %1410, align 1
  %1411 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %102) #10
  %1412 = getelementptr inbounds i8, ptr %102, i32 4
  store i32 6, ptr %1412, align 4, !annotation !8
  %1413 = zext i8 %1405 to i16
  store i16 %1413, ptr %102, align 4
  %1414 = getelementptr inbounds %struct.i2c_msg, ptr %102, i32 0, i32 1
  store i16 0, ptr %1414, align 2
  %1415 = getelementptr inbounds %struct.i2c_msg, ptr %102, i32 0, i32 3
  store ptr %103, ptr %1415, align 4
  %1416 = call i32 @i2c_transfer(ptr noundef %1411, ptr noundef nonnull %102, i32 noundef 1) #10
  %1417 = icmp eq i32 %1416, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %102) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %103) #10
  br i1 %1417, label %1418, label %1742

1418:                                             ; preds = %1404
  %1419 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 10
  call void @mutex_lock(ptr noundef %1419) #10
  %1420 = getelementptr inbounds i8, ptr %111, i32 1
  %1421 = getelementptr inbounds i8, ptr %111, i32 2
  %1422 = getelementptr inbounds i8, ptr %111, i32 3
  %1423 = getelementptr inbounds i8, ptr %110, i32 4
  %1424 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 0, i32 1
  %1425 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 0, i32 3
  %1426 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 1
  %1427 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 1, i32 1
  %1428 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 1, i32 2
  %1429 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 1, i32 3
  %1430 = getelementptr inbounds [2 x i8], ptr %112, i32 0, i32 1
  br label %1431

1431:                                             ; preds = %1447, %1418
  %1432 = phi i32 [ 0, %1418 ], [ %1448, %1447 ]
  %1433 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %111) #10
  store i8 67, ptr %111, align 4
  store i8 -126, ptr %1420, align 1
  store i8 0, ptr %1421, align 2
  store i8 0, ptr %1422, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %112) #10
  store i16 0, ptr %112, align 2, !annotation !8
  %1434 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %110) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1423, i8 0, i32 16, i1 false) #10, !annotation !8
  %1435 = zext i8 %1433 to i16
  store i16 %1435, ptr %110, align 4
  store i16 0, ptr %1424, align 2
  store i16 4, ptr %1423, align 4
  store ptr %111, ptr %1425, align 4
  store i16 %1435, ptr %1426, align 4
  store i16 1, ptr %1427, align 2
  store i16 2, ptr %1428, align 4
  store ptr %112, ptr %1429, align 4
  %1436 = call i32 @i2c_transfer(ptr noundef %1434, ptr noundef nonnull %110, i32 noundef 2) #10
  %1437 = icmp eq i32 %1436, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %110) #10
  br i1 %1437, label %1439, label %1438

1438:                                             ; preds = %1431
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %112) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %111) #10
  br label %1447

1439:                                             ; preds = %1431
  %1440 = load i8, ptr %112, align 2
  %1441 = load i8, ptr %1430, align 1
  %1442 = zext i8 %1440 to i32
  %1443 = zext i8 %1441 to i32
  %1444 = shl nuw nsw i32 %1443, 8
  %1445 = or i32 %1444, %1442
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %112) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %111) #10
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1450, label %1447

1447:                                             ; preds = %1439, %1438
  %1448 = add nuw nsw i32 %1432, 1
  %1449 = icmp eq i32 %1448, 1000
  br i1 %1449, label %1489, label %1431

1450:                                             ; preds = %1439
  %1451 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %109) #10
  store i8 66, ptr %109, align 1
  %1452 = getelementptr inbounds i8, ptr %109, i32 1
  store i8 -126, ptr %1452, align 1
  %1453 = getelementptr inbounds i8, ptr %109, i32 2
  store i32 0, ptr %1453, align 1
  %1454 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %108) #10
  %1455 = getelementptr inbounds i8, ptr %108, i32 4
  store i32 6, ptr %1455, align 4, !annotation !8
  %1456 = zext i8 %1451 to i16
  store i16 %1456, ptr %108, align 4
  %1457 = getelementptr inbounds %struct.i2c_msg, ptr %108, i32 0, i32 1
  store i16 0, ptr %1457, align 2
  %1458 = getelementptr inbounds %struct.i2c_msg, ptr %108, i32 0, i32 3
  store ptr %109, ptr %1458, align 4
  %1459 = call i32 @i2c_transfer(ptr noundef %1454, ptr noundef nonnull %108, i32 noundef 1) #10
  %1460 = icmp eq i32 %1459, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %109) #10
  br i1 %1460, label %1461, label %1489

1461:                                             ; preds = %1450
  %1462 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %107) #10
  store i8 65, ptr %107, align 1
  %1463 = getelementptr inbounds i8, ptr %107, i32 1
  store i8 -126, ptr %1463, align 1
  %1464 = getelementptr inbounds i8, ptr %107, i32 2
  store i8 0, ptr %1464, align 1
  %1465 = getelementptr inbounds i8, ptr %107, i32 3
  store i8 0, ptr %1465, align 1
  %1466 = getelementptr inbounds i8, ptr %107, i32 4
  store i8 31, ptr %1466, align 1
  %1467 = getelementptr inbounds i8, ptr %107, i32 5
  store i8 0, ptr %1467, align 1
  %1468 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %106) #10
  %1469 = getelementptr inbounds i8, ptr %106, i32 4
  store i32 6, ptr %1469, align 4, !annotation !8
  %1470 = zext i8 %1462 to i16
  store i16 %1470, ptr %106, align 4
  %1471 = getelementptr inbounds %struct.i2c_msg, ptr %106, i32 0, i32 1
  store i16 0, ptr %1471, align 2
  %1472 = getelementptr inbounds %struct.i2c_msg, ptr %106, i32 0, i32 3
  store ptr %107, ptr %1472, align 4
  %1473 = call i32 @i2c_transfer(ptr noundef %1468, ptr noundef nonnull %106, i32 noundef 1) #10
  %1474 = icmp eq i32 %1473, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %106) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %107) #10
  br i1 %1474, label %1475, label %1489

1475:                                             ; preds = %1461
  %1476 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %105) #10
  store i8 64, ptr %105, align 1
  %1477 = getelementptr inbounds i8, ptr %105, i32 1
  store i8 -126, ptr %1477, align 1
  %1478 = getelementptr inbounds i8, ptr %105, i32 2
  store i8 0, ptr %1478, align 1
  %1479 = getelementptr inbounds i8, ptr %105, i32 3
  store i8 0, ptr %1479, align 1
  %1480 = getelementptr inbounds i8, ptr %105, i32 4
  store i8 %1039, ptr %1480, align 1
  %1481 = getelementptr inbounds i8, ptr %105, i32 5
  store i8 %1091, ptr %1481, align 1
  %1482 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %104) #10
  %1483 = getelementptr inbounds i8, ptr %104, i32 4
  store i32 6, ptr %1483, align 4, !annotation !8
  %1484 = zext i8 %1476 to i16
  store i16 %1484, ptr %104, align 4
  %1485 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 0, i32 1
  store i16 0, ptr %1485, align 2
  %1486 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 0, i32 3
  store ptr %105, ptr %1486, align 4
  %1487 = call i32 @i2c_transfer(ptr noundef %1482, ptr noundef nonnull %104, i32 noundef 1) #10
  %1488 = icmp eq i32 %1487, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %104) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %105) #10
  br i1 %1488, label %1490, label %1489

1489:                                             ; preds = %1475, %1461, %1450, %1447
  call void @mutex_unlock(ptr noundef %1419) #10
  br label %1742

1490:                                             ; preds = %1475
  %1491 = call fastcc i32 @SC_SendCommand(ptr noundef %175, i16 noundef zeroext 3) #10
  call void @mutex_unlock(ptr noundef %1419) #10
  %1492 = icmp slt i32 %1491, 0
  br i1 %1492, label %1742, label %1493

1493:                                             ; preds = %1490
  call void @mutex_lock(ptr noundef %1419) #10
  %1494 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %123) #10
  store i8 0, ptr %123, align 4
  %1495 = getelementptr inbounds i8, ptr %123, i32 1
  store i8 -128, ptr %1495, align 1
  %1496 = getelementptr inbounds i8, ptr %123, i32 2
  store i8 0, ptr %1496, align 2
  %1497 = getelementptr inbounds i8, ptr %123, i32 3
  store i8 0, ptr %1497, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %124) #10
  store i16 0, ptr %124, align 2, !annotation !8
  %1498 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %122) #10
  %1499 = getelementptr inbounds i8, ptr %122, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1499, i8 0, i32 16, i1 false) #10, !annotation !8
  %1500 = zext i8 %1494 to i16
  store i16 %1500, ptr %122, align 4
  %1501 = getelementptr inbounds %struct.i2c_msg, ptr %122, i32 0, i32 1
  store i16 0, ptr %1501, align 2
  store i16 4, ptr %1499, align 4
  %1502 = getelementptr inbounds %struct.i2c_msg, ptr %122, i32 0, i32 3
  store ptr %123, ptr %1502, align 4
  %1503 = getelementptr inbounds %struct.i2c_msg, ptr %122, i32 1
  store i16 %1500, ptr %1503, align 4
  %1504 = getelementptr inbounds %struct.i2c_msg, ptr %122, i32 1, i32 1
  store i16 1, ptr %1504, align 2
  %1505 = getelementptr inbounds %struct.i2c_msg, ptr %122, i32 1, i32 2
  store i16 2, ptr %1505, align 4
  %1506 = getelementptr inbounds %struct.i2c_msg, ptr %122, i32 1, i32 3
  store ptr %124, ptr %1506, align 4
  %1507 = call i32 @i2c_transfer(ptr noundef %1498, ptr noundef nonnull %122, i32 noundef 2) #10
  %1508 = icmp eq i32 %1507, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %122) #10
  br i1 %1508, label %1510, label %1509

1509:                                             ; preds = %1493
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %124) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %123) #10
  br label %1554

1510:                                             ; preds = %1493
  %1511 = load i8, ptr %124, align 2
  %1512 = zext i8 %1511 to i16
  %1513 = getelementptr inbounds [2 x i8], ptr %124, i32 0, i32 1
  %1514 = load i8, ptr %1513, align 1
  %1515 = zext i8 %1514 to i16
  %1516 = shl nuw i16 %1515, 8
  %1517 = or i16 %1516, %1512
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %124) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %123) #10
  %1518 = icmp eq i16 %1517, 1
  br i1 %1518, label %1519, label %1554

1519:                                             ; preds = %1510
  %1520 = getelementptr inbounds i8, ptr %120, i32 1
  %1521 = getelementptr inbounds i8, ptr %120, i32 2
  %1522 = getelementptr inbounds i8, ptr %120, i32 3
  %1523 = getelementptr inbounds i8, ptr %119, i32 4
  %1524 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 0, i32 1
  %1525 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 0, i32 3
  %1526 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 1
  %1527 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 1, i32 1
  %1528 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 1, i32 2
  %1529 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 1, i32 3
  %1530 = getelementptr inbounds [2 x i8], ptr %121, i32 0, i32 1
  br label %1531

1531:                                             ; preds = %1552, %1519
  %1532 = phi i32 [ 0, %1519 ], [ %1553, %1552 ]
  %1533 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %120) #10
  store i8 67, ptr %120, align 4
  store i8 -126, ptr %1520, align 1
  store i8 0, ptr %1521, align 2
  store i8 0, ptr %1522, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %121) #10
  store i16 0, ptr %121, align 2, !annotation !8
  %1534 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %119) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1523, i8 0, i32 16, i1 false) #10, !annotation !8
  %1535 = zext i8 %1533 to i16
  store i16 %1535, ptr %119, align 4
  store i16 0, ptr %1524, align 2
  store i16 4, ptr %1523, align 4
  store ptr %120, ptr %1525, align 4
  store i16 %1535, ptr %1526, align 4
  store i16 1, ptr %1527, align 2
  store i16 2, ptr %1528, align 4
  store ptr %121, ptr %1529, align 4
  %1536 = call i32 @i2c_transfer(ptr noundef %1534, ptr noundef nonnull %119, i32 noundef 2) #10
  %1537 = icmp eq i32 %1536, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %119) #10
  br i1 %1537, label %1541, label %1538

1538:                                             ; preds = %1531
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %121) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %120) #10
  %1539 = add nuw nsw i32 %1532, 1
  %1540 = icmp eq i32 %1539, 1000
  br i1 %1540, label %1555, label %1552

1541:                                             ; preds = %1531
  %1542 = load i8, ptr %121, align 2
  %1543 = load i8, ptr %1530, align 1
  %1544 = zext i8 %1542 to i32
  %1545 = zext i8 %1543 to i32
  %1546 = shl nuw nsw i32 %1545, 8
  %1547 = or i32 %1546, %1544
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %121) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %120) #10
  %1548 = icmp eq i32 %1547, 0
  %1549 = add nuw nsw i32 %1532, 1
  %1550 = icmp eq i32 %1549, 1000
  %1551 = select i1 %1548, i1 true, i1 %1550
  br i1 %1551, label %1555, label %1552

1552:                                             ; preds = %1541, %1538
  %1553 = phi i32 [ %1539, %1538 ], [ %1549, %1541 ]
  br label %1531

1554:                                             ; preds = %1510, %1509
  call void @mutex_unlock(ptr noundef %1419) #10
  br label %1742

1555:                                             ; preds = %1541, %1538
  %1556 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %118) #10
  store i8 66, ptr %118, align 1
  %1557 = getelementptr inbounds i8, ptr %118, i32 1
  store i8 -126, ptr %1557, align 1
  %1558 = getelementptr inbounds i8, ptr %118, i32 2
  store i32 0, ptr %1558, align 1
  %1559 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %117) #10
  %1560 = getelementptr inbounds i8, ptr %117, i32 4
  store i32 6, ptr %1560, align 4, !annotation !8
  %1561 = zext i8 %1556 to i16
  store i16 %1561, ptr %117, align 4
  %1562 = getelementptr inbounds %struct.i2c_msg, ptr %117, i32 0, i32 1
  store i16 0, ptr %1562, align 2
  %1563 = getelementptr inbounds %struct.i2c_msg, ptr %117, i32 0, i32 3
  store ptr %118, ptr %1563, align 4
  %1564 = call i32 @i2c_transfer(ptr noundef %1559, ptr noundef nonnull %117, i32 noundef 1) #10
  %1565 = icmp ne i32 %1564, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %117) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %118) #10
  %1566 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %116) #10
  store i8 65, ptr %116, align 1
  %1567 = getelementptr inbounds i8, ptr %116, i32 1
  store i8 -126, ptr %1567, align 1
  %1568 = getelementptr inbounds i8, ptr %116, i32 2
  store i8 0, ptr %1568, align 1
  %1569 = getelementptr inbounds i8, ptr %116, i32 3
  store i8 0, ptr %1569, align 1
  %1570 = getelementptr inbounds i8, ptr %116, i32 4
  store i8 1, ptr %1570, align 1
  %1571 = getelementptr inbounds i8, ptr %116, i32 5
  store i8 0, ptr %1571, align 1
  %1572 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %115) #10
  %1573 = getelementptr inbounds i8, ptr %115, i32 4
  store i32 6, ptr %1573, align 4, !annotation !8
  %1574 = zext i8 %1566 to i16
  store i16 %1574, ptr %115, align 4
  %1575 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 1
  store i16 0, ptr %1575, align 2
  %1576 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 3
  store ptr %116, ptr %1576, align 4
  %1577 = call i32 @i2c_transfer(ptr noundef %1572, ptr noundef nonnull %115, i32 noundef 1) #10
  %1578 = icmp ne i32 %1577, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %115) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %116) #10
  %1579 = or i1 %1565, %1578
  %1580 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %114) #10
  store i8 64, ptr %114, align 1
  %1581 = getelementptr inbounds i8, ptr %114, i32 1
  store i8 -126, ptr %1581, align 1
  %1582 = getelementptr inbounds i8, ptr %114, i32 2
  store i8 0, ptr %1582, align 1
  %1583 = getelementptr inbounds i8, ptr %114, i32 3
  store i8 0, ptr %1583, align 1
  %1584 = getelementptr inbounds i8, ptr %114, i32 4
  store i8 1, ptr %1584, align 1
  %1585 = getelementptr inbounds i8, ptr %114, i32 5
  store i8 0, ptr %1585, align 1
  %1586 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %113) #10
  %1587 = getelementptr inbounds i8, ptr %113, i32 4
  store i32 6, ptr %1587, align 4, !annotation !8
  %1588 = zext i8 %1580 to i16
  store i16 %1588, ptr %113, align 4
  %1589 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 1
  store i16 0, ptr %1589, align 2
  %1590 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 3
  store ptr %114, ptr %1590, align 4
  %1591 = call i32 @i2c_transfer(ptr noundef %1586, ptr noundef nonnull %113, i32 noundef 1) #10
  %1592 = icmp ne i32 %1591, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %113) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %114) #10
  %1593 = or i1 %1579, %1592
  %1594 = call fastcc i32 @SC_SendCommand(ptr noundef %175, i16 noundef zeroext 1) #10
  call void @mutex_unlock(ptr noundef %1419) #10
  br i1 %1593, label %1742, label %1595

1595:                                             ; preds = %1555
  %1596 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %134) #10
  store i8 0, ptr %134, align 1
  %1597 = getelementptr inbounds i8, ptr %134, i32 1
  store i8 21, ptr %1597, align 1
  %1598 = getelementptr inbounds i8, ptr %134, i32 2
  store i8 2, ptr %1598, align 1
  %1599 = getelementptr inbounds i8, ptr %134, i32 3
  store i8 0, ptr %1599, align 1
  %1600 = getelementptr inbounds i8, ptr %134, i32 4
  store i8 2, ptr %1600, align 1
  %1601 = getelementptr inbounds i8, ptr %134, i32 5
  store i8 0, ptr %1601, align 1
  %1602 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %133) #10
  %1603 = getelementptr inbounds i8, ptr %133, i32 4
  store i32 6, ptr %1603, align 4, !annotation !8
  %1604 = zext i8 %1596 to i16
  store i16 %1604, ptr %133, align 4
  %1605 = getelementptr inbounds %struct.i2c_msg, ptr %133, i32 0, i32 1
  store i16 0, ptr %1605, align 2
  %1606 = getelementptr inbounds %struct.i2c_msg, ptr %133, i32 0, i32 3
  store ptr %134, ptr %1606, align 4
  %1607 = call i32 @i2c_transfer(ptr noundef %1602, ptr noundef nonnull %133, i32 noundef 1) #10
  %1608 = icmp eq i32 %1607, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %133) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %134) #10
  br i1 %1608, label %1609, label %1742

1609:                                             ; preds = %1595
  %1610 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 35
  %1611 = load i16, ptr %1610, align 4
  %1612 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %132) #10
  store i8 22, ptr %132, align 1
  %1613 = getelementptr inbounds i8, ptr %132, i32 1
  store i8 21, ptr %1613, align 1
  %1614 = getelementptr inbounds i8, ptr %132, i32 2
  store i8 2, ptr %1614, align 1
  %1615 = getelementptr inbounds i8, ptr %132, i32 3
  store i8 0, ptr %1615, align 1
  %1616 = getelementptr inbounds i8, ptr %132, i32 4
  %1617 = trunc i16 %1611 to i8
  store i8 %1617, ptr %1616, align 1
  %1618 = getelementptr inbounds i8, ptr %132, i32 5
  %1619 = lshr i16 %1611, 8
  %1620 = trunc i16 %1619 to i8
  store i8 %1620, ptr %1618, align 1
  %1621 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %131) #10
  %1622 = getelementptr inbounds i8, ptr %131, i32 4
  store i32 6, ptr %1622, align 4, !annotation !8
  %1623 = zext i8 %1612 to i16
  store i16 %1623, ptr %131, align 4
  %1624 = getelementptr inbounds %struct.i2c_msg, ptr %131, i32 0, i32 1
  store i16 0, ptr %1624, align 2
  %1625 = getelementptr inbounds %struct.i2c_msg, ptr %131, i32 0, i32 3
  store ptr %132, ptr %1625, align 4
  %1626 = call i32 @i2c_transfer(ptr noundef %1621, ptr noundef nonnull %131, i32 noundef 1) #10
  %1627 = icmp eq i32 %1626, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %131) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %132) #10
  br i1 %1627, label %1628, label %1742

1628:                                             ; preds = %1609
  %1629 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 34
  %1630 = load i16, ptr %1629, align 2
  %1631 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %130) #10
  store i8 16, ptr %130, align 1
  %1632 = getelementptr inbounds i8, ptr %130, i32 1
  store i8 21, ptr %1632, align 1
  %1633 = getelementptr inbounds i8, ptr %130, i32 2
  store i8 2, ptr %1633, align 1
  %1634 = getelementptr inbounds i8, ptr %130, i32 3
  store i8 0, ptr %1634, align 1
  %1635 = getelementptr inbounds i8, ptr %130, i32 4
  %1636 = trunc i16 %1630 to i8
  store i8 %1636, ptr %1635, align 1
  %1637 = getelementptr inbounds i8, ptr %130, i32 5
  %1638 = lshr i16 %1630, 8
  %1639 = trunc i16 %1638 to i8
  store i8 %1639, ptr %1637, align 1
  %1640 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %129) #10
  %1641 = getelementptr inbounds i8, ptr %129, i32 4
  store i32 6, ptr %1641, align 4, !annotation !8
  %1642 = zext i8 %1631 to i16
  store i16 %1642, ptr %129, align 4
  %1643 = getelementptr inbounds %struct.i2c_msg, ptr %129, i32 0, i32 1
  store i16 0, ptr %1643, align 2
  %1644 = getelementptr inbounds %struct.i2c_msg, ptr %129, i32 0, i32 3
  store ptr %130, ptr %1644, align 4
  %1645 = call i32 @i2c_transfer(ptr noundef %1640, ptr noundef nonnull %129, i32 noundef 1) #10
  %1646 = icmp eq i32 %1645, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %129) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %130) #10
  br i1 %1646, label %1647, label %1742

1647:                                             ; preds = %1628
  %1648 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %128) #10
  store i8 54, ptr %128, align 1
  %1649 = getelementptr inbounds i8, ptr %128, i32 1
  store i8 21, ptr %1649, align 1
  %1650 = getelementptr inbounds i8, ptr %128, i32 2
  store i8 2, ptr %1650, align 1
  %1651 = getelementptr inbounds i8, ptr %128, i32 3
  store i8 0, ptr %1651, align 1
  %1652 = getelementptr inbounds i8, ptr %128, i32 4
  store i8 0, ptr %1652, align 1
  %1653 = getelementptr inbounds i8, ptr %128, i32 5
  store i8 0, ptr %1653, align 1
  %1654 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %127) #10
  %1655 = getelementptr inbounds i8, ptr %127, i32 4
  store i32 6, ptr %1655, align 4, !annotation !8
  %1656 = zext i8 %1648 to i16
  store i16 %1656, ptr %127, align 4
  %1657 = getelementptr inbounds %struct.i2c_msg, ptr %127, i32 0, i32 1
  store i16 0, ptr %1657, align 2
  %1658 = getelementptr inbounds %struct.i2c_msg, ptr %127, i32 0, i32 3
  store ptr %128, ptr %1658, align 4
  %1659 = call i32 @i2c_transfer(ptr noundef %1654, ptr noundef nonnull %127, i32 noundef 1) #10
  %1660 = icmp eq i32 %1659, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %127) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %128) #10
  br i1 %1660, label %1661, label %1742

1661:                                             ; preds = %1647
  %1662 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %126) #10
  store i8 0, ptr %126, align 1
  %1663 = getelementptr inbounds i8, ptr %126, i32 1
  store i8 21, ptr %1663, align 1
  %1664 = getelementptr inbounds i8, ptr %126, i32 2
  store i8 2, ptr %1664, align 1
  %1665 = getelementptr inbounds i8, ptr %126, i32 3
  store i8 0, ptr %1665, align 1
  %1666 = getelementptr inbounds i8, ptr %126, i32 4
  store i8 1, ptr %1666, align 1
  %1667 = getelementptr inbounds i8, ptr %126, i32 5
  store i8 0, ptr %1667, align 1
  %1668 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %125) #10
  %1669 = getelementptr inbounds i8, ptr %125, i32 4
  store i32 6, ptr %1669, align 4, !annotation !8
  %1670 = zext i8 %1662 to i16
  store i16 %1670, ptr %125, align 4
  %1671 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 1
  store i16 0, ptr %1671, align 2
  %1672 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  store ptr %126, ptr %1672, align 4
  %1673 = call i32 @i2c_transfer(ptr noundef %1668, ptr noundef nonnull %125, i32 noundef 1) #10
  %1674 = icmp eq i32 %1673, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %125) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %126) #10
  br i1 %1674, label %1675, label %1742

1675:                                             ; preds = %1661
  %1676 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 25
  %1677 = load i32, ptr %1676, align 4
  switch i32 %1677, label %1740 [
    i32 2, label %1682
    i32 1, label %1678
  ]

1678:                                             ; preds = %1675
  %1679 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 50
  %1680 = load ptr, ptr %1679, align 4
  %1681 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %1680) #10
  br label %1737

1682:                                             ; preds = %1675
  %1683 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 51
  %1684 = load ptr, ptr %1683, align 4
  %1685 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %1684) #10
  %1686 = icmp slt i32 %1685, 0
  br i1 %1686, label %1742, label %1687

1687:                                             ; preds = %1682
  %1688 = load i32, ptr %1094, align 4
  %1689 = icmp eq i32 %1688, 8000000
  br i1 %1689, label %1690, label %1695

1690:                                             ; preds = %1687
  %1691 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 52
  %1692 = load ptr, ptr %1691, align 4
  %1693 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %1692) #10
  %1694 = icmp slt i32 %1693, 0
  br i1 %1694, label %1742, label %1700

1695:                                             ; preds = %1687
  %1696 = getelementptr inbounds %struct.drxd_state, ptr %175, i32 0, i32 53
  %1697 = load ptr, ptr %1696, align 4
  %1698 = call fastcc i32 @WriteTable(ptr noundef %175, ptr noundef %1697) #10
  %1699 = icmp slt i32 %1698, 0
  br i1 %1699, label %1742, label %1700

1700:                                             ; preds = %1695, %1690
  %1701 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %138) #10
  store i8 50, ptr %138, align 4
  %1702 = getelementptr inbounds i8, ptr %138, i32 1
  store i8 -63, ptr %1702, align 1
  %1703 = getelementptr inbounds i8, ptr %138, i32 2
  store i8 1, ptr %1703, align 2
  %1704 = getelementptr inbounds i8, ptr %138, i32 3
  store i8 0, ptr %1704, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %139) #10
  store i16 0, ptr %139, align 2, !annotation !8
  %1705 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %137) #10
  %1706 = getelementptr inbounds i8, ptr %137, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1706, i8 0, i32 16, i1 false) #10, !annotation !8
  %1707 = zext i8 %1701 to i16
  store i16 %1707, ptr %137, align 4
  %1708 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 0, i32 1
  store i16 0, ptr %1708, align 2
  store i16 4, ptr %1706, align 4
  %1709 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 0, i32 3
  store ptr %138, ptr %1709, align 4
  %1710 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 1
  store i16 %1707, ptr %1710, align 4
  %1711 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 1, i32 1
  store i16 1, ptr %1711, align 2
  %1712 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 1, i32 2
  store i16 2, ptr %1712, align 4
  %1713 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 1, i32 3
  store ptr %139, ptr %1713, align 4
  %1714 = call i32 @i2c_transfer(ptr noundef %1705, ptr noundef nonnull %137, i32 noundef 2) #10
  %1715 = icmp eq i32 %1714, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %137) #10
  br i1 %1715, label %1717, label %1716

1716:                                             ; preds = %1700
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %139) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %138) #10
  br label %1742

1717:                                             ; preds = %1700
  %1718 = load i8, ptr %139, align 2
  %1719 = getelementptr inbounds [2 x i8], ptr %139, i32 0, i32 1
  %1720 = load i8, ptr %1719, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %139) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %138) #10
  %1721 = and i8 %1718, 126
  %1722 = or i8 %1721, 1
  %1723 = load i8, ptr %349, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %136) #10
  store i8 50, ptr %136, align 1
  %1724 = getelementptr inbounds i8, ptr %136, i32 1
  store i8 -63, ptr %1724, align 1
  %1725 = getelementptr inbounds i8, ptr %136, i32 2
  store i8 1, ptr %1725, align 1
  %1726 = getelementptr inbounds i8, ptr %136, i32 3
  store i8 0, ptr %1726, align 1
  %1727 = getelementptr inbounds i8, ptr %136, i32 4
  store i8 %1722, ptr %1727, align 1
  %1728 = getelementptr inbounds i8, ptr %136, i32 5
  store i8 %1720, ptr %1728, align 1
  %1729 = load ptr, ptr %392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %135) #10
  %1730 = getelementptr inbounds i8, ptr %135, i32 4
  store i32 6, ptr %1730, align 4, !annotation !8
  %1731 = zext i8 %1723 to i16
  store i16 %1731, ptr %135, align 4
  %1732 = getelementptr inbounds %struct.i2c_msg, ptr %135, i32 0, i32 1
  store i16 0, ptr %1732, align 2
  %1733 = getelementptr inbounds %struct.i2c_msg, ptr %135, i32 0, i32 3
  store ptr %136, ptr %1733, align 4
  %1734 = call i32 @i2c_transfer(ptr noundef %1729, ptr noundef nonnull %135, i32 noundef 1) #10
  %1735 = icmp ne i32 %1734, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %135) #10
  %1736 = sext i1 %1735 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %136) #10
  br label %1737

1737:                                             ; preds = %1717, %1678
  %1738 = phi i32 [ %1681, %1678 ], [ %1736, %1717 ]
  %1739 = icmp slt i32 %1738, 0
  br i1 %1739, label %1742, label %1740

1740:                                             ; preds = %1737, %1675
  %1741 = phi i32 [ %1738, %1737 ], [ 0, %1675 ]
  store i32 2, ptr %177, align 4
  br label %1742

1742:                                             ; preds = %1740, %1737, %1716, %1695, %1690, %1682, %1661, %1647, %1628, %1609, %1595, %1555, %1554, %1490, %1489, %1404, %1373, %1330, %1312, %1282, %1259, %1240, %1222, %1202, %1192, %1161, %1147, %1117, %1099, %1093, %1089, %1021, %1004, %990, %976, %962, %948, %934, %920, %906, %882, %868, %854, %840, %826, %812, %798, %784, %761, %747, %733, %719, %705, %691, %677, %663, %637, %623, %609, %592, %578, %560, %546, %528, %514, %444, %440, %435, %430, %427, %422, %408, %403, %385, %380, %377, %342
  %1743 = phi i32 [ -1, %342 ], [ -1, %385 ], [ %406, %403 ], [ %442, %440 ], [ %446, %444 ], [ -1, %637 ], [ -1, %1021 ], [ -1, %1089 ], [ -1, %1099 ], [ -1, %1117 ], [ -1, %1259 ], [ -1, %1282 ], [ -1, %1312 ], [ -1, %1330 ], [ -1, %1373 ], [ -1, %1404 ], [ %1491, %1490 ], [ -1, %1555 ], [ -1, %1661 ], [ %1738, %1737 ], [ %1741, %1740 ], [ -1, %408 ], [ %425, %422 ], [ %428, %427 ], [ %433, %430 ], [ -1, %435 ], [ -1, %377 ], [ %383, %380 ], [ -1, %609 ], [ -1, %623 ], [ -1, %578 ], [ -1, %592 ], [ -1, %546 ], [ -1, %560 ], [ -1, %514 ], [ -1, %528 ], [ -1, %663 ], [ -1, %677 ], [ -1, %691 ], [ -1, %705 ], [ -1, %719 ], [ -1, %733 ], [ -1, %747 ], [ -1, %761 ], [ -1, %906 ], [ -1, %920 ], [ -1, %934 ], [ -1, %948 ], [ -1, %962 ], [ -1, %976 ], [ -1, %990 ], [ -1, %1004 ], [ -1, %784 ], [ -1, %798 ], [ -1, %812 ], [ -1, %826 ], [ -1, %840 ], [ -1, %854 ], [ -1, %868 ], [ -1, %882 ], [ -22, %1093 ], [ -1, %1161 ], [ -1, %1147 ], [ -1, %1489 ], [ -1, %1554 ], [ -1, %1222 ], [ -1, %1240 ], [ -1, %1202 ], [ -1, %1192 ], [ -1, %1595 ], [ -1, %1609 ], [ -1, %1628 ], [ -1, %1647 ], [ -1, %1682 ], [ -1, %1690 ], [ -1, %1695 ], [ -1, %1716 ]
  ret i32 %1743
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drxd_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 10000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxd_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call fastcc i32 @DRX_GetLockStatus(ptr noundef %5, ptr noundef nonnull %3) #10
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = shl i32 %7, 4
  %12 = and i32 %11, 16
  br label %18

13:                                               ; preds = %2
  %14 = tail call fastcc i32 @ConfigureMPEGOutput(ptr noundef %5, i32 noundef 1) #10
  %15 = shl i32 %7, 4
  %16 = and i32 %15, 16
  %17 = or i32 %16, 12
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i32 [ %17, %13 ], [ %12, %10 ]
  %20 = and i32 %7, 4
  %21 = icmp eq i32 %20, 0
  %22 = or i32 %19, 3
  %23 = select i1 %21, i32 %19, i32 %22
  store i32 %23, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drxd_read_ber(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxd_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drxd_state, ptr %7, i32 0, i32 26
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %70, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drxd_state, ptr %7, i32 0, i32 7, i32 5
  %13 = load i8, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 53, ptr %4, align 4
  %14 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -62, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %15, align 2
  %16 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  %17 = getelementptr inbounds %struct.drxd_state, ptr %7, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %19 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #10, !annotation !8
  %20 = zext i8 %13 to i16
  store i16 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 4, ptr %19, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %5, ptr %26, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %3, i32 noundef 2) #10
  %28 = icmp eq i32 %27, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br i1 %28, label %29, label %69

29:                                               ; preds = %11
  %30 = load i8, ptr %5, align 2
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %36 = and i32 %35, 768
  %37 = or i32 %36, %31
  %38 = getelementptr inbounds %struct.drxd_state, ptr %7, i32 0, i32 26, i32 6
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.drxd_state, ptr %7, i32 0, i32 26, i32 7
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.drxd_state, ptr %7, i32 0, i32 26, i32 8
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp eq i16 %42, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = icmp eq i16 %39, 0
  %50 = icmp eq i16 %45, 0
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %48, %29
  %53 = mul nuw nsw i32 %43, 3300
  %54 = add nuw nsw i32 %43, %40
  %55 = udiv i32 %53, %54
  %56 = mul nuw i32 %46, %43
  %57 = add nuw nsw i32 %46, %43
  %58 = udiv i32 %56, %57
  %59 = mul i32 %58, 3300
  %60 = add nuw i32 %58, %40
  %61 = udiv i32 %59, %60
  %62 = sub i32 %55, %61
  %63 = mul i32 %62, %37
  %64 = lshr i32 %63, 10
  %65 = add i32 %64, %61
  %66 = trunc i32 %65 to i16
  %67 = mul i16 %66, -16
  %68 = add i16 %67, -1
  br label %70

69:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %70

70:                                               ; preds = %69, %52, %48, %2
  %71 = phi i16 [ 0, %69 ], [ %68, %52 ], [ -1, %48 ], [ -1, %2 ]
  store i16 %71, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drxd_read_snr(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i16 0, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drxd_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxd_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drxd_state, ptr %4, i32 0, i32 7, i32 8
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drxd_state, ptr %4, i32 0, i32 15
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, -5
  %12 = icmp eq i32 %1, 0
  %13 = select i1 %12, i16 0, i16 4
  %14 = or i16 %11, %13
  store i16 %14, ptr %9, align 4
  %15 = tail call fastcc i32 @HI_CfgCommand(ptr noundef %4) #10
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %15, %8 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @WriteTable(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [52 x i8], align 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %104, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  %9 = getelementptr inbounds i8, ptr %4, i32 1
  %10 = getelementptr inbounds i8, ptr %4, i32 2
  %11 = getelementptr inbounds i8, ptr %4, i32 3
  %12 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %16 = load i8, ptr %1, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %1, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %21, %17
  %23 = getelementptr i8, ptr %1, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or i32 %22, %26
  %28 = getelementptr i8, ptr %1, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = or i32 %27, %31
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %104, label %34

34:                                               ; preds = %84, %6
  %35 = phi i32 [ %102, %84 ], [ %32, %6 ]
  %36 = phi ptr [ %85, %84 ], [ %1, %6 ]
  %37 = getelementptr i8, ptr %36, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  %40 = getelementptr i8, ptr %36, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  %43 = shl nuw i16 %42, 8
  %44 = or i16 %43, %39
  %45 = getelementptr i8, ptr %36, i32 6
  %46 = icmp eq i16 %44, 0
  br i1 %46, label %104, label %47

47:                                               ; preds = %34
  %48 = zext i16 %44 to i32
  %49 = shl nuw nsw i32 %48, 1
  %50 = trunc i32 %49 to i16
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %78, %47
  %53 = phi ptr [ %79, %78 ], [ %45, %47 ]
  %54 = phi i16 [ %82, %78 ], [ %50, %47 ]
  %55 = phi i32 [ %81, %78 ], [ %35, %47 ]
  %56 = call i16 @llvm.umin.i16(i16 %54, i16 48) #10
  %57 = zext i16 %56 to i32
  %58 = load i8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #10
  %59 = trunc i32 %55 to i8
  store i8 %59, ptr %4, align 1
  %60 = lshr i32 %55, 16
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %9, align 1
  %62 = lshr i32 %55, 24
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %10, align 1
  %64 = lshr i32 %55, 8
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %11, align 1
  %66 = icmp ugt i16 %56, 47
  %67 = sub nuw nsw i16 48, %56
  %68 = select i1 %66, i16 0, i16 %67
  %69 = zext i16 %68 to i64
  %70 = getelementptr i8, ptr %8, i32 %57
  call void @llvm.memset.p0.i64(ptr align 1 %70, i8 0, i64 %69, i1 false) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %53, i32 %57, i1 false) #10
  %71 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %13, align 4, !annotation !8
  %72 = zext i8 %58 to i16
  store i16 %72, ptr %3, align 4
  store i16 0, ptr %14, align 2
  %73 = add nuw nsw i16 %56, 4
  store i16 %73, ptr %13, align 4
  store ptr %4, ptr %15, align 4
  %74 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %3, i32 noundef 1) #10
  %75 = icmp eq i32 %74, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br i1 %75, label %78, label %76

76:                                               ; preds = %52
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #10
  br label %104

78:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #10
  %79 = getelementptr i8, ptr %53, i32 %57
  %80 = lshr i32 %57, 1
  %81 = add i32 %80, %55
  %82 = sub i16 %54, %56
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %52

84:                                               ; preds = %78, %47
  %85 = getelementptr i8, ptr %45, i32 %49
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr i8, ptr %85, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 8
  %92 = or i32 %91, %87
  %93 = getelementptr i8, ptr %85, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 16
  %97 = or i32 %92, %96
  %98 = getelementptr i8, ptr %85, i32 3
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw i32 %100, 24
  %102 = or i32 %97, %101
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %34

104:                                              ; preds = %84, %76, %34, %6, %2
  %105 = phi i32 [ 0, %2 ], [ -1, %76 ], [ 0, %6 ], [ 0, %34 ], [ 0, %84 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @Write16(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [6 x i8], align 1
  %7 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %8 = load i8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #10
  %9 = trunc i32 %1 to i8
  store i8 %9, ptr %6, align 1
  %10 = getelementptr inbounds i8, ptr %6, i32 1
  %11 = lshr i32 %1, 16
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %10, align 1
  %13 = getelementptr inbounds i8, ptr %6, i32 2
  %14 = lshr i32 %1, 24
  %15 = trunc i32 %14 to i8
  %16 = or i8 %15, %3
  store i8 %16, ptr %13, align 1
  %17 = getelementptr inbounds i8, ptr %6, i32 3
  %18 = lshr i32 %1, 8
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %17, align 1
  %20 = getelementptr inbounds i8, ptr %6, i32 4
  %21 = trunc i16 %2 to i8
  store i8 %21, ptr %20, align 1
  %22 = getelementptr inbounds i8, ptr %6, i32 5
  %23 = lshr i16 %2, 8
  %24 = trunc i16 %23 to i8
  store i8 %24, ptr %22, align 1
  %25 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %27 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 6, ptr %27, align 4, !annotation !8
  %28 = zext i8 %8 to i16
  store i16 %28, ptr %5, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %30, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %5, i32 noundef 1) #10
  %32 = icmp ne i32 %31, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %33 = sext i1 %32 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @SetCfgPga(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca [2 x i8], align 2
  %14 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %15 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i8 16, ptr %12, align 4
  %16 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 -62, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 0, ptr %17, align 2
  %18 = getelementptr inbounds i8, ptr %12, i32 3
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i16 0, ptr %13, align 2, !annotation !8
  %19 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %21 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %21, i8 0, i32 16, i1 false) #10, !annotation !8
  %22 = zext i8 %15 to i16
  store i16 %22, ptr %11, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %23, align 2
  store i16 4, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %12, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %13, ptr %28, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %11, i32 noundef 2) #10
  %30 = icmp eq i32 %29, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  br label %100

32:                                               ; preds = %1
  %33 = load i8, ptr %13, align 2
  %34 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  %36 = and i8 %35, -17
  %37 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #10
  store i8 16, ptr %10, align 1
  %38 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 -62, ptr %38, align 1
  %39 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 0, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %10, i32 3
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds i8, ptr %10, i32 4
  store i8 %33, ptr %41, align 1
  %42 = getelementptr inbounds i8, ptr %10, i32 5
  store i8 %36, ptr %42, align 1
  %43 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %44 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 6, ptr %44, align 4, !annotation !8
  %45 = zext i8 %37 to i16
  store i16 %45, ptr %9, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %10, ptr %47, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %9, i32 noundef 1) #10
  %49 = icmp eq i32 %48, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #10
  br i1 %49, label %50, label %100

50:                                               ; preds = %32
  %51 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i8 17, ptr %7, align 4
  %52 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 -62, ptr %52, align 1
  %53 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 0, ptr %53, align 2
  %54 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 0, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 0, ptr %8, align 2, !annotation !8
  %55 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %56 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #10, !annotation !8
  %57 = zext i8 %51 to i16
  store i16 %57, ptr %6, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %58, align 2
  store i16 4, ptr %56, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %8, ptr %63, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %6, i32 noundef 2) #10
  %65 = icmp eq i32 %64, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  br i1 %65, label %67, label %66

66:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %100

67:                                               ; preds = %50
  %68 = load i8, ptr %8, align 2
  %69 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %70 = load i8, ptr %69, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %71 = and i8 %68, -9
  %72 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #10
  store i8 17, ptr %5, align 1
  %73 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -62, ptr %73, align 1
  %74 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %74, align 1
  %75 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 %71, ptr %76, align 1
  %77 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 %70, ptr %77, align 1
  %78 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %79 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 6, ptr %79, align 4, !annotation !8
  %80 = zext i8 %72 to i16
  store i16 %80, ptr %4, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %82, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %4, i32 noundef 1) #10
  %84 = icmp eq i32 %83, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #10
  br i1 %84, label %85, label %100

85:                                               ; preds = %67
  %86 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  store i8 18, ptr %3, align 1
  %87 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -62, ptr %87, align 1
  %88 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %88, align 1
  %89 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %89, align 1
  %90 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 1, ptr %90, align 1
  %91 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 0, ptr %91, align 1
  %92 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %93 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 6, ptr %93, align 4, !annotation !8
  %94 = zext i8 %86 to i16
  store i16 %94, ptr %2, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %96, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %2, i32 noundef 1) #10
  %98 = icmp ne i32 %97, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %99 = sext i1 %98 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  br label %100

100:                                              ; preds = %85, %67, %66, %32, %31
  %101 = phi i32 [ -1, %32 ], [ -1, %67 ], [ %99, %85 ], [ -1, %31 ], [ -1, %66 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @InitCE(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [6 x i8], align 1
  %12 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 60
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 42
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @WriteTable(ptr noundef %0, ptr noundef %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %111, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 61
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ %25, %23 ], [ %13, %18 ]
  switch i32 %27, label %94 [
    i32 0, label %28
    i32 1, label %44
    i32 2, label %60
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %30 = load i8, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #10
  store i8 17, ptr %11, align 1
  %31 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -127, ptr %31, align 1
  %32 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 1, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %11, i32 3
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds i8, ptr %11, i32 4
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds i8, ptr %11, i32 5
  store i8 0, ptr %35, align 1
  %36 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %38 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 6, ptr %38, align 4, !annotation !8
  %39 = zext i8 %30 to i16
  store i16 %39, ptr %10, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %41, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %10, i32 noundef 1) #10
  %43 = icmp eq i32 %42, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #10
  br i1 %43, label %94, label %111

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %46 = load i8, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #10
  store i8 17, ptr %9, align 1
  %47 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 -127, ptr %47, align 1
  %48 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 1, ptr %48, align 1
  %49 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds i8, ptr %9, i32 4
  store i8 1, ptr %50, align 1
  %51 = getelementptr inbounds i8, ptr %9, i32 5
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %54 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 6, ptr %54, align 4, !annotation !8
  %55 = zext i8 %46 to i16
  store i16 %55, ptr %8, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %57, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %8, i32 noundef 1) #10
  %59 = icmp eq i32 %58, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  br i1 %59, label %94, label %111

60:                                               ; preds = %26
  %61 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 56
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %65 = load i8, ptr %64, align 1
  br i1 %63, label %80, label %66

66:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #10
  store i8 17, ptr %7, align 1
  %67 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 -127, ptr %67, align 1
  %68 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 1, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 0, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %7, i32 4
  store i8 2, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %7, i32 5
  store i8 0, ptr %71, align 1
  %72 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %74 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 6, ptr %74, align 4, !annotation !8
  %75 = zext i8 %65 to i16
  store i16 %75, ptr %6, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %76, align 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %77, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %6, i32 noundef 1) #10
  %79 = icmp eq i32 %78, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #10
  br i1 %79, label %94, label %111

80:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #10
  store i8 17, ptr %5, align 1
  %81 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -127, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 1, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 6, ptr %84, align 1
  %85 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 0, ptr %85, align 1
  %86 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %88 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 6, ptr %88, align 4, !annotation !8
  %89 = zext i8 %65 to i16
  store i16 %89, ptr %4, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %91, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %4, i32 noundef 1) #10
  %93 = icmp eq i32 %92, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #10
  br i1 %93, label %94, label %111

94:                                               ; preds = %80, %66, %44, %28, %26
  %95 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %96 = load i8, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  %97 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -127, ptr %97, align 1
  %98 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 1, ptr %98, align 1
  %99 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %99, align 1
  %100 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 1, ptr %100, align 1
  %101 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 0, ptr %101, align 1
  %102 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %104 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 6, ptr %104, align 4, !annotation !8
  %105 = zext i8 %96 to i16
  store i16 %105, ptr %2, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %106, align 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %107, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %2, i32 noundef 1) #10
  %109 = icmp ne i32 %108, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %110 = sext i1 %109 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  br label %111

111:                                              ; preds = %94, %80, %66, %44, %28, %1
  %112 = phi i32 [ -1, %1 ], [ -1, %28 ], [ %110, %94 ], [ -1, %44 ], [ -1, %66 ], [ -1, %80 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @SetCfgIfAgc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca [2 x i8], align 2
  %13 = getelementptr inbounds %struct.SCfgAgc, ptr %1, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = icmp ugt i16 %14, 1023
  br i1 %15, label %176, label %16

16:                                               ; preds = %2
  %17 = load i32, ptr %1, align 4
  switch i32 %17, label %176 [
    i32 1, label %18
    i32 0, label %75
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %20 = load i8, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i8 16, ptr %11, align 4
  %21 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -62, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 0, ptr %22, align 2
  %23 = getelementptr inbounds i8, ptr %11, i32 3
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i16 0, ptr %12, align 2, !annotation !8
  %24 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  %26 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %26, i8 0, i32 16, i1 false) #10, !annotation !8
  %27 = zext i8 %20 to i16
  store i16 %27, ptr %10, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 4, ptr %26, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %12, ptr %33, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %10, i32 noundef 2) #10
  %35 = icmp eq i32 %34, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  br i1 %35, label %37, label %36

36:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %176

37:                                               ; preds = %18
  %38 = load i8, ptr %12, align 2
  %39 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  %41 = and i8 %38, -17
  %42 = load i8, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #10
  store i8 16, ptr %9, align 1
  %43 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 -62, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 0, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 0, ptr %45, align 1
  %46 = getelementptr inbounds i8, ptr %9, i32 4
  store i8 %41, ptr %46, align 1
  %47 = getelementptr inbounds i8, ptr %9, i32 5
  store i8 %40, ptr %47, align 1
  %48 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %49 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 6, ptr %49, align 4, !annotation !8
  %50 = zext i8 %42 to i16
  store i16 %50, ptr %8, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %52, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %8, i32 noundef 1) #10
  %54 = icmp eq i32 %53, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  br i1 %54, label %55, label %176

55:                                               ; preds = %37
  %56 = load i16, ptr %13, align 4
  %57 = load i8, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #10
  store i8 48, ptr %7, align 1
  %58 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 -62, ptr %58, align 1
  %59 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 0, ptr %59, align 1
  %60 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 0, ptr %60, align 1
  %61 = getelementptr inbounds i8, ptr %7, i32 4
  %62 = trunc i16 %56 to i8
  store i8 %62, ptr %61, align 1
  %63 = getelementptr inbounds i8, ptr %7, i32 5
  %64 = lshr i16 %56, 8
  %65 = trunc i16 %64 to i8
  %66 = and i8 %65, 7
  store i8 %66, ptr %63, align 1
  %67 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %68 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 6, ptr %68, align 4, !annotation !8
  %69 = zext i8 %57 to i16
  store i16 %69, ptr %6, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %70, align 2
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %71, align 4
  %72 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %6, i32 noundef 1) #10
  %73 = icmp ne i32 %72, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #10
  %74 = sext i1 %73 to i32
  br label %176

75:                                               ; preds = %16
  %76 = getelementptr inbounds %struct.SCfgAgc, ptr %1, i32 0, i32 4
  %77 = load i16, ptr %76, align 2
  %78 = getelementptr inbounds %struct.SCfgAgc, ptr %1, i32 0, i32 3
  %79 = load i16, ptr %78, align 4
  %80 = icmp ult i16 %77, %79
  %81 = icmp ugt i16 %77, 1023
  %82 = or i1 %81, %80
  br i1 %82, label %176, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.SCfgAgc, ptr %1, i32 0, i32 5
  %85 = load i16, ptr %84, align 4
  %86 = icmp ugt i16 %85, 1023
  br i1 %86, label %176, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.SCfgAgc, ptr %1, i32 0, i32 2
  %89 = load i16, ptr %88, align 2
  %90 = icmp ugt i16 %89, 1023
  br i1 %90, label %176, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %93 = load i8, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 16, ptr %4, align 4
  %94 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -62, ptr %94, align 1
  %95 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %95, align 2
  %96 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  %97 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %99 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %99, i8 0, i32 16, i1 false) #10, !annotation !8
  %100 = zext i8 %93 to i16
  store i16 %100, ptr %3, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %101, align 2
  store i16 4, ptr %99, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %102, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %100, ptr %103, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %104, align 2
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 2, ptr %105, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %5, ptr %106, align 4
  %107 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %3, i32 noundef 2) #10
  %108 = icmp eq i32 %107, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br i1 %108, label %110, label %109

109:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %176

110:                                              ; preds = %91
  %111 = load i8, ptr %5, align 2
  %112 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %113 = load i8, ptr %112, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %114 = zext i8 %113 to i16
  %115 = shl nuw i16 %114, 8
  %116 = or i8 %111, 16
  %117 = zext i8 %116 to i16
  %118 = or i16 %115, %117
  %119 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714000, i16 noundef zeroext %118, i8 noundef zeroext 0)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %176, label %121

121:                                              ; preds = %110
  %122 = load i16, ptr %88, align 2
  %123 = lshr i16 %122, 1
  %124 = and i16 %123, 511
  %125 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714021, i16 noundef zeroext %124, i8 noundef zeroext 0)
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %176, label %127

127:                                              ; preds = %121
  %128 = load i16, ptr %76, align 2
  %129 = zext i16 %128 to i32
  %130 = load i16, ptr %78, align 4
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 %129, %131
  %133 = sdiv i32 %132, 2
  %134 = trunc i32 %133 to i16
  %135 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714033, i16 noundef zeroext %134, i8 noundef zeroext 0)
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %176, label %137

137:                                              ; preds = %127
  %138 = add nuw nsw i32 %131, %129
  %139 = lshr i32 %138, 1
  %140 = trunc i32 %139 to i16
  %141 = add i16 %140, -511
  %142 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714034, i16 noundef zeroext %141, i8 noundef zeroext 0)
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %176, label %144

144:                                              ; preds = %137
  %145 = load i16, ptr %84, align 4
  %146 = udiv i16 %145, 113
  %147 = mul i16 %146, -113
  %148 = add i16 %147, %145
  %149 = icmp ugt i16 %145, 1016
  %150 = add i16 %148, 113
  %151 = sub nsw i16 8, %146
  %152 = select i1 %149, i16 %150, i16 %148
  %153 = select i1 %149, i16 0, i16 %151
  %154 = lshr i16 %152, 3
  %155 = zext i16 %154 to i32
  %156 = getelementptr [18 x i16], ptr @SetCfgIfAgc.fastIncrDecLUT, i32 0, i32 %155
  %157 = load i16, ptr %156, align 2
  %158 = udiv i16 %152, 28
  %159 = zext i16 %158 to i32
  %160 = getelementptr [5 x i16], ptr @SetCfgIfAgc.slowIncrDecLUT, i32 0, i32 %159
  %161 = load i16, ptr %160, align 2
  %162 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714020, i16 noundef zeroext %153, i8 noundef zeroext 0)
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %144
  %165 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714029, i16 noundef zeroext %157, i8 noundef zeroext 0)
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %164
  %168 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714030, i16 noundef zeroext %157, i8 noundef zeroext 0)
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %167
  %171 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714027, i16 noundef zeroext %161, i8 noundef zeroext 0)
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714028, i16 noundef zeroext %161, i8 noundef zeroext 0)
  %175 = ashr i32 %174, 31
  br label %176

176:                                              ; preds = %173, %170, %167, %164, %144, %137, %127, %121, %110, %109, %87, %83, %75, %55, %37, %36, %16, %2
  %177 = phi i32 [ -1, %2 ], [ -1, %87 ], [ -1, %83 ], [ -1, %75 ], [ -1, %16 ], [ -1, %37 ], [ %74, %55 ], [ -1, %36 ], [ -1, %110 ], [ -1, %121 ], [ -1, %127 ], [ -1, %137 ], [ -1, %144 ], [ -1, %164 ], [ -1, %167 ], [ -1, %170 ], [ %175, %173 ], [ -1, %109 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @SetCfgRfAgc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [6 x i8], align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [4 x i8], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [6 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [6 x i8], align 1
  %22 = alloca [2 x %struct.i2c_msg], align 4
  %23 = alloca [4 x i8], align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [6 x i8], align 1
  %27 = alloca [2 x %struct.i2c_msg], align 4
  %28 = alloca [4 x i8], align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [6 x i8], align 1
  %32 = alloca [2 x %struct.i2c_msg], align 4
  %33 = alloca [4 x i8], align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [6 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [6 x i8], align 1
  %39 = getelementptr inbounds %struct.SCfgAgc, ptr %1, i32 0, i32 1
  %40 = load i16, ptr %39, align 4
  %41 = icmp ugt i16 %40, 1023
  br i1 %41, label %360, label %42

42:                                               ; preds = %2
  %43 = load i32, ptr %1, align 4
  switch i32 %43, label %260 [
    i32 1, label %44
    i32 0, label %155
  ]

44:                                               ; preds = %42
  %45 = icmp eq i16 %40, 1023
  %46 = select i1 %45, i16 1024, i16 %40
  %47 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %48 = load i8, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %38) #10
  store i8 54, ptr %38, align 1
  %49 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 -62, ptr %49, align 1
  %50 = getelementptr inbounds i8, ptr %38, i32 2
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds i8, ptr %38, i32 3
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds i8, ptr %38, i32 4
  %53 = trunc i16 %46 to i8
  store i8 %53, ptr %52, align 1
  %54 = getelementptr inbounds i8, ptr %38, i32 5
  %55 = lshr i16 %46, 8
  %56 = trunc i16 %55 to i8
  store i8 %56, ptr %54, align 1
  %57 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %59 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 6, ptr %59, align 4, !annotation !8
  %60 = zext i8 %48 to i16
  store i16 %60, ptr %37, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %38, ptr %62, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %37, i32 noundef 1) #10
  %64 = icmp eq i32 %63, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %38) #10
  br i1 %64, label %65, label %360

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 32
  %67 = load i16, ptr %66, align 2
  %68 = and i16 %67, -3
  store i16 %68, ptr %66, align 2
  %69 = load i8, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %36) #10
  store i8 21, ptr %36, align 1
  %70 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 -62, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %36, i32 2
  store i8 0, ptr %71, align 1
  %72 = getelementptr inbounds i8, ptr %36, i32 3
  store i8 0, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %36, i32 4
  %74 = trunc i16 %68 to i8
  store i8 %74, ptr %73, align 1
  %75 = getelementptr inbounds i8, ptr %36, i32 5
  %76 = lshr i16 %67, 8
  %77 = trunc i16 %76 to i8
  store i8 %77, ptr %75, align 1
  %78 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %79 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 6, ptr %79, align 4, !annotation !8
  %80 = zext i8 %69 to i16
  store i16 %80, ptr %35, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %36, ptr %82, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %35, i32 noundef 1) #10
  %84 = icmp eq i32 %83, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %36) #10
  br i1 %84, label %85, label %360

85:                                               ; preds = %65
  %86 = load i8, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #10
  store i8 16, ptr %33, align 4
  %87 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 -62, ptr %87, align 1
  %88 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 0, ptr %88, align 2
  %89 = getelementptr inbounds i8, ptr %33, i32 3
  store i8 0, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #10
  store i16 0, ptr %34, align 2, !annotation !8
  %90 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #10
  %91 = getelementptr inbounds i8, ptr %32, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %91, i8 0, i32 16, i1 false) #10, !annotation !8
  %92 = zext i8 %86 to i16
  store i16 %92, ptr %32, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %93, align 2
  store i16 4, ptr %91, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %33, ptr %94, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1
  store i16 %92, ptr %95, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 1
  store i16 1, ptr %96, align 2
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 2
  store i16 2, ptr %97, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 3
  store ptr %34, ptr %98, align 4
  %99 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %32, i32 noundef 2) #10
  %100 = icmp eq i32 %99, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #10
  br i1 %100, label %102, label %101

101:                                              ; preds = %85
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #10
  br label %360

102:                                              ; preds = %85
  %103 = load i8, ptr %34, align 2
  %104 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  %105 = load i8, ptr %104, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #10
  %106 = zext i8 %105 to i16
  %107 = shl nuw i16 %106, 8
  %108 = zext i8 %103 to i16
  %109 = or i16 %107, %108
  %110 = and i16 %109, -16417
  %111 = load i8, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %31) #10
  store i8 16, ptr %31, align 1
  %112 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 -62, ptr %112, align 1
  %113 = getelementptr inbounds i8, ptr %31, i32 2
  store i8 0, ptr %113, align 1
  %114 = getelementptr inbounds i8, ptr %31, i32 3
  store i8 0, ptr %114, align 1
  %115 = getelementptr inbounds i8, ptr %31, i32 4
  %116 = trunc i16 %110 to i8
  store i8 %116, ptr %115, align 1
  %117 = getelementptr inbounds i8, ptr %31, i32 5
  %118 = lshr i16 %110, 8
  %119 = trunc i16 %118 to i8
  store i8 %119, ptr %117, align 1
  %120 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  %121 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 6, ptr %121, align 4, !annotation !8
  %122 = zext i8 %111 to i16
  store i16 %122, ptr %30, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %123, align 2
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %31, ptr %124, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %30, i32 noundef 1) #10
  %126 = icmp eq i32 %125, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %31) #10
  br i1 %126, label %127, label %360

127:                                              ; preds = %102
  %128 = load i8, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #10
  store i8 19, ptr %28, align 4
  %129 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 -62, ptr %129, align 1
  %130 = getelementptr inbounds i8, ptr %28, i32 2
  store i8 0, ptr %130, align 2
  %131 = getelementptr inbounds i8, ptr %28, i32 3
  store i8 0, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #10
  store i16 0, ptr %29, align 2, !annotation !8
  %132 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #10
  %133 = getelementptr inbounds i8, ptr %27, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %133, i8 0, i32 16, i1 false) #10, !annotation !8
  %134 = zext i8 %128 to i16
  store i16 %134, ptr %27, align 4
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %135, align 2
  store i16 4, ptr %133, align 4
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %28, ptr %136, align 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1
  store i16 %134, ptr %137, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 1
  store i16 1, ptr %138, align 2
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 2
  store i16 2, ptr %139, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 3
  store ptr %29, ptr %140, align 4
  %141 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %27, i32 noundef 2) #10
  %142 = icmp eq i32 %141, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #10
  br i1 %142, label %144, label %143

143:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #10
  br label %360

144:                                              ; preds = %127
  %145 = load i8, ptr %29, align 2
  %146 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  %147 = load i8, ptr %146, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #10
  %148 = zext i8 %147 to i16
  %149 = shl nuw i16 %148, 8
  %150 = and i8 %145, -3
  %151 = zext i8 %150 to i16
  %152 = or i16 %149, %151
  %153 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714003, i16 noundef zeroext %152, i8 noundef zeroext 0)
  %154 = ashr i32 %153, 31
  br label %360

155:                                              ; preds = %42
  %156 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 32
  %157 = load i16, ptr %156, align 2
  %158 = and i16 %157, -3
  store i16 %158, ptr %156, align 2
  %159 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %160 = load i8, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %26) #10
  store i8 21, ptr %26, align 1
  %161 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 -62, ptr %161, align 1
  %162 = getelementptr inbounds i8, ptr %26, i32 2
  store i8 0, ptr %162, align 1
  %163 = getelementptr inbounds i8, ptr %26, i32 3
  store i8 0, ptr %163, align 1
  %164 = getelementptr inbounds i8, ptr %26, i32 4
  %165 = trunc i16 %158 to i8
  store i8 %165, ptr %164, align 1
  %166 = getelementptr inbounds i8, ptr %26, i32 5
  %167 = lshr i16 %157, 8
  %168 = trunc i16 %167 to i8
  store i8 %168, ptr %166, align 1
  %169 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %170 = load ptr, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %171 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 6, ptr %171, align 4, !annotation !8
  %172 = zext i8 %160 to i16
  store i16 %172, ptr %25, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %173, align 2
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %26, ptr %174, align 4
  %175 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %25, i32 noundef 1) #10
  %176 = icmp eq i32 %175, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %26) #10
  br i1 %176, label %177, label %360

177:                                              ; preds = %155
  %178 = load i8, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #10
  store i8 16, ptr %23, align 4
  %179 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 -62, ptr %179, align 1
  %180 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 0, ptr %180, align 2
  %181 = getelementptr inbounds i8, ptr %23, i32 3
  store i8 0, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #10
  store i16 0, ptr %24, align 2, !annotation !8
  %182 = load ptr, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #10
  %183 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %183, i8 0, i32 16, i1 false) #10, !annotation !8
  %184 = zext i8 %178 to i16
  store i16 %184, ptr %22, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %185, align 2
  store i16 4, ptr %183, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %23, ptr %186, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  store i16 %184, ptr %187, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %188, align 2
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 2, ptr %189, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %24, ptr %190, align 4
  %191 = call i32 @i2c_transfer(ptr noundef %182, ptr noundef nonnull %22, i32 noundef 2) #10
  %192 = icmp eq i32 %191, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #10
  br i1 %192, label %194, label %193

193:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #10
  br label %360

194:                                              ; preds = %177
  %195 = load i8, ptr %24, align 2
  %196 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  %197 = load i8, ptr %196, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #10
  %198 = and i8 %195, -33
  %199 = load i8, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #10
  store i8 16, ptr %21, align 1
  %200 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 -62, ptr %200, align 1
  %201 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 0, ptr %201, align 1
  %202 = getelementptr inbounds i8, ptr %21, i32 3
  store i8 0, ptr %202, align 1
  %203 = getelementptr inbounds i8, ptr %21, i32 4
  store i8 %198, ptr %203, align 1
  %204 = getelementptr inbounds i8, ptr %21, i32 5
  %205 = or i8 %197, 64
  store i8 %205, ptr %204, align 1
  %206 = load ptr, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %207 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 6, ptr %207, align 4, !annotation !8
  %208 = zext i8 %199 to i16
  store i16 %208, ptr %20, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %209, align 2
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %21, ptr %210, align 4
  %211 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %20, i32 noundef 1) #10
  %212 = icmp eq i32 %211, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #10
  br i1 %212, label %213, label %360

213:                                              ; preds = %194
  %214 = getelementptr inbounds %struct.SCfgAgc, ptr %1, i32 0, i32 2
  %215 = load i16, ptr %214, align 2
  %216 = lshr i16 %215, 4
  %217 = load i8, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %19) #10
  store i8 81, ptr %19, align 1
  %218 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 -62, ptr %218, align 1
  %219 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 0, ptr %219, align 1
  %220 = getelementptr inbounds i8, ptr %19, i32 3
  store i8 0, ptr %220, align 1
  %221 = getelementptr inbounds i8, ptr %19, i32 4
  %222 = trunc i16 %216 to i8
  %223 = and i8 %222, 63
  store i8 %223, ptr %221, align 1
  %224 = getelementptr inbounds i8, ptr %19, i32 5
  store i8 0, ptr %224, align 1
  %225 = load ptr, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %226 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 6, ptr %226, align 4, !annotation !8
  %227 = zext i8 %217 to i16
  store i16 %227, ptr %18, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %228, align 2
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %19, ptr %229, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %18, i32 noundef 1) #10
  %231 = icmp eq i32 %230, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %19) #10
  br i1 %231, label %232, label %360

232:                                              ; preds = %213
  %233 = load i8, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  store i8 19, ptr %16, align 4
  %234 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 -62, ptr %234, align 1
  %235 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 0, ptr %235, align 2
  %236 = getelementptr inbounds i8, ptr %16, i32 3
  store i8 0, ptr %236, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #10
  store i16 0, ptr %17, align 2, !annotation !8
  %237 = load ptr, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #10
  %238 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %238, i8 0, i32 16, i1 false) #10, !annotation !8
  %239 = zext i8 %233 to i16
  store i16 %239, ptr %15, align 4
  %240 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %240, align 2
  store i16 4, ptr %238, align 4
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %16, ptr %241, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  store i16 %239, ptr %242, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %243, align 2
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 2, ptr %244, align 4
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %17, ptr %245, align 4
  %246 = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %15, i32 noundef 2) #10
  %247 = icmp eq i32 %246, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  br i1 %247, label %249, label %248

248:                                              ; preds = %232
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  br label %360

249:                                              ; preds = %232
  %250 = load i8, ptr %17, align 2
  %251 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  %252 = load i8, ptr %251, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  %253 = zext i8 %252 to i16
  %254 = shl nuw i16 %253, 8
  %255 = and i8 %250, -3
  %256 = zext i8 %255 to i16
  %257 = or i16 %254, %256
  %258 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 12714003, i16 noundef zeroext %257, i8 noundef zeroext 0)
  %259 = ashr i32 %258, 31
  br label %360

260:                                              ; preds = %42
  %261 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 32
  %262 = load i16, ptr %261, align 2
  %263 = or i16 %262, 2
  store i16 %263, ptr %261, align 2
  %264 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %265 = load i8, ptr %264, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #10
  store i8 21, ptr %14, align 1
  %266 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -62, ptr %266, align 1
  %267 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 0, ptr %267, align 1
  %268 = getelementptr inbounds i8, ptr %14, i32 3
  store i8 0, ptr %268, align 1
  %269 = getelementptr inbounds i8, ptr %14, i32 4
  %270 = trunc i16 %263 to i8
  store i8 %270, ptr %269, align 1
  %271 = getelementptr inbounds i8, ptr %14, i32 5
  %272 = lshr i16 %262, 8
  %273 = trunc i16 %272 to i8
  store i8 %273, ptr %271, align 1
  %274 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %275 = load ptr, ptr %274, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %276 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 6, ptr %276, align 4, !annotation !8
  %277 = zext i8 %265 to i16
  store i16 %277, ptr %13, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %278, align 2
  %279 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %14, ptr %279, align 4
  %280 = call i32 @i2c_transfer(ptr noundef %275, ptr noundef nonnull %13, i32 noundef 1) #10
  %281 = icmp eq i32 %280, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #10
  br i1 %281, label %282, label %360

282:                                              ; preds = %260
  %283 = load i8, ptr %264, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i8 16, ptr %11, align 4
  %284 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -62, ptr %284, align 1
  %285 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 0, ptr %285, align 2
  %286 = getelementptr inbounds i8, ptr %11, i32 3
  store i8 0, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i16 0, ptr %12, align 2, !annotation !8
  %287 = load ptr, ptr %274, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  %288 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %288, i8 0, i32 16, i1 false) #10, !annotation !8
  %289 = zext i8 %283 to i16
  store i16 %289, ptr %10, align 4
  %290 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %290, align 2
  store i16 4, ptr %288, align 4
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %291, align 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %289, ptr %292, align 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %293, align 2
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 2, ptr %294, align 4
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %12, ptr %295, align 4
  %296 = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %10, i32 noundef 2) #10
  %297 = icmp eq i32 %296, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  br i1 %297, label %299, label %298

298:                                              ; preds = %282
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %360

299:                                              ; preds = %282
  %300 = load i8, ptr %12, align 2
  %301 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %302 = load i8, ptr %301, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  %303 = zext i8 %302 to i16
  %304 = shl nuw i16 %303, 8
  %305 = zext i8 %300 to i16
  %306 = or i16 %304, %305
  %307 = and i16 %306, -16417
  %308 = load i8, ptr %264, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #10
  store i8 16, ptr %9, align 1
  %309 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 -62, ptr %309, align 1
  %310 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 0, ptr %310, align 1
  %311 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 0, ptr %311, align 1
  %312 = getelementptr inbounds i8, ptr %9, i32 4
  %313 = trunc i16 %307 to i8
  store i8 %313, ptr %312, align 1
  %314 = getelementptr inbounds i8, ptr %9, i32 5
  %315 = lshr i16 %307, 8
  %316 = trunc i16 %315 to i8
  store i8 %316, ptr %314, align 1
  %317 = load ptr, ptr %274, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %318 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 6, ptr %318, align 4, !annotation !8
  %319 = zext i8 %308 to i16
  store i16 %319, ptr %8, align 4
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %320, align 2
  %321 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %321, align 4
  %322 = call i32 @i2c_transfer(ptr noundef %317, ptr noundef nonnull %8, i32 noundef 1) #10
  %323 = icmp eq i32 %322, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  br i1 %323, label %324, label %360

324:                                              ; preds = %299
  %325 = load i8, ptr %264, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i8 19, ptr %6, align 4
  %326 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -62, ptr %326, align 1
  %327 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 0, ptr %327, align 2
  %328 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 0, ptr %328, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2, !annotation !8
  %329 = load ptr, ptr %274, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %330 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %330, i8 0, i32 16, i1 false) #10, !annotation !8
  %331 = zext i8 %325 to i16
  store i16 %331, ptr %5, align 4
  %332 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %332, align 2
  store i16 4, ptr %330, align 4
  %333 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %333, align 4
  %334 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %331, ptr %334, align 4
  %335 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %335, align 2
  %336 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %336, align 4
  %337 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %7, ptr %337, align 4
  %338 = call i32 @i2c_transfer(ptr noundef %329, ptr noundef nonnull %5, i32 noundef 2) #10
  %339 = icmp eq i32 %338, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  br i1 %339, label %341, label %340

340:                                              ; preds = %324
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %360

341:                                              ; preds = %324
  %342 = load i8, ptr %7, align 2
  %343 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %344 = load i8, ptr %343, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %345 = or i8 %342, 2
  %346 = load i8, ptr %264, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #10
  store i8 19, ptr %4, align 1
  %347 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -62, ptr %347, align 1
  %348 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %348, align 1
  %349 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %349, align 1
  %350 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 %345, ptr %350, align 1
  %351 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 %344, ptr %351, align 1
  %352 = load ptr, ptr %274, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %353 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 6, ptr %353, align 4, !annotation !8
  %354 = zext i8 %346 to i16
  store i16 %354, ptr %3, align 4
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %355, align 2
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %356, align 4
  %357 = call i32 @i2c_transfer(ptr noundef %352, ptr noundef nonnull %3, i32 noundef 1) #10
  %358 = icmp ne i32 %357, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #10
  %359 = sext i1 %358 to i32
  br label %360

360:                                              ; preds = %341, %340, %299, %298, %260, %249, %248, %213, %194, %193, %155, %144, %143, %102, %101, %65, %44, %2
  %361 = phi i32 [ -1, %2 ], [ -1, %44 ], [ -1, %65 ], [ -1, %102 ], [ -1, %101 ], [ %154, %144 ], [ -1, %143 ], [ -1, %155 ], [ -1, %194 ], [ -1, %213 ], [ -1, %193 ], [ %259, %249 ], [ -1, %248 ], [ -1, %260 ], [ -1, %299 ], [ -1, %298 ], [ %359, %341 ], [ -1, %340 ]
  ret i32 %361
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @StopOC(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [6 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [4 x i8], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [4 x i8], align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [4 x i8], align 4
  %22 = alloca [2 x i8], align 2
  %23 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 34
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %26 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #10
  store i8 22, ptr %21, align 4
  %27 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 21, ptr %27, align 1
  %28 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 2, ptr %28, align 2
  %29 = getelementptr inbounds i8, ptr %21, i32 3
  store i8 0, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i16 0, ptr %22, align 2, !annotation !8
  %30 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  %32 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #10, !annotation !8
  %33 = zext i8 %26 to i16
  store i16 %33, ptr %20, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 4, ptr %32, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %21, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  store i16 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %22, ptr %39, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %20, i32 noundef 2) #10
  %41 = icmp eq i32 %40, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  br i1 %41, label %43, label %42

42:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #10
  br label %190

43:                                               ; preds = %1
  %44 = load i8, ptr %22, align 2
  %45 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #10
  %47 = zext i8 %44 to i16
  %48 = zext i8 %46 to i16
  %49 = shl nuw i16 %48, 8
  %50 = or i16 %49, %47
  %51 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 35
  store i16 %50, ptr %51, align 4
  %52 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  store i8 52, ptr %18, align 4
  %53 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 21, ptr %53, align 1
  %54 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 2, ptr %54, align 2
  %55 = getelementptr inbounds i8, ptr %18, i32 3
  store i8 0, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i16 0, ptr %19, align 2, !annotation !8
  %56 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %57 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %57, i8 0, i32 16, i1 false) #10, !annotation !8
  %58 = zext i8 %52 to i16
  store i16 %58, ptr %17, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %59, align 2
  store i16 4, ptr %57, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %18, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  store i16 %58, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %19, ptr %64, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %17, i32 noundef 2) #10
  %66 = icmp eq i32 %65, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  br i1 %66, label %68, label %67

67:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  br label %190

68:                                               ; preds = %43
  %69 = load i8, ptr %19, align 2
  %70 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  %72 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #10
  store i8 53, ptr %15, align 4
  %73 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 21, ptr %73, align 1
  %74 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 2, ptr %74, align 2
  %75 = getelementptr inbounds i8, ptr %15, i32 3
  store i8 0, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i16 0, ptr %16, align 2, !annotation !8
  %76 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %77 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %77, i8 0, i32 16, i1 false) #10, !annotation !8
  %78 = zext i8 %72 to i16
  store i16 %78, ptr %14, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %79, align 2
  store i16 4, ptr %77, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %15, ptr %80, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  store i16 %78, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %82, align 2
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 2, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %16, ptr %84, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %14, i32 noundef 2) #10
  %86 = icmp eq i32 %85, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  br i1 %86, label %88, label %87

87:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  br label %190

88:                                               ; preds = %68
  %89 = load i8, ptr %16, align 2
  %90 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  %91 = load i8, ptr %90, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  %92 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #10
  store i8 20, ptr %13, align 1
  %93 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 21, ptr %93, align 1
  %94 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 2, ptr %94, align 1
  %95 = getelementptr inbounds i8, ptr %13, i32 3
  store i8 0, ptr %95, align 1
  %96 = getelementptr inbounds i8, ptr %13, i32 4
  store i8 %69, ptr %96, align 1
  %97 = getelementptr inbounds i8, ptr %13, i32 5
  store i8 %71, ptr %97, align 1
  %98 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %99 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 6, ptr %99, align 4, !annotation !8
  %100 = zext i8 %92 to i16
  store i16 %100, ptr %12, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %102, align 4
  %103 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %12, i32 noundef 1) #10
  %104 = icmp eq i32 %103, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #10
  br i1 %104, label %105, label %190

105:                                              ; preds = %88
  %106 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #10
  store i8 21, ptr %11, align 1
  %107 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 21, ptr %107, align 1
  %108 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 2, ptr %108, align 1
  %109 = getelementptr inbounds i8, ptr %11, i32 3
  store i8 0, ptr %109, align 1
  %110 = getelementptr inbounds i8, ptr %11, i32 4
  store i8 %89, ptr %110, align 1
  %111 = getelementptr inbounds i8, ptr %11, i32 5
  store i8 %91, ptr %111, align 1
  %112 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %113 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 6, ptr %113, align 4, !annotation !8
  %114 = zext i8 %106 to i16
  store i16 %114, ptr %10, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %116, align 4
  %117 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %10, i32 noundef 1) #10
  %118 = icmp eq i32 %117, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #10
  br i1 %118, label %119, label %190

119:                                              ; preds = %105
  %120 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #10
  store i8 16, ptr %9, align 1
  %121 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 21, ptr %121, align 1
  %122 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 2, ptr %122, align 1
  %123 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 0, ptr %123, align 1
  %124 = getelementptr inbounds i8, ptr %9, i32 4
  %125 = trunc i16 %24 to i8
  %126 = and i8 %125, -5
  store i8 %126, ptr %124, align 1
  %127 = getelementptr inbounds i8, ptr %9, i32 5
  %128 = lshr i16 %24, 8
  %129 = trunc i16 %128 to i8
  store i8 %129, ptr %127, align 1
  %130 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %131 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 6, ptr %131, align 4, !annotation !8
  %132 = zext i8 %120 to i16
  store i16 %132, ptr %8, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %134, align 4
  %135 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %8, i32 noundef 1) #10
  %136 = icmp eq i32 %135, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  br i1 %136, label %137, label %190

137:                                              ; preds = %119
  %138 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  %139 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 21, ptr %139, align 1
  %140 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 2, ptr %140, align 1
  %141 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 0, ptr %141, align 1
  %142 = getelementptr inbounds i8, ptr %7, i32 4
  store i8 2, ptr %142, align 1
  %143 = getelementptr inbounds i8, ptr %7, i32 5
  store i8 0, ptr %143, align 1
  %144 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %145 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 6, ptr %145, align 4, !annotation !8
  %146 = zext i8 %138 to i16
  store i16 %146, ptr %6, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %147, align 2
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %148, align 4
  %149 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %6, i32 noundef 1) #10
  %150 = icmp eq i32 %149, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #10
  br i1 %150, label %151, label %190

151:                                              ; preds = %137
  call void @msleep(i32 noundef 1) #10
  %152 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #10
  store i8 54, ptr %5, align 1
  %153 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 21, ptr %153, align 1
  %154 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 2, ptr %154, align 1
  %155 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %155, align 1
  %156 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 -1, ptr %156, align 1
  %157 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 15, ptr %157, align 1
  %158 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %159 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 6, ptr %159, align 4, !annotation !8
  %160 = zext i8 %152 to i16
  store i16 %160, ptr %4, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %161, align 2
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %162, align 4
  %163 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %4, i32 noundef 1) #10
  %164 = icmp eq i32 %163, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #10
  br i1 %164, label %165, label %190

165:                                              ; preds = %151
  %166 = and i8 %44, 15
  %167 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  store i8 22, ptr %3, align 1
  %168 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 21, ptr %168, align 1
  %169 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 2, ptr %169, align 1
  %170 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %170, align 1
  %171 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %166, ptr %171, align 1
  %172 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %46, ptr %172, align 1
  %173 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %174 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 6, ptr %174, align 4, !annotation !8
  %175 = zext i8 %167 to i16
  store i16 %175, ptr %2, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %176, align 2
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %177, align 4
  %178 = call i32 @i2c_transfer(ptr noundef %173, ptr noundef nonnull %2, i32 noundef 1) #10
  %179 = icmp eq i32 %178, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  br i1 %179, label %180, label %190

180:                                              ; preds = %165
  %181 = and i16 %24, -8
  %182 = or i16 %181, 2
  %183 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 34930704, i16 noundef zeroext %182, i8 noundef zeroext 0)
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 34930695, i16 noundef zeroext 0, i8 noundef zeroext 0)
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = call fastcc i32 @Write16(ptr noundef %0, i32 noundef 34930688, i16 noundef zeroext 1, i8 noundef zeroext 0)
  br label %190

190:                                              ; preds = %188, %185, %180, %165, %151, %137, %119, %105, %88, %87, %67, %42
  %191 = phi i32 [ -1, %88 ], [ -1, %105 ], [ -1, %119 ], [ -1, %137 ], [ -1, %151 ], [ -1, %165 ], [ -1, %180 ], [ -1, %185 ], [ %189, %188 ], [ -1, %42 ], [ -1, %67 ], [ -1, %87 ]
  ret i32 %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %5) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1) #11
  br label %23

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %11, align 4
  %15 = call ptr @kmemdup(ptr noundef %13, i32 noundef %14, i32 noundef 3264) #10
  %16 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 54
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  %18 = load ptr, ptr %3, align 4
  br i1 %17, label %19, label %20

19:                                               ; preds = %10
  call void @release_firmware(ptr noundef %18) #10
  br label %23

20:                                               ; preds = %10
  %21 = load i32, ptr %18, align 4
  %22 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 55
  store i32 %21, ptr %22, align 4
  call void @release_firmware(ptr noundef %18) #10
  br label %23

23:                                               ; preds = %20, %19, %8
  %24 = phi i32 [ -5, %8 ], [ 0, %20 ], [ -12, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HI_Command(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [6 x i8], align 1
  %11 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %12 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #10
  store i8 50, ptr %10, align 1
  %13 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 66, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %10, i32 3
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds i8, ptr %10, i32 4
  %17 = trunc i16 %1 to i8
  store i8 %17, ptr %16, align 1
  %18 = getelementptr inbounds i8, ptr %10, i32 5
  %19 = lshr i16 %1, 8
  %20 = trunc i16 %19 to i8
  store i8 %20, ptr %18, align 1
  %21 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %23 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 6, ptr %23, align 4, !annotation !8
  %24 = zext i8 %12 to i16
  store i16 %24, ptr %9, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %10, ptr %26, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %9, i32 noundef 1) #10
  %28 = icmp eq i32 %27, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #10
  br i1 %28, label %29, label %83

29:                                               ; preds = %2
  %30 = getelementptr inbounds i8, ptr %7, i32 1
  %31 = getelementptr inbounds i8, ptr %7, i32 2
  %32 = getelementptr inbounds i8, ptr %7, i32 3
  %33 = getelementptr inbounds i8, ptr %6, i32 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  %40 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  br label %41

41:                                               ; preds = %44, %29
  %42 = phi i32 [ %45, %44 ], [ 0, %29 ]
  %43 = icmp eq i32 %42, 1000
  br i1 %43, label %83, label %44

44:                                               ; preds = %41
  %45 = add nuw nsw i32 %42, 1
  %46 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i8 50, ptr %7, align 4
  store i8 66, ptr %30, align 1
  store i8 0, ptr %31, align 2
  store i8 0, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 0, ptr %8, align 2, !annotation !8
  %47 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #10, !annotation !8
  %48 = zext i8 %46 to i16
  store i16 %48, ptr %6, align 4
  store i16 0, ptr %34, align 2
  store i16 4, ptr %33, align 4
  store ptr %7, ptr %35, align 4
  store i16 %48, ptr %36, align 4
  store i16 1, ptr %37, align 2
  store i16 2, ptr %38, align 4
  store ptr %8, ptr %39, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %6, i32 noundef 2) #10
  %50 = icmp eq i32 %49, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  %51 = load i8, ptr %8, align 2
  %52 = load i8, ptr %40, align 1
  %53 = zext i8 %51 to i32
  %54 = zext i8 %52 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = or i32 %55, %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %50, i1 %57, i1 false
  br i1 %58, label %59, label %41

59:                                               ; preds = %44
  %60 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 49, ptr %4, align 4
  %61 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 66, ptr %61, align 1
  %62 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %62, align 2
  %63 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  %64 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %65 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %65, i8 0, i32 16, i1 false) #10, !annotation !8
  %66 = zext i8 %60 to i16
  store i16 %66, ptr %3, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %67, align 2
  store i16 4, ptr %65, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %68, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %66, ptr %69, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %70, align 2
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 2, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %5, ptr %72, align 4
  %73 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %3, i32 noundef 2) #10
  %74 = icmp eq i32 %73, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  %75 = load i8, ptr %5, align 2
  %76 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %75 to i32
  %79 = zext i8 %77 to i32
  %80 = shl nuw nsw i32 %79, 8
  %81 = or i32 %80, %78
  %82 = select i1 %74, i32 %81, i32 -1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %83

83:                                               ; preds = %59, %41, %2
  %84 = phi i32 [ -1, %2 ], [ %82, %59 ], [ -1, %41 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @DRX_GetLockStatus(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [4 x i8], align 4
  %15 = alloca [2 x i8], align 2
  store i32 0, ptr %1, align 4
  %16 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %17 = load i8, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i8 75, ptr %14, align 4
  %18 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -126, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 0, ptr %19, align 2
  %20 = getelementptr inbounds i8, ptr %14, i32 3
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i16 0, ptr %15, align 2, !annotation !8
  %21 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #10
  %23 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %23, i8 0, i32 16, i1 false) #10, !annotation !8
  %24 = zext i8 %17 to i16
  store i16 %24, ptr %13, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 4, ptr %23, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %14, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  store i16 %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %15, ptr %30, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %13, i32 noundef 2) #10
  %32 = icmp eq i32 %31, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #10
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef -1) #11
  br label %217

35:                                               ; preds = %2
  %36 = load i8, ptr %15, align 2
  %37 = zext i8 %36 to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  %38 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 19
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %217

41:                                               ; preds = %35
  %42 = and i16 %37, 7
  %43 = icmp eq i16 %42, 7
  br i1 %43, label %44, label %205

44:                                               ; preds = %41
  %45 = load i32, ptr %1, align 4
  %46 = or i32 %45, 1
  store i32 %46, ptr %1, align 4
  %47 = load i8, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i8 12, ptr %11, align 4
  %48 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -126, ptr %48, align 1
  %49 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 2, ptr %49, align 2
  %50 = getelementptr inbounds i8, ptr %11, i32 3
  store i8 0, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i32 0, ptr %12, align 4, !annotation !8
  %51 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  %52 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %52, i8 0, i32 16, i1 false) #10, !annotation !8
  %53 = zext i8 %47 to i16
  store i16 %53, ptr %10, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %54, align 2
  store i16 4, ptr %52, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %53, ptr %56, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 4, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %12, ptr %59, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %10, i32 noundef 2) #10
  %61 = icmp eq i32 %60, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  br i1 %61, label %63, label %62

62:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %205

63:                                               ; preds = %44
  %64 = load i8, ptr %12, align 4
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 8
  %70 = or i32 %69, %65
  %71 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 2
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = or i32 %70, %74
  %76 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw i32 %78, 24
  %80 = or i32 %75, %79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  %81 = load i8, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i8 16, ptr %8, align 4
  %82 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 -59, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 0, ptr %83, align 2
  %84 = getelementptr inbounds i8, ptr %8, i32 3
  store i8 0, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4, !annotation !8
  %85 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %86 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %86, i8 0, i32 16, i1 false) #10, !annotation !8
  %87 = zext i8 %81 to i16
  store i16 %87, ptr %7, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %88, align 2
  store i16 4, ptr %86, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %8, ptr %89, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %87, ptr %90, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %91, align 2
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 4, ptr %92, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %9, ptr %93, align 4
  %94 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %7, i32 noundef 2) #10
  %95 = icmp eq i32 %94, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br i1 %95, label %97, label %96

96:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br label %205

97:                                               ; preds = %63
  %98 = load i8, ptr %9, align 4
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or i32 %103, %99
  %105 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 2
  %106 = load i8, ptr %105, align 2
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 16
  %109 = or i32 %104, %108
  %110 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 3
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw i32 %112, 24
  %114 = or i32 %109, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %115 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 56
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %97
  %119 = add i32 %80, -501
  %120 = sub i32 %119, %114
  %121 = icmp ult i32 %120, -1001
  br i1 %121, label %205, label %126

122:                                              ; preds = %97
  %123 = add i32 %80, -2001
  %124 = sub i32 %123, %114
  %125 = icmp ult i32 %124, -4001
  br i1 %125, label %205, label %126

126:                                              ; preds = %122, %118
  %127 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 2, i32 7
  %128 = load i32, ptr %127, align 4
  switch i32 %128, label %205 [
    i32 8000000, label %131
    i32 7000000, label %129
    i32 6000000, label %130
  ]

129:                                              ; preds = %126
  br label %131

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %129, %126
  %132 = phi i32 [ 6857142, %130 ], [ 8000000, %129 ], [ 9142857, %126 ]
  %133 = add i32 %114, 8388608
  %134 = zext i32 %133 to i64
  %135 = zext i32 %132 to i64
  %136 = mul nuw nsw i64 %135, %134
  %137 = lshr i64 %136, 21
  %138 = trunc i64 %137 to i32
  %139 = freeze i32 %138
  %140 = udiv i32 %139, 1000
  %141 = mul i32 %140, 1000
  %142 = sub i32 %139, %141
  %143 = icmp ugt i32 %142, 500
  %144 = zext i1 %143 to i32
  %145 = add nuw nsw i32 %140, %144
  %146 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 22
  %147 = load i16, ptr %146, align 4
  %148 = zext i16 %147 to i32
  %149 = sub nsw i32 %145, %148
  %150 = mul i32 %149, 1000000
  %151 = sdiv i32 %150, %148
  %152 = trunc i32 %151 to i16
  %153 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 21
  %154 = load i16, ptr %153, align 2
  %155 = sub i16 200, %154
  %156 = add i16 %155, %152
  %157 = icmp ult i16 %156, 401
  br i1 %157, label %158, label %205

158:                                              ; preds = %131
  %159 = shl i32 %151, 16
  %160 = ashr exact i32 %159, 16
  %161 = trunc i32 %145 to i16
  %162 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 20
  store i16 %161, ptr %162, align 4
  %163 = sext i16 %154 to i32
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 10
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 6
  %171 = load ptr, ptr %170, align 4
  %172 = call signext i16 %167(ptr noundef %171, i16 noundef signext %152, i32 noundef 1) #10
  store i16 %152, ptr %153, align 2
  br label %173

173:                                              ; preds = %169, %165, %158
  %174 = load i8, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #10
  store i8 -24, ptr %6, align 1
  %175 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -126, ptr %175, align 1
  %176 = getelementptr inbounds i8, ptr %6, i32 2
  store i32 0, ptr %176, align 1
  %177 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %178 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 6, ptr %178, align 4, !annotation !8
  %179 = zext i8 %174 to i16
  store i16 %179, ptr %5, align 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %180, align 2
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %181, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %5, i32 noundef 1) #10
  %183 = icmp eq i32 %182, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #10
  br i1 %183, label %184, label %205

184:                                              ; preds = %173
  %185 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 31
  %186 = load i16, ptr %185, align 4
  %187 = load i8, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #10
  store i8 -114, ptr %4, align 1
  %188 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -126, ptr %188, align 1
  %189 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %189, align 1
  %190 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %190, align 1
  %191 = getelementptr inbounds i8, ptr %4, i32 4
  %192 = trunc i16 %186 to i8
  store i8 %192, ptr %191, align 1
  %193 = getelementptr inbounds i8, ptr %4, i32 5
  %194 = lshr i16 %186, 8
  %195 = trunc i16 %194 to i8
  store i8 %195, ptr %193, align 1
  %196 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %197 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 6, ptr %197, align 4, !annotation !8
  %198 = zext i8 %187 to i16
  store i16 %198, ptr %3, align 4
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %199, align 2
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %200, align 4
  %201 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %3, i32 noundef 1) #10
  %202 = icmp eq i32 %201, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #10
  br i1 %202, label %203, label %205

203:                                              ; preds = %184
  %204 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 18
  store i32 2, ptr %204, align 4
  br label %205

205:                                              ; preds = %203, %184, %173, %131, %126, %122, %118, %96, %62, %41
  %206 = and i16 %37, 3
  %207 = icmp eq i16 %206, 3
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32, ptr %1, align 4
  %210 = or i32 %209, 2
  store i32 %210, ptr %1, align 4
  br label %211

211:                                              ; preds = %208, %205
  %212 = and i16 %37, 1
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load i32, ptr %1, align 4
  %216 = or i32 %215, 4
  store i32 %216, ptr %1, align 4
  br label %217

217:                                              ; preds = %214, %211, %35, %33
  %218 = phi i32 [ -1, %33 ], [ 0, %35 ], [ 0, %214 ], [ 0, %211 ]
  ret i32 %218
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @SC_SendCommand(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [6 x i8], align 1
  %11 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %12 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #10
  store i8 67, ptr %10, align 1
  %13 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 -126, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %10, i32 3
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds i8, ptr %10, i32 4
  %17 = trunc i16 %1 to i8
  store i8 %17, ptr %16, align 1
  %18 = getelementptr inbounds i8, ptr %10, i32 5
  %19 = lshr i16 %1, 8
  %20 = trunc i16 %19 to i8
  store i8 %20, ptr %18, align 1
  %21 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %23 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 6, ptr %23, align 4, !annotation !8
  %24 = zext i8 %12 to i16
  store i16 %24, ptr %9, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %10, ptr %26, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %9, i32 noundef 1) #10
  %28 = icmp eq i32 %27, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #10
  br i1 %28, label %29, label %92

29:                                               ; preds = %2
  %30 = getelementptr inbounds i8, ptr %7, i32 1
  %31 = getelementptr inbounds i8, ptr %7, i32 2
  %32 = getelementptr inbounds i8, ptr %7, i32 3
  %33 = getelementptr inbounds i8, ptr %6, i32 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  %40 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  br label %41

41:                                               ; preds = %51, %29
  %42 = phi i32 [ 0, %29 ], [ %52, %51 ]
  %43 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i8 67, ptr %7, align 4
  store i8 -126, ptr %30, align 1
  store i8 0, ptr %31, align 2
  store i8 0, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 0, ptr %8, align 2, !annotation !8
  %44 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #10, !annotation !8
  %45 = zext i8 %43 to i16
  store i16 %45, ptr %6, align 4
  store i16 0, ptr %34, align 2
  store i16 4, ptr %33, align 4
  store ptr %7, ptr %35, align 4
  store i16 %45, ptr %36, align 4
  store i16 1, ptr %37, align 2
  store i16 2, ptr %38, align 4
  store ptr %8, ptr %39, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 2) #10
  %47 = icmp eq i32 %46, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %49 = add nuw nsw i32 %42, 1
  %50 = icmp eq i32 %49, 1000
  br i1 %50, label %64, label %51

51:                                               ; preds = %53, %48
  %52 = phi i32 [ %49, %48 ], [ %61, %53 ]
  br label %41

53:                                               ; preds = %41
  %54 = load i8, ptr %8, align 2
  %55 = load i8, ptr %40, align 1
  %56 = zext i8 %54 to i32
  %57 = zext i8 %55 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %58, %56
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %60 = icmp eq i32 %59, 0
  %61 = add nuw nsw i32 %42, 1
  %62 = icmp eq i32 %61, 1000
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %64, label %51

64:                                               ; preds = %53, %48
  %65 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 66, ptr %4, align 4
  %66 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -126, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %67, align 2
  %68 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  %69 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %70 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %70, i8 0, i32 16, i1 false) #10, !annotation !8
  %71 = zext i8 %65 to i16
  store i16 %71, ptr %3, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %72, align 2
  store i16 4, ptr %70, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %71, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 2, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %5, ptr %77, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %3, i32 noundef 2) #10
  %79 = icmp eq i32 %78, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br i1 %79, label %81, label %80

80:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %90

81:                                               ; preds = %64
  %82 = load i8, ptr %5, align 2
  %83 = zext i8 %82 to i16
  %84 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i16
  %87 = shl nuw i16 %86, 8
  %88 = or i16 %87, %83
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %89 = icmp eq i16 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %81, %80
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %92

92:                                               ; preds = %90, %81, %2
  %93 = phi i32 [ -1, %2 ], [ -1, %90 ], [ 0, %81 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HI_CfgCommand(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [6 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [6 x i8], align 1
  %16 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 7, i32 5
  %18 = load i8, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #10
  store i8 51, ptr %15, align 1
  %19 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 66, ptr %19, align 1
  %20 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds i8, ptr %15, i32 3
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %15, i32 4
  store i8 115, ptr %22, align 1
  %23 = getelementptr inbounds i8, ptr %15, i32 5
  store i8 57, ptr %23, align 1
  %24 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %26 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 6, ptr %26, align 4, !annotation !8
  %27 = zext i8 %18 to i16
  store i16 %27, ptr %14, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %15, ptr %29, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %14, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #10
  %31 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 12
  %32 = load i16, ptr %31, align 2
  %33 = load i8, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #10
  store i8 52, ptr %13, align 1
  %34 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 66, ptr %34, align 1
  %35 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 0, ptr %35, align 1
  %36 = getelementptr inbounds i8, ptr %13, i32 3
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds i8, ptr %13, i32 4
  %38 = trunc i16 %32 to i8
  store i8 %38, ptr %37, align 1
  %39 = getelementptr inbounds i8, ptr %13, i32 5
  %40 = lshr i16 %32, 8
  %41 = trunc i16 %40 to i8
  store i8 %41, ptr %39, align 1
  %42 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %43 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 6, ptr %43, align 4, !annotation !8
  %44 = zext i8 %33 to i16
  store i16 %44, ptr %12, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %46, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %12, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #10
  %48 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 13
  %49 = load i16, ptr %48, align 4
  %50 = load i8, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #10
  store i8 53, ptr %11, align 1
  %51 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 66, ptr %51, align 1
  %52 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 0, ptr %52, align 1
  %53 = getelementptr inbounds i8, ptr %11, i32 3
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds i8, ptr %11, i32 4
  %55 = trunc i16 %49 to i8
  store i8 %55, ptr %54, align 1
  %56 = getelementptr inbounds i8, ptr %11, i32 5
  %57 = lshr i16 %49, 8
  %58 = trunc i16 %57 to i8
  store i8 %58, ptr %56, align 1
  %59 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %60 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 6, ptr %60, align 4, !annotation !8
  %61 = zext i8 %50 to i16
  store i16 %61, ptr %10, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %63, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %10, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #10
  %65 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 14
  %66 = load i16, ptr %65, align 2
  %67 = load i8, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #10
  store i8 54, ptr %9, align 1
  %68 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 66, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 0, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 0, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %9, i32 4
  %72 = trunc i16 %66 to i8
  store i8 %72, ptr %71, align 1
  %73 = getelementptr inbounds i8, ptr %9, i32 5
  %74 = lshr i16 %66, 8
  %75 = trunc i16 %74 to i8
  store i8 %75, ptr %73, align 1
  %76 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %77 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 6, ptr %77, align 4, !annotation !8
  %78 = zext i8 %67 to i16
  store i16 %78, ptr %8, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %80, align 4
  %81 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %8, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  %82 = getelementptr inbounds %struct.drxd_state, ptr %0, i32 0, i32 15
  %83 = load i16, ptr %82, align 4
  %84 = load i8, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #10
  store i8 55, ptr %7, align 1
  %85 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 66, ptr %85, align 1
  %86 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 0, ptr %86, align 1
  %87 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 0, ptr %87, align 1
  %88 = getelementptr inbounds i8, ptr %7, i32 4
  %89 = trunc i16 %83 to i8
  store i8 %89, ptr %88, align 1
  %90 = getelementptr inbounds i8, ptr %7, i32 5
  %91 = lshr i16 %83, 8
  %92 = trunc i16 %91 to i8
  store i8 %92, ptr %90, align 1
  %93 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %94 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 6, ptr %94, align 4, !annotation !8
  %95 = zext i8 %84 to i16
  store i16 %95, ptr %6, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %96, align 2
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %97, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #10
  %99 = load i8, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #10
  store i8 51, ptr %5, align 1
  %100 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 66, ptr %100, align 1
  %101 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %101, align 1
  %102 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %102, align 1
  %103 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 115, ptr %103, align 1
  %104 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 57, ptr %104, align 1
  %105 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %106 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 6, ptr %106, align 4, !annotation !8
  %107 = zext i8 %99 to i16
  store i16 %107, ptr %4, align 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %108, align 2
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %109, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #10
  %111 = load i16, ptr %82, align 4
  %112 = and i16 %111, 8
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %1
  %115 = load i8, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  store i8 50, ptr %3, align 1
  %116 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 66, ptr %116, align 1
  %117 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %117, align 1
  %118 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %118, align 1
  %119 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 3, ptr %119, align 1
  %120 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 0, ptr %120, align 1
  %121 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %122 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 6, ptr %122, align 4, !annotation !8
  %123 = zext i8 %115 to i16
  store i16 %123, ptr %2, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %124, align 2
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %125, align 4
  %126 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %2, i32 noundef 1) #10
  %127 = icmp ne i32 %126, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %128 = sext i1 %127 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  br label %131

129:                                              ; preds = %1
  %130 = call fastcc i32 @HI_Command(ptr noundef %0, i16 noundef zeroext 3)
  br label %131

131:                                              ; preds = %129, %114
  %132 = phi i32 [ %128, %114 ], [ %130, %129 ]
  call void @mutex_unlock(ptr noundef %16) #10
  ret i32 %132
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!10 = !{i64 2148399203, i64 2148399483, i64 2148399817, i64 2148400151}
