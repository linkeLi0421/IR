; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cx24117.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24117.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24117_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24117_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24117_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cx24117_modfec = type { i32, i32, i32, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cx24117_priv = type { i8, ptr, i8, %struct.mutex, %struct.tuner_i2c_props, %struct.list_head }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.cx24117_state = type { ptr, %struct.dvb_frontend, %struct.cx24117_tuning, %struct.cx24117_tuning, %struct.cx24117_cmd, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cx24117_tuning = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.cx24117_cmd = type { i8, [30 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.firmware = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [33 x i8] c"%s: Error attaching frontend %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cx24117\00", align 1
@cx24117_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&priv->fe_lock\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Attaching frontend %d\0A\00", align 1
@cx24117_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24117/CX24132\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @cx24117_release, ptr null, ptr @cx24117_initfe, ptr @cx24117_sleep, ptr null, ptr null, ptr null, ptr @cx24117_tune, ptr @cx24117_get_algo, ptr @cx24117_set_frontend, ptr null, ptr @cx24117_get_frontend, ptr @cx24117_read_status, ptr @cx24117_read_ber, ptr @cx24117_read_signal_strength, ptr @cx24117_read_snr, ptr @cx24117_read_ucblocks, ptr null, ptr @cx24117_send_diseqc_msg, ptr null, ptr @cx24117_diseqc_send_burst, ptr @cx24117_set_tone, ptr @cx24117_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_cx24117_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24117_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24117_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24117_attach to i32), ptr @__kstrtab_cx24117_attach, ptr @__kstrtabns_cx24117_attach }, section "___ksymtab_gpl+cx24117_attach", align 4
@__UNIQUE_ID_description249 = internal constant [70 x i8] c"description=DVB Frontend module for Conexant cx24117/cx24132 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [37 x i8] c"author=Luis Alves (ljalvs@gmail.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version252 = internal constant [12 x i8] c"version=1.1\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [27 x i8] c"firmware=dvb-fe-cx24117.fw\00", section ".modinfo", align 1
@cx24117_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cx24117_list_mutex, i64 12), ptr getelementptr (i8, ptr @cx24117_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s() Firmware not responding\0A\00", align 1
@__func__.cx24117_cmd_execute_nolock = private unnamed_addr constant [27 x i8] c"cx24117_cmd_execute_nolock\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"dvb-fe-cx24117.fw\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"%s: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@__func__.cx24117_firmware_ondemand = private unnamed_addr constant [26 x i8] c"cx24117_firmware_ondemand\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s: Writing firmware failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s: Firmware upload %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%s: FW version %i.%i.%i.%i\0A\00", align 1
@__func__.cx24117_load_firmware = private unnamed_addr constant [22 x i8] c"cx24117_load_firmware\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"%s() Error running FW.\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"%s: demod%d i2c wr cmd err(%i) len=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"%s: demod%d i2c wr err(%i) @0x%02x=0x%02x\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%s: demod%d i2c rd err(%d) @0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"%s: demod%d unsupported rolloff (%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"%s: demod %d unsupported delivery system (%d)\0A\00", align 1
@cx24117_modfec_modes = internal unnamed_addr constant [28 x %struct.cx24117_modfec] [%struct.cx24117_modfec { i32 5, i32 0, i32 0, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 1, i8 2, i8 46 }, %struct.cx24117_modfec { i32 5, i32 0, i32 2, i8 4, i8 47 }, %struct.cx24117_modfec { i32 5, i32 0, i32 3, i8 8, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 4, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 5, i8 32, i8 49 }, %struct.cx24117_modfec { i32 5, i32 0, i32 6, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 7, i8 -128, i8 50 }, %struct.cx24117_modfec { i32 5, i32 0, i32 8, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 9, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 6, i32 0, i32 0, i8 0, i8 0 }, %struct.cx24117_modfec { i32 6, i32 0, i32 1, i8 0, i8 4 }, %struct.cx24117_modfec { i32 6, i32 0, i32 10, i8 0, i8 5 }, %struct.cx24117_modfec { i32 6, i32 0, i32 2, i8 0, i8 6 }, %struct.cx24117_modfec { i32 6, i32 0, i32 3, i8 0, i8 7 }, %struct.cx24117_modfec { i32 6, i32 0, i32 4, i8 0, i8 8 }, %struct.cx24117_modfec { i32 6, i32 0, i32 5, i8 0, i8 9 }, %struct.cx24117_modfec { i32 6, i32 0, i32 8, i8 0, i8 10 }, %struct.cx24117_modfec { i32 6, i32 0, i32 11, i8 0, i8 11 }, %struct.cx24117_modfec { i32 6, i32 0, i32 9, i8 0, i8 0 }, %struct.cx24117_modfec { i32 6, i32 9, i32 0, i8 0, i8 0 }, %struct.cx24117_modfec { i32 6, i32 9, i32 10, i8 0, i8 12 }, %struct.cx24117_modfec { i32 6, i32 9, i32 2, i8 0, i8 13 }, %struct.cx24117_modfec { i32 6, i32 9, i32 3, i8 0, i8 14 }, %struct.cx24117_modfec { i32 6, i32 9, i32 5, i8 0, i8 15 }, %struct.cx24117_modfec { i32 6, i32 9, i32 8, i8 0, i8 16 }, %struct.cx24117_modfec { i32 6, i32 9, i32 11, i8 0, i8 17 }, %struct.cx24117_modfec { i32 6, i32 9, i32 9, i8 0, i8 0 }], align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"%s: demod%d LNB not ready\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"%s: demod%d invalid tone=%d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_license251, ptr @__UNIQUE_ID_version252, ptr @__ksymtab_cx24117_attach], section "llvm.metadata"
@switch.table.cx24117_set_frontend = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cx24117_attach(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load i8, ptr %0, align 1
  tail call void @mutex_lock(ptr noundef nonnull @cx24117_list_mutex) #10
  %4 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %5 = icmp eq ptr %4, @hybrid_tuner_instance_list
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  br label %9

9:                                                ; preds = %24, %6
  %10 = phi ptr [ %4, %6 ], [ %25, %24 ]
  br i1 %7, label %24, label %11

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %10, i32 -12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %8, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %10, i32 -16
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, %3
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %15, %11, %9
  %25 = load ptr, ptr %10, align 4
  %26 = icmp eq ptr %25, @hybrid_tuner_instance_list
  br i1 %26, label %37, label %9

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %10, i32 -48
  %29 = getelementptr i8, ptr %10, i32 -4
  %30 = load ptr, ptr %29, align 4
  %31 = zext i8 %3 to i32
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %30, i32 noundef %17, i32 noundef %31) #11
  %33 = getelementptr i8, ptr %10, i32 -8
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %27, %24, %2
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 56) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @mutex_unlock(ptr noundef nonnull @cx24117_list_mutex) #10
  br label %69

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cx24117_priv, ptr %39, i32 0, i32 4
  store i8 %3, ptr %43, align 8
  %44 = getelementptr inbounds %struct.cx24117_priv, ptr %39, i32 0, i32 4, i32 1
  store ptr %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cx24117_priv, ptr %39, i32 0, i32 4, i32 3
  store ptr @.str.1, ptr %45, align 4
  %46 = icmp eq ptr %1, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %49, %47 ], [ -1, %42 ]
  %52 = zext i8 %3 to i32
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %51, i32 noundef %52) #11
  %54 = getelementptr inbounds %struct.cx24117_priv, ptr %39, i32 0, i32 5
  %55 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %54, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %54, align 8
  %56 = getelementptr inbounds %struct.cx24117_priv, ptr %39, i32 0, i32 5, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %54, ptr %55, align 4
  %57 = getelementptr inbounds %struct.cx24117_priv, ptr %39, i32 0, i32 4, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %50, %27
  %61 = phi ptr [ %39, %50 ], [ %28, %27 ]
  %62 = phi i32 [ %59, %50 ], [ %35, %27 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cx24117_list_mutex) #10
  switch i32 %62, label %69 [
    i32 0, label %63
    i32 1, label %65
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0) #11
  br label %112

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.cx24117_priv, ptr %61, i32 0, i32 1
  store ptr %1, ptr %66, align 4
  %67 = load i8, ptr %0, align 1
  store i8 %67, ptr %61, align 4
  %68 = getelementptr inbounds %struct.cx24117_priv, ptr %61, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %68, ptr noundef nonnull @.str.2, ptr noundef nonnull @cx24117_attach.__key) #10
  br label %69

69:                                               ; preds = %65, %60, %41
  %70 = phi i32 [ -12, %41 ], [ %62, %60 ], [ 1, %65 ]
  %71 = phi ptr [ null, %41 ], [ %61, %60 ], [ %61, %65 ]
  %72 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %73 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 1160) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %69
  %76 = add i32 %70, -1
  %77 = getelementptr inbounds %struct.cx24117_state, ptr %73, i32 0, i32 5
  store i32 %76, ptr %77, align 4
  store ptr %71, ptr %73, align 8
  %78 = getelementptr inbounds %struct.cx24117_priv, ptr %71, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.i2c_adapter, ptr %79, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %76) #11
  %81 = getelementptr inbounds %struct.cx24117_state, ptr %73, i32 0, i32 1
  %82 = getelementptr inbounds %struct.cx24117_state, ptr %73, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %82, ptr noundef nonnull align 4 dereferenceable(544) @cx24117_ops, i32 544, i1 false)
  %83 = getelementptr inbounds %struct.cx24117_state, ptr %73, i32 0, i32 1, i32 3
  store ptr %73, ptr %83, align 4
  br label %112

84:                                               ; preds = %69
  tail call void @mutex_lock(ptr noundef nonnull @cx24117_list_mutex) #10
  %85 = icmp eq ptr %71, null
  br i1 %85, label %111, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.cx24117_priv, ptr %71, i32 0, i32 4
  %88 = getelementptr inbounds %struct.cx24117_priv, ptr %71, i32 0, i32 4, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, -1
  store i32 %90, ptr %88, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.cx24117_priv, ptr %71, i32 0, i32 4, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.cx24117_priv, ptr %71, i32 0, i32 4, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.i2c_adapter, ptr %96, i32 0, i32 11
  %100 = load i32, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = phi i32 [ %100, %98 ], [ -1, %92 ]
  %103 = load i8, ptr %87, align 4
  %104 = zext i8 %103 to i32
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %94, i32 noundef %102, i32 noundef %104) #11
  %106 = getelementptr inbounds %struct.cx24117_priv, ptr %71, i32 0, i32 5
  %107 = getelementptr inbounds %struct.cx24117_priv, ptr %71, i32 0, i32 5, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %106, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %108, ptr %110, align 4
  store volatile ptr %109, ptr %108, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %106, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %107, align 4
  tail call void @kfree(ptr noundef nonnull %71) #10
  br label %111

111:                                              ; preds = %101, %86, %84
  tail call void @mutex_unlock(ptr noundef nonnull @cx24117_list_mutex) #10
  br label %112

112:                                              ; preds = %111, %75, %63
  %113 = phi ptr [ %81, %75 ], [ null, %111 ], [ null, %63 ]
  ret ptr %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cx24117_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @cx24117_list_mutex) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 4
  %8 = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 4, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 4, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %20, %18 ], [ -1, %12 ]
  %23 = load i8, ptr %7, align 4
  %24 = zext i8 %23 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %14, i32 noundef %22, i32 noundef %24) #11
  %26 = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 5
  %27 = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 5, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %31

31:                                               ; preds = %21, %6, %1
  tail call void @mutex_unlock(ptr noundef nonnull @cx24117_list_mutex) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_initfe(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.cx24117_cmd, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %2) #10
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %5, i8 0, i32 27, i1 false), !annotation !8
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.cx24117_priv, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.cx24117_cmd, ptr %2, i32 0, i32 1
  store i8 54, ptr %8, align 1
  %9 = getelementptr inbounds %struct.cx24117_state, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.cx24117_cmd, ptr %2, i32 0, i32 1, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.cx24117_cmd, ptr %2, i32 0, i32 1, i32 2
  store i8 0, ptr %14, align 1
  store i8 3, ptr %2, align 1
  %15 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.cx24117_state, ptr %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.cx24117_state, ptr %18, i32 0, i32 4, i32 1
  store i8 33, ptr %20, align 1
  %21 = getelementptr inbounds %struct.cx24117_state, ptr %18, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr %struct.cx24117_state, ptr %18, i32 0, i32 4, i32 1, i32 1
  store i8 %24, ptr %25, align 1
  %26 = getelementptr %struct.cx24117_state, ptr %18, i32 0, i32 4, i32 1, i32 2
  store i8 0, ptr %26, align 1
  %27 = getelementptr %struct.cx24117_state, ptr %18, i32 0, i32 4, i32 1, i32 3
  store i8 2, ptr %27, align 1
  %28 = getelementptr %struct.cx24117_state, ptr %18, i32 0, i32 4, i32 1, i32 4
  store i8 0, ptr %28, align 1
  %29 = getelementptr %struct.cx24117_state, ptr %18, i32 0, i32 4, i32 1, i32 5
  store i8 0, ptr %29, align 1
  %30 = getelementptr %struct.cx24117_state, ptr %18, i32 0, i32 4, i32 1, i32 6
  store i8 0, ptr %30, align 1
  store i8 7, ptr %19, align 4
  store i8 60, ptr %8, align 1
  %31 = load i32, ptr %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %13, align 1
  store i8 16, ptr %14, align 1
  %34 = getelementptr inbounds %struct.cx24117_cmd, ptr %2, i32 0, i32 1, i32 3
  store i8 16, ptr %34, align 1
  store i8 4, ptr %2, align 1
  %35 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %2)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %17
  store i8 52, ptr %8, align 1
  %38 = load i32, ptr %9, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %13, align 1
  store i8 1, ptr %14, align 1
  store i8 3, ptr %2, align 1
  %41 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %2)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  store i8 50, ptr %8, align 1
  store i8 48, ptr %13, align 1
  store i8 48, ptr %14, align 1
  store i8 3, ptr %2, align 1
  %44 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %2)
  br label %45

45:                                               ; preds = %43, %37, %17, %1
  %46 = phi i32 [ %15, %1 ], [ %35, %17 ], [ %41, %37 ], [ %44, %43 ]
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.cx24117_priv, ptr %47, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %48) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %2) #10
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.cx24117_cmd, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %2) #10
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %5, i8 0, i32 27, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.cx24117_cmd, ptr %2, i32 0, i32 1
  store i8 54, ptr %6, align 1
  %7 = getelementptr inbounds %struct.cx24117_state, ptr %4, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.cx24117_cmd, ptr %2, i32 0, i32 1, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.cx24117_cmd, ptr %2, i32 0, i32 1, i32 2
  store i8 1, ptr %12, align 1
  store i8 3, ptr %2, align 1
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.cx24117_priv, ptr %13, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %14) #10
  %15 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %2) #10
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.cx24117_priv, ptr %16, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %17) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %2) #10
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_tune(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) #0 {
  store i32 20, ptr %3, align 4
  br i1 %1, label %6, label %9

6:                                                ; preds = %5
  %7 = tail call i32 @cx24117_set_frontend(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %5
  %10 = tail call i32 @cx24117_read_status(ptr noundef %0, ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ 0, %9 ], [ %7, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cx24117_get_algo(ptr nocapture noundef readnone %0) #7 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_set_frontend(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.cx24117_cmd, align 1
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %11, i8 0, i32 31, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i32 0, ptr %12, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %47 [
    i32 5, label %18
    i32 6, label %24
  ]

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %300

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 11
  store i8 0, ptr %23, align 1
  br label %60

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %300 [
    i32 9, label %27
    i32 0, label %27
  ]

27:                                               ; preds = %24, %24
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %300

31:                                               ; preds = %27
  %32 = trunc i32 %29 to i24
  %33 = shl i24 %32, 3
  %34 = lshr i24 -8388544, %33
  %35 = trunc i24 %34 to i8
  %36 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 11
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %54, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr inbounds %struct.cx24117_priv, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef %46, i32 noundef %38) #11
  br label %300

47:                                               ; preds = %1
  %48 = load ptr, ptr %14, align 4
  %49 = getelementptr inbounds %struct.cx24117_priv, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 9
  %52 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef %53, i32 noundef %17) #11
  br label %300

54:                                               ; preds = %31
  %55 = shl i32 %38, 3
  %56 = lshr i32 33619970, %55
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [4 x i32], ptr @switch.table.cx24117_set_frontend, i32 0, i32 %38
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %54, %22
  %61 = phi i8 [ 2, %22 ], [ %57, %54 ]
  %62 = phi i32 [ 1, %22 ], [ %59, %54 ]
  %63 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 12
  store i8 %61, ptr %63, align 4
  %64 = load i32, ptr %16, align 4
  %65 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3
  %66 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 4
  store i32 %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 5
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %15, align 4
  store i32 %70, ptr %65, align 4
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 6
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 7
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %80, label %300

80:                                               ; preds = %60
  %81 = trunc i32 %78 to i24
  %82 = shl i24 %81, 3
  %83 = lshr i24 787456, %82
  %84 = trunc i24 %83 to i8
  %85 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 10
  store i8 %84, ptr %85, align 2
  %86 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 2
  store i32 %78, ptr %86, align 4
  %87 = load i32, ptr %16, align 4
  %88 = load i32, ptr %67, align 4
  %89 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %104, %80
  %92 = phi i32 [ 0, %80 ], [ %105, %104 ]
  %93 = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, %87
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %92, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, %88
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %92, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, %90
  br i1 %103, label %107, label %104

104:                                              ; preds = %100, %96, %91
  %105 = add nuw nsw i32 %92, 1
  %106 = icmp eq i32 %105, 28
  br i1 %106, label %300, label %91

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 3
  store i32 %90, ptr %108, align 4
  %109 = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %92, i32 4
  %110 = load i8, ptr %109, align 1
  %111 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 8
  store i8 %110, ptr %111, align 4
  %112 = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %92, i32 3
  %113 = load i8, ptr %112, align 4
  %114 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 9
  store i8 %113, ptr %114, align 1
  %115 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 3, i32 1
  store i32 %116, ptr %117, align 4
  %118 = load ptr, ptr %13, align 4
  %119 = getelementptr inbounds %struct.cx24117_state, ptr %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.cx24117_state, ptr %118, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %119, ptr noundef align 4 dereferenceable(40) %120, i32 40, i1 false) #10
  %121 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1
  store i8 17, ptr %121, align 1
  %122 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 1
  store i8 %124, ptr %125, align 1
  %126 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = lshr i32 %127, 16
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 2
  store i8 %129, ptr %130, align 1
  %131 = lshr i32 %127, 8
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 3
  store i8 %132, ptr %133, align 1
  %134 = trunc i32 %127 to i8
  %135 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 4
  store i8 %134, ptr %135, align 1
  %136 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 2, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = udiv i32 %137, 1000
  %139 = lshr i32 %138, 8
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 5
  store i8 %140, ptr %141, align 1
  %142 = trunc i32 %138 to i8
  %143 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 6
  store i8 %142, ptr %143, align 1
  %144 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 2, i32 10
  %145 = load i8, ptr %144, align 2
  %146 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 7
  store i8 %145, ptr %146, align 1
  %147 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 2, i32 8
  %148 = load i8, ptr %147, align 4
  %149 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 2, i32 11
  %150 = load i8, ptr %149, align 1
  %151 = or i8 %150, %148
  %152 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 8
  store i8 %151, ptr %152, align 1
  %153 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 9
  store i8 19, ptr %153, align 1
  %154 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 10
  store i8 -120, ptr %154, align 1
  %155 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 2, i32 12
  %156 = load i8, ptr %155, align 4
  %157 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 11
  store i8 %156, ptr %157, align 1
  %158 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 2, i32 9
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 12
  store i8 %159, ptr %160, align 1
  %161 = icmp ugt i32 %137, 30000000
  %162 = icmp ugt i32 %137, 10000000
  %163 = select i1 %162, i8 3, i8 5
  %164 = select i1 %162, i8 6, i8 10
  %165 = select i1 %161, i8 2, i8 %163
  %166 = select i1 %161, i8 4, i8 %164
  %167 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 13
  store i8 %166, ptr %167, align 1
  %168 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 14
  store i8 %165, ptr %168, align 1
  %169 = icmp eq i32 %123, 0
  %170 = select i1 %169, i8 -26, i8 -25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i8 %170, ptr %9, align 2
  %171 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %165, ptr %171, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %172 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %172, align 4, !annotation !8
  %173 = load ptr, ptr %14, align 4
  %174 = load i8, ptr %173, align 4
  %175 = zext i8 %174 to i16
  store i16 %175, ptr %10, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %176, align 2
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %177, align 4
  %178 = getelementptr inbounds %struct.cx24117_priv, ptr %173, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %10, i32 noundef 1) #10
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %107
  %183 = load ptr, ptr %14, align 4
  %184 = getelementptr inbounds %struct.cx24117_priv, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.i2c_adapter, ptr %185, i32 0, i32 9
  %187 = load i32, ptr %122, align 4
  %188 = zext i8 %170 to i32
  %189 = zext i8 %165 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %187, i32 noundef %180, i32 noundef %188, i32 noundef %189) #11
  br label %190

190:                                              ; preds = %182, %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  %191 = load i32, ptr %122, align 4
  %192 = icmp eq i32 %191, 0
  %193 = select i1 %192, i8 -16, i8 -15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 %193, ptr %7, align 2
  %194 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %166, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %195 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %195, align 4, !annotation !8
  %196 = load ptr, ptr %14, align 4
  %197 = load i8, ptr %196, align 4
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %8, align 4
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %199, align 2
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %200, align 4
  %201 = getelementptr inbounds %struct.cx24117_priv, ptr %196, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %8, i32 noundef 1) #10
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %190
  %206 = load ptr, ptr %14, align 4
  %207 = getelementptr inbounds %struct.cx24117_priv, ptr %206, i32 0, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.i2c_adapter, ptr %208, i32 0, i32 9
  %210 = load i32, ptr %122, align 4
  %211 = zext i8 %193 to i32
  %212 = zext i8 %166 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %209, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %210, i32 noundef %203, i32 noundef %211, i32 noundef %212) #11
  br label %213

213:                                              ; preds = %205, %190
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %214 = getelementptr inbounds %struct.cx24117_cmd, ptr %11, i32 0, i32 1, i32 15
  store i8 0, ptr %214, align 1
  store i8 16, ptr %11, align 1
  %215 = getelementptr inbounds i8, ptr %6, i32 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  %222 = getelementptr inbounds i8, ptr %2, i32 1
  %223 = getelementptr inbounds i8, ptr %3, i32 4
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %226 = getelementptr inbounds %struct.cx24117_state, ptr %14, i32 0, i32 2, i32 7
  br label %227

227:                                              ; preds = %297, %213
  %228 = phi i32 [ %62, %213 ], [ %298, %297 ]
  %229 = load i32, ptr %122, align 4
  %230 = icmp eq i32 %229, 0
  %231 = select i1 %230, i8 58, i8 91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %231, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %215, i8 0, i32 16, i1 false) #10, !annotation !8
  %232 = load ptr, ptr %14, align 4
  %233 = load i8, ptr %232, align 4
  %234 = zext i8 %233 to i16
  store i16 %234, ptr %6, align 4
  store i16 0, ptr %216, align 2
  store i16 1, ptr %215, align 4
  store ptr %4, ptr %217, align 4
  %235 = load i8, ptr %232, align 4
  %236 = zext i8 %235 to i16
  store i16 %236, ptr %218, align 4
  store i16 1, ptr %219, align 2
  store i16 1, ptr %220, align 4
  store ptr %5, ptr %221, align 4
  %237 = getelementptr inbounds %struct.cx24117_priv, ptr %232, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  %239 = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %6, i32 noundef 2) #10
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %227
  %242 = load ptr, ptr %14, align 4
  %243 = getelementptr inbounds %struct.cx24117_priv, ptr %242, i32 0, i32 1
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.i2c_adapter, ptr %244, i32 0, i32 9
  %246 = load i32, ptr %122, align 4
  %247 = load i8, ptr %4, align 1
  %248 = zext i8 %247 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %245, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %246, i32 noundef %239, i32 noundef %248) #11
  br label %252

249:                                              ; preds = %227
  %250 = load i8, ptr %5, align 1
  %251 = zext i8 %250 to i32
  br label %252

252:                                              ; preds = %249, %241
  %253 = phi i32 [ %239, %241 ], [ %251, %249 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %254 = load i32, ptr %122, align 4
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %255, i8 58, i8 91
  %257 = trunc i32 %253 to i8
  %258 = and i8 %257, -64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 %256, ptr %2, align 2
  store i8 %258, ptr %222, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %223, align 4, !annotation !8
  %259 = load ptr, ptr %14, align 4
  %260 = load i8, ptr %259, align 4
  %261 = zext i8 %260 to i16
  store i16 %261, ptr %3, align 4
  store i16 0, ptr %224, align 2
  store i16 2, ptr %223, align 4
  store ptr %2, ptr %225, align 4
  %262 = getelementptr inbounds %struct.cx24117_priv, ptr %259, i32 0, i32 1
  %263 = load ptr, ptr %262, align 4
  %264 = call i32 @i2c_transfer(ptr noundef %263, ptr noundef nonnull %3, i32 noundef 1) #10
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %252
  %267 = load ptr, ptr %14, align 4
  %268 = getelementptr inbounds %struct.cx24117_priv, ptr %267, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr inbounds %struct.i2c_adapter, ptr %269, i32 0, i32 9
  %271 = load i32, ptr %122, align 4
  %272 = zext i8 %256 to i32
  %273 = zext i8 %258 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %270, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %271, i32 noundef %264, i32 noundef %272, i32 noundef %273) #11
  br label %274

274:                                              ; preds = %266, %252
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %275 = load ptr, ptr %13, align 4
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.cx24117_priv, ptr %276, i32 0, i32 3
  call void @mutex_lock(ptr noundef %277) #10
  %278 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %11) #10
  %279 = load ptr, ptr %275, align 4
  %280 = getelementptr inbounds %struct.cx24117_priv, ptr %279, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %280) #10
  %281 = icmp eq i32 %278, 0
  br i1 %281, label %282, label %300

282:                                              ; preds = %288, %274
  %283 = phi i32 [ %289, %288 ], [ 0, %274 ]
  %284 = call i32 @cx24117_read_status(ptr noundef %0, ptr noundef nonnull %12)
  %285 = load i32, ptr %12, align 4
  %286 = and i32 %285, 9
  %287 = icmp eq i32 %286, 9
  br i1 %287, label %300, label %288

288:                                              ; preds = %282
  call void @msleep(i32 noundef 20) #10
  %289 = add nuw nsw i32 %283, 1
  %290 = icmp eq i32 %289, 50
  br i1 %290, label %291, label %282

291:                                              ; preds = %288
  %292 = load i32, ptr %226, align 4
  %293 = icmp eq i32 %292, 3
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i8, ptr %157, align 1
  %296 = add i8 %295, -1
  store i8 %296, ptr %157, align 1
  br label %297

297:                                              ; preds = %294, %291
  %298 = add nsw i32 %228, -1
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %227

300:                                              ; preds = %297, %282, %274, %104, %60, %47, %40, %27, %24, %18
  %301 = phi i32 [ -22, %47 ], [ -95, %40 ], [ -22, %18 ], [ -95, %24 ], [ -95, %27 ], [ -22, %60 ], [ 0, %282 ], [ -22, %274 ], [ -22, %297 ], [ -22, %104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %11) #10
  ret i32 %301
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca %struct.cx24117_cmd, align 1
  %6 = alloca [27 x i8], align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %5) #10
  %9 = getelementptr inbounds i8, ptr %5, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %9, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(27) %6, i8 0, i32 27, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.cx24117_cmd, ptr %5, i32 0, i32 1
  store i8 28, ptr %10, align 1
  %11 = getelementptr inbounds %struct.cx24117_state, ptr %8, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.cx24117_cmd, ptr %5, i32 0, i32 1, i32 1
  store i8 %13, ptr %14, align 1
  store i8 2, ptr %5, align 1
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.cx24117_priv, ptr %15, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #10
  %17 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %5) #10
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.cx24117_priv, ptr %18, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %19) #10
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %115

21:                                               ; preds = %2
  %22 = load i32, ptr %11, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i8 52, i8 85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %24, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %25 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %25, i8 0, i32 16, i1 false) #10, !annotation !8
  %26 = load ptr, ptr %8, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %4, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %29, align 2
  store i16 1, ptr %25, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %32 = load i8, ptr %26, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 27, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %6, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cx24117_priv, ptr %26, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %4, i32 noundef 2) #10
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %21
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.cx24117_priv, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.i2c_adapter, ptr %44, i32 0, i32 9
  %46 = load i32, ptr %11, align 4
  %47 = load i8, ptr %3, align 1
  %48 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %46, i32 noundef %39, i32 noundef %48) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %115

49:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %50 = getelementptr inbounds [27 x i8], ptr %6, i32 0, i32 5
  %51 = load i8, ptr %50, align 1
  %52 = load i32, ptr %11, align 4
  %53 = icmp eq i32 %52, 0
  %54 = sext i1 %53 to i8
  %55 = xor i8 %51, %54
  %56 = lshr i8 %55, 6
  %57 = and i8 %56, 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %58, ptr %59, align 4
  %60 = and i8 %51, 63
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = icmp ugt i8 %60, 11
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = add nuw nsw i32 %61, 9
  br label %71

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %61, 7
  br label %71

71:                                               ; preds = %69, %67, %49
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ], [ %61, %49 ]
  %73 = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %72, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %74, ptr %75, align 4
  %76 = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %72, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %77, ptr %78, align 4
  %79 = load i8, ptr %6, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 16
  %82 = getelementptr inbounds [27 x i8], ptr %6, i32 0, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = or i32 %85, %81
  %87 = getelementptr inbounds [27 x i8], ptr %6, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %86, %89
  %91 = getelementptr inbounds [27 x i8], ptr %6, i32 0, i32 8
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i16
  %94 = shl nuw i16 %93, 8
  %95 = getelementptr inbounds [27 x i8], ptr %6, i32 0, i32 9
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i16
  %98 = or i16 %94, %97
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 %90, %99
  store i32 %100, ptr %1, align 4
  %101 = getelementptr inbounds [27 x i8], ptr %6, i32 0, i32 10
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i16
  %104 = shl nuw i16 %103, 8
  %105 = getelementptr inbounds [27 x i8], ptr %6, i32 0, i32 11
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i16
  %108 = or i16 %104, %107
  %109 = sext i16 %108 to i32
  %110 = mul nsw i32 %109, -1000
  %111 = getelementptr inbounds %struct.cx24117_state, ptr %8, i32 0, i32 2, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %110, %112
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %71, %41, %2
  %116 = phi i32 [ 0, %71 ], [ %17, %2 ], [ %39, %41 ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %5) #10
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cx24117_state, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i8 58, i8 91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %11, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #10, !annotation !8
  %13 = load ptr, ptr %7, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %12, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cx24117_priv, ptr %13, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 2) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.cx24117_priv, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  %33 = load i32, ptr %8, align 4
  %34 = load i8, ptr %3, align 1
  %35 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %33, i32 noundef %26, i32 noundef %35) #11
  br label %39

36:                                               ; preds = %2
  %37 = load i8, ptr %4, align 1
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi i32 [ %26, %28 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %41 = and i32 %40, 7
  %42 = and i32 %40, 8
  %43 = icmp eq i32 %42, 0
  %44 = or i32 %41, 24
  %45 = select i1 %43, i32 %41, i32 %44
  store i32 %45, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.cx24117_state, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i8 71, i8 104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %11, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #10, !annotation !8
  %13 = load ptr, ptr %7, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %4, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %12, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cx24117_priv, ptr %13, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %4, i32 noundef 2) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.cx24117_priv, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  %33 = load i32, ptr %8, align 4
  %34 = load i8, ptr %3, align 1
  %35 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %33, i32 noundef %26, i32 noundef %35) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %48

36:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %37 = load i8, ptr %5, align 4
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 %38, 24
  %40 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 16
  %44 = shl nuw nsw i32 %42, 8
  %45 = or i32 %39, %38
  %46 = or i32 %45, %43
  %47 = or i32 %46, %44
  store i32 %47, ptr %1, align 4
  br label %48

48:                                               ; preds = %36, %28
  %49 = phi i32 [ 0, %36 ], [ %26, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca %struct.cx24117_cmd, align 1
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %5) #10
  %9 = getelementptr inbounds i8, ptr %5, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %9, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 0, ptr %6, align 2, !annotation !8
  %10 = getelementptr inbounds %struct.cx24117_state, ptr %8, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cx24117_cmd, ptr %5, i32 0, i32 1
  store i8 26, ptr %12, align 1
  %13 = trunc i32 %11 to i8
  %14 = getelementptr inbounds %struct.cx24117_cmd, ptr %5, i32 0, i32 1, i32 1
  store i8 %13, ptr %14, align 1
  store i8 2, ptr %5, align 1
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.cx24117_priv, ptr %15, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #10
  %17 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %5) #10
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.cx24117_priv, ptr %18, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %19) #10
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %2
  %22 = icmp eq i32 %11, 0
  %23 = select i1 %22, i8 58, i8 91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %23, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %24 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %24, i8 0, i32 16, i1 false) #10, !annotation !8
  %25 = load ptr, ptr %8, align 4
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %4, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %24, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %31 = load i8, ptr %25, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.cx24117_priv, ptr %25, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %4, i32 noundef 2) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %21
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr inbounds %struct.cx24117_priv, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 9
  %45 = load i32, ptr %10, align 4
  %46 = load i8, ptr %3, align 1
  %47 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %45, i32 noundef %38, i32 noundef %47) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %59

48:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %49 = load i8, ptr %6, align 2
  %50 = and i8 %49, -64
  %51 = zext i8 %50 to i16
  %52 = shl nuw nsw i16 %51, 2
  %53 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i16
  %56 = or i16 %52, %55
  %57 = mul i16 %56, -100
  %58 = add i16 %57, 28788
  store i16 %58, ptr %1, align 2
  br label %59

59:                                               ; preds = %48, %40, %2
  %60 = phi i32 [ 0, %48 ], [ %17, %2 ], [ %38, %40 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %5) #10
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  %8 = getelementptr inbounds %struct.cx24117_state, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i8 64, i8 97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %11, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #10, !annotation !8
  %13 = load ptr, ptr %7, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %4, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %12, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cx24117_priv, ptr %13, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %4, i32 noundef 2) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.cx24117_priv, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  %33 = load i32, ptr %8, align 4
  %34 = load i8, ptr %3, align 1
  %35 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %33, i32 noundef %26, i32 noundef %35) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %44

36:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %37 = load i8, ptr %5, align 2
  %38 = zext i8 %37 to i16
  %39 = shl nuw i16 %38, 8
  %40 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  %43 = or i16 %39, %42
  store i16 %43, ptr %1, align 2
  br label %44

44:                                               ; preds = %36, %28
  %45 = phi i32 [ %26, %28 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  %10 = getelementptr inbounds %struct.cx24117_state, ptr %7, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i8 75, i8 108
  switch i32 %9, label %50 [
    i32 5, label %16
    i32 6, label %14
  ]

14:                                               ; preds = %2
  %15 = add nuw nsw i8 %13, 5
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i8 [ %15, %14 ], [ %13, %2 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %17, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %18 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %18, i8 0, i32 16, i1 false) #10, !annotation !8
  %19 = load ptr, ptr %7, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %4, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %18, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %25 = load i8, ptr %19, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cx24117_priv, ptr %19, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %4, i32 noundef 2) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %16
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.cx24117_priv, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 9
  %39 = load i32, ptr %10, align 4
  %40 = load i8, ptr %3, align 1
  %41 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %39, i32 noundef %32, i32 noundef %41) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %50

42:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %43 = load i8, ptr %5, align 2
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %45, %48
  store i32 %49, ptr %1, align 4
  br label %50

50:                                               ; preds = %42, %34, %2
  %51 = phi i32 [ 0, %42 ], [ -22, %2 ], [ %32, %34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp ugt i8 %6, 6
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  %9 = icmp eq i8 %6, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %16, %10 ], [ 0, %8 ]
  %12 = getelementptr [6 x i8], ptr %1, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = add nuw nsw i32 %11, 7
  %15 = getelementptr %struct.cx24117_state, ptr %4, i32 0, i32 4, i32 1, i32 %14
  store i8 %13, ptr %15, align 1
  %16 = add nuw nsw i32 %11, 1
  %17 = load i8, ptr %5, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %10, label %20

20:                                               ; preds = %10, %8
  %21 = phi i8 [ 0, %8 ], [ %17, %10 ]
  %22 = getelementptr inbounds %struct.cx24117_state, ptr %4, i32 0, i32 4
  %23 = getelementptr %struct.cx24117_state, ptr %4, i32 0, i32 4, i32 1, i32 6
  store i8 %21, ptr %23, align 1
  %24 = add i8 %21, 7
  store i8 %24, ptr %22, align 4
  %25 = load i8, ptr %5, align 1
  %26 = icmp ugt i8 %25, 3
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = getelementptr [6 x i8], ptr %1, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 56
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr [6 x i8], ptr %1, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = lshr i8 %33, 2
  %35 = and i8 %34, 1
  %36 = getelementptr %struct.cx24117_state, ptr %4, i32 0, i32 4, i32 1, i32 2
  store i8 %35, ptr %36, align 1
  br label %37

37:                                               ; preds = %31, %27, %20
  %38 = tail call fastcc i32 @cx24117_wait_for_lnb(ptr noundef %0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  tail call void @msleep(i32 noundef 100) #10
  %41 = load ptr, ptr %3, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.cx24117_priv, ptr %42, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %43) #10
  %44 = tail call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef %22) #10
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr inbounds %struct.cx24117_priv, ptr %45, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %46) #10
  %47 = icmp eq i32 %44, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i8, ptr %23, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 4
  %52 = add nuw nsw i32 %51, 60
  tail call void @msleep(i32 noundef %52) #10
  br label %53

53:                                               ; preds = %48, %40, %37, %2
  %54 = phi i32 [ 0, %48 ], [ -22, %2 ], [ %38, %37 ], [ %44, %40 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cx24117_diseqc_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %9 [
    i32 0, label %6
    i32 1, label %5
  ]

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i8 [ 1, %5 ], [ 0, %2 ]
  %8 = getelementptr %struct.cx24117_state, ptr %4, i32 0, i32 4, i32 1, i32 2
  store i8 %7, ptr %8, align 1
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ -22, %2 ], [ 0, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cx24117_cmd, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #10
  %6 = getelementptr inbounds i8, ptr %3, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %6, i8 0, i32 26, i1 false), !annotation !8
  %7 = icmp ugt i32 %1, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.cx24117_priv, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.cx24117_state, ptr %5, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef %14, i32 noundef %1) #11
  br label %38

15:                                               ; preds = %2
  %16 = tail call fastcc i32 @cx24117_wait_for_lnb(ptr noundef %0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  tail call void @msleep(i32 noundef 20) #10
  %19 = getelementptr inbounds %struct.cx24117_cmd, ptr %3, i32 0, i32 1
  store i8 35, ptr %19, align 1
  %20 = getelementptr inbounds %struct.cx24117_state, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.cx24117_cmd, ptr %3, i32 0, i32 1, i32 1
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.cx24117_cmd, ptr %3, i32 0, i32 1, i32 2
  store i8 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.cx24117_cmd, ptr %3, i32 0, i32 1, i32 3
  store i8 0, ptr %26, align 1
  store i8 5, ptr %3, align 1
  switch i32 %1, label %31 [
    i32 0, label %28
    i32 1, label %27
  ]

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i8 [ 0, %27 ], [ 1, %18 ]
  %30 = getelementptr inbounds %struct.cx24117_cmd, ptr %3, i32 0, i32 1, i32 4
  store i8 %29, ptr %30, align 1
  br label %31

31:                                               ; preds = %28, %18
  tail call void @msleep(i32 noundef 20) #10
  %32 = load ptr, ptr %4, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cx24117_priv, ptr %33, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %34) #10
  %35 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %3) #10
  %36 = load ptr, ptr %32, align 4
  %37 = getelementptr inbounds %struct.cx24117_priv, ptr %36, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %37) #10
  br label %38

38:                                               ; preds = %31, %15, %8
  %39 = phi i32 [ -22, %8 ], [ %35, %31 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24117_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cx24117_cmd, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #10
  %6 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %6, i8 0, i32 29, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.cx24117_state, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i8 16, i8 32
  %11 = getelementptr inbounds %struct.cx24117_cmd, ptr %3, i32 0, i32 1
  store i8 51, ptr %11, align 1
  %12 = getelementptr inbounds %struct.cx24117_cmd, ptr %3, i32 0, i32 1, i32 2
  store i8 %10, ptr %12, align 1
  store i8 3, ptr %3, align 1
  %13 = icmp eq i32 %1, 1
  %14 = icmp ult i32 %1, 2
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.cx24117_cmd, ptr %3, i32 0, i32 1, i32 1
  store i8 %10, ptr %16, align 1
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.cx24117_priv, ptr %17, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #10
  %19 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %3) #10
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.cx24117_priv, ptr %20, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %21) #10
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = tail call fastcc i32 @cx24117_wait_for_lnb(ptr noundef %0)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  tail call void @msleep(i32 noundef 100) #10
  store i8 34, ptr %11, align 1
  %27 = load i32, ptr %7, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i8
  store i8 %29, ptr %16, align 1
  %30 = zext i1 %13 to i8
  store i8 %30, ptr %12, align 1
  store i8 3, ptr %3, align 1
  %31 = load ptr, ptr %4, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cx24117_priv, ptr %32, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %33) #10
  %34 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %3) #10
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.cx24117_priv, ptr %35, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %36) #10
  tail call void @msleep(i32 noundef 20) #10
  br label %43

37:                                               ; preds = %2
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.cx24117_priv, ptr %38, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %39) #10
  %40 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %3) #10
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr inbounds %struct.cx24117_priv, ptr %41, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %42) #10
  br label %43

43:                                               ; preds = %37, %26, %23, %15
  %44 = phi i32 [ %19, %15 ], [ %24, %23 ], [ %34, %26 ], [ %40, %37 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #10
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24117_cmd_execute_nolock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
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
  %68 = alloca [2 x i8], align 2
  %69 = alloca %struct.i2c_msg, align 4
  %70 = alloca [2 x i8], align 2
  %71 = alloca %struct.i2c_msg, align 4
  %72 = alloca [2 x i8], align 2
  %73 = alloca %struct.i2c_msg, align 4
  %74 = alloca [2 x i8], align 2
  %75 = alloca %struct.i2c_msg, align 4
  %76 = alloca [2 x i8], align 2
  %77 = alloca %struct.i2c_msg, align 4
  %78 = alloca [2 x i8], align 2
  %79 = alloca %struct.i2c_msg, align 4
  %80 = alloca [2 x i8], align 2
  %81 = alloca %struct.i2c_msg, align 4
  %82 = alloca [2 x i8], align 2
  %83 = alloca %struct.i2c_msg, align 4
  %84 = alloca [2 x i8], align 2
  %85 = alloca %struct.i2c_msg, align 4
  %86 = alloca %struct.cx24117_cmd, align 1
  %87 = alloca [4 x i8], align 4
  %88 = alloca %struct.i2c_msg, align 4
  %89 = alloca i8, align 1
  %90 = alloca i8, align 1
  %91 = alloca [2 x %struct.i2c_msg], align 4
  %92 = alloca i8, align 1
  %93 = alloca i8, align 1
  %94 = alloca [2 x %struct.i2c_msg], align 4
  %95 = alloca [2 x i8], align 2
  %96 = alloca %struct.i2c_msg, align 4
  %97 = alloca %struct.i2c_msg, align 4
  %98 = alloca [31 x i8], align 1
  %99 = alloca ptr, align 4
  %100 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %99) #10
  store ptr null, ptr %99, align 4, !annotation !8
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.cx24117_priv, ptr %102, i32 0, i32 2
  %104 = load i8, ptr %103, align 4
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %1040

106:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %89)
  store i8 -21, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %90) #10
  store i8 0, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %91) #10
  %107 = getelementptr inbounds i8, ptr %91, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %107, i8 0, i32 16, i1 false) #10, !annotation !8
  %108 = load ptr, ptr %101, align 4
  %109 = load i8, ptr %108, align 4
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %91, align 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 1
  store i16 0, ptr %111, align 2
  store i16 1, ptr %107, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 3
  store ptr %89, ptr %112, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 1
  %114 = load i8, ptr %108, align 4
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %113, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 1, i32 1
  store i16 1, ptr %116, align 2
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 1, i32 2
  store i16 1, ptr %117, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 1, i32 3
  store ptr %90, ptr %118, align 4
  %119 = getelementptr inbounds %struct.cx24117_priv, ptr %108, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %91, i32 noundef 2) #10
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %106
  %124 = load ptr, ptr %101, align 4
  %125 = getelementptr inbounds %struct.cx24117_priv, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.i2c_adapter, ptr %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.cx24117_state, ptr %101, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = load i8, ptr %89, align 1
  %131 = zext i8 %130 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %129, i32 noundef %121, i32 noundef %131) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %91) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %90) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %89)
  br label %135

132:                                              ; preds = %106
  %133 = load i8, ptr %90, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %91) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %90) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %89)
  %134 = icmp eq i8 %133, 10
  br i1 %134, label %1040, label %135

135:                                              ; preds = %132, %123
  %136 = load ptr, ptr %101, align 4
  %137 = getelementptr inbounds %struct.cx24117_priv, ptr %136, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.i2c_adapter, ptr %138, i32 0, i32 9, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = call i32 @request_firmware(ptr noundef nonnull %99, ptr noundef nonnull @.str.8, ptr noundef %140) #10
  %142 = icmp eq i32 %141, 0
  %143 = load ptr, ptr %101, align 4
  br i1 %142, label %148, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.cx24117_priv, ptr %143, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.i2c_adapter, ptr %146, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24117_firmware_ondemand) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %99) #10
  br label %1136

148:                                              ; preds = %135
  %149 = getelementptr inbounds %struct.cx24117_priv, ptr %143, i32 0, i32 2
  store i8 1, ptr %149, align 4
  %150 = load ptr, ptr %99, align 4
  %151 = load ptr, ptr %100, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %86) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %86, i8 0, i32 31, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %87) #10
  store i32 0, ptr %87, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %88) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %88, i8 0, i32 12, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %84) #10
  store i8 -22, ptr %84, align 2
  %152 = getelementptr inbounds i8, ptr %84, i32 1
  store i8 0, ptr %152, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %85) #10
  %153 = getelementptr inbounds i8, ptr %85, i32 4
  store i32 2, ptr %153, align 4, !annotation !8
  %154 = load ptr, ptr %151, align 4
  %155 = load i8, ptr %154, align 4
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %85, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  store i16 0, ptr %157, align 2
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  store ptr %84, ptr %158, align 4
  %159 = getelementptr inbounds %struct.cx24117_priv, ptr %154, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %85, i32 noundef 1) #10
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %148
  %164 = load ptr, ptr %151, align 4
  %165 = getelementptr inbounds %struct.cx24117_priv, ptr %164, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.i2c_adapter, ptr %166, i32 0, i32 9
  %168 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %169 = load i32, ptr %168, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %167, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %169, i32 noundef %161, i32 noundef 234, i32 noundef 0) #11
  br label %170

170:                                              ; preds = %163, %148
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %84) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %82) #10
  store i8 -22, ptr %82, align 2
  %171 = getelementptr inbounds i8, ptr %82, i32 1
  store i8 1, ptr %171, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %83) #10
  %172 = getelementptr inbounds i8, ptr %83, i32 4
  store i32 0, ptr %172, align 4, !annotation !8
  %173 = load ptr, ptr %151, align 4
  %174 = load i8, ptr %173, align 4
  %175 = zext i8 %174 to i16
  store i16 %175, ptr %83, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  store i16 0, ptr %176, align 2
  store i16 2, ptr %172, align 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  store ptr %82, ptr %177, align 4
  %178 = getelementptr inbounds %struct.cx24117_priv, ptr %173, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %83, i32 noundef 1) #10
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %170
  %183 = load ptr, ptr %151, align 4
  %184 = getelementptr inbounds %struct.cx24117_priv, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.i2c_adapter, ptr %185, i32 0, i32 9
  %187 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %188 = load i32, ptr %187, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %188, i32 noundef %180, i32 noundef 234, i32 noundef 1) #11
  br label %189

189:                                              ; preds = %182, %170
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %83) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %82) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %80) #10
  store i8 -22, ptr %80, align 2
  %190 = getelementptr inbounds i8, ptr %80, i32 1
  store i8 0, ptr %190, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %81) #10
  %191 = getelementptr inbounds i8, ptr %81, i32 4
  store i32 0, ptr %191, align 4, !annotation !8
  %192 = load ptr, ptr %151, align 4
  %193 = load i8, ptr %192, align 4
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %81, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %195, align 2
  store i16 2, ptr %191, align 4
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %80, ptr %196, align 4
  %197 = getelementptr inbounds %struct.cx24117_priv, ptr %192, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %81, i32 noundef 1) #10
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %189
  %202 = load ptr, ptr %151, align 4
  %203 = getelementptr inbounds %struct.cx24117_priv, ptr %202, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.i2c_adapter, ptr %204, i32 0, i32 9
  %206 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %207 = load i32, ptr %206, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %205, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %207, i32 noundef %199, i32 noundef 234, i32 noundef 0) #11
  br label %208

208:                                              ; preds = %201, %189
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %81) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %80) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %78) #10
  store i8 -50, ptr %78, align 2
  %209 = getelementptr inbounds i8, ptr %78, i32 1
  store i8 -110, ptr %209, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %79) #10
  %210 = getelementptr inbounds i8, ptr %79, i32 4
  store i32 0, ptr %210, align 4, !annotation !8
  %211 = load ptr, ptr %151, align 4
  %212 = load i8, ptr %211, align 4
  %213 = zext i8 %212 to i16
  store i16 %213, ptr %79, align 4
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  store i16 0, ptr %214, align 2
  store i16 2, ptr %210, align 4
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  store ptr %78, ptr %215, align 4
  %216 = getelementptr inbounds %struct.cx24117_priv, ptr %211, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = call i32 @i2c_transfer(ptr noundef %217, ptr noundef nonnull %79, i32 noundef 1) #10
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %208
  %221 = load ptr, ptr %151, align 4
  %222 = getelementptr inbounds %struct.cx24117_priv, ptr %221, i32 0, i32 1
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.i2c_adapter, ptr %223, i32 0, i32 9
  %225 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %226 = load i32, ptr %225, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %224, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %226, i32 noundef %218, i32 noundef 206, i32 noundef 146) #11
  br label %227

227:                                              ; preds = %220, %208
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %79) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %78) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %76) #10
  store i8 -5, ptr %76, align 2
  %228 = getelementptr inbounds i8, ptr %76, i32 1
  store i8 0, ptr %228, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %77) #10
  %229 = getelementptr inbounds i8, ptr %77, i32 4
  store i32 0, ptr %229, align 4, !annotation !8
  %230 = load ptr, ptr %151, align 4
  %231 = load i8, ptr %230, align 4
  %232 = zext i8 %231 to i16
  store i16 %232, ptr %77, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 1
  store i16 0, ptr %233, align 2
  store i16 2, ptr %229, align 4
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 3
  store ptr %76, ptr %234, align 4
  %235 = getelementptr inbounds %struct.cx24117_priv, ptr %230, i32 0, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = call i32 @i2c_transfer(ptr noundef %236, ptr noundef nonnull %77, i32 noundef 1) #10
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %227
  %240 = load ptr, ptr %151, align 4
  %241 = getelementptr inbounds %struct.cx24117_priv, ptr %240, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.i2c_adapter, ptr %242, i32 0, i32 9
  %244 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %245 = load i32, ptr %244, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %243, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %245, i32 noundef %237, i32 noundef 251, i32 noundef 0) #11
  br label %246

246:                                              ; preds = %239, %227
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %77) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %76) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %74) #10
  store i8 -4, ptr %74, align 2
  %247 = getelementptr inbounds i8, ptr %74, i32 1
  store i8 0, ptr %247, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #10
  %248 = getelementptr inbounds i8, ptr %75, i32 4
  store i32 0, ptr %248, align 4, !annotation !8
  %249 = load ptr, ptr %151, align 4
  %250 = load i8, ptr %249, align 4
  %251 = zext i8 %250 to i16
  store i16 %251, ptr %75, align 4
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  store i16 0, ptr %252, align 2
  store i16 2, ptr %248, align 4
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  store ptr %74, ptr %253, align 4
  %254 = getelementptr inbounds %struct.cx24117_priv, ptr %249, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %75, i32 noundef 1) #10
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %246
  %259 = load ptr, ptr %151, align 4
  %260 = getelementptr inbounds %struct.cx24117_priv, ptr %259, i32 0, i32 1
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.i2c_adapter, ptr %261, i32 0, i32 9
  %263 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %264 = load i32, ptr %263, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %262, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %264, i32 noundef %256, i32 noundef 252, i32 noundef 0) #11
  br label %265

265:                                              ; preds = %258, %246
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %74) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %72) #10
  store i8 -61, ptr %72, align 2
  %266 = getelementptr inbounds i8, ptr %72, i32 1
  store i8 4, ptr %266, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %73) #10
  %267 = getelementptr inbounds i8, ptr %73, i32 4
  store i32 0, ptr %267, align 4, !annotation !8
  %268 = load ptr, ptr %151, align 4
  %269 = load i8, ptr %268, align 4
  %270 = zext i8 %269 to i16
  store i16 %270, ptr %73, align 4
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %271, align 2
  store i16 2, ptr %267, align 4
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %72, ptr %272, align 4
  %273 = getelementptr inbounds %struct.cx24117_priv, ptr %268, i32 0, i32 1
  %274 = load ptr, ptr %273, align 4
  %275 = call i32 @i2c_transfer(ptr noundef %274, ptr noundef nonnull %73, i32 noundef 1) #10
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %265
  %278 = load ptr, ptr %151, align 4
  %279 = getelementptr inbounds %struct.cx24117_priv, ptr %278, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.i2c_adapter, ptr %280, i32 0, i32 9
  %282 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %283 = load i32, ptr %282, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %281, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %283, i32 noundef %275, i32 noundef 195, i32 noundef 4) #11
  br label %284

284:                                              ; preds = %277, %265
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %72) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %70) #10
  store i8 -60, ptr %70, align 2
  %285 = getelementptr inbounds i8, ptr %70, i32 1
  store i8 4, ptr %285, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %71) #10
  %286 = getelementptr inbounds i8, ptr %71, i32 4
  store i32 0, ptr %286, align 4, !annotation !8
  %287 = load ptr, ptr %151, align 4
  %288 = load i8, ptr %287, align 4
  %289 = zext i8 %288 to i16
  store i16 %289, ptr %71, align 4
  %290 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 1
  store i16 0, ptr %290, align 2
  store i16 2, ptr %286, align 4
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 3
  store ptr %70, ptr %291, align 4
  %292 = getelementptr inbounds %struct.cx24117_priv, ptr %287, i32 0, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = call i32 @i2c_transfer(ptr noundef %293, ptr noundef nonnull %71, i32 noundef 1) #10
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %284
  %297 = load ptr, ptr %151, align 4
  %298 = getelementptr inbounds %struct.cx24117_priv, ptr %297, i32 0, i32 1
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.i2c_adapter, ptr %299, i32 0, i32 9
  %301 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %302 = load i32, ptr %301, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %300, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %302, i32 noundef %294, i32 noundef 196, i32 noundef 4) #11
  br label %303

303:                                              ; preds = %296, %284
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %71) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %70) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %68) #10
  store i8 -50, ptr %68, align 2
  %304 = getelementptr inbounds i8, ptr %68, i32 1
  store i8 0, ptr %304, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #10
  %305 = getelementptr inbounds i8, ptr %69, i32 4
  store i32 0, ptr %305, align 4, !annotation !8
  %306 = load ptr, ptr %151, align 4
  %307 = load i8, ptr %306, align 4
  %308 = zext i8 %307 to i16
  store i16 %308, ptr %69, align 4
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 1
  store i16 0, ptr %309, align 2
  store i16 2, ptr %305, align 4
  %310 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  store ptr %68, ptr %310, align 4
  %311 = getelementptr inbounds %struct.cx24117_priv, ptr %306, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = call i32 @i2c_transfer(ptr noundef %312, ptr noundef nonnull %69, i32 noundef 1) #10
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %303
  %316 = load ptr, ptr %151, align 4
  %317 = getelementptr inbounds %struct.cx24117_priv, ptr %316, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr inbounds %struct.i2c_adapter, ptr %318, i32 0, i32 9
  %320 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %321 = load i32, ptr %320, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %319, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %321, i32 noundef %313, i32 noundef 206, i32 noundef 0) #11
  br label %322

322:                                              ; preds = %315, %303
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %68) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %66) #10
  store i8 -49, ptr %66, align 2
  %323 = getelementptr inbounds i8, ptr %66, i32 1
  store i8 0, ptr %323, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #10
  %324 = getelementptr inbounds i8, ptr %67, i32 4
  store i32 0, ptr %324, align 4, !annotation !8
  %325 = load ptr, ptr %151, align 4
  %326 = load i8, ptr %325, align 4
  %327 = zext i8 %326 to i16
  store i16 %327, ptr %67, align 4
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  store i16 0, ptr %328, align 2
  store i16 2, ptr %324, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  store ptr %66, ptr %329, align 4
  %330 = getelementptr inbounds %struct.cx24117_priv, ptr %325, i32 0, i32 1
  %331 = load ptr, ptr %330, align 4
  %332 = call i32 @i2c_transfer(ptr noundef %331, ptr noundef nonnull %67, i32 noundef 1) #10
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %322
  %335 = load ptr, ptr %151, align 4
  %336 = getelementptr inbounds %struct.cx24117_priv, ptr %335, i32 0, i32 1
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr inbounds %struct.i2c_adapter, ptr %337, i32 0, i32 9
  %339 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %340 = load i32, ptr %339, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %338, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %340, i32 noundef %332, i32 noundef 207, i32 noundef 0) #11
  br label %341

341:                                              ; preds = %334, %322
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %66) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %64) #10
  store i8 -22, ptr %64, align 2
  %342 = getelementptr inbounds i8, ptr %64, i32 1
  store i8 0, ptr %342, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #10
  %343 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 0, ptr %343, align 4, !annotation !8
  %344 = load ptr, ptr %151, align 4
  %345 = load i8, ptr %344, align 4
  %346 = zext i8 %345 to i16
  store i16 %346, ptr %65, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %347, align 2
  store i16 2, ptr %343, align 4
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %348, align 4
  %349 = getelementptr inbounds %struct.cx24117_priv, ptr %344, i32 0, i32 1
  %350 = load ptr, ptr %349, align 4
  %351 = call i32 @i2c_transfer(ptr noundef %350, ptr noundef nonnull %65, i32 noundef 1) #10
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %341
  %354 = load ptr, ptr %151, align 4
  %355 = getelementptr inbounds %struct.cx24117_priv, ptr %354, i32 0, i32 1
  %356 = load ptr, ptr %355, align 4
  %357 = getelementptr inbounds %struct.i2c_adapter, ptr %356, i32 0, i32 9
  %358 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %359 = load i32, ptr %358, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %357, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %359, i32 noundef %351, i32 noundef 234, i32 noundef 0) #11
  br label %360

360:                                              ; preds = %353, %341
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %64) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #10
  store i8 -21, ptr %62, align 2
  %361 = getelementptr inbounds i8, ptr %62, i32 1
  store i8 12, ptr %361, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #10
  %362 = getelementptr inbounds i8, ptr %63, i32 4
  store i32 0, ptr %362, align 4, !annotation !8
  %363 = load ptr, ptr %151, align 4
  %364 = load i8, ptr %363, align 4
  %365 = zext i8 %364 to i16
  store i16 %365, ptr %63, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  store i16 0, ptr %366, align 2
  store i16 2, ptr %362, align 4
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %367, align 4
  %368 = getelementptr inbounds %struct.cx24117_priv, ptr %363, i32 0, i32 1
  %369 = load ptr, ptr %368, align 4
  %370 = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %63, i32 noundef 1) #10
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %360
  %373 = load ptr, ptr %151, align 4
  %374 = getelementptr inbounds %struct.cx24117_priv, ptr %373, i32 0, i32 1
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr inbounds %struct.i2c_adapter, ptr %375, i32 0, i32 9
  %377 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %378 = load i32, ptr %377, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %376, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %378, i32 noundef %370, i32 noundef 235, i32 noundef 12) #11
  br label %379

379:                                              ; preds = %372, %360
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #10
  store i8 -20, ptr %60, align 2
  %380 = getelementptr inbounds i8, ptr %60, i32 1
  store i8 6, ptr %380, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #10
  %381 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 0, ptr %381, align 4, !annotation !8
  %382 = load ptr, ptr %151, align 4
  %383 = load i8, ptr %382, align 4
  %384 = zext i8 %383 to i16
  store i16 %384, ptr %61, align 4
  %385 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %385, align 2
  store i16 2, ptr %381, align 4
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %386, align 4
  %387 = getelementptr inbounds %struct.cx24117_priv, ptr %382, i32 0, i32 1
  %388 = load ptr, ptr %387, align 4
  %389 = call i32 @i2c_transfer(ptr noundef %388, ptr noundef nonnull %61, i32 noundef 1) #10
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %379
  %392 = load ptr, ptr %151, align 4
  %393 = getelementptr inbounds %struct.cx24117_priv, ptr %392, i32 0, i32 1
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr inbounds %struct.i2c_adapter, ptr %394, i32 0, i32 9
  %396 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %397 = load i32, ptr %396, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %395, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %397, i32 noundef %389, i32 noundef 236, i32 noundef 6) #11
  br label %398

398:                                              ; preds = %391, %379
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #10
  store i8 -19, ptr %58, align 2
  %399 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 5, ptr %399, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #10
  %400 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 0, ptr %400, align 4, !annotation !8
  %401 = load ptr, ptr %151, align 4
  %402 = load i8, ptr %401, align 4
  %403 = zext i8 %402 to i16
  store i16 %403, ptr %59, align 4
  %404 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %404, align 2
  store i16 2, ptr %400, align 4
  %405 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %405, align 4
  %406 = getelementptr inbounds %struct.cx24117_priv, ptr %401, i32 0, i32 1
  %407 = load ptr, ptr %406, align 4
  %408 = call i32 @i2c_transfer(ptr noundef %407, ptr noundef nonnull %59, i32 noundef 1) #10
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %398
  %411 = load ptr, ptr %151, align 4
  %412 = getelementptr inbounds %struct.cx24117_priv, ptr %411, i32 0, i32 1
  %413 = load ptr, ptr %412, align 4
  %414 = getelementptr inbounds %struct.i2c_adapter, ptr %413, i32 0, i32 9
  %415 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %416 = load i32, ptr %415, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %414, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %416, i32 noundef %408, i32 noundef 237, i32 noundef 5) #11
  br label %417

417:                                              ; preds = %410, %398
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #10
  store i8 -18, ptr %56, align 2
  %418 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 3, ptr %418, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #10
  %419 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 0, ptr %419, align 4, !annotation !8
  %420 = load ptr, ptr %151, align 4
  %421 = load i8, ptr %420, align 4
  %422 = zext i8 %421 to i16
  store i16 %422, ptr %57, align 4
  %423 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %423, align 2
  store i16 2, ptr %419, align 4
  %424 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %424, align 4
  %425 = getelementptr inbounds %struct.cx24117_priv, ptr %420, i32 0, i32 1
  %426 = load ptr, ptr %425, align 4
  %427 = call i32 @i2c_transfer(ptr noundef %426, ptr noundef nonnull %57, i32 noundef 1) #10
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %429, label %436

429:                                              ; preds = %417
  %430 = load ptr, ptr %151, align 4
  %431 = getelementptr inbounds %struct.cx24117_priv, ptr %430, i32 0, i32 1
  %432 = load ptr, ptr %431, align 4
  %433 = getelementptr inbounds %struct.i2c_adapter, ptr %432, i32 0, i32 9
  %434 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %435 = load i32, ptr %434, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %433, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %435, i32 noundef %427, i32 noundef 238, i32 noundef 3) #11
  br label %436

436:                                              ; preds = %429, %417
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #10
  store i8 -17, ptr %54, align 2
  %437 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 5, ptr %437, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #10
  %438 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 0, ptr %438, align 4, !annotation !8
  %439 = load ptr, ptr %151, align 4
  %440 = load i8, ptr %439, align 4
  %441 = zext i8 %440 to i16
  store i16 %441, ptr %55, align 4
  %442 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %442, align 2
  store i16 2, ptr %438, align 4
  %443 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %443, align 4
  %444 = getelementptr inbounds %struct.cx24117_priv, ptr %439, i32 0, i32 1
  %445 = load ptr, ptr %444, align 4
  %446 = call i32 @i2c_transfer(ptr noundef %445, ptr noundef nonnull %55, i32 noundef 1) #10
  %447 = icmp slt i32 %446, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %436
  %449 = load ptr, ptr %151, align 4
  %450 = getelementptr inbounds %struct.cx24117_priv, ptr %449, i32 0, i32 1
  %451 = load ptr, ptr %450, align 4
  %452 = getelementptr inbounds %struct.i2c_adapter, ptr %451, i32 0, i32 9
  %453 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %454 = load i32, ptr %453, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %452, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %454, i32 noundef %446, i32 noundef 239, i32 noundef 5) #11
  br label %455

455:                                              ; preds = %448, %436
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #10
  store i8 -13, ptr %52, align 2
  %456 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 3, ptr %456, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #10
  %457 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 0, ptr %457, align 4, !annotation !8
  %458 = load ptr, ptr %151, align 4
  %459 = load i8, ptr %458, align 4
  %460 = zext i8 %459 to i16
  store i16 %460, ptr %53, align 4
  %461 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %461, align 2
  store i16 2, ptr %457, align 4
  %462 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %462, align 4
  %463 = getelementptr inbounds %struct.cx24117_priv, ptr %458, i32 0, i32 1
  %464 = load ptr, ptr %463, align 4
  %465 = call i32 @i2c_transfer(ptr noundef %464, ptr noundef nonnull %53, i32 noundef 1) #10
  %466 = icmp slt i32 %465, 0
  br i1 %466, label %467, label %474

467:                                              ; preds = %455
  %468 = load ptr, ptr %151, align 4
  %469 = getelementptr inbounds %struct.cx24117_priv, ptr %468, i32 0, i32 1
  %470 = load ptr, ptr %469, align 4
  %471 = getelementptr inbounds %struct.i2c_adapter, ptr %470, i32 0, i32 9
  %472 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %473 = load i32, ptr %472, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %471, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %473, i32 noundef %465, i32 noundef 243, i32 noundef 3) #11
  br label %474

474:                                              ; preds = %467, %455
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #10
  store i8 -12, ptr %50, align 2
  %475 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 68, ptr %475, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #10
  %476 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 0, ptr %476, align 4, !annotation !8
  %477 = load ptr, ptr %151, align 4
  %478 = load i8, ptr %477, align 4
  %479 = zext i8 %478 to i16
  store i16 %479, ptr %51, align 4
  %480 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %480, align 2
  store i16 2, ptr %476, align 4
  %481 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %481, align 4
  %482 = getelementptr inbounds %struct.cx24117_priv, ptr %477, i32 0, i32 1
  %483 = load ptr, ptr %482, align 4
  %484 = call i32 @i2c_transfer(ptr noundef %483, ptr noundef nonnull %51, i32 noundef 1) #10
  %485 = icmp slt i32 %484, 0
  br i1 %485, label %486, label %493

486:                                              ; preds = %474
  %487 = load ptr, ptr %151, align 4
  %488 = getelementptr inbounds %struct.cx24117_priv, ptr %487, i32 0, i32 1
  %489 = load ptr, ptr %488, align 4
  %490 = getelementptr inbounds %struct.i2c_adapter, ptr %489, i32 0, i32 9
  %491 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %492 = load i32, ptr %491, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %490, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %492, i32 noundef %484, i32 noundef 244, i32 noundef 68) #11
  br label %493

493:                                              ; preds = %486, %474
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #10
  store i8 -16, ptr %48, align 2
  %494 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 4, ptr %494, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %495 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 0, ptr %495, align 4, !annotation !8
  %496 = load ptr, ptr %151, align 4
  %497 = load i8, ptr %496, align 4
  %498 = zext i8 %497 to i16
  store i16 %498, ptr %49, align 4
  %499 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %499, align 2
  store i16 2, ptr %495, align 4
  %500 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %500, align 4
  %501 = getelementptr inbounds %struct.cx24117_priv, ptr %496, i32 0, i32 1
  %502 = load ptr, ptr %501, align 4
  %503 = call i32 @i2c_transfer(ptr noundef %502, ptr noundef nonnull %49, i32 noundef 1) #10
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %512

505:                                              ; preds = %493
  %506 = load ptr, ptr %151, align 4
  %507 = getelementptr inbounds %struct.cx24117_priv, ptr %506, i32 0, i32 1
  %508 = load ptr, ptr %507, align 4
  %509 = getelementptr inbounds %struct.i2c_adapter, ptr %508, i32 0, i32 9
  %510 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %511 = load i32, ptr %510, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %509, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %511, i32 noundef %503, i32 noundef 240, i32 noundef 4) #11
  br label %512

512:                                              ; preds = %505, %493
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #10
  store i8 -26, ptr %46, align 2
  %513 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 2, ptr %513, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %514 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 0, ptr %514, align 4, !annotation !8
  %515 = load ptr, ptr %151, align 4
  %516 = load i8, ptr %515, align 4
  %517 = zext i8 %516 to i16
  store i16 %517, ptr %47, align 4
  %518 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %518, align 2
  store i16 2, ptr %514, align 4
  %519 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %519, align 4
  %520 = getelementptr inbounds %struct.cx24117_priv, ptr %515, i32 0, i32 1
  %521 = load ptr, ptr %520, align 4
  %522 = call i32 @i2c_transfer(ptr noundef %521, ptr noundef nonnull %47, i32 noundef 1) #10
  %523 = icmp slt i32 %522, 0
  br i1 %523, label %524, label %531

524:                                              ; preds = %512
  %525 = load ptr, ptr %151, align 4
  %526 = getelementptr inbounds %struct.cx24117_priv, ptr %525, i32 0, i32 1
  %527 = load ptr, ptr %526, align 4
  %528 = getelementptr inbounds %struct.i2c_adapter, ptr %527, i32 0, i32 9
  %529 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %530 = load i32, ptr %529, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %528, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %530, i32 noundef %522, i32 noundef 230, i32 noundef 2) #11
  br label %531

531:                                              ; preds = %524, %512
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #10
  store i8 -15, ptr %44, align 2
  %532 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 4, ptr %532, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  %533 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 0, ptr %533, align 4, !annotation !8
  %534 = load ptr, ptr %151, align 4
  %535 = load i8, ptr %534, align 4
  %536 = zext i8 %535 to i16
  store i16 %536, ptr %45, align 4
  %537 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %537, align 2
  store i16 2, ptr %533, align 4
  %538 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %538, align 4
  %539 = getelementptr inbounds %struct.cx24117_priv, ptr %534, i32 0, i32 1
  %540 = load ptr, ptr %539, align 4
  %541 = call i32 @i2c_transfer(ptr noundef %540, ptr noundef nonnull %45, i32 noundef 1) #10
  %542 = icmp slt i32 %541, 0
  br i1 %542, label %543, label %550

543:                                              ; preds = %531
  %544 = load ptr, ptr %151, align 4
  %545 = getelementptr inbounds %struct.cx24117_priv, ptr %544, i32 0, i32 1
  %546 = load ptr, ptr %545, align 4
  %547 = getelementptr inbounds %struct.i2c_adapter, ptr %546, i32 0, i32 9
  %548 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %549 = load i32, ptr %548, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %547, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %549, i32 noundef %541, i32 noundef 241, i32 noundef 4) #11
  br label %550

550:                                              ; preds = %543, %531
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #10
  store i8 -25, ptr %42, align 2
  %551 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 2, ptr %551, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %552 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 0, ptr %552, align 4, !annotation !8
  %553 = load ptr, ptr %151, align 4
  %554 = load i8, ptr %553, align 4
  %555 = zext i8 %554 to i16
  store i16 %555, ptr %43, align 4
  %556 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %556, align 2
  store i16 2, ptr %552, align 4
  %557 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %557, align 4
  %558 = getelementptr inbounds %struct.cx24117_priv, ptr %553, i32 0, i32 1
  %559 = load ptr, ptr %558, align 4
  %560 = call i32 @i2c_transfer(ptr noundef %559, ptr noundef nonnull %43, i32 noundef 1) #10
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %569

562:                                              ; preds = %550
  %563 = load ptr, ptr %151, align 4
  %564 = getelementptr inbounds %struct.cx24117_priv, ptr %563, i32 0, i32 1
  %565 = load ptr, ptr %564, align 4
  %566 = getelementptr inbounds %struct.i2c_adapter, ptr %565, i32 0, i32 9
  %567 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %568 = load i32, ptr %567, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %566, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %568, i32 noundef %560, i32 noundef 231, i32 noundef 2) #11
  br label %569

569:                                              ; preds = %562, %550
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #10
  store i8 -14, ptr %40, align 2
  %570 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 4, ptr %570, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %571 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 0, ptr %571, align 4, !annotation !8
  %572 = load ptr, ptr %151, align 4
  %573 = load i8, ptr %572, align 4
  %574 = zext i8 %573 to i16
  store i16 %574, ptr %41, align 4
  %575 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %575, align 2
  store i16 2, ptr %571, align 4
  %576 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %576, align 4
  %577 = getelementptr inbounds %struct.cx24117_priv, ptr %572, i32 0, i32 1
  %578 = load ptr, ptr %577, align 4
  %579 = call i32 @i2c_transfer(ptr noundef %578, ptr noundef nonnull %41, i32 noundef 1) #10
  %580 = icmp slt i32 %579, 0
  br i1 %580, label %581, label %588

581:                                              ; preds = %569
  %582 = load ptr, ptr %151, align 4
  %583 = getelementptr inbounds %struct.cx24117_priv, ptr %582, i32 0, i32 1
  %584 = load ptr, ptr %583, align 4
  %585 = getelementptr inbounds %struct.i2c_adapter, ptr %584, i32 0, i32 9
  %586 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %587 = load i32, ptr %586, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %585, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %587, i32 noundef %579, i32 noundef 242, i32 noundef 4) #11
  br label %588

588:                                              ; preds = %581, %569
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #10
  store i8 -24, ptr %38, align 2
  %589 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 2, ptr %589, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %590 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 0, ptr %590, align 4, !annotation !8
  %591 = load ptr, ptr %151, align 4
  %592 = load i8, ptr %591, align 4
  %593 = zext i8 %592 to i16
  store i16 %593, ptr %39, align 4
  %594 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %594, align 2
  store i16 2, ptr %590, align 4
  %595 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %595, align 4
  %596 = getelementptr inbounds %struct.cx24117_priv, ptr %591, i32 0, i32 1
  %597 = load ptr, ptr %596, align 4
  %598 = call i32 @i2c_transfer(ptr noundef %597, ptr noundef nonnull %39, i32 noundef 1) #10
  %599 = icmp slt i32 %598, 0
  br i1 %599, label %600, label %607

600:                                              ; preds = %588
  %601 = load ptr, ptr %151, align 4
  %602 = getelementptr inbounds %struct.cx24117_priv, ptr %601, i32 0, i32 1
  %603 = load ptr, ptr %602, align 4
  %604 = getelementptr inbounds %struct.i2c_adapter, ptr %603, i32 0, i32 9
  %605 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %606 = load i32, ptr %605, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %604, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %606, i32 noundef %598, i32 noundef 232, i32 noundef 2) #11
  br label %607

607:                                              ; preds = %600, %588
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #10
  store i8 -22, ptr %36, align 2
  %608 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 1, ptr %608, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %609 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 0, ptr %609, align 4, !annotation !8
  %610 = load ptr, ptr %151, align 4
  %611 = load i8, ptr %610, align 4
  %612 = zext i8 %611 to i16
  store i16 %612, ptr %37, align 4
  %613 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %613, align 2
  store i16 2, ptr %609, align 4
  %614 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %614, align 4
  %615 = getelementptr inbounds %struct.cx24117_priv, ptr %610, i32 0, i32 1
  %616 = load ptr, ptr %615, align 4
  %617 = call i32 @i2c_transfer(ptr noundef %616, ptr noundef nonnull %37, i32 noundef 1) #10
  %618 = icmp slt i32 %617, 0
  br i1 %618, label %619, label %626

619:                                              ; preds = %607
  %620 = load ptr, ptr %151, align 4
  %621 = getelementptr inbounds %struct.cx24117_priv, ptr %620, i32 0, i32 1
  %622 = load ptr, ptr %621, align 4
  %623 = getelementptr inbounds %struct.i2c_adapter, ptr %622, i32 0, i32 9
  %624 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %625 = load i32, ptr %624, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %623, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %625, i32 noundef %617, i32 noundef 234, i32 noundef 1) #11
  br label %626

626:                                              ; preds = %619, %607
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #10
  store i8 -56, ptr %34, align 2
  %627 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 0, ptr %627, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %628 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %628, align 4, !annotation !8
  %629 = load ptr, ptr %151, align 4
  %630 = load i8, ptr %629, align 4
  %631 = zext i8 %630 to i16
  store i16 %631, ptr %35, align 4
  %632 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %632, align 2
  store i16 2, ptr %628, align 4
  %633 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %633, align 4
  %634 = getelementptr inbounds %struct.cx24117_priv, ptr %629, i32 0, i32 1
  %635 = load ptr, ptr %634, align 4
  %636 = call i32 @i2c_transfer(ptr noundef %635, ptr noundef nonnull %35, i32 noundef 1) #10
  %637 = icmp slt i32 %636, 0
  br i1 %637, label %638, label %645

638:                                              ; preds = %626
  %639 = load ptr, ptr %151, align 4
  %640 = getelementptr inbounds %struct.cx24117_priv, ptr %639, i32 0, i32 1
  %641 = load ptr, ptr %640, align 4
  %642 = getelementptr inbounds %struct.i2c_adapter, ptr %641, i32 0, i32 9
  %643 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %644 = load i32, ptr %643, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %642, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %644, i32 noundef %636, i32 noundef 200, i32 noundef 0) #11
  br label %645

645:                                              ; preds = %638, %626
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #10
  store i8 -55, ptr %32, align 2
  %646 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 0, ptr %646, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %647 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 0, ptr %647, align 4, !annotation !8
  %648 = load ptr, ptr %151, align 4
  %649 = load i8, ptr %648, align 4
  %650 = zext i8 %649 to i16
  store i16 %650, ptr %33, align 4
  %651 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %651, align 2
  store i16 2, ptr %647, align 4
  %652 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %652, align 4
  %653 = getelementptr inbounds %struct.cx24117_priv, ptr %648, i32 0, i32 1
  %654 = load ptr, ptr %653, align 4
  %655 = call i32 @i2c_transfer(ptr noundef %654, ptr noundef nonnull %33, i32 noundef 1) #10
  %656 = icmp slt i32 %655, 0
  br i1 %656, label %657, label %664

657:                                              ; preds = %645
  %658 = load ptr, ptr %151, align 4
  %659 = getelementptr inbounds %struct.cx24117_priv, ptr %658, i32 0, i32 1
  %660 = load ptr, ptr %659, align 4
  %661 = getelementptr inbounds %struct.i2c_adapter, ptr %660, i32 0, i32 9
  %662 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %663 = load i32, ptr %662, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %661, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %663, i32 noundef %655, i32 noundef 201, i32 noundef 0) #11
  br label %664

664:                                              ; preds = %657, %645
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #10
  store i8 -54, ptr %30, align 2
  %665 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 0, ptr %665, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %666 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %666, align 4, !annotation !8
  %667 = load ptr, ptr %151, align 4
  %668 = load i8, ptr %667, align 4
  %669 = zext i8 %668 to i16
  store i16 %669, ptr %31, align 4
  %670 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %670, align 2
  store i16 2, ptr %666, align 4
  %671 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %671, align 4
  %672 = getelementptr inbounds %struct.cx24117_priv, ptr %667, i32 0, i32 1
  %673 = load ptr, ptr %672, align 4
  %674 = call i32 @i2c_transfer(ptr noundef %673, ptr noundef nonnull %31, i32 noundef 1) #10
  %675 = icmp slt i32 %674, 0
  br i1 %675, label %676, label %683

676:                                              ; preds = %664
  %677 = load ptr, ptr %151, align 4
  %678 = getelementptr inbounds %struct.cx24117_priv, ptr %677, i32 0, i32 1
  %679 = load ptr, ptr %678, align 4
  %680 = getelementptr inbounds %struct.i2c_adapter, ptr %679, i32 0, i32 9
  %681 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %682 = load i32, ptr %681, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %680, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %682, i32 noundef %674, i32 noundef 202, i32 noundef 0) #11
  br label %683

683:                                              ; preds = %676, %664
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #10
  store i8 -53, ptr %28, align 2
  %684 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 0, ptr %684, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %685 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %685, align 4, !annotation !8
  %686 = load ptr, ptr %151, align 4
  %687 = load i8, ptr %686, align 4
  %688 = zext i8 %687 to i16
  store i16 %688, ptr %29, align 4
  %689 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %689, align 2
  store i16 2, ptr %685, align 4
  %690 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %690, align 4
  %691 = getelementptr inbounds %struct.cx24117_priv, ptr %686, i32 0, i32 1
  %692 = load ptr, ptr %691, align 4
  %693 = call i32 @i2c_transfer(ptr noundef %692, ptr noundef nonnull %29, i32 noundef 1) #10
  %694 = icmp slt i32 %693, 0
  br i1 %694, label %695, label %702

695:                                              ; preds = %683
  %696 = load ptr, ptr %151, align 4
  %697 = getelementptr inbounds %struct.cx24117_priv, ptr %696, i32 0, i32 1
  %698 = load ptr, ptr %697, align 4
  %699 = getelementptr inbounds %struct.i2c_adapter, ptr %698, i32 0, i32 9
  %700 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %701 = load i32, ptr %700, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %699, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %701, i32 noundef %693, i32 noundef 203, i32 noundef 0) #11
  br label %702

702:                                              ; preds = %695, %683
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #10
  store i8 -52, ptr %26, align 2
  %703 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 0, ptr %703, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %704 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 0, ptr %704, align 4, !annotation !8
  %705 = load ptr, ptr %151, align 4
  %706 = load i8, ptr %705, align 4
  %707 = zext i8 %706 to i16
  store i16 %707, ptr %27, align 4
  %708 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %708, align 2
  store i16 2, ptr %704, align 4
  %709 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %709, align 4
  %710 = getelementptr inbounds %struct.cx24117_priv, ptr %705, i32 0, i32 1
  %711 = load ptr, ptr %710, align 4
  %712 = call i32 @i2c_transfer(ptr noundef %711, ptr noundef nonnull %27, i32 noundef 1) #10
  %713 = icmp slt i32 %712, 0
  br i1 %713, label %714, label %721

714:                                              ; preds = %702
  %715 = load ptr, ptr %151, align 4
  %716 = getelementptr inbounds %struct.cx24117_priv, ptr %715, i32 0, i32 1
  %717 = load ptr, ptr %716, align 4
  %718 = getelementptr inbounds %struct.i2c_adapter, ptr %717, i32 0, i32 9
  %719 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %720 = load i32, ptr %719, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %718, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %720, i32 noundef %712, i32 noundef 204, i32 noundef 0) #11
  br label %721

721:                                              ; preds = %714, %702
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #10
  store i8 -51, ptr %24, align 2
  %722 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 0, ptr %722, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %723 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 0, ptr %723, align 4, !annotation !8
  %724 = load ptr, ptr %151, align 4
  %725 = load i8, ptr %724, align 4
  %726 = zext i8 %725 to i16
  store i16 %726, ptr %25, align 4
  %727 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %727, align 2
  store i16 2, ptr %723, align 4
  %728 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %728, align 4
  %729 = getelementptr inbounds %struct.cx24117_priv, ptr %724, i32 0, i32 1
  %730 = load ptr, ptr %729, align 4
  %731 = call i32 @i2c_transfer(ptr noundef %730, ptr noundef nonnull %25, i32 noundef 1) #10
  %732 = icmp slt i32 %731, 0
  br i1 %732, label %733, label %740

733:                                              ; preds = %721
  %734 = load ptr, ptr %151, align 4
  %735 = getelementptr inbounds %struct.cx24117_priv, ptr %734, i32 0, i32 1
  %736 = load ptr, ptr %735, align 4
  %737 = getelementptr inbounds %struct.i2c_adapter, ptr %736, i32 0, i32 9
  %738 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %739 = load i32, ptr %738, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %737, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %739, i32 noundef %731, i32 noundef 205, i32 noundef 0) #11
  br label %740

740:                                              ; preds = %733, %721
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i8 -28, ptr %22, align 2
  %741 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 3, ptr %741, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %742 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 0, ptr %742, align 4, !annotation !8
  %743 = load ptr, ptr %151, align 4
  %744 = load i8, ptr %743, align 4
  %745 = zext i8 %744 to i16
  store i16 %745, ptr %23, align 4
  %746 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %746, align 2
  store i16 2, ptr %742, align 4
  %747 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %747, align 4
  %748 = getelementptr inbounds %struct.cx24117_priv, ptr %743, i32 0, i32 1
  %749 = load ptr, ptr %748, align 4
  %750 = call i32 @i2c_transfer(ptr noundef %749, ptr noundef nonnull %23, i32 noundef 1) #10
  %751 = icmp slt i32 %750, 0
  br i1 %751, label %752, label %759

752:                                              ; preds = %740
  %753 = load ptr, ptr %151, align 4
  %754 = getelementptr inbounds %struct.cx24117_priv, ptr %753, i32 0, i32 1
  %755 = load ptr, ptr %754, align 4
  %756 = getelementptr inbounds %struct.i2c_adapter, ptr %755, i32 0, i32 9
  %757 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %758 = load i32, ptr %757, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %756, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %758, i32 noundef %750, i32 noundef 228, i32 noundef 3) #11
  br label %759

759:                                              ; preds = %752, %740
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i8 -21, ptr %20, align 2
  %760 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 10, ptr %760, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %761 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 0, ptr %761, align 4, !annotation !8
  %762 = load ptr, ptr %151, align 4
  %763 = load i8, ptr %762, align 4
  %764 = zext i8 %763 to i16
  store i16 %764, ptr %21, align 4
  %765 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %765, align 2
  store i16 2, ptr %761, align 4
  %766 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %766, align 4
  %767 = getelementptr inbounds %struct.cx24117_priv, ptr %762, i32 0, i32 1
  %768 = load ptr, ptr %767, align 4
  %769 = call i32 @i2c_transfer(ptr noundef %768, ptr noundef nonnull %21, i32 noundef 1) #10
  %770 = icmp slt i32 %769, 0
  br i1 %770, label %771, label %778

771:                                              ; preds = %759
  %772 = load ptr, ptr %151, align 4
  %773 = getelementptr inbounds %struct.cx24117_priv, ptr %772, i32 0, i32 1
  %774 = load ptr, ptr %773, align 4
  %775 = getelementptr inbounds %struct.i2c_adapter, ptr %774, i32 0, i32 9
  %776 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %777 = load i32, ptr %776, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %775, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %777, i32 noundef %769, i32 noundef 235, i32 noundef 10) #11
  br label %778

778:                                              ; preds = %771, %759
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 -5, ptr %18, align 2
  %779 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 0, ptr %779, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %780 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 0, ptr %780, align 4, !annotation !8
  %781 = load ptr, ptr %151, align 4
  %782 = load i8, ptr %781, align 4
  %783 = zext i8 %782 to i16
  store i16 %783, ptr %19, align 4
  %784 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %784, align 2
  store i16 2, ptr %780, align 4
  %785 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %785, align 4
  %786 = getelementptr inbounds %struct.cx24117_priv, ptr %781, i32 0, i32 1
  %787 = load ptr, ptr %786, align 4
  %788 = call i32 @i2c_transfer(ptr noundef %787, ptr noundef nonnull %19, i32 noundef 1) #10
  %789 = icmp slt i32 %788, 0
  br i1 %789, label %790, label %797

790:                                              ; preds = %778
  %791 = load ptr, ptr %151, align 4
  %792 = getelementptr inbounds %struct.cx24117_priv, ptr %791, i32 0, i32 1
  %793 = load ptr, ptr %792, align 4
  %794 = getelementptr inbounds %struct.i2c_adapter, ptr %793, i32 0, i32 9
  %795 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %796 = load i32, ptr %795, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %794, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %796, i32 noundef %788, i32 noundef 251, i32 noundef 0) #11
  br label %797

797:                                              ; preds = %790, %778
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i8 -32, ptr %16, align 2
  %798 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 118, ptr %798, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %799 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 0, ptr %799, align 4, !annotation !8
  %800 = load ptr, ptr %151, align 4
  %801 = load i8, ptr %800, align 4
  %802 = zext i8 %801 to i16
  store i16 %802, ptr %17, align 4
  %803 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %803, align 2
  store i16 2, ptr %799, align 4
  %804 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %804, align 4
  %805 = getelementptr inbounds %struct.cx24117_priv, ptr %800, i32 0, i32 1
  %806 = load ptr, ptr %805, align 4
  %807 = call i32 @i2c_transfer(ptr noundef %806, ptr noundef nonnull %17, i32 noundef 1) #10
  %808 = icmp slt i32 %807, 0
  br i1 %808, label %809, label %816

809:                                              ; preds = %797
  %810 = load ptr, ptr %151, align 4
  %811 = getelementptr inbounds %struct.cx24117_priv, ptr %810, i32 0, i32 1
  %812 = load ptr, ptr %811, align 4
  %813 = getelementptr inbounds %struct.i2c_adapter, ptr %812, i32 0, i32 9
  %814 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %815 = load i32, ptr %814, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %813, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %815, i32 noundef %807, i32 noundef 224, i32 noundef 118) #11
  br label %816

816:                                              ; preds = %809, %797
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i8 -9, ptr %14, align 2
  %817 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -127, ptr %817, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %818 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 0, ptr %818, align 4, !annotation !8
  %819 = load ptr, ptr %151, align 4
  %820 = load i8, ptr %819, align 4
  %821 = zext i8 %820 to i16
  store i16 %821, ptr %15, align 4
  %822 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %822, align 2
  store i16 2, ptr %818, align 4
  %823 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %823, align 4
  %824 = getelementptr inbounds %struct.cx24117_priv, ptr %819, i32 0, i32 1
  %825 = load ptr, ptr %824, align 4
  %826 = call i32 @i2c_transfer(ptr noundef %825, ptr noundef nonnull %15, i32 noundef 1) #10
  %827 = icmp slt i32 %826, 0
  br i1 %827, label %828, label %835

828:                                              ; preds = %816
  %829 = load ptr, ptr %151, align 4
  %830 = getelementptr inbounds %struct.cx24117_priv, ptr %829, i32 0, i32 1
  %831 = load ptr, ptr %830, align 4
  %832 = getelementptr inbounds %struct.i2c_adapter, ptr %831, i32 0, i32 9
  %833 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %834 = load i32, ptr %833, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %832, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %834, i32 noundef %826, i32 noundef 247, i32 noundef 129) #11
  br label %835

835:                                              ; preds = %828, %816
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 -8, ptr %12, align 2
  %836 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 0, ptr %836, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %837 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 0, ptr %837, align 4, !annotation !8
  %838 = load ptr, ptr %151, align 4
  %839 = load i8, ptr %838, align 4
  %840 = zext i8 %839 to i16
  store i16 %840, ptr %13, align 4
  %841 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %841, align 2
  store i16 2, ptr %837, align 4
  %842 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %842, align 4
  %843 = getelementptr inbounds %struct.cx24117_priv, ptr %838, i32 0, i32 1
  %844 = load ptr, ptr %843, align 4
  %845 = call i32 @i2c_transfer(ptr noundef %844, ptr noundef nonnull %13, i32 noundef 1) #10
  %846 = icmp slt i32 %845, 0
  br i1 %846, label %847, label %854

847:                                              ; preds = %835
  %848 = load ptr, ptr %151, align 4
  %849 = getelementptr inbounds %struct.cx24117_priv, ptr %848, i32 0, i32 1
  %850 = load ptr, ptr %849, align 4
  %851 = getelementptr inbounds %struct.i2c_adapter, ptr %850, i32 0, i32 9
  %852 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %853 = load i32, ptr %852, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %851, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %853, i32 noundef %845, i32 noundef 248, i32 noundef 0) #11
  br label %854

854:                                              ; preds = %847, %835
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 -7, ptr %10, align 2
  %855 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 0, ptr %855, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %856 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 0, ptr %856, align 4, !annotation !8
  %857 = load ptr, ptr %151, align 4
  %858 = load i8, ptr %857, align 4
  %859 = zext i8 %858 to i16
  store i16 %859, ptr %11, align 4
  %860 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %860, align 2
  store i16 2, ptr %856, align 4
  %861 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %861, align 4
  %862 = getelementptr inbounds %struct.cx24117_priv, ptr %857, i32 0, i32 1
  %863 = load ptr, ptr %862, align 4
  %864 = call i32 @i2c_transfer(ptr noundef %863, ptr noundef nonnull %11, i32 noundef 1) #10
  %865 = icmp slt i32 %864, 0
  br i1 %865, label %866, label %873

866:                                              ; preds = %854
  %867 = load ptr, ptr %151, align 4
  %868 = getelementptr inbounds %struct.cx24117_priv, ptr %867, i32 0, i32 1
  %869 = load ptr, ptr %868, align 4
  %870 = getelementptr inbounds %struct.i2c_adapter, ptr %869, i32 0, i32 9
  %871 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %872 = load i32, ptr %871, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %870, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %872, i32 noundef %864, i32 noundef 249, i32 noundef 0) #11
  br label %873

873:                                              ; preds = %866, %854
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  %874 = load i32, ptr %150, align 4
  %875 = add i32 %874, 1
  %876 = call noalias align 64 ptr @__kmalloc(i32 noundef %875, i32 noundef 3264) #13
  %877 = icmp eq ptr %876, null
  br i1 %877, label %878, label %881

878:                                              ; preds = %873
  %879 = load ptr, ptr %151, align 4
  %880 = getelementptr inbounds %struct.cx24117_priv, ptr %879, i32 0, i32 2
  store i8 0, ptr %880, align 4
  br label %1034

881:                                              ; preds = %873
  store i8 -6, ptr %876, align 64
  %882 = getelementptr i8, ptr %876, i32 1
  %883 = getelementptr inbounds %struct.firmware, ptr %150, i32 0, i32 1
  %884 = load ptr, ptr %883, align 4
  %885 = load i32, ptr %150, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %882, ptr align 1 %884, i32 %885, i1 false) #10
  %886 = load ptr, ptr %151, align 4
  %887 = load i8, ptr %886, align 4
  %888 = zext i8 %887 to i16
  store i16 %888, ptr %88, align 4
  %889 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 1
  store i16 0, ptr %889, align 2
  %890 = load i32, ptr %150, align 4
  %891 = trunc i32 %890 to i16
  %892 = add i16 %891, 1
  %893 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 2
  store i16 %892, ptr %893, align 4
  %894 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 3
  store ptr %876, ptr %894, align 4
  %895 = load ptr, ptr %151, align 4
  %896 = getelementptr inbounds %struct.cx24117_priv, ptr %895, i32 0, i32 1
  %897 = load ptr, ptr %896, align 4
  %898 = call i32 @i2c_transfer(ptr noundef %897, ptr noundef nonnull %88, i32 noundef 1) #10
  %899 = icmp slt i32 %898, 0
  call void @kfree(ptr noundef nonnull %876) #10
  br i1 %899, label %1034, label %900

900:                                              ; preds = %881
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 -9, ptr %8, align 2
  %901 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 12, ptr %901, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %902 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %902, align 4, !annotation !8
  %903 = load ptr, ptr %151, align 4
  %904 = load i8, ptr %903, align 4
  %905 = zext i8 %904 to i16
  store i16 %905, ptr %9, align 4
  %906 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %906, align 2
  %907 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %907, align 4
  %908 = getelementptr inbounds %struct.cx24117_priv, ptr %903, i32 0, i32 1
  %909 = load ptr, ptr %908, align 4
  %910 = call i32 @i2c_transfer(ptr noundef %909, ptr noundef nonnull %9, i32 noundef 1) #10
  %911 = icmp slt i32 %910, 0
  br i1 %911, label %912, label %919

912:                                              ; preds = %900
  %913 = load ptr, ptr %151, align 4
  %914 = getelementptr inbounds %struct.cx24117_priv, ptr %913, i32 0, i32 1
  %915 = load ptr, ptr %914, align 4
  %916 = getelementptr inbounds %struct.i2c_adapter, ptr %915, i32 0, i32 9
  %917 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %918 = load i32, ptr %917, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %916, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %918, i32 noundef %910, i32 noundef 247, i32 noundef 12) #11
  br label %919

919:                                              ; preds = %912, %900
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 -32, ptr %6, align 2
  %920 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %920, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %921 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %921, align 4, !annotation !8
  %922 = load ptr, ptr %151, align 4
  %923 = load i8, ptr %922, align 4
  %924 = zext i8 %923 to i16
  store i16 %924, ptr %7, align 4
  %925 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %925, align 2
  %926 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %926, align 4
  %927 = getelementptr inbounds %struct.cx24117_priv, ptr %922, i32 0, i32 1
  %928 = load ptr, ptr %927, align 4
  %929 = call i32 @i2c_transfer(ptr noundef %928, ptr noundef nonnull %7, i32 noundef 1) #10
  %930 = icmp slt i32 %929, 0
  br i1 %930, label %931, label %938

931:                                              ; preds = %919
  %932 = load ptr, ptr %151, align 4
  %933 = getelementptr inbounds %struct.cx24117_priv, ptr %932, i32 0, i32 1
  %934 = load ptr, ptr %933, align 4
  %935 = getelementptr inbounds %struct.i2c_adapter, ptr %934, i32 0, i32 9
  %936 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  %937 = load i32, ptr %936, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %935, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %937, i32 noundef %929, i32 noundef 224, i32 noundef 0) #11
  br label %938

938:                                              ; preds = %931, %919
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %939 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1
  store i8 27, ptr %939, align 1
  %940 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 1
  store i8 0, ptr %940, align 1
  %941 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 2
  store i8 1, ptr %941, align 1
  %942 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 3
  store i8 0, ptr %942, align 1
  store i8 4, ptr %86, align 1
  %943 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %86) #10
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %945, label %1010

945:                                              ; preds = %938
  store i8 16, ptr %939, align 1
  store i8 6, ptr %940, align 1
  store i8 43, ptr %941, align 1
  store i8 -40, ptr %942, align 1
  %946 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 4
  store i8 -91, ptr %946, align 1
  %947 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 5
  store i8 -18, ptr %947, align 1
  %948 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 6
  store i8 3, ptr %948, align 1
  %949 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 7
  store i8 -99, ptr %949, align 1
  %950 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 8
  store i8 -4, ptr %950, align 1
  %951 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 9
  store i8 6, ptr %951, align 1
  %952 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 10
  store i8 2, ptr %952, align 1
  %953 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 11
  store i8 -99, ptr %953, align 1
  %954 = getelementptr inbounds %struct.cx24117_cmd, ptr %86, i32 0, i32 1, i32 12
  store i8 -4, ptr %954, align 1
  store i8 13, ptr %86, align 1
  %955 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %86) #10
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %1010

957:                                              ; preds = %945
  store i8 21, ptr %939, align 1
  store i8 0, ptr %940, align 1
  store i8 1, ptr %941, align 1
  store i8 0, ptr %942, align 1
  store i8 0, ptr %946, align 1
  store i8 1, ptr %947, align 1
  store i8 1, ptr %948, align 1
  store i8 1, ptr %949, align 1
  store i8 0, ptr %950, align 1
  store i8 5, ptr %951, align 1
  store i8 2, ptr %952, align 1
  store i8 2, ptr %953, align 1
  store i8 0, ptr %954, align 1
  store i8 13, ptr %86, align 1
  %958 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %86) #10
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %1010

960:                                              ; preds = %957
  store i8 19, ptr %939, align 1
  store i8 0, ptr %940, align 1
  store i8 0, ptr %941, align 1
  store i8 0, ptr %942, align 1
  store i8 1, ptr %946, align 1
  store i8 0, ptr %947, align 1
  store i8 6, ptr %86, align 1
  %961 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %86) #10
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %1010

963:                                              ; preds = %960
  store i8 20, ptr %939, align 1
  store i8 0, ptr %940, align 1
  store i8 0, ptr %941, align 1
  store i8 5, ptr %942, align 1
  store i8 0, ptr %946, align 1
  store i8 0, ptr %947, align 1
  store i8 85, ptr %948, align 1
  store i8 0, ptr %949, align 1
  store i8 8, ptr %86, align 1
  %964 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %86) #10
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %1010

966:                                              ; preds = %963
  store i8 20, ptr %939, align 1
  store i8 1, ptr %940, align 1
  store i8 0, ptr %941, align 1
  store i8 5, ptr %942, align 1
  store i8 0, ptr %946, align 1
  store i8 0, ptr %947, align 1
  store i8 85, ptr %948, align 1
  store i8 0, ptr %949, align 1
  store i8 8, ptr %86, align 1
  %967 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %86) #10
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %969, label %1010

969:                                              ; preds = %966
  call fastcc void @cx24117_writereg(ptr noundef %151, i8 noundef zeroext -50, i8 noundef zeroext -64) #10
  call fastcc void @cx24117_writereg(ptr noundef %151, i8 noundef zeroext -49, i8 noundef zeroext 0) #10
  call fastcc void @cx24117_writereg(ptr noundef %151, i8 noundef zeroext -27, i8 noundef zeroext 4) #10
  store i8 53, ptr %939, align 1
  store i8 2, ptr %86, align 1
  %970 = getelementptr inbounds i8, ptr %5, i32 4
  %971 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %972 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %973 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %974 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %975 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %976 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  %977 = getelementptr inbounds %struct.cx24117_state, ptr %151, i32 0, i32 5
  br label %978

978:                                              ; preds = %1004, %969
  %979 = phi i32 [ 0, %969 ], [ %1008, %1004 ]
  %980 = trunc i32 %979 to i8
  store i8 %980, ptr %940, align 1
  %981 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %0, ptr noundef nonnull %86) #10
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %1010

983:                                              ; preds = %978
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 51, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %970, i8 0, i32 16, i1 false) #10, !annotation !8
  %984 = load ptr, ptr %151, align 4
  %985 = load i8, ptr %984, align 4
  %986 = zext i8 %985 to i16
  store i16 %986, ptr %5, align 4
  store i16 0, ptr %971, align 2
  store i16 1, ptr %970, align 4
  store ptr %3, ptr %972, align 4
  %987 = load i8, ptr %984, align 4
  %988 = zext i8 %987 to i16
  store i16 %988, ptr %973, align 4
  store i16 1, ptr %974, align 2
  store i16 1, ptr %975, align 4
  store ptr %4, ptr %976, align 4
  %989 = getelementptr inbounds %struct.cx24117_priv, ptr %984, i32 0, i32 1
  %990 = load ptr, ptr %989, align 4
  %991 = call i32 @i2c_transfer(ptr noundef %990, ptr noundef nonnull %5, i32 noundef 2) #10
  %992 = icmp slt i32 %991, 0
  br i1 %992, label %993, label %1001

993:                                              ; preds = %983
  %994 = load ptr, ptr %151, align 4
  %995 = getelementptr inbounds %struct.cx24117_priv, ptr %994, i32 0, i32 1
  %996 = load ptr, ptr %995, align 4
  %997 = getelementptr inbounds %struct.i2c_adapter, ptr %996, i32 0, i32 9
  %998 = load i32, ptr %977, align 4
  %999 = load i8, ptr %3, align 1
  %1000 = zext i8 %999 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %997, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %998, i32 noundef %991, i32 noundef %1000) #11
  br label %1004

1001:                                             ; preds = %983
  %1002 = load i8, ptr %4, align 1
  %1003 = zext i8 %1002 to i32
  br label %1004

1004:                                             ; preds = %1001, %993
  %1005 = phi i32 [ %991, %993 ], [ %1003, %1001 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %1006 = trunc i32 %1005 to i8
  %1007 = getelementptr [4 x i8], ptr %87, i32 0, i32 %979
  store i8 %1006, ptr %1007, align 1
  %1008 = add nuw nsw i32 %979, 1
  %1009 = icmp eq i32 %1008, 4
  br i1 %1009, label %1018, label %978

1010:                                             ; preds = %978, %966, %963, %960, %957, %945, %938
  %1011 = phi i32 [ %943, %938 ], [ %955, %945 ], [ %958, %957 ], [ %961, %960 ], [ %964, %963 ], [ %967, %966 ], [ %981, %978 ]
  %1012 = load ptr, ptr %151, align 4
  %1013 = getelementptr inbounds %struct.cx24117_priv, ptr %1012, i32 0, i32 2
  store i8 0, ptr %1013, align 4
  %1014 = load ptr, ptr %151, align 4
  %1015 = getelementptr inbounds %struct.cx24117_priv, ptr %1014, i32 0, i32 1
  %1016 = load ptr, ptr %1015, align 4
  %1017 = getelementptr inbounds %struct.i2c_adapter, ptr %1016, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1017, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cx24117_load_firmware) #11
  br label %1034

1018:                                             ; preds = %1004
  %1019 = load ptr, ptr %151, align 4
  %1020 = getelementptr inbounds %struct.cx24117_priv, ptr %1019, i32 0, i32 1
  %1021 = load ptr, ptr %1020, align 4
  %1022 = getelementptr inbounds %struct.i2c_adapter, ptr %1021, i32 0, i32 9
  %1023 = load i8, ptr %87, align 4
  %1024 = zext i8 %1023 to i32
  %1025 = getelementptr inbounds [4 x i8], ptr %87, i32 0, i32 1
  %1026 = load i8, ptr %1025, align 1
  %1027 = zext i8 %1026 to i32
  %1028 = getelementptr inbounds [4 x i8], ptr %87, i32 0, i32 2
  %1029 = load i8, ptr %1028, align 2
  %1030 = zext i8 %1029 to i32
  %1031 = getelementptr inbounds [4 x i8], ptr %87, i32 0, i32 3
  %1032 = load i8, ptr %1031, align 1
  %1033 = zext i8 %1032 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1022, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cx24117_load_firmware, i32 noundef %1024, i32 noundef %1027, i32 noundef %1030, i32 noundef %1033) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %88) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %87) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %86) #10
  br label %1041

1034:                                             ; preds = %1010, %881, %878
  %1035 = phi i32 [ %898, %881 ], [ %1011, %1010 ], [ -12, %878 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %88) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %87) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %86) #10
  %1036 = load ptr, ptr %101, align 4
  %1037 = getelementptr inbounds %struct.cx24117_priv, ptr %1036, i32 0, i32 1
  %1038 = load ptr, ptr %1037, align 4
  %1039 = getelementptr inbounds %struct.i2c_adapter, ptr %1038, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1039, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24117_firmware_ondemand) #11
  br label %1041

1040:                                             ; preds = %132, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %99) #10
  br label %1052

1041:                                             ; preds = %1034, %1018
  %1042 = phi i1 [ true, %1018 ], [ false, %1034 ]
  %1043 = phi i32 [ 0, %1018 ], [ %1035, %1034 ]
  %1044 = phi ptr [ @.str.12, %1018 ], [ @.str.13, %1034 ]
  %1045 = load ptr, ptr %99, align 4
  call void @release_firmware(ptr noundef %1045) #10
  %1046 = load ptr, ptr %101, align 4
  %1047 = getelementptr inbounds %struct.cx24117_priv, ptr %1046, i32 0, i32 1
  %1048 = load ptr, ptr %1047, align 4
  %1049 = getelementptr inbounds %struct.i2c_adapter, ptr %1048, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1049, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.cx24117_firmware_ondemand, ptr noundef nonnull %1044) #11
  %1050 = load ptr, ptr %101, align 4
  %1051 = getelementptr inbounds %struct.cx24117_priv, ptr %1050, i32 0, i32 2
  store i8 0, ptr %1051, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %99) #10
  br i1 %1042, label %1052, label %1136

1052:                                             ; preds = %1041, %1040
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %97) #10
  %1053 = getelementptr inbounds i8, ptr %97, i32 4
  store i32 0, ptr %1053, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %98) #10
  %1054 = getelementptr inbounds [31 x i8], ptr %98, i32 0, i32 1
  %1055 = getelementptr inbounds %struct.cx24117_cmd, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %98, i8 0, i64 31, i1 false) #10
  %1056 = load i8, ptr %1, align 1
  %1057 = zext i8 %1056 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1054, ptr align 1 %1055, i32 %1057, i1 false) #10
  %1058 = load ptr, ptr %101, align 4
  %1059 = load i8, ptr %1058, align 4
  %1060 = zext i8 %1059 to i16
  store i16 %1060, ptr %97, align 4
  %1061 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 1
  store i16 0, ptr %1061, align 2
  %1062 = zext i8 %1056 to i16
  %1063 = add nuw nsw i16 %1062, 1
  store i16 %1063, ptr %1053, align 4
  %1064 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 3
  store ptr %98, ptr %1064, align 4
  %1065 = getelementptr inbounds %struct.cx24117_priv, ptr %1058, i32 0, i32 1
  %1066 = load ptr, ptr %1065, align 4
  %1067 = call i32 @i2c_transfer(ptr noundef %1066, ptr noundef nonnull %97, i32 noundef 1) #10
  %1068 = icmp slt i32 %1067, 0
  br i1 %1068, label %1069, label %1078

1069:                                             ; preds = %1052
  %1070 = load ptr, ptr %101, align 4
  %1071 = getelementptr inbounds %struct.cx24117_priv, ptr %1070, i32 0, i32 1
  %1072 = load ptr, ptr %1071, align 4
  %1073 = getelementptr inbounds %struct.i2c_adapter, ptr %1072, i32 0, i32 9
  %1074 = getelementptr inbounds %struct.cx24117_state, ptr %101, i32 0, i32 5
  %1075 = load i32, ptr %1074, align 4
  %1076 = load i8, ptr %1, align 1
  %1077 = zext i8 %1076 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1073, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef %1075, i32 noundef %1067, i32 noundef %1077) #11
  br label %1078

1078:                                             ; preds = %1069, %1052
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %98) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %97) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %95) #10
  store i8 31, ptr %95, align 2
  %1079 = getelementptr inbounds i8, ptr %95, i32 1
  store i8 1, ptr %1079, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %96) #10
  %1080 = getelementptr inbounds i8, ptr %96, i32 4
  store i32 2, ptr %1080, align 4, !annotation !8
  %1081 = load ptr, ptr %101, align 4
  %1082 = load i8, ptr %1081, align 4
  %1083 = zext i8 %1082 to i16
  store i16 %1083, ptr %96, align 4
  %1084 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 1
  store i16 0, ptr %1084, align 2
  %1085 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 3
  store ptr %95, ptr %1085, align 4
  %1086 = getelementptr inbounds %struct.cx24117_priv, ptr %1081, i32 0, i32 1
  %1087 = load ptr, ptr %1086, align 4
  %1088 = call i32 @i2c_transfer(ptr noundef %1087, ptr noundef nonnull %96, i32 noundef 1) #10
  %1089 = icmp slt i32 %1088, 0
  br i1 %1089, label %1090, label %1097

1090:                                             ; preds = %1078
  %1091 = load ptr, ptr %101, align 4
  %1092 = getelementptr inbounds %struct.cx24117_priv, ptr %1091, i32 0, i32 1
  %1093 = load ptr, ptr %1092, align 4
  %1094 = getelementptr inbounds %struct.i2c_adapter, ptr %1093, i32 0, i32 9
  %1095 = getelementptr inbounds %struct.cx24117_state, ptr %101, i32 0, i32 5
  %1096 = load i32, ptr %1095, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1094, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %1096, i32 noundef %1088, i32 noundef 31, i32 noundef 1) #11
  br label %1097

1097:                                             ; preds = %1090, %1078
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %96) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %95) #10
  %1098 = getelementptr inbounds i8, ptr %94, i32 4
  %1099 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 1
  %1100 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 3
  %1101 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 1
  %1102 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 1, i32 1
  %1103 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 1, i32 2
  %1104 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 1, i32 3
  %1105 = getelementptr inbounds %struct.cx24117_state, ptr %101, i32 0, i32 5
  br label %1106

1106:                                             ; preds = %1128, %1097
  %1107 = phi i32 [ 0, %1097 ], [ %1129, %1128 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %92)
  store i8 31, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %93) #10
  store i8 0, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %94) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1098, i8 0, i32 16, i1 false) #10, !annotation !8
  %1108 = load ptr, ptr %101, align 4
  %1109 = load i8, ptr %1108, align 4
  %1110 = zext i8 %1109 to i16
  store i16 %1110, ptr %94, align 4
  store i16 0, ptr %1099, align 2
  store i16 1, ptr %1098, align 4
  store ptr %92, ptr %1100, align 4
  %1111 = load i8, ptr %1108, align 4
  %1112 = zext i8 %1111 to i16
  store i16 %1112, ptr %1101, align 4
  store i16 1, ptr %1102, align 2
  store i16 1, ptr %1103, align 4
  store ptr %93, ptr %1104, align 4
  %1113 = getelementptr inbounds %struct.cx24117_priv, ptr %1108, i32 0, i32 1
  %1114 = load ptr, ptr %1113, align 4
  %1115 = call i32 @i2c_transfer(ptr noundef %1114, ptr noundef nonnull %94, i32 noundef 2) #10
  %1116 = icmp slt i32 %1115, 0
  br i1 %1116, label %1117, label %1125

1117:                                             ; preds = %1106
  %1118 = load ptr, ptr %101, align 4
  %1119 = getelementptr inbounds %struct.cx24117_priv, ptr %1118, i32 0, i32 1
  %1120 = load ptr, ptr %1119, align 4
  %1121 = getelementptr inbounds %struct.i2c_adapter, ptr %1120, i32 0, i32 9
  %1122 = load i32, ptr %1105, align 4
  %1123 = load i8, ptr %92, align 1
  %1124 = zext i8 %1123 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1121, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %1122, i32 noundef %1115, i32 noundef %1124) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %94) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %93) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %92)
  br label %1128

1125:                                             ; preds = %1106
  %1126 = load i8, ptr %93, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %94) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %93) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %92)
  %1127 = icmp eq i8 %1126, 0
  br i1 %1127, label %1136, label %1128

1128:                                             ; preds = %1125, %1117
  call void @msleep(i32 noundef 20) #10
  %1129 = add nuw nsw i32 %1107, 1
  %1130 = icmp eq i32 %1129, 42
  br i1 %1130, label %1131, label %1106

1131:                                             ; preds = %1128
  %1132 = load ptr, ptr %101, align 4
  %1133 = getelementptr inbounds %struct.cx24117_priv, ptr %1132, i32 0, i32 1
  %1134 = load ptr, ptr %1133, align 4
  %1135 = getelementptr inbounds %struct.i2c_adapter, ptr %1134, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1135, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.cx24117_cmd_execute_nolock) #11
  br label %1136

1136:                                             ; preds = %1131, %1125, %1041, %144
  %1137 = phi i32 [ -5, %1131 ], [ %1043, %1041 ], [ %141, %144 ], [ 0, %1125 ]
  ret i32 %1137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24117_writereg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 %1, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = load ptr, ptr %0, align 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cx24117_priv, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %5, i32 noundef 1) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.cx24117_priv, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.cx24117_state, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = zext i8 %1 to i32
  %26 = zext i8 %2 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %24, i32 noundef %16, i32 noundef %25, i32 noundef %26) #11
  br label %27

27:                                               ; preds = %18, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24117_wait_for_lnb(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cx24117_state, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i8 -109, i8 -97
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  br label %18

18:                                               ; preds = %44, %1
  %19 = phi i32 [ 0, %1 ], [ %45, %44 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %10, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %20 = load ptr, ptr %6, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %4, align 4
  store i16 0, ptr %12, align 2
  store i16 1, ptr %11, align 4
  store ptr %2, ptr %13, align 4
  %23 = load i8, ptr %20, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %14, align 4
  store i16 1, ptr %15, align 2
  store i16 1, ptr %16, align 4
  store ptr %3, ptr %17, align 4
  %25 = getelementptr inbounds %struct.cx24117_priv, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %4, i32 noundef 2) #10
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.cx24117_priv, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 9
  %34 = load i32, ptr %7, align 4
  %35 = load i8, ptr %2, align 1
  %36 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %34, i32 noundef %27, i32 noundef %36) #11
  br label %40

37:                                               ; preds = %18
  %38 = load i8, ptr %3, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i32 [ %27, %29 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  call void @msleep(i32 noundef 30) #10
  %45 = add nuw nsw i32 %19, 1
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %18

47:                                               ; preds = %44
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.cx24117_priv, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 9
  %52 = load i32, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef %52) #11
  br label %53

53:                                               ; preds = %47, %40
  %54 = phi i32 [ -110, %47 ], [ 0, %40 ]
  ret i32 %54
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
