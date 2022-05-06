; ModuleID = '/llk/IR/drivers/media/dvb-frontends/nxt200x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/nxt200x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nxt200x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22nxt200x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_nxt200x_attach:\09\09\09\09\09"
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nxt200x_state = type { ptr, ptr, %struct.dvb_frontend, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
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
%struct.nxt200x_config = type { i8, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"\016nxt200x: NXT2002 Detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\016nxt200x: NXT2004 Detected\0A\00", align 1
@nxt200x_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Nextwave NXT200X VSB/QAM frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 860000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 2138798 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @nxt200x_release, ptr null, ptr @nxt200x_init, ptr @nxt200x_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nxt200x_setup_frontend_parameters, ptr @nxt200x_get_tune_settings, ptr null, ptr @nxt200x_read_status, ptr @nxt200x_read_ber, ptr @nxt200x_read_signal_strength, ptr @nxt200x_read_snr, ptr @nxt200x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"\013nxt200x: Unknown/Unsupported NXT chip: %*ph\0A\00", align 1
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [82 x i8] c"description=NXT200X (ATSC 8VSB & ITU-T J.83 AnnexB 64/256 QAM) Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [76 x i8] c"author=Kirk Lapray, Michael Krufky, Jean-Francois Thibert, and Taylor Jacob\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_nxt200x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_nxt200x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_nxt200x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nxt200x_attach to i32), ptr @__kstrtab_nxt200x_attach, ptr @__kstrtabns_nxt200x_attach }, section "___ksymtab+nxt200x_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"\014nxt200x: %s: i2c read error (addr 0x%02x, err == %i)\0A\00", align 1
@__func__.nxt200x_readbytes = private unnamed_addr constant [18 x i8] c"nxt200x_readbytes\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"dvb-fe-nxt2002.fw\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"\013nxt200x: %s: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@__func__.nxt2002_init = private unnamed_addr constant [13 x i8] c"nxt2002_init\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\016nxt200x: %s: Firmware upload complete\0A\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"\014nxt200x: Timeout waiting for nxt200x to stop. This is ok after firmware upload.\0A\00", align 1
@__func__.nxt200x_writebytes = private unnamed_addr constant [19 x i8] c"nxt200x_writebytes\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"\014nxt200x: %s: i2c write error (addr 0x%02x, err == %i)\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"dvb-fe-nxt2004.fw\00", align 1
@__func__.nxt2004_init = private unnamed_addr constant [13 x i8] c"nxt2004_init\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\014nxt200x: Timeout waiting for nxt2004 to init.\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"\014nxt200x: Error writing multireg register 0x%02X\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"\014nxt200x: error writing to tuner\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"\014nxt200x: timeout waiting for tuner lock\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"\014nxt200x: timeout error writing to tuner\0A\00", align 1
@__func__.i2c_writebytes = private unnamed_addr constant [15 x i8] c"i2c_writebytes\00", align 1
@__func__.i2c_readbytes = private unnamed_addr constant [14 x i8] c"i2c_readbytes\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_nxt200x_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nxt200x_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %5, i8 0, i32 5, i1 false)
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1056) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -2
  store i8 %13, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %14 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = load i8, ptr %0, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %4, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %22, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %29, label %25

25:                                               ; preds = %9
  %26 = load i8, ptr %0, align 4
  %27 = zext i8 %26 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %27, i32 noundef %23) #12
  br label %29

29:                                               ; preds = %25, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %30 = load i8, ptr %5, align 1
  switch i8 %30, label %61 [
    i8 4, label %31
    i8 5, label %52
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 3
  store i32 1, ptr %32, align 8
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %34 = load i8, ptr %5, align 1
  %35 = icmp ne i8 %34, 4
  %36 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = icmp ne i8 %37, 2
  %39 = select i1 %35, i1 true, i1 %38
  %40 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = icmp ne i8 %41, 17
  %43 = select i1 %39, i1 true, i1 %42
  %44 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = icmp ne i8 %45, 32
  %47 = select i1 %43, i1 true, i1 %46
  %48 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = icmp ne i8 %49, 0
  %51 = select i1 %47, i1 true, i1 %50
  br i1 %51, label %61, label %57

52:                                               ; preds = %29
  %53 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 3
  store i32 2, ptr %53, align 8
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  %55 = load i8, ptr %5, align 1
  %56 = icmp eq i8 %55, 5
  br i1 %56, label %57, label %61

57:                                               ; preds = %52, %31
  %58 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 2
  %59 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %59, ptr noundef nonnull align 4 dereferenceable(544) @nxt200x_ops, i32 544, i1 false)
  %60 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %60, align 8
  br label %63

61:                                               ; preds = %52, %31, %29, %2
  call void @kfree(ptr noundef %7) #10
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull %5) #12
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi ptr [ null, %61 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %5) #10
  ret ptr %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nxt200x_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt200x_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [256 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [256 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [256 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [256 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [256 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [256 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [256 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [1 x i8], align 1
  %19 = alloca [2 x %struct.i2c_msg], align 4
  %20 = alloca [256 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [256 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [256 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [256 x i8], align 1
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [1 x i8], align 1
  %29 = alloca [2 x %struct.i2c_msg], align 4
  %30 = alloca [256 x i8], align 1
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [1 x i8], align 1
  %33 = alloca [2 x %struct.i2c_msg], align 4
  %34 = alloca [256 x i8], align 1
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [256 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [256 x i8], align 1
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [256 x i8], align 1
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [256 x i8], align 1
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [256 x i8], align 1
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [256 x i8], align 1
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [256 x i8], align 1
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [1 x i8], align 1
  %53 = alloca [2 x %struct.i2c_msg], align 4
  %54 = alloca [256 x i8], align 1
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [256 x i8], align 1
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [256 x i8], align 1
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca [256 x i8], align 1
  %61 = alloca %struct.i2c_msg, align 4
  %62 = alloca [3 x i8], align 2
  %63 = alloca [256 x i8], align 1
  %64 = alloca %struct.i2c_msg, align 4
  %65 = alloca ptr, align 4
  %66 = alloca [3 x i8], align 2
  %67 = alloca [256 x i8], align 1
  %68 = alloca %struct.i2c_msg, align 4
  %69 = alloca [256 x i8], align 1
  %70 = alloca %struct.i2c_msg, align 4
  %71 = alloca [256 x i8], align 1
  %72 = alloca %struct.i2c_msg, align 4
  %73 = alloca [256 x i8], align 1
  %74 = alloca %struct.i2c_msg, align 4
  %75 = alloca [256 x i8], align 1
  %76 = alloca %struct.i2c_msg, align 4
  %77 = alloca [256 x i8], align 1
  %78 = alloca %struct.i2c_msg, align 4
  %79 = alloca [256 x i8], align 1
  %80 = alloca %struct.i2c_msg, align 4
  %81 = alloca [256 x i8], align 1
  %82 = alloca %struct.i2c_msg, align 4
  %83 = alloca [1 x i8], align 1
  %84 = alloca [2 x %struct.i2c_msg], align 4
  %85 = alloca [256 x i8], align 1
  %86 = alloca %struct.i2c_msg, align 4
  %87 = alloca [256 x i8], align 1
  %88 = alloca %struct.i2c_msg, align 4
  %89 = alloca [256 x i8], align 1
  %90 = alloca %struct.i2c_msg, align 4
  %91 = alloca [256 x i8], align 1
  %92 = alloca %struct.i2c_msg, align 4
  %93 = alloca [256 x i8], align 1
  %94 = alloca %struct.i2c_msg, align 4
  %95 = alloca [1 x i8], align 1
  %96 = alloca [2 x %struct.i2c_msg], align 4
  %97 = alloca [3 x i8], align 2
  %98 = alloca ptr, align 4
  %99 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nxt200x_state, ptr %100, i32 0, i32 4
  %102 = load i8, ptr %101, align 4
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %1185

105:                                              ; preds = %1
  %106 = getelementptr inbounds %struct.nxt200x_state, ptr %100, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  switch i32 %107, label %1185 [
    i32 1, label %108
    i32 2, label %514
  ]

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %98) #10
  store ptr null, ptr %98, align 4, !annotation !8
  %109 = load ptr, ptr %100, align 4
  %110 = getelementptr inbounds %struct.i2c_adapter, ptr %109, i32 0, i32 9, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 @request_firmware(ptr noundef nonnull %98, ptr noundef nonnull @.str.4, ptr noundef %111) #10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.nxt2002_init) #12
  br label %512

116:                                              ; preds = %108
  %117 = load ptr, ptr %98, align 4
  %118 = load ptr, ptr %99, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %97) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %97, i8 0, i32 3, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %95) #10
  store i8 16, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %96) #10
  %119 = getelementptr inbounds i8, ptr %96, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %119, i8 0, i32 16, i1 false) #10, !annotation !8
  %120 = getelementptr inbounds %struct.nxt200x_state, ptr %118, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load i8, ptr %121, align 4
  %123 = zext i8 %122 to i16
  store i16 %123, ptr %96, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 1
  store i16 0, ptr %124, align 2
  store i16 1, ptr %119, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 3
  store ptr %95, ptr %125, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 1
  %127 = load i8, ptr %121, align 4
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %126, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 1, i32 1
  store i16 1, ptr %129, align 2
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 1, i32 2
  store i16 1, ptr %130, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 1, i32 3
  store ptr %97, ptr %131, align 4
  %132 = load ptr, ptr %118, align 4
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %96, i32 noundef 2) #10
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %140, label %135

135:                                              ; preds = %116
  %136 = load ptr, ptr %120, align 4
  %137 = load i8, ptr %136, align 4
  %138 = zext i8 %137 to i32
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %138, i32 noundef %133) #12
  br label %140

140:                                              ; preds = %135, %116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %96) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %95) #10
  %141 = load i8, ptr %97, align 2
  %142 = and i8 %141, 16
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 8
  store i8 -128, ptr %97, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %93) #10
  %145 = getelementptr inbounds i8, ptr %93, i32 1
  %146 = getelementptr inbounds i8, ptr %93, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %146, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %94) #10
  %147 = getelementptr inbounds i8, ptr %94, i32 4
  store i32 2, ptr %147, align 4, !annotation !8
  %148 = load ptr, ptr %120, align 4
  %149 = load i8, ptr %148, align 4
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %94, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 1
  store i16 0, ptr %151, align 2
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 3
  store ptr %93, ptr %152, align 4
  store i8 43, ptr %93, align 1
  store i8 -128, ptr %145, align 1
  %153 = load ptr, ptr %118, align 4
  %154 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %94, i32 noundef 1) #10
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %161, label %156

156:                                              ; preds = %140
  %157 = load ptr, ptr %120, align 4
  %158 = load i8, ptr %157, align 4
  %159 = zext i8 %158 to i32
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %159, i32 noundef %154) #12
  br label %161

161:                                              ; preds = %156, %140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %94) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %93) #10
  %162 = load i32, ptr %117, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %388, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.firmware, ptr %117, i32 0, i32 1
  %166 = getelementptr inbounds i8, ptr %89, i32 1
  %167 = getelementptr inbounds i8, ptr %90, i32 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 1
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 3
  %170 = getelementptr inbounds [3 x i8], ptr %97, i32 0, i32 1
  %171 = getelementptr inbounds [3 x i8], ptr %97, i32 0, i32 2
  %172 = getelementptr inbounds i8, ptr %91, i32 1
  %173 = getelementptr inbounds i8, ptr %92, i32 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 1
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 3
  %176 = getelementptr inbounds i8, ptr %87, i32 1
  %177 = getelementptr inbounds i8, ptr %88, i32 4
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 1
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 3
  %180 = getelementptr inbounds i8, ptr %85, i32 1
  %181 = getelementptr inbounds i8, ptr %86, i32 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 1
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 3
  %184 = getelementptr inbounds i8, ptr %84, i32 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 1
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 3
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 1
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 1, i32 1
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 1, i32 2
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 1, i32 3
  %191 = getelementptr inbounds i8, ptr %81, i32 1
  %192 = getelementptr inbounds i8, ptr %82, i32 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %82, i32 0, i32 1
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %82, i32 0, i32 3
  br label %195

195:                                              ; preds = %382, %164
  %196 = phi i32 [ 0, %164 ], [ %386, %382 ]
  %197 = phi i8 [ 0, %164 ], [ %384, %382 ]
  %198 = phi i8 [ 0, %164 ], [ %245, %382 ]
  %199 = phi i16 [ 0, %164 ], [ %316, %382 ]
  %200 = phi i16 [ 0, %164 ], [ %385, %382 ]
  %201 = icmp eq i8 %197, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %195
  %203 = add nuw nsw i32 %196, %144
  %204 = lshr i32 %203, 8
  %205 = trunc i32 %204 to i8
  store i8 %205, ptr %97, align 2
  %206 = trunc i32 %203 to i8
  store i8 %206, ptr %170, align 1
  store i8 -127, ptr %171, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %91) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %172, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %92) #10
  store i32 0, ptr %173, align 4, !annotation !8
  %207 = load ptr, ptr %120, align 4
  %208 = load i8, ptr %207, align 4
  %209 = zext i8 %208 to i16
  store i16 %209, ptr %92, align 4
  store i16 0, ptr %174, align 2
  store i16 4, ptr %173, align 4
  store ptr %91, ptr %175, align 4
  store i8 41, ptr %91, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %172, ptr noundef nonnull align 2 dereferenceable(3) %97, i32 3, i1 false) #10
  %210 = load ptr, ptr %118, align 4
  %211 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %92, i32 noundef 1) #10
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %218, label %213

213:                                              ; preds = %202
  %214 = load ptr, ptr %120, align 4
  %215 = load i8, ptr %214, align 4
  %216 = zext i8 %215 to i32
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %216, i32 noundef %211) #12
  br label %218

218:                                              ; preds = %213, %202
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %92) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %91) #10
  br label %242

219:                                              ; preds = %195
  %220 = add i8 %197, 1
  %221 = add i8 %198, 1
  %222 = and i8 %220, 3
  %223 = zext i8 %222 to i32
  %224 = icmp eq i8 %222, 0
  br i1 %224, label %225, label %242

225:                                              ; preds = %219
  %226 = load ptr, ptr %165, align 4
  %227 = add nsw i32 %196, -3
  %228 = getelementptr i8, ptr %226, i32 %227
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %89) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %166, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %90) #10
  store i32 0, ptr %167, align 4, !annotation !8
  %229 = load ptr, ptr %120, align 4
  %230 = load i8, ptr %229, align 4
  %231 = zext i8 %230 to i16
  store i16 %231, ptr %90, align 4
  store i16 0, ptr %168, align 2
  store i16 5, ptr %167, align 4
  store ptr %89, ptr %169, align 4
  store i8 %221, ptr %89, align 1
  %232 = load i32, ptr %228, align 1
  store i32 %232, ptr %166, align 1
  %233 = load ptr, ptr %118, align 4
  %234 = call i32 @i2c_transfer(ptr noundef %233, ptr noundef nonnull %90, i32 noundef 1) #10
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %241, label %236

236:                                              ; preds = %225
  %237 = load ptr, ptr %120, align 4
  %238 = load i8, ptr %237, align 4
  %239 = zext i8 %238 to i32
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %239, i32 noundef %234) #12
  br label %241

241:                                              ; preds = %236, %225
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %90) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %89) #10
  br label %242

242:                                              ; preds = %241, %219, %218
  %243 = phi i32 [ 1, %218 ], [ 0, %241 ], [ %223, %219 ]
  %244 = phi i8 [ 1, %218 ], [ 0, %241 ], [ %222, %219 ]
  %245 = phi i8 [ 41, %218 ], [ %221, %241 ], [ %221, %219 ]
  %246 = phi i8 [ 1, %218 ], [ %220, %241 ], [ %220, %219 ]
  %247 = phi i8 [ 40, %218 ], [ %198, %241 ], [ %198, %219 ]
  %248 = phi i16 [ 0, %218 ], [ %199, %241 ], [ %199, %219 ]
  %249 = load ptr, ptr %165, align 4
  %250 = getelementptr i8, ptr %249, i32 %196
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = shl nuw nsw i32 %252, 8
  %254 = zext i16 %248 to i32
  %255 = xor i32 %253, %254
  %256 = and i32 %255, 32768
  %257 = icmp eq i32 %256, 0
  %258 = shl i16 %248, 1
  %259 = xor i16 %258, 4129
  %260 = select i1 %257, i16 %258, i16 %259
  %261 = shl nuw nsw i32 %252, 9
  %262 = zext i16 %260 to i32
  %263 = xor i32 %261, %262
  %264 = and i32 %263, 32768
  %265 = icmp eq i32 %264, 0
  %266 = shl i16 %260, 1
  %267 = xor i16 %266, 4129
  %268 = select i1 %265, i16 %266, i16 %267
  %269 = shl nuw nsw i32 %252, 10
  %270 = zext i16 %268 to i32
  %271 = xor i32 %269, %270
  %272 = and i32 %271, 32768
  %273 = icmp eq i32 %272, 0
  %274 = shl i16 %268, 1
  %275 = xor i16 %274, 4129
  %276 = select i1 %273, i16 %274, i16 %275
  %277 = shl nuw nsw i32 %252, 11
  %278 = zext i16 %276 to i32
  %279 = xor i32 %277, %278
  %280 = and i32 %279, 32768
  %281 = icmp eq i32 %280, 0
  %282 = shl i16 %276, 1
  %283 = xor i16 %282, 4129
  %284 = select i1 %281, i16 %282, i16 %283
  %285 = shl nuw nsw i32 %252, 12
  %286 = zext i16 %284 to i32
  %287 = xor i32 %285, %286
  %288 = and i32 %287, 32768
  %289 = icmp eq i32 %288, 0
  %290 = shl i16 %284, 1
  %291 = xor i16 %290, 4129
  %292 = select i1 %289, i16 %290, i16 %291
  %293 = shl nuw nsw i32 %252, 13
  %294 = zext i16 %292 to i32
  %295 = xor i32 %293, %294
  %296 = and i32 %295, 32768
  %297 = icmp eq i32 %296, 0
  %298 = shl i16 %292, 1
  %299 = xor i16 %298, 4129
  %300 = select i1 %297, i16 %298, i16 %299
  %301 = shl nuw nsw i32 %252, 14
  %302 = zext i16 %300 to i32
  %303 = xor i32 %301, %302
  %304 = and i32 %303, 32768
  %305 = icmp eq i32 %304, 0
  %306 = shl i16 %300, 1
  %307 = xor i16 %306, 4129
  %308 = select i1 %305, i16 %306, i16 %307
  %309 = shl nuw nsw i32 %252, 15
  %310 = zext i16 %308 to i32
  %311 = xor i32 %309, %310
  %312 = and i32 %311, 32768
  %313 = icmp eq i32 %312, 0
  %314 = shl i16 %308, 1
  %315 = xor i16 %314, 4129
  %316 = select i1 %313, i16 %314, i16 %315
  %317 = icmp eq i8 %246, -1
  %318 = add nuw nsw i32 %196, 1
  br i1 %317, label %322, label %319

319:                                              ; preds = %242
  %320 = load i32, ptr %117, align 4
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %382

322:                                              ; preds = %319, %242
  %323 = sub nuw nsw i8 5, %244
  %324 = add i8 %323, %247
  %325 = sub nsw i32 %318, %243
  %326 = getelementptr i8, ptr %249, i32 %325
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %87) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %176, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %88) #10
  store i32 0, ptr %177, align 4, !annotation !8
  %327 = load ptr, ptr %120, align 4
  %328 = load i8, ptr %327, align 4
  %329 = zext i8 %328 to i16
  store i16 %329, ptr %88, align 4
  store i16 0, ptr %178, align 2
  %330 = add nuw nsw i8 %244, 1
  %331 = zext i8 %330 to i16
  store i16 %331, ptr %177, align 4
  store ptr %87, ptr %179, align 4
  store i8 %324, ptr %87, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %176, ptr align 1 %326, i32 %243, i1 false) #10
  %332 = load ptr, ptr %118, align 4
  %333 = call i32 @i2c_transfer(ptr noundef %332, ptr noundef nonnull %88, i32 noundef 1) #10
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %340, label %335

335:                                              ; preds = %322
  %336 = load ptr, ptr %120, align 4
  %337 = load i8, ptr %336, align 4
  %338 = zext i8 %337 to i32
  %339 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %338, i32 noundef %333) #12
  br label %340

340:                                              ; preds = %335, %322
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %88) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %87) #10
  store i8 0, ptr %97, align 2
  %341 = trunc i16 %316 to i8
  store i8 %341, ptr %170, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %85) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %180, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %86) #10
  store i32 0, ptr %181, align 4, !annotation !8
  %342 = load ptr, ptr %120, align 4
  %343 = load i8, ptr %342, align 4
  %344 = zext i8 %343 to i16
  store i16 %344, ptr %86, align 4
  store i16 0, ptr %182, align 2
  store i16 3, ptr %181, align 4
  store ptr %85, ptr %183, align 4
  store i8 44, ptr %85, align 1
  %345 = load i16, ptr %97, align 2
  store i16 %345, ptr %180, align 1
  %346 = load ptr, ptr %118, align 4
  %347 = call i32 @i2c_transfer(ptr noundef %346, ptr noundef nonnull %86, i32 noundef 1) #10
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %354, label %349

349:                                              ; preds = %340
  %350 = load ptr, ptr %120, align 4
  %351 = load i8, ptr %350, align 4
  %352 = zext i8 %351 to i32
  %353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %352, i32 noundef %347) #12
  br label %354

354:                                              ; preds = %349, %340
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %86) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %85) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %83) #10
  store i8 42, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %84) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %184, i8 0, i32 16, i1 false) #10, !annotation !8
  %355 = load ptr, ptr %120, align 4
  %356 = load i8, ptr %355, align 4
  %357 = zext i8 %356 to i16
  store i16 %357, ptr %84, align 4
  store i16 0, ptr %185, align 2
  store i16 1, ptr %184, align 4
  store ptr %83, ptr %186, align 4
  %358 = load i8, ptr %355, align 4
  %359 = zext i8 %358 to i16
  store i16 %359, ptr %187, align 4
  store i16 1, ptr %188, align 2
  store i16 1, ptr %189, align 4
  store ptr %97, ptr %190, align 4
  %360 = load ptr, ptr %118, align 4
  %361 = call i32 @i2c_transfer(ptr noundef %360, ptr noundef nonnull %84, i32 noundef 2) #10
  %362 = icmp eq i32 %361, 2
  br i1 %362, label %368, label %363

363:                                              ; preds = %354
  %364 = load ptr, ptr %120, align 4
  %365 = load i8, ptr %364, align 4
  %366 = zext i8 %365 to i32
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %366, i32 noundef %361) #12
  br label %368

368:                                              ; preds = %363, %354
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %84) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %83) #10
  store i8 -128, ptr %97, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %81) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %191, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %82) #10
  store i32 0, ptr %192, align 4, !annotation !8
  %369 = load ptr, ptr %120, align 4
  %370 = load i8, ptr %369, align 4
  %371 = zext i8 %370 to i16
  store i16 %371, ptr %82, align 4
  store i16 0, ptr %193, align 2
  store i16 2, ptr %192, align 4
  store ptr %81, ptr %194, align 4
  store i8 43, ptr %81, align 1
  store i8 -128, ptr %191, align 1
  %372 = load ptr, ptr %118, align 4
  %373 = call i32 @i2c_transfer(ptr noundef %372, ptr noundef nonnull %82, i32 noundef 1) #10
  %374 = icmp eq i32 %373, 1
  br i1 %374, label %380, label %375

375:                                              ; preds = %368
  %376 = load ptr, ptr %120, align 4
  %377 = load i8, ptr %376, align 4
  %378 = zext i8 %377 to i32
  %379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %378, i32 noundef %373) #12
  br label %380

380:                                              ; preds = %375, %368
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %82) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %81) #10
  %381 = load i32, ptr %117, align 4
  br label %382

382:                                              ; preds = %380, %319
  %383 = phi i32 [ %381, %380 ], [ %320, %319 ]
  %384 = phi i8 [ 0, %380 ], [ %246, %319 ]
  %385 = add i16 %200, 1
  %386 = zext i16 %385 to i32
  %387 = icmp ugt i32 %383, %386
  br i1 %387, label %195, label %388

388:                                              ; preds = %382, %161
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %97) #10
  %389 = load ptr, ptr %98, align 4
  call void @release_firmware(ptr noundef %389) #10
  %390 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.nxt2002_init) #12
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %100) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %79) #10
  %391 = getelementptr inbounds i8, ptr %79, i32 1
  %392 = getelementptr inbounds i8, ptr %79, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %392, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %80) #10
  %393 = getelementptr inbounds i8, ptr %80, i32 4
  store i32 2, ptr %393, align 4, !annotation !8
  %394 = getelementptr inbounds %struct.nxt200x_state, ptr %100, i32 0, i32 1
  %395 = load ptr, ptr %394, align 4
  %396 = load i8, ptr %395, align 4
  %397 = zext i8 %396 to i16
  store i16 %397, ptr %80, align 4
  %398 = getelementptr inbounds %struct.i2c_msg, ptr %80, i32 0, i32 1
  store i16 0, ptr %398, align 2
  %399 = getelementptr inbounds %struct.i2c_msg, ptr %80, i32 0, i32 3
  store ptr %79, ptr %399, align 4
  store i8 43, ptr %79, align 1
  store i8 0, ptr %391, align 1
  %400 = load ptr, ptr %100, align 4
  %401 = call i32 @i2c_transfer(ptr noundef %400, ptr noundef nonnull %80, i32 noundef 1) #10
  %402 = icmp eq i32 %401, 1
  br i1 %402, label %408, label %403

403:                                              ; preds = %388
  %404 = load ptr, ptr %394, align 4
  %405 = load i8, ptr %404, align 4
  %406 = zext i8 %405 to i32
  %407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %406, i32 noundef %401) #12
  br label %408

408:                                              ; preds = %403, %388
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %80) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %79) #10
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %100) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %77) #10
  %409 = getelementptr inbounds i8, ptr %77, i32 1
  %410 = getelementptr inbounds i8, ptr %77, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %410, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %78) #10
  %411 = getelementptr inbounds i8, ptr %78, i32 4
  store i32 2, ptr %411, align 4, !annotation !8
  %412 = load ptr, ptr %394, align 4
  %413 = load i8, ptr %412, align 4
  %414 = zext i8 %413 to i16
  store i16 %414, ptr %78, align 4
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 1
  store i16 0, ptr %415, align 2
  %416 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 3
  store ptr %77, ptr %416, align 4
  store i8 8, ptr %77, align 1
  store i8 15, ptr %409, align 1
  %417 = load ptr, ptr %100, align 4
  %418 = call i32 @i2c_transfer(ptr noundef %417, ptr noundef nonnull %78, i32 noundef 1) #10
  %419 = icmp eq i32 %418, 1
  br i1 %419, label %425, label %420

420:                                              ; preds = %408
  %421 = load ptr, ptr %394, align 4
  %422 = load i8, ptr %421, align 4
  %423 = zext i8 %422 to i32
  %424 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %423, i32 noundef %418) #12
  br label %425

425:                                              ; preds = %420, %408
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %78) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %77) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %75) #10
  %426 = getelementptr inbounds i8, ptr %75, i32 1
  %427 = getelementptr inbounds i8, ptr %75, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %427, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %76) #10
  %428 = getelementptr inbounds i8, ptr %76, i32 4
  store i32 2, ptr %428, align 4, !annotation !8
  %429 = load ptr, ptr %394, align 4
  %430 = load i8, ptr %429, align 4
  %431 = zext i8 %430 to i16
  store i16 %431, ptr %76, align 4
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 1
  store i16 0, ptr %432, align 2
  %433 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 3
  store ptr %75, ptr %433, align 4
  store i8 8, ptr %75, align 1
  store i8 0, ptr %426, align 1
  %434 = load ptr, ptr %100, align 4
  %435 = call i32 @i2c_transfer(ptr noundef %434, ptr noundef nonnull %76, i32 noundef 1) #10
  %436 = icmp eq i32 %435, 1
  br i1 %436, label %442, label %437

437:                                              ; preds = %425
  %438 = load ptr, ptr %394, align 4
  %439 = load i8, ptr %438, align 4
  %440 = zext i8 %439 to i32
  %441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %440, i32 noundef %435) #12
  br label %442

442:                                              ; preds = %437, %425
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %76) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %75) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %73) #10
  %443 = getelementptr inbounds i8, ptr %73, i32 1
  %444 = getelementptr inbounds i8, ptr %73, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %444, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %74) #10
  %445 = getelementptr inbounds i8, ptr %74, i32 4
  store i32 2, ptr %445, align 4, !annotation !8
  %446 = load ptr, ptr %394, align 4
  %447 = load i8, ptr %446, align 4
  %448 = zext i8 %447 to i16
  store i16 %448, ptr %74, align 4
  %449 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  store i16 0, ptr %449, align 2
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 3
  store ptr %73, ptr %450, align 4
  store i8 87, ptr %73, align 1
  store i8 -15, ptr %443, align 1
  %451 = load ptr, ptr %100, align 4
  %452 = call i32 @i2c_transfer(ptr noundef %451, ptr noundef nonnull %74, i32 noundef 1) #10
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %459, label %454

454:                                              ; preds = %442
  %455 = load ptr, ptr %394, align 4
  %456 = load i8, ptr %455, align 4
  %457 = zext i8 %456 to i32
  %458 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %457, i32 noundef %452) #12
  br label %459

459:                                              ; preds = %454, %442
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %74) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %73) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %71) #10
  %460 = getelementptr inbounds i8, ptr %71, i32 1
  %461 = getelementptr inbounds i8, ptr %71, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %461, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %72) #10
  %462 = getelementptr inbounds i8, ptr %72, i32 4
  store i32 2, ptr %462, align 4, !annotation !8
  %463 = load ptr, ptr %394, align 4
  %464 = load i8, ptr %463, align 4
  %465 = zext i8 %464 to i16
  store i16 %465, ptr %72, align 4
  %466 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 1
  store i16 0, ptr %466, align 2
  %467 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 3
  store ptr %71, ptr %467, align 4
  store i8 9, ptr %71, align 1
  store i8 32, ptr %460, align 1
  %468 = load ptr, ptr %100, align 4
  %469 = call i32 @i2c_transfer(ptr noundef %468, ptr noundef nonnull %72, i32 noundef 1) #10
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %476, label %471

471:                                              ; preds = %459
  %472 = load ptr, ptr %394, align 4
  %473 = load i8, ptr %472, align 4
  %474 = zext i8 %473 to i32
  %475 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %474, i32 noundef %469) #12
  br label %476

476:                                              ; preds = %471, %459
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %72) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %71) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %69) #10
  %477 = getelementptr inbounds i8, ptr %69, i32 1
  %478 = getelementptr inbounds i8, ptr %69, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %478, i8 0, i32 253, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %70) #10
  %479 = getelementptr inbounds i8, ptr %70, i32 4
  store i32 3, ptr %479, align 4, !annotation !8
  %480 = load ptr, ptr %394, align 4
  %481 = load i8, ptr %480, align 4
  %482 = zext i8 %481 to i16
  store i16 %482, ptr %70, align 4
  %483 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %483, align 2
  %484 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %69, ptr %484, align 4
  store i8 -23, ptr %69, align 1
  store i8 126, ptr %477, align 1
  %485 = getelementptr inbounds [256 x i8], ptr %69, i32 0, i32 2
  store i8 0, ptr %485, align 1
  %486 = load ptr, ptr %100, align 4
  %487 = call i32 @i2c_transfer(ptr noundef %486, ptr noundef nonnull %70, i32 noundef 1) #10
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %494, label %489

489:                                              ; preds = %476
  %490 = load ptr, ptr %394, align 4
  %491 = load i8, ptr %490, align 4
  %492 = zext i8 %491 to i32
  %493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %492, i32 noundef %487) #12
  br label %494

494:                                              ; preds = %489, %476
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %70) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %69) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %67) #10
  %495 = getelementptr inbounds i8, ptr %67, i32 1
  %496 = getelementptr inbounds i8, ptr %67, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %496, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %68) #10
  %497 = getelementptr inbounds i8, ptr %68, i32 4
  store i32 2, ptr %497, align 4, !annotation !8
  %498 = load ptr, ptr %394, align 4
  %499 = load i8, ptr %498, align 4
  %500 = zext i8 %499 to i16
  store i16 %500, ptr %68, align 4
  %501 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 1
  store i16 0, ptr %501, align 2
  %502 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  store ptr %67, ptr %502, align 4
  store i8 -52, ptr %67, align 1
  store i8 0, ptr %495, align 1
  %503 = load ptr, ptr %100, align 4
  %504 = call i32 @i2c_transfer(ptr noundef %503, ptr noundef nonnull %68, i32 noundef 1) #10
  %505 = icmp eq i32 %504, 1
  br i1 %505, label %511, label %506

506:                                              ; preds = %494
  %507 = load ptr, ptr %394, align 4
  %508 = load i8, ptr %507, align 4
  %509 = zext i8 %508 to i32
  %510 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %509, i32 noundef %504) #12
  br label %511

511:                                              ; preds = %506, %494
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %68) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %67) #10
  br label %512

512:                                              ; preds = %511, %114
  %513 = phi i32 [ %112, %114 ], [ 0, %511 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %98) #10
  br label %1181

514:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %65) #10
  store ptr null, ptr %65, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %66) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %66, i8 0, i64 3, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %63) #10
  %515 = getelementptr inbounds i8, ptr %63, i32 1
  %516 = getelementptr inbounds i8, ptr %63, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %516, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %64) #10
  %517 = getelementptr inbounds i8, ptr %64, i32 4
  store i32 2, ptr %517, align 4, !annotation !8
  %518 = getelementptr inbounds %struct.nxt200x_state, ptr %100, i32 0, i32 1
  %519 = load ptr, ptr %518, align 4
  %520 = load i8, ptr %519, align 4
  %521 = zext i8 %520 to i16
  store i16 %521, ptr %64, align 4
  %522 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 1
  store i16 0, ptr %522, align 2
  %523 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 3
  store ptr %63, ptr %523, align 4
  store i8 30, ptr %63, align 1
  store i8 0, ptr %515, align 1
  %524 = load ptr, ptr %100, align 4
  %525 = call i32 @i2c_transfer(ptr noundef %524, ptr noundef nonnull %64, i32 noundef 1) #10
  %526 = icmp eq i32 %525, 1
  br i1 %526, label %532, label %527

527:                                              ; preds = %514
  %528 = load ptr, ptr %518, align 4
  %529 = load i8, ptr %528, align 4
  %530 = zext i8 %529 to i32
  %531 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %530, i32 noundef %525) #12
  br label %532

532:                                              ; preds = %527, %514
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %64) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %63) #10
  %533 = load ptr, ptr %100, align 4
  %534 = getelementptr inbounds %struct.i2c_adapter, ptr %533, i32 0, i32 9, i32 1
  %535 = load ptr, ptr %534, align 4
  %536 = call i32 @request_firmware(ptr noundef nonnull %65, ptr noundef nonnull @.str.11, ptr noundef %535) #10
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %540, label %538

538:                                              ; preds = %532
  %539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.nxt2004_init) #12
  br label %1179

540:                                              ; preds = %532
  %541 = load ptr, ptr %65, align 4
  %542 = load ptr, ptr %99, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %62) #10
  store i16 0, ptr %62, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %60) #10
  %543 = getelementptr inbounds i8, ptr %60, i32 1
  %544 = getelementptr inbounds i8, ptr %60, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %544, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #10
  %545 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 2, ptr %545, align 4, !annotation !8
  %546 = getelementptr inbounds %struct.nxt200x_state, ptr %542, i32 0, i32 1
  %547 = load ptr, ptr %546, align 4
  %548 = load i8, ptr %547, align 4
  %549 = zext i8 %548 to i16
  store i16 %549, ptr %61, align 4
  %550 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %550, align 2
  %551 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %551, align 4
  store i8 43, ptr %60, align 1
  store i8 -128, ptr %543, align 1
  %552 = load ptr, ptr %542, align 4
  %553 = call i32 @i2c_transfer(ptr noundef %552, ptr noundef nonnull %61, i32 noundef 1) #10
  %554 = icmp eq i32 %553, 1
  br i1 %554, label %560, label %555

555:                                              ; preds = %540
  %556 = load ptr, ptr %546, align 4
  %557 = load i8, ptr %556, align 4
  %558 = zext i8 %557 to i32
  %559 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %558, i32 noundef %553) #12
  br label %560

560:                                              ; preds = %555, %540
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %60) #10
  %561 = load i32, ptr %541, align 4
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %644, label %563

563:                                              ; preds = %560
  %564 = getelementptr inbounds %struct.firmware, ptr %541, i32 0, i32 1
  %565 = load ptr, ptr %564, align 4
  br label %566

566:                                              ; preds = %566, %563
  %567 = phi i32 [ 0, %563 ], [ %638, %566 ]
  %568 = phi i16 [ 0, %563 ], [ %637, %566 ]
  %569 = phi i16 [ 0, %563 ], [ %636, %566 ]
  %570 = getelementptr i8, ptr %565, i32 %567
  %571 = load i8, ptr %570, align 1
  %572 = zext i8 %571 to i32
  %573 = shl nuw nsw i32 %572, 8
  %574 = zext i16 %569 to i32
  %575 = xor i32 %573, %574
  %576 = and i32 %575, 32768
  %577 = icmp eq i32 %576, 0
  %578 = shl i16 %569, 1
  %579 = xor i16 %578, 4129
  %580 = select i1 %577, i16 %578, i16 %579
  %581 = shl nuw nsw i32 %572, 9
  %582 = zext i16 %580 to i32
  %583 = xor i32 %581, %582
  %584 = and i32 %583, 32768
  %585 = icmp eq i32 %584, 0
  %586 = shl i16 %580, 1
  %587 = xor i16 %586, 4129
  %588 = select i1 %585, i16 %586, i16 %587
  %589 = shl nuw nsw i32 %572, 10
  %590 = zext i16 %588 to i32
  %591 = xor i32 %589, %590
  %592 = and i32 %591, 32768
  %593 = icmp eq i32 %592, 0
  %594 = shl i16 %588, 1
  %595 = xor i16 %594, 4129
  %596 = select i1 %593, i16 %594, i16 %595
  %597 = shl nuw nsw i32 %572, 11
  %598 = zext i16 %596 to i32
  %599 = xor i32 %597, %598
  %600 = and i32 %599, 32768
  %601 = icmp eq i32 %600, 0
  %602 = shl i16 %596, 1
  %603 = xor i16 %602, 4129
  %604 = select i1 %601, i16 %602, i16 %603
  %605 = shl nuw nsw i32 %572, 12
  %606 = zext i16 %604 to i32
  %607 = xor i32 %605, %606
  %608 = and i32 %607, 32768
  %609 = icmp eq i32 %608, 0
  %610 = shl i16 %604, 1
  %611 = xor i16 %610, 4129
  %612 = select i1 %609, i16 %610, i16 %611
  %613 = shl nuw nsw i32 %572, 13
  %614 = zext i16 %612 to i32
  %615 = xor i32 %613, %614
  %616 = and i32 %615, 32768
  %617 = icmp eq i32 %616, 0
  %618 = shl i16 %612, 1
  %619 = xor i16 %618, 4129
  %620 = select i1 %617, i16 %618, i16 %619
  %621 = shl nuw nsw i32 %572, 14
  %622 = zext i16 %620 to i32
  %623 = xor i32 %621, %622
  %624 = and i32 %623, 32768
  %625 = icmp eq i32 %624, 0
  %626 = shl i16 %620, 1
  %627 = xor i16 %626, 4129
  %628 = select i1 %625, i16 %626, i16 %627
  %629 = shl nuw nsw i32 %572, 15
  %630 = zext i16 %628 to i32
  %631 = xor i32 %629, %630
  %632 = and i32 %631, 32768
  %633 = icmp eq i32 %632, 0
  %634 = shl i16 %628, 1
  %635 = xor i16 %634, 4129
  %636 = select i1 %633, i16 %634, i16 %635
  %637 = add i16 %568, 1
  %638 = zext i16 %637 to i32
  %639 = icmp ugt i32 %561, %638
  br i1 %639, label %566, label %640

640:                                              ; preds = %566
  %641 = lshr i16 %636, 8
  %642 = trunc i16 %641 to i8
  %643 = trunc i16 %636 to i8
  br label %644

644:                                              ; preds = %640, %560
  %645 = phi i8 [ 0, %560 ], [ %643, %640 ]
  %646 = phi i8 [ 0, %560 ], [ %642, %640 ]
  store i8 16, ptr %62, align 2
  %647 = getelementptr inbounds [3 x i8], ptr %62, i32 0, i32 1
  store i8 0, ptr %647, align 1
  %648 = getelementptr inbounds [3 x i8], ptr %62, i32 0, i32 2
  store i8 -127, ptr %648, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %58) #10
  %649 = getelementptr inbounds i8, ptr %58, i32 1
  %650 = getelementptr inbounds i8, ptr %58, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %650, i8 0, i32 252, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #10
  %651 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 4, ptr %651, align 4, !annotation !8
  %652 = load ptr, ptr %546, align 4
  %653 = load i8, ptr %652, align 4
  %654 = zext i8 %653 to i16
  store i16 %654, ptr %59, align 4
  %655 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %655, align 2
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %656, align 4
  store i8 41, ptr %58, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %649, ptr noundef nonnull align 2 dereferenceable(3) %62, i32 3, i1 false) #10
  %657 = load ptr, ptr %542, align 4
  %658 = call i32 @i2c_transfer(ptr noundef %657, ptr noundef nonnull %59, i32 noundef 1) #10
  %659 = icmp eq i32 %658, 1
  br i1 %659, label %665, label %660

660:                                              ; preds = %644
  %661 = load ptr, ptr %546, align 4
  %662 = load i8, ptr %661, align 4
  %663 = zext i8 %662 to i32
  %664 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %663, i32 noundef %658) #12
  br label %665

665:                                              ; preds = %660, %644
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %58) #10
  %666 = load i32, ptr %541, align 4
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %701, label %668

668:                                              ; preds = %665
  %669 = getelementptr inbounds %struct.firmware, ptr %541, i32 0, i32 1
  %670 = getelementptr inbounds i8, ptr %56, i32 1
  %671 = getelementptr inbounds i8, ptr %57, i32 4
  %672 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  %673 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  br label %674

674:                                              ; preds = %694, %668
  %675 = phi i32 [ %666, %668 ], [ %695, %694 ]
  %676 = phi i32 [ 0, %668 ], [ %699, %694 ]
  %677 = load ptr, ptr %669, align 4
  %678 = getelementptr i8, ptr %677, i32 %676
  %679 = sub i32 %675, %676
  %680 = call i32 @llvm.umin.i32(i32 %679, i32 255) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %56) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %670, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #10
  store i32 0, ptr %671, align 4, !annotation !8
  %681 = load ptr, ptr %546, align 4
  %682 = load i8, ptr %681, align 4
  %683 = zext i8 %682 to i16
  store i16 %683, ptr %57, align 4
  store i16 0, ptr %672, align 2
  %684 = trunc i32 %680 to i16
  %685 = add nuw nsw i16 %684, 1
  store i16 %685, ptr %671, align 4
  store ptr %56, ptr %673, align 4
  store i8 44, ptr %56, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %670, ptr align 1 %678, i32 %680, i1 false) #10
  %686 = load ptr, ptr %542, align 4
  %687 = call i32 @i2c_transfer(ptr noundef %686, ptr noundef nonnull %57, i32 noundef 1) #10
  %688 = icmp eq i32 %687, 1
  br i1 %688, label %694, label %689

689:                                              ; preds = %674
  %690 = load ptr, ptr %546, align 4
  %691 = load i8, ptr %690, align 4
  %692 = zext i8 %691 to i32
  %693 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %692, i32 noundef %687) #12
  br label %694

694:                                              ; preds = %689, %674
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %56) #10
  %695 = load i32, ptr %541, align 4
  %696 = sub i32 %695, %676
  %697 = call i32 @llvm.umin.i32(i32 %696, i32 255) #10
  %698 = add nuw nsw i32 %697, %676
  %699 = and i32 %698, 65535
  %700 = icmp ugt i32 %695, %699
  br i1 %700, label %674, label %701

701:                                              ; preds = %694, %665
  store i8 %646, ptr %62, align 2
  store i8 %645, ptr %647, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %54) #10
  %702 = getelementptr inbounds i8, ptr %54, i32 1
  %703 = getelementptr inbounds i8, ptr %54, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %703, i8 0, i32 253, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #10
  %704 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 3, ptr %704, align 4, !annotation !8
  %705 = load ptr, ptr %546, align 4
  %706 = load i8, ptr %705, align 4
  %707 = zext i8 %706 to i16
  store i16 %707, ptr %55, align 4
  %708 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %708, align 2
  %709 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %709, align 4
  store i8 44, ptr %54, align 1
  %710 = load i16, ptr %62, align 2
  store i16 %710, ptr %702, align 1
  %711 = load ptr, ptr %542, align 4
  %712 = call i32 @i2c_transfer(ptr noundef %711, ptr noundef nonnull %55, i32 noundef 1) #10
  %713 = icmp eq i32 %712, 1
  br i1 %713, label %719, label %714

714:                                              ; preds = %701
  %715 = load ptr, ptr %546, align 4
  %716 = load i8, ptr %715, align 4
  %717 = zext i8 %716 to i32
  %718 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %717, i32 noundef %712) #12
  br label %719

719:                                              ; preds = %714, %701
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %54) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %52) #10
  store i8 44, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %53) #10
  %720 = getelementptr inbounds i8, ptr %53, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %720, i8 0, i32 16, i1 false) #10, !annotation !8
  %721 = load ptr, ptr %546, align 4
  %722 = load i8, ptr %721, align 4
  %723 = zext i8 %722 to i16
  store i16 %723, ptr %53, align 4
  %724 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %724, align 2
  store i16 1, ptr %720, align 4
  %725 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %725, align 4
  %726 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 1
  %727 = load i8, ptr %721, align 4
  %728 = zext i8 %727 to i16
  store i16 %728, ptr %726, align 4
  %729 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 1, i32 1
  store i16 1, ptr %729, align 2
  %730 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 1, i32 2
  store i16 1, ptr %730, align 4
  %731 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 1, i32 3
  store ptr %62, ptr %731, align 4
  %732 = load ptr, ptr %542, align 4
  %733 = call i32 @i2c_transfer(ptr noundef %732, ptr noundef nonnull %53, i32 noundef 2) #10
  %734 = icmp eq i32 %733, 2
  br i1 %734, label %740, label %735

735:                                              ; preds = %719
  %736 = load ptr, ptr %546, align 4
  %737 = load i8, ptr %736, align 4
  %738 = zext i8 %737 to i32
  %739 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %738, i32 noundef %733) #12
  br label %740

740:                                              ; preds = %735, %719
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %53) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %52) #10
  store i8 -128, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %50) #10
  %741 = getelementptr inbounds i8, ptr %50, i32 1
  %742 = getelementptr inbounds i8, ptr %50, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %742, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #10
  %743 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 2, ptr %743, align 4, !annotation !8
  %744 = load ptr, ptr %546, align 4
  %745 = load i8, ptr %744, align 4
  %746 = zext i8 %745 to i16
  store i16 %746, ptr %51, align 4
  %747 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %747, align 2
  %748 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %748, align 4
  store i8 43, ptr %50, align 1
  store i8 -128, ptr %741, align 1
  %749 = load ptr, ptr %542, align 4
  %750 = call i32 @i2c_transfer(ptr noundef %749, ptr noundef nonnull %51, i32 noundef 1) #10
  %751 = icmp eq i32 %750, 1
  br i1 %751, label %757, label %752

752:                                              ; preds = %740
  %753 = load ptr, ptr %546, align 4
  %754 = load i8, ptr %753, align 4
  %755 = zext i8 %754 to i32
  %756 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %755, i32 noundef %750) #12
  br label %757

757:                                              ; preds = %752, %740
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %50) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %62) #10
  %758 = load ptr, ptr %65, align 4
  call void @release_firmware(ptr noundef %758) #10
  %759 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.nxt2004_init) #12
  store i8 1, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %48) #10
  %760 = getelementptr inbounds i8, ptr %48, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %760, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %761 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 0, ptr %761, align 4, !annotation !8
  %762 = load ptr, ptr %518, align 4
  %763 = load i8, ptr %762, align 4
  %764 = zext i8 %763 to i16
  store i16 %764, ptr %49, align 4
  %765 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %765, align 2
  store i16 2, ptr %761, align 4
  %766 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %766, align 4
  store i8 25, ptr %48, align 1
  store i8 1, ptr %760, align 1
  %767 = load ptr, ptr %100, align 4
  %768 = call i32 @i2c_transfer(ptr noundef %767, ptr noundef nonnull %49, i32 noundef 1) #10
  %769 = icmp eq i32 %768, 1
  br i1 %769, label %775, label %770

770:                                              ; preds = %757
  %771 = load ptr, ptr %518, align 4
  %772 = load i8, ptr %771, align 4
  %773 = zext i8 %772 to i32
  %774 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %773, i32 noundef %768) #12
  br label %775

775:                                              ; preds = %770, %757
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %48) #10
  call fastcc void @nxt2004_microcontroller_init(ptr noundef %100) #10
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %100) #10
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %100) #10
  call fastcc void @nxt2004_microcontroller_init(ptr noundef %100) #10
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %100) #10
  store i8 -1, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 0, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 -41, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %46) #10
  %776 = getelementptr inbounds i8, ptr %46, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %776, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %777 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 0, ptr %777, align 4, !annotation !8
  %778 = load ptr, ptr %518, align 4
  %779 = load i8, ptr %778, align 4
  %780 = zext i8 %779 to i16
  store i16 %780, ptr %47, align 4
  %781 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %781, align 2
  store i16 2, ptr %777, align 4
  %782 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %782, align 4
  store i8 87, ptr %46, align 1
  store i8 -41, ptr %776, align 1
  %783 = load ptr, ptr %100, align 4
  %784 = call i32 @i2c_transfer(ptr noundef %783, ptr noundef nonnull %47, i32 noundef 1) #10
  %785 = icmp eq i32 %784, 1
  br i1 %785, label %791, label %786

786:                                              ; preds = %775
  %787 = load ptr, ptr %518, align 4
  %788 = load i8, ptr %787, align 4
  %789 = zext i8 %788 to i32
  %790 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %789, i32 noundef %784) #12
  br label %791

791:                                              ; preds = %786, %775
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %46) #10
  store i8 7, ptr %66, align 2
  %792 = getelementptr inbounds [3 x i8], ptr %66, i32 0, i32 1
  store i8 -2, ptr %792, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %44) #10
  %793 = getelementptr inbounds i8, ptr %44, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %793, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  %794 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 0, ptr %794, align 4, !annotation !8
  %795 = load ptr, ptr %518, align 4
  %796 = load i8, ptr %795, align 4
  %797 = zext i8 %796 to i16
  store i16 %797, ptr %45, align 4
  %798 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %798, align 2
  store i16 3, ptr %794, align 4
  %799 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %799, align 4
  store i8 53, ptr %44, align 1
  %800 = load i16, ptr %66, align 2
  store i16 %800, ptr %793, align 1
  %801 = load ptr, ptr %100, align 4
  %802 = call i32 @i2c_transfer(ptr noundef %801, ptr noundef nonnull %45, i32 noundef 1) #10
  %803 = icmp eq i32 %802, 1
  br i1 %803, label %809, label %804

804:                                              ; preds = %791
  %805 = load ptr, ptr %518, align 4
  %806 = load i8, ptr %805, align 4
  %807 = zext i8 %806 to i32
  %808 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %807, i32 noundef %802) #12
  br label %809

809:                                              ; preds = %804, %791
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %44) #10
  store i8 18, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %42) #10
  %810 = getelementptr inbounds i8, ptr %42, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %810, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %811 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 0, ptr %811, align 4, !annotation !8
  %812 = load ptr, ptr %518, align 4
  %813 = load i8, ptr %812, align 4
  %814 = zext i8 %813 to i16
  store i16 %814, ptr %43, align 4
  %815 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %815, align 2
  store i16 2, ptr %811, align 4
  %816 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %816, align 4
  store i8 52, ptr %42, align 1
  store i8 18, ptr %810, align 1
  %817 = load ptr, ptr %100, align 4
  %818 = call i32 @i2c_transfer(ptr noundef %817, ptr noundef nonnull %43, i32 noundef 1) #10
  %819 = icmp eq i32 %818, 1
  br i1 %819, label %825, label %820

820:                                              ; preds = %809
  %821 = load ptr, ptr %518, align 4
  %822 = load i8, ptr %821, align 4
  %823 = zext i8 %822 to i32
  %824 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %823, i32 noundef %818) #12
  br label %825

825:                                              ; preds = %820, %809
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %42) #10
  store i8 -128, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %40) #10
  %826 = getelementptr inbounds i8, ptr %40, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %826, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %827 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 0, ptr %827, align 4, !annotation !8
  %828 = load ptr, ptr %518, align 4
  %829 = load i8, ptr %828, align 4
  %830 = zext i8 %829 to i16
  store i16 %830, ptr %41, align 4
  %831 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %831, align 2
  store i16 2, ptr %827, align 4
  %832 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %832, align 4
  store i8 33, ptr %40, align 1
  store i8 -128, ptr %826, align 1
  %833 = load ptr, ptr %100, align 4
  %834 = call i32 @i2c_transfer(ptr noundef %833, ptr noundef nonnull %41, i32 noundef 1) #10
  %835 = icmp eq i32 %834, 1
  br i1 %835, label %841, label %836

836:                                              ; preds = %825
  %837 = load ptr, ptr %518, align 4
  %838 = load i8, ptr %837, align 4
  %839 = zext i8 %838 to i32
  %840 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %839, i32 noundef %834) #12
  br label %841

841:                                              ; preds = %836, %825
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %40) #10
  store i8 33, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %38) #10
  %842 = getelementptr inbounds i8, ptr %38, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %842, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %843 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 0, ptr %843, align 4, !annotation !8
  %844 = load ptr, ptr %518, align 4
  %845 = load i8, ptr %844, align 4
  %846 = zext i8 %845 to i16
  store i16 %846, ptr %39, align 4
  %847 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %847, align 2
  store i16 2, ptr %843, align 4
  %848 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %848, align 4
  store i8 10, ptr %38, align 1
  store i8 33, ptr %842, align 1
  %849 = load ptr, ptr %100, align 4
  %850 = call i32 @i2c_transfer(ptr noundef %849, ptr noundef nonnull %39, i32 noundef 1) #10
  %851 = icmp eq i32 %850, 1
  br i1 %851, label %857, label %852

852:                                              ; preds = %841
  %853 = load ptr, ptr %518, align 4
  %854 = load i8, ptr %853, align 4
  %855 = zext i8 %854 to i32
  %856 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %855, i32 noundef %850) #12
  br label %857

857:                                              ; preds = %852, %841
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %38) #10
  store i8 1, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 126, ptr %66, align 2
  store i8 0, ptr %792, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %36) #10
  %858 = getelementptr inbounds i8, ptr %36, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %858, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %859 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 0, ptr %859, align 4, !annotation !8
  %860 = load ptr, ptr %518, align 4
  %861 = load i8, ptr %860, align 4
  %862 = zext i8 %861 to i16
  store i16 %862, ptr %37, align 4
  %863 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %863, align 2
  store i16 3, ptr %859, align 4
  %864 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %864, align 4
  store i8 -23, ptr %36, align 1
  %865 = load i16, ptr %66, align 2
  store i16 %865, ptr %858, align 1
  %866 = load ptr, ptr %100, align 4
  %867 = call i32 @i2c_transfer(ptr noundef %866, ptr noundef nonnull %37, i32 noundef 1) #10
  %868 = icmp eq i32 %867, 1
  br i1 %868, label %874, label %869

869:                                              ; preds = %857
  %870 = load ptr, ptr %518, align 4
  %871 = load i8, ptr %870, align 4
  %872 = zext i8 %871 to i32
  %873 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %872, i32 noundef %867) #12
  br label %874

874:                                              ; preds = %869, %857
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %36) #10
  store i8 0, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %34) #10
  %875 = getelementptr inbounds i8, ptr %34, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %875, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %876 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %876, align 4, !annotation !8
  %877 = load ptr, ptr %518, align 4
  %878 = load i8, ptr %877, align 4
  %879 = zext i8 %878 to i16
  store i16 %879, ptr %35, align 4
  %880 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %880, align 2
  store i16 2, ptr %876, align 4
  %881 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %881, align 4
  store i8 -52, ptr %34, align 1
  store i8 0, ptr %875, align 1
  %882 = load ptr, ptr %100, align 4
  %883 = call i32 @i2c_transfer(ptr noundef %882, ptr noundef nonnull %35, i32 noundef 1) #10
  %884 = icmp eq i32 %883, 1
  br i1 %884, label %890, label %885

885:                                              ; preds = %874
  %886 = load ptr, ptr %518, align 4
  %887 = load i8, ptr %886, align 4
  %888 = zext i8 %887 to i32
  %889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %888, i32 noundef %883) #12
  br label %890

890:                                              ; preds = %885, %874
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %34) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 0, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 16, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 0, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 1, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 112, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -127, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 49, ptr %66, align 2
  store i8 94, ptr %792, align 1
  %891 = getelementptr inbounds [3 x i8], ptr %66, i32 0, i32 2
  store i8 102, ptr %891, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -126, ptr noundef nonnull %66, i8 noundef zeroext 3) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -120, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 17, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -120, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 64, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %32) #10
  store i8 16, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %33) #10
  %892 = getelementptr inbounds i8, ptr %33, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %892, i8 0, i32 16, i1 false) #10, !annotation !8
  %893 = load ptr, ptr %518, align 4
  %894 = load i8, ptr %893, align 4
  %895 = zext i8 %894 to i16
  store i16 %895, ptr %33, align 4
  %896 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %896, align 2
  store i16 1, ptr %892, align 4
  %897 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %897, align 4
  %898 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1
  %899 = load i8, ptr %893, align 4
  %900 = zext i8 %899 to i16
  store i16 %900, ptr %898, align 4
  %901 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 1
  store i16 1, ptr %901, align 2
  %902 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 2
  store i16 1, ptr %902, align 4
  %903 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 3
  store ptr %66, ptr %903, align 4
  %904 = load ptr, ptr %100, align 4
  %905 = call i32 @i2c_transfer(ptr noundef %904, ptr noundef nonnull %33, i32 noundef 2) #10
  %906 = icmp eq i32 %905, 2
  br i1 %906, label %912, label %907

907:                                              ; preds = %890
  %908 = load ptr, ptr %518, align 4
  %909 = load i8, ptr %908, align 4
  %910 = zext i8 %909 to i32
  %911 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %910, i32 noundef %905) #12
  br label %912

912:                                              ; preds = %907, %890
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %32) #10
  store i8 16, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %30) #10
  %913 = getelementptr inbounds i8, ptr %30, i32 1
  %914 = getelementptr inbounds i8, ptr %30, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %914, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %915 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %915, align 4, !annotation !8
  %916 = load ptr, ptr %518, align 4
  %917 = load i8, ptr %916, align 4
  %918 = zext i8 %917 to i16
  store i16 %918, ptr %31, align 4
  %919 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %919, align 2
  %920 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %920, align 4
  store i8 16, ptr %30, align 1
  store i8 16, ptr %913, align 1
  %921 = load ptr, ptr %100, align 4
  %922 = call i32 @i2c_transfer(ptr noundef %921, ptr noundef nonnull %31, i32 noundef 1) #10
  %923 = icmp eq i32 %922, 1
  br i1 %923, label %929, label %924

924:                                              ; preds = %912
  %925 = load ptr, ptr %518, align 4
  %926 = load i8, ptr %925, align 4
  %927 = zext i8 %926 to i32
  %928 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %927, i32 noundef %922) #12
  br label %929

929:                                              ; preds = %924, %912
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #10
  store i8 10, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #10
  %930 = getelementptr inbounds i8, ptr %29, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %930, i8 0, i32 16, i1 false) #10, !annotation !8
  %931 = load ptr, ptr %518, align 4
  %932 = load i8, ptr %931, align 4
  %933 = zext i8 %932 to i16
  store i16 %933, ptr %29, align 4
  %934 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %934, align 2
  store i16 1, ptr %930, align 4
  %935 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %935, align 4
  %936 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1
  %937 = load i8, ptr %931, align 4
  %938 = zext i8 %937 to i16
  store i16 %938, ptr %936, align 4
  %939 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 1
  store i16 1, ptr %939, align 2
  %940 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 2
  store i16 1, ptr %940, align 4
  %941 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 3
  store ptr %66, ptr %941, align 4
  %942 = load ptr, ptr %100, align 4
  %943 = call i32 @i2c_transfer(ptr noundef %942, ptr noundef nonnull %29, i32 noundef 2) #10
  %944 = icmp eq i32 %943, 2
  br i1 %944, label %950, label %945

945:                                              ; preds = %929
  %946 = load ptr, ptr %518, align 4
  %947 = load i8, ptr %946, align 4
  %948 = zext i8 %947 to i32
  %949 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %948, i32 noundef %943) #12
  br label %950

950:                                              ; preds = %945, %929
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #10
  store i8 33, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %26) #10
  %951 = getelementptr inbounds i8, ptr %26, i32 1
  %952 = getelementptr inbounds i8, ptr %26, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %952, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %953 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %953, align 4, !annotation !8
  %954 = load ptr, ptr %518, align 4
  %955 = load i8, ptr %954, align 4
  %956 = zext i8 %955 to i16
  store i16 %956, ptr %27, align 4
  %957 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %957, align 2
  %958 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %958, align 4
  store i8 10, ptr %26, align 1
  store i8 33, ptr %951, align 1
  %959 = load ptr, ptr %100, align 4
  %960 = call i32 @i2c_transfer(ptr noundef %959, ptr noundef nonnull %27, i32 noundef 1) #10
  %961 = icmp eq i32 %960, 1
  br i1 %961, label %967, label %962

962:                                              ; preds = %950
  %963 = load ptr, ptr %518, align 4
  %964 = load i8, ptr %963, align 4
  %965 = zext i8 %964 to i32
  %966 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %965, i32 noundef %960) #12
  br label %967

967:                                              ; preds = %962, %950
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %26) #10
  call fastcc void @nxt2004_microcontroller_init(ptr noundef %100) #10
  store i8 33, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %24) #10
  %968 = getelementptr inbounds i8, ptr %24, i32 1
  %969 = getelementptr inbounds i8, ptr %24, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %969, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %970 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %970, align 4, !annotation !8
  %971 = load ptr, ptr %518, align 4
  %972 = load i8, ptr %971, align 4
  %973 = zext i8 %972 to i16
  store i16 %973, ptr %25, align 4
  %974 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %974, align 2
  %975 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %975, align 4
  store i8 10, ptr %24, align 1
  store i8 33, ptr %968, align 1
  %976 = load ptr, ptr %100, align 4
  %977 = call i32 @i2c_transfer(ptr noundef %976, ptr noundef nonnull %25, i32 noundef 1) #10
  %978 = icmp eq i32 %977, 1
  br i1 %978, label %984, label %979

979:                                              ; preds = %967
  %980 = load ptr, ptr %518, align 4
  %981 = load i8, ptr %980, align 4
  %982 = zext i8 %981 to i32
  %983 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %982, i32 noundef %977) #12
  br label %984

984:                                              ; preds = %979, %967
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %24) #10
  store i8 126, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %22) #10
  %985 = getelementptr inbounds i8, ptr %22, i32 1
  %986 = getelementptr inbounds i8, ptr %22, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %986, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %987 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %987, align 4, !annotation !8
  %988 = load ptr, ptr %518, align 4
  %989 = load i8, ptr %988, align 4
  %990 = zext i8 %989 to i16
  store i16 %990, ptr %23, align 4
  %991 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %991, align 2
  %992 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %992, align 4
  store i8 -23, ptr %22, align 1
  store i8 126, ptr %985, align 1
  %993 = load ptr, ptr %100, align 4
  %994 = call i32 @i2c_transfer(ptr noundef %993, ptr noundef nonnull %23, i32 noundef 1) #10
  %995 = icmp eq i32 %994, 1
  br i1 %995, label %1001, label %996

996:                                              ; preds = %984
  %997 = load ptr, ptr %518, align 4
  %998 = load i8, ptr %997, align 4
  %999 = zext i8 %998 to i32
  %1000 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %999, i32 noundef %994) #12
  br label %1001

1001:                                             ; preds = %996, %984
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %22) #10
  store i8 0, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #10
  %1002 = getelementptr inbounds i8, ptr %20, i32 1
  %1003 = getelementptr inbounds i8, ptr %20, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1003, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %1004 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %1004, align 4, !annotation !8
  %1005 = load ptr, ptr %518, align 4
  %1006 = load i8, ptr %1005, align 4
  %1007 = zext i8 %1006 to i16
  store i16 %1007, ptr %21, align 4
  %1008 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %1008, align 2
  %1009 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %1009, align 4
  store i8 -22, ptr %20, align 1
  store i8 0, ptr %1002, align 1
  %1010 = load ptr, ptr %100, align 4
  %1011 = call i32 @i2c_transfer(ptr noundef %1010, ptr noundef nonnull %21, i32 noundef 1) #10
  %1012 = icmp eq i32 %1011, 1
  br i1 %1012, label %1018, label %1013

1013:                                             ; preds = %1001
  %1014 = load ptr, ptr %518, align 4
  %1015 = load i8, ptr %1014, align 4
  %1016 = zext i8 %1015 to i32
  %1017 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1016, i32 noundef %1011) #12
  br label %1018

1018:                                             ; preds = %1013, %1001
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 0, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 0, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 16, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 0, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext 8, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 4, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 0, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -127, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 -128, ptr %66, align 2
  store i8 0, ptr %792, align 1
  store i8 0, ptr %891, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -126, ptr noundef nonnull %66, i8 noundef zeroext 3) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -120, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 17, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -120, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  store i8 68, ptr %66, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %100, i8 noundef zeroext -128, ptr noundef nonnull %66, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 16, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #10
  %1019 = getelementptr inbounds i8, ptr %19, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1019, i8 0, i32 16, i1 false) #10, !annotation !8
  %1020 = load ptr, ptr %518, align 4
  %1021 = load i8, ptr %1020, align 4
  %1022 = zext i8 %1021 to i16
  store i16 %1022, ptr %19, align 4
  %1023 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %1023, align 2
  store i16 1, ptr %1019, align 4
  %1024 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %1024, align 4
  %1025 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1
  %1026 = load i8, ptr %1020, align 4
  %1027 = zext i8 %1026 to i16
  store i16 %1027, ptr %1025, align 4
  %1028 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 1
  store i16 1, ptr %1028, align 2
  %1029 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 2
  store i16 1, ptr %1029, align 4
  %1030 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 3
  store ptr %66, ptr %1030, align 4
  %1031 = load ptr, ptr %100, align 4
  %1032 = call i32 @i2c_transfer(ptr noundef %1031, ptr noundef nonnull %19, i32 noundef 2) #10
  %1033 = icmp eq i32 %1032, 2
  br i1 %1033, label %1039, label %1034

1034:                                             ; preds = %1018
  %1035 = load ptr, ptr %518, align 4
  %1036 = load i8, ptr %1035, align 4
  %1037 = zext i8 %1036 to i32
  %1038 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %1037, i32 noundef %1032) #12
  br label %1039

1039:                                             ; preds = %1034, %1018
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  store i8 18, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #10
  %1040 = getelementptr inbounds i8, ptr %16, i32 1
  %1041 = getelementptr inbounds i8, ptr %16, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1041, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %1042 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %1042, align 4, !annotation !8
  %1043 = load ptr, ptr %518, align 4
  %1044 = load i8, ptr %1043, align 4
  %1045 = zext i8 %1044 to i16
  store i16 %1045, ptr %17, align 4
  %1046 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %1046, align 2
  %1047 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %1047, align 4
  store i8 16, ptr %16, align 1
  store i8 18, ptr %1040, align 1
  %1048 = load ptr, ptr %100, align 4
  %1049 = call i32 @i2c_transfer(ptr noundef %1048, ptr noundef nonnull %17, i32 noundef 1) #10
  %1050 = icmp eq i32 %1049, 1
  br i1 %1050, label %1056, label %1051

1051:                                             ; preds = %1039
  %1052 = load ptr, ptr %518, align 4
  %1053 = load i8, ptr %1052, align 4
  %1054 = zext i8 %1053 to i32
  %1055 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1054, i32 noundef %1049) #12
  br label %1056

1056:                                             ; preds = %1051, %1039
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #10
  store i8 4, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #10
  %1057 = getelementptr inbounds i8, ptr %14, i32 1
  %1058 = getelementptr inbounds i8, ptr %14, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1058, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %1059 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %1059, align 4, !annotation !8
  %1060 = load ptr, ptr %518, align 4
  %1061 = load i8, ptr %1060, align 4
  %1062 = zext i8 %1061 to i16
  store i16 %1062, ptr %15, align 4
  %1063 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %1063, align 2
  %1064 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %1064, align 4
  store i8 19, ptr %14, align 1
  store i8 4, ptr %1057, align 1
  %1065 = load ptr, ptr %100, align 4
  %1066 = call i32 @i2c_transfer(ptr noundef %1065, ptr noundef nonnull %15, i32 noundef 1) #10
  %1067 = icmp eq i32 %1066, 1
  br i1 %1067, label %1073, label %1068

1068:                                             ; preds = %1056
  %1069 = load ptr, ptr %518, align 4
  %1070 = load i8, ptr %1069, align 4
  %1071 = zext i8 %1070 to i32
  %1072 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1071, i32 noundef %1066) #12
  br label %1073

1073:                                             ; preds = %1068, %1056
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #10
  store i8 0, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #10
  %1074 = getelementptr inbounds i8, ptr %12, i32 1
  %1075 = getelementptr inbounds i8, ptr %12, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1075, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %1076 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %1076, align 4, !annotation !8
  %1077 = load ptr, ptr %518, align 4
  %1078 = load i8, ptr %1077, align 4
  %1079 = zext i8 %1078 to i16
  store i16 %1079, ptr %13, align 4
  %1080 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %1080, align 2
  %1081 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %1081, align 4
  store i8 22, ptr %12, align 1
  store i8 0, ptr %1074, align 1
  %1082 = load ptr, ptr %100, align 4
  %1083 = call i32 @i2c_transfer(ptr noundef %1082, ptr noundef nonnull %13, i32 noundef 1) #10
  %1084 = icmp eq i32 %1083, 1
  br i1 %1084, label %1090, label %1085

1085:                                             ; preds = %1073
  %1086 = load ptr, ptr %518, align 4
  %1087 = load i8, ptr %1086, align 4
  %1088 = zext i8 %1087 to i32
  %1089 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1088, i32 noundef %1083) #12
  br label %1090

1090:                                             ; preds = %1085, %1073
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #10
  store i8 4, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #10
  %1091 = getelementptr inbounds i8, ptr %10, i32 1
  %1092 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1092, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %1093 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %1093, align 4, !annotation !8
  %1094 = load ptr, ptr %518, align 4
  %1095 = load i8, ptr %1094, align 4
  %1096 = zext i8 %1095 to i16
  store i16 %1096, ptr %11, align 4
  %1097 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %1097, align 2
  %1098 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %1098, align 4
  store i8 20, ptr %10, align 1
  store i8 4, ptr %1091, align 1
  %1099 = load ptr, ptr %100, align 4
  %1100 = call i32 @i2c_transfer(ptr noundef %1099, ptr noundef nonnull %11, i32 noundef 1) #10
  %1101 = icmp eq i32 %1100, 1
  br i1 %1101, label %1107, label %1102

1102:                                             ; preds = %1090
  %1103 = load ptr, ptr %518, align 4
  %1104 = load i8, ptr %1103, align 4
  %1105 = zext i8 %1104 to i32
  %1106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1105, i32 noundef %1100) #12
  br label %1107

1107:                                             ; preds = %1102, %1090
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #10
  store i8 0, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #10
  %1108 = getelementptr inbounds i8, ptr %8, i32 1
  %1109 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1109, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %1110 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %1110, align 4, !annotation !8
  %1111 = load ptr, ptr %518, align 4
  %1112 = load i8, ptr %1111, align 4
  %1113 = zext i8 %1112 to i16
  store i16 %1113, ptr %9, align 4
  %1114 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %1114, align 2
  %1115 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %1115, align 4
  store i8 20, ptr %8, align 1
  store i8 0, ptr %1108, align 1
  %1116 = load ptr, ptr %100, align 4
  %1117 = call i32 @i2c_transfer(ptr noundef %1116, ptr noundef nonnull %9, i32 noundef 1) #10
  %1118 = icmp eq i32 %1117, 1
  br i1 %1118, label %1124, label %1119

1119:                                             ; preds = %1107
  %1120 = load ptr, ptr %518, align 4
  %1121 = load i8, ptr %1120, align 4
  %1122 = zext i8 %1121 to i32
  %1123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1122, i32 noundef %1117) #12
  br label %1124

1124:                                             ; preds = %1119, %1107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  %1125 = getelementptr inbounds i8, ptr %6, i32 1
  %1126 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1126, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %1127 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %1127, align 4, !annotation !8
  %1128 = load ptr, ptr %518, align 4
  %1129 = load i8, ptr %1128, align 4
  %1130 = zext i8 %1129 to i16
  store i16 %1130, ptr %7, align 4
  %1131 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %1131, align 2
  %1132 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %1132, align 4
  store i8 23, ptr %6, align 1
  %1133 = load i8, ptr %66, align 2
  store i8 %1133, ptr %1125, align 1
  %1134 = load ptr, ptr %100, align 4
  %1135 = call i32 @i2c_transfer(ptr noundef %1134, ptr noundef nonnull %7, i32 noundef 1) #10
  %1136 = icmp eq i32 %1135, 1
  br i1 %1136, label %1142, label %1137

1137:                                             ; preds = %1124
  %1138 = load ptr, ptr %518, align 4
  %1139 = load i8, ptr %1138, align 4
  %1140 = zext i8 %1139 to i32
  %1141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1140, i32 noundef %1135) #12
  br label %1142

1142:                                             ; preds = %1137, %1124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  %1143 = getelementptr inbounds i8, ptr %4, i32 1
  %1144 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1144, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %1145 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %1145, align 4, !annotation !8
  %1146 = load ptr, ptr %518, align 4
  %1147 = load i8, ptr %1146, align 4
  %1148 = zext i8 %1147 to i16
  store i16 %1148, ptr %5, align 4
  %1149 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %1149, align 2
  %1150 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %1150, align 4
  store i8 20, ptr %4, align 1
  %1151 = load i8, ptr %66, align 2
  store i8 %1151, ptr %1143, align 1
  %1152 = load ptr, ptr %100, align 4
  %1153 = call i32 @i2c_transfer(ptr noundef %1152, ptr noundef nonnull %5, i32 noundef 1) #10
  %1154 = icmp eq i32 %1153, 1
  br i1 %1154, label %1160, label %1155

1155:                                             ; preds = %1142
  %1156 = load ptr, ptr %518, align 4
  %1157 = load i8, ptr %1156, align 4
  %1158 = zext i8 %1157 to i32
  %1159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1158, i32 noundef %1153) #12
  br label %1160

1160:                                             ; preds = %1155, %1142
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #10
  %1161 = getelementptr inbounds i8, ptr %2, i32 1
  %1162 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %1162, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %1163 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %1163, align 4, !annotation !8
  %1164 = load ptr, ptr %518, align 4
  %1165 = load i8, ptr %1164, align 4
  %1166 = zext i8 %1165 to i16
  store i16 %1166, ptr %3, align 4
  %1167 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %1167, align 2
  %1168 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %1168, align 4
  store i8 23, ptr %2, align 1
  %1169 = load i8, ptr %66, align 2
  store i8 %1169, ptr %1161, align 1
  %1170 = load ptr, ptr %100, align 4
  %1171 = call i32 @i2c_transfer(ptr noundef %1170, ptr noundef nonnull %3, i32 noundef 1) #10
  %1172 = icmp eq i32 %1171, 1
  br i1 %1172, label %1178, label %1173

1173:                                             ; preds = %1160
  %1174 = load ptr, ptr %518, align 4
  %1175 = load i8, ptr %1174, align 4
  %1176 = zext i8 %1175 to i32
  %1177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %1176, i32 noundef %1171) #12
  br label %1178

1178:                                             ; preds = %1173, %1160
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #10
  br label %1179

1179:                                             ; preds = %1178, %538
  %1180 = phi i32 [ %536, %538 ], [ 0, %1178 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %66) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %65) #10
  br label %1181

1181:                                             ; preds = %1179, %512
  %1182 = phi i32 [ %1180, %1179 ], [ %513, %512 ]
  %1183 = load i8, ptr %101, align 4
  %1184 = or i8 %1183, 1
  store i8 %1184, ptr %101, align 4
  br label %1185

1185:                                             ; preds = %1181, %105, %1
  %1186 = phi i32 [ -22, %105 ], [ 0, %1 ], [ %1182, %1181 ]
  ret i32 %1186
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nxt200x_sleep(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt200x_setup_frontend_parameters(ptr noundef %0) #0 {
  %2 = alloca [256 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [256 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [256 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [256 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [256 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [256 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [256 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [256 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [256 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [256 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [256 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [256 x i8], align 1
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [256 x i8], align 1
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [256 x i8], align 1
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [256 x i8], align 1
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [256 x i8], align 1
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [256 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [256 x i8], align 1
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca i8, align 1
  %41 = alloca [1 x i8], align 1
  %42 = alloca [2 x %struct.i2c_msg], align 4
  %43 = alloca [256 x i8], align 1
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [256 x i8], align 1
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [256 x i8], align 1
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [256 x i8], align 1
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [256 x i8], align 1
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca i8, align 1
  %56 = alloca [256 x i8], align 1
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [256 x i8], align 1
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca [5 x i8], align 2
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %60) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(5) %60, i8 0, i32 5, i1 false), !annotation !8
  tail call fastcc void @nxt200x_microcontroller_stop(ptr noundef %62)
  %63 = getelementptr inbounds %struct.nxt200x_state, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %100

66:                                               ; preds = %1
  store i8 4, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %58) #10
  %67 = getelementptr inbounds i8, ptr %58, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %67, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #10
  %68 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 0, ptr %68, align 4, !annotation !8
  %69 = getelementptr inbounds %struct.nxt200x_state, ptr %62, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %59, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %73, align 2
  store i16 2, ptr %68, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %74, align 4
  store i8 20, ptr %58, align 1
  store i8 4, ptr %67, align 1
  %75 = load ptr, ptr %62, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %59, i32 noundef 1) #10
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %83, label %78

78:                                               ; preds = %66
  %79 = load ptr, ptr %69, align 4
  %80 = load i8, ptr %79, align 4
  %81 = zext i8 %80 to i32
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %81, i32 noundef %76) #12
  br label %83

83:                                               ; preds = %78, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %58) #10
  store i8 0, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %56) #10
  %84 = getelementptr inbounds i8, ptr %56, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %84, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #10
  %85 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 0, ptr %85, align 4, !annotation !8
  %86 = load ptr, ptr %69, align 4
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %57, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %89, align 2
  store i16 2, ptr %85, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %90, align 4
  store i8 23, ptr %56, align 1
  store i8 0, ptr %84, align 1
  %91 = load ptr, ptr %62, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %57, i32 noundef 1) #10
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %99, label %94

94:                                               ; preds = %83
  %95 = load ptr, ptr %69, align 4
  %96 = load i8, ptr %95, align 4
  %97 = zext i8 %96 to i32
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %97, i32 noundef %92) #12
  br label %99

99:                                               ; preds = %94, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %56) #10
  br label %100

100:                                              ; preds = %99, %1
  %101 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %102 = load i32, ptr %101, align 4
  switch i32 %102, label %664 [
    i32 3, label %103
    i32 5, label %103
    i32 7, label %111
  ]

103:                                              ; preds = %100, %100
  %104 = getelementptr inbounds %struct.nxt200x_state, ptr %62, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nxt200x_config, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %103
  %110 = call i32 %107(ptr noundef %0, i32 noundef 1) #10
  br label %119

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.nxt200x_state, ptr %62, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nxt200x_config, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = call i32 %115(ptr noundef %0, i32 noundef 0) #10
  br label %119

119:                                              ; preds = %117, %111, %109, %103
  %120 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 15
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %285, label %123

123:                                              ; preds = %119
  %124 = call i32 %121(ptr noundef %0, ptr noundef nonnull %60, i32 noundef 5) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %55) #10
  store i8 0, ptr %55, align 1, !annotation !8
  %125 = load i32, ptr %63, align 4
  switch i32 %125, label %284 [
    i32 2, label %126
    i32 1, label %162
  ]

126:                                              ; preds = %123
  %127 = load i8, ptr %60, align 2
  %128 = getelementptr inbounds i8, ptr %60, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #10
  %129 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 4, ptr %129, align 4, !annotation !8
  %130 = zext i8 %127 to i16
  store i16 %130, ptr %54, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %131, align 2
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %128, ptr %132, align 4
  %133 = load ptr, ptr %62, align 4
  %134 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %54, i32 noundef 1) #10
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #10
  br label %141

137:                                              ; preds = %126
  %138 = zext i8 %127 to i32
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %138, i32 noundef %134) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #10
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %141

141:                                              ; preds = %137, %136
  %142 = getelementptr inbounds i8, ptr %53, i32 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  br label %145

145:                                              ; preds = %159, %141
  %146 = phi i8 [ 0, %141 ], [ %160, %159 ]
  %147 = load i8, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #10
  store i32 1, ptr %142, align 4, !annotation !8
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %53, align 4
  store i16 1, ptr %143, align 2
  store ptr %55, ptr %144, align 4
  %149 = load ptr, ptr %62, align 4
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %53, i32 noundef 1) #10
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %155, label %152

152:                                              ; preds = %145
  %153 = zext i8 %147 to i32
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.i2c_readbytes, i32 noundef %153, i32 noundef %150) #12
  br label %155

155:                                              ; preds = %152, %145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #10
  %156 = load i8, ptr %55, align 1
  %157 = and i8 %156, 64
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %284

159:                                              ; preds = %155
  call void @msleep(i32 noundef 100) #10
  %160 = add nuw nsw i8 %146, 1
  %161 = icmp ult i8 %146, 19
  br i1 %161, label %145, label %281

162:                                              ; preds = %123
  store i8 3, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %51) #10
  %163 = getelementptr inbounds i8, ptr %51, i32 1
  %164 = getelementptr inbounds i8, ptr %51, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %164, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #10
  %165 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 2, ptr %165, align 4, !annotation !8
  %166 = getelementptr inbounds %struct.nxt200x_state, ptr %62, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = load i8, ptr %167, align 4
  %169 = zext i8 %168 to i16
  store i16 %169, ptr %52, align 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %170, align 2
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %171, align 4
  store i8 32, ptr %51, align 1
  store i8 3, ptr %163, align 1
  %172 = load ptr, ptr %62, align 4
  %173 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %52, i32 noundef 1) #10
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %180, label %175

175:                                              ; preds = %162
  %176 = load ptr, ptr %166, align 4
  %177 = load i8, ptr %176, align 4
  %178 = zext i8 %177 to i32
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %178, i32 noundef %173) #12
  br label %180

180:                                              ; preds = %175, %162
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %51) #10
  store i8 4, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %49) #10
  %181 = getelementptr inbounds i8, ptr %49, i32 1
  %182 = getelementptr inbounds i8, ptr %49, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %182, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #10
  %183 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 2, ptr %183, align 4, !annotation !8
  %184 = load ptr, ptr %166, align 4
  %185 = load i8, ptr %184, align 4
  %186 = zext i8 %185 to i16
  store i16 %186, ptr %50, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %187, align 2
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %188, align 4
  store i8 52, ptr %49, align 1
  store i8 4, ptr %181, align 1
  %189 = load ptr, ptr %62, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %50, i32 noundef 1) #10
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %197, label %192

192:                                              ; preds = %180
  %193 = load ptr, ptr %166, align 4
  %194 = load i8, ptr %193, align 4
  %195 = zext i8 %194 to i32
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %195, i32 noundef %190) #12
  br label %197

197:                                              ; preds = %192, %180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %49) #10
  %198 = getelementptr inbounds i8, ptr %60, i32 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %47) #10
  %199 = getelementptr inbounds i8, ptr %47, i32 1
  %200 = getelementptr inbounds i8, ptr %47, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %200, i8 0, i32 251, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #10
  %201 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 5, ptr %201, align 4, !annotation !8
  %202 = load ptr, ptr %166, align 4
  %203 = load i8, ptr %202, align 4
  %204 = zext i8 %203 to i16
  store i16 %204, ptr %48, align 4
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %205, align 2
  %206 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %206, align 4
  store i8 54, ptr %47, align 1
  %207 = load i32, ptr %198, align 1
  store i32 %207, ptr %199, align 1
  %208 = load ptr, ptr %62, align 4
  %209 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %48, i32 noundef 1) #10
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %216, label %211

211:                                              ; preds = %197
  %212 = load ptr, ptr %166, align 4
  %213 = load i8, ptr %212, align 4
  %214 = zext i8 %213 to i32
  %215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %214, i32 noundef %209) #12
  br label %216

216:                                              ; preds = %211, %197
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %47) #10
  %217 = load i8, ptr %60, align 2
  %218 = shl i8 %217, 1
  store i8 %218, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %45) #10
  %219 = getelementptr inbounds i8, ptr %45, i32 1
  %220 = getelementptr inbounds i8, ptr %45, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %220, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  %221 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 2, ptr %221, align 4, !annotation !8
  %222 = load ptr, ptr %166, align 4
  %223 = load i8, ptr %222, align 4
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %46, align 4
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %225, align 2
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %226, align 4
  store i8 53, ptr %45, align 1
  store i8 %218, ptr %219, align 1
  %227 = load ptr, ptr %62, align 4
  %228 = call i32 @i2c_transfer(ptr noundef %227, ptr noundef nonnull %46, i32 noundef 1) #10
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %235, label %230

230:                                              ; preds = %216
  %231 = load ptr, ptr %166, align 4
  %232 = load i8, ptr %231, align 4
  %233 = zext i8 %232 to i32
  %234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %233, i32 noundef %228) #12
  br label %235

235:                                              ; preds = %230, %216
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %45) #10
  store i8 -128, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %43) #10
  %236 = getelementptr inbounds i8, ptr %43, i32 1
  %237 = getelementptr inbounds i8, ptr %43, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %237, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #10
  %238 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 2, ptr %238, align 4, !annotation !8
  %239 = load ptr, ptr %166, align 4
  %240 = load i8, ptr %239, align 4
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %44, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %242, align 2
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %243, align 4
  store i8 33, ptr %43, align 1
  store i8 -128, ptr %236, align 1
  %244 = load ptr, ptr %62, align 4
  %245 = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %44, i32 noundef 1) #10
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %252, label %247

247:                                              ; preds = %235
  %248 = load ptr, ptr %166, align 4
  %249 = load i8, ptr %248, align 4
  %250 = zext i8 %249 to i32
  %251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %250, i32 noundef %245) #12
  br label %252

252:                                              ; preds = %247, %235
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %43) #10
  %253 = getelementptr inbounds i8, ptr %42, i32 4
  %254 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  %255 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  %256 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 1
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 2
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 1, i32 3
  br label %260

260:                                              ; preds = %278, %252
  %261 = phi i8 [ 0, %252 ], [ %279, %278 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %41) #10
  store i8 33, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %42) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %253, i8 0, i32 16, i1 false) #10, !annotation !8
  %262 = load ptr, ptr %166, align 4
  %263 = load i8, ptr %262, align 4
  %264 = zext i8 %263 to i16
  store i16 %264, ptr %42, align 4
  store i16 0, ptr %254, align 2
  store i16 1, ptr %253, align 4
  store ptr %41, ptr %255, align 4
  %265 = load i8, ptr %262, align 4
  %266 = zext i8 %265 to i16
  store i16 %266, ptr %256, align 4
  store i16 1, ptr %257, align 2
  store i16 1, ptr %258, align 4
  store ptr %55, ptr %259, align 4
  %267 = load ptr, ptr %62, align 4
  %268 = call i32 @i2c_transfer(ptr noundef %267, ptr noundef nonnull %42, i32 noundef 2) #10
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %275, label %270

270:                                              ; preds = %260
  %271 = load ptr, ptr %166, align 4
  %272 = load i8, ptr %271, align 4
  %273 = zext i8 %272 to i32
  %274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %273, i32 noundef %268) #12
  br label %275

275:                                              ; preds = %270, %260
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %41) #10
  %276 = load i8, ptr %55, align 1
  %277 = icmp sgt i8 %276, -1
  br i1 %277, label %284, label %278

278:                                              ; preds = %275
  call void @msleep(i32 noundef 100) #10
  %279 = add nuw nsw i8 %261, 1
  %280 = icmp ult i8 %261, 19
  br i1 %280, label %260, label %281

281:                                              ; preds = %278, %159
  %282 = phi ptr [ @.str.15, %159 ], [ @.str.16, %278 ]
  %283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %282) #12
  br label %284

284:                                              ; preds = %281, %275, %155, %123
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %55) #10
  br label %285

285:                                              ; preds = %284, %119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %40) #10
  store i8 0, ptr %40, align 1, !annotation !8
  %286 = load i32, ptr %63, align 4
  switch i32 %286, label %324 [
    i32 1, label %287
    i32 2, label %323
  ]

287:                                              ; preds = %285
  store i8 8, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %38) #10
  %288 = getelementptr inbounds i8, ptr %38, i32 1
  %289 = getelementptr inbounds i8, ptr %38, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %289, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %290 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 2, ptr %290, align 4, !annotation !8
  %291 = getelementptr inbounds %struct.nxt200x_state, ptr %62, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = load i8, ptr %292, align 4
  %294 = zext i8 %293 to i16
  store i16 %294, ptr %39, align 4
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %295, align 2
  %296 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %296, align 4
  store i8 8, ptr %38, align 1
  store i8 8, ptr %288, align 1
  %297 = load ptr, ptr %62, align 4
  %298 = call i32 @i2c_transfer(ptr noundef %297, ptr noundef nonnull %39, i32 noundef 1) #10
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %305, label %300

300:                                              ; preds = %287
  %301 = load ptr, ptr %291, align 4
  %302 = load i8, ptr %301, align 4
  %303 = zext i8 %302 to i32
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %303, i32 noundef %298) #12
  br label %305

305:                                              ; preds = %300, %287
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %38) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %36) #10
  %306 = getelementptr inbounds i8, ptr %36, i32 1
  %307 = getelementptr inbounds i8, ptr %36, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %307, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %308 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 2, ptr %308, align 4, !annotation !8
  %309 = load ptr, ptr %291, align 4
  %310 = load i8, ptr %309, align 4
  %311 = zext i8 %310 to i16
  store i16 %311, ptr %37, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %312, align 2
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %313, align 4
  store i8 8, ptr %36, align 1
  store i8 0, ptr %306, align 1
  %314 = load ptr, ptr %62, align 4
  %315 = call i32 @i2c_transfer(ptr noundef %314, ptr noundef nonnull %37, i32 noundef 1) #10
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %322, label %317

317:                                              ; preds = %305
  %318 = load ptr, ptr %291, align 4
  %319 = load i8, ptr %318, align 4
  %320 = zext i8 %319 to i32
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %320, i32 noundef %315) #12
  br label %322

322:                                              ; preds = %317, %305
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %36) #10
  br label %324

323:                                              ; preds = %285
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %62, i8 noundef zeroext 8, ptr noundef nonnull %40, i8 noundef zeroext 1) #10
  store i8 8, ptr %40, align 1
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 8, ptr noundef nonnull %40, i8 noundef zeroext 1) #10
  store i8 0, ptr %40, align 1
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 8, ptr noundef nonnull %40, i8 noundef zeroext 1) #10
  br label %324

324:                                              ; preds = %323, %322, %285
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %40) #10
  %325 = load i32, ptr %101, align 4
  switch i32 %325, label %664 [
    i32 3, label %327
    i32 5, label %327
    i32 7, label %326
  ]

326:                                              ; preds = %324
  br label %327

327:                                              ; preds = %326, %324, %324
  %328 = phi i8 [ 112, %326 ], [ 116, %324 ], [ 116, %324 ]
  store i8 %328, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %34) #10
  %329 = getelementptr inbounds i8, ptr %34, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %329, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %330 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %330, align 4, !annotation !8
  %331 = getelementptr inbounds %struct.nxt200x_state, ptr %62, i32 0, i32 1
  %332 = load ptr, ptr %331, align 4
  %333 = load i8, ptr %332, align 4
  %334 = zext i8 %333 to i16
  store i16 %334, ptr %35, align 4
  %335 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %335, align 2
  store i16 2, ptr %330, align 4
  %336 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %336, align 4
  store i8 66, ptr %34, align 1
  store i8 %328, ptr %329, align 1
  %337 = load ptr, ptr %62, align 4
  %338 = call i32 @i2c_transfer(ptr noundef %337, ptr noundef nonnull %35, i32 noundef 1) #10
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %345, label %340

340:                                              ; preds = %327
  %341 = load ptr, ptr %331, align 4
  %342 = load i8, ptr %341, align 4
  %343 = zext i8 %342 to i32
  %344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %343, i32 noundef %338) #12
  br label %345

345:                                              ; preds = %340, %327
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %34) #10
  %346 = load i32, ptr %63, align 4
  switch i32 %346, label %664 [
    i32 1, label %348
    i32 2, label %347
  ]

347:                                              ; preds = %345
  br label %348

348:                                              ; preds = %347, %345
  %349 = phi i8 [ 7, %347 ], [ -121, %345 ]
  store i8 %349, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %32) #10
  %350 = getelementptr inbounds i8, ptr %32, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %350, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %351 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 0, ptr %351, align 4, !annotation !8
  %352 = load ptr, ptr %331, align 4
  %353 = load i8, ptr %352, align 4
  %354 = zext i8 %353 to i16
  store i16 %354, ptr %33, align 4
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %355, align 2
  store i16 2, ptr %351, align 4
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %356, align 4
  store i8 87, ptr %32, align 1
  store i8 %349, ptr %350, align 1
  %357 = load ptr, ptr %62, align 4
  %358 = call i32 @i2c_transfer(ptr noundef %357, ptr noundef nonnull %33, i32 noundef 1) #10
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %365, label %360

360:                                              ; preds = %348
  %361 = load ptr, ptr %331, align 4
  %362 = load i8, ptr %361, align 4
  %363 = zext i8 %362 to i32
  %364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %363, i32 noundef %358) #12
  br label %365

365:                                              ; preds = %360, %348
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %32) #10
  store i8 16, ptr %60, align 2
  %366 = getelementptr inbounds [5 x i8], ptr %60, i32 0, i32 1
  store i8 0, ptr %366, align 1
  %367 = load i32, ptr %63, align 4
  switch i32 %367, label %664 [
    i32 1, label %368
    i32 2, label %369
  ]

368:                                              ; preds = %365
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 88, ptr noundef nonnull %60, i8 noundef zeroext 2)
  br label %387

369:                                              ; preds = %365
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %30) #10
  %370 = getelementptr inbounds i8, ptr %30, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %370, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %371 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %371, align 4, !annotation !8
  %372 = load ptr, ptr %331, align 4
  %373 = load i8, ptr %372, align 4
  %374 = zext i8 %373 to i16
  store i16 %374, ptr %31, align 4
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %375, align 2
  store i16 3, ptr %371, align 4
  %376 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %376, align 4
  store i8 88, ptr %30, align 1
  %377 = load i16, ptr %60, align 2
  store i16 %377, ptr %370, align 1
  %378 = load ptr, ptr %62, align 4
  %379 = call i32 @i2c_transfer(ptr noundef %378, ptr noundef nonnull %31, i32 noundef 1) #10
  %380 = icmp eq i32 %379, 1
  br i1 %380, label %386, label %381

381:                                              ; preds = %369
  %382 = load ptr, ptr %331, align 4
  %383 = load i8, ptr %382, align 4
  %384 = zext i8 %383 to i32
  %385 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %384, i32 noundef %379) #12
  br label %386

386:                                              ; preds = %381, %369
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %30) #10
  br label %387

387:                                              ; preds = %386, %368
  %388 = load i32, ptr %101, align 4
  switch i32 %388, label %664 [
    i32 3, label %389
    i32 5, label %390
    i32 7, label %391
  ]

389:                                              ; preds = %387
  store i8 104, ptr %60, align 2
  br label %392

390:                                              ; preds = %387
  store i8 100, ptr %60, align 2
  br label %392

391:                                              ; preds = %387
  store i8 96, ptr %60, align 2
  br label %392

392:                                              ; preds = %391, %390, %389
  store i8 0, ptr %366, align 1
  %393 = load i32, ptr %63, align 4
  switch i32 %393, label %664 [
    i32 1, label %394
    i32 2, label %395
  ]

394:                                              ; preds = %392
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 92, ptr noundef nonnull %60, i8 noundef zeroext 2)
  br label %413

395:                                              ; preds = %392
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %28) #10
  %396 = getelementptr inbounds i8, ptr %28, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %396, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %397 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %397, align 4, !annotation !8
  %398 = load ptr, ptr %331, align 4
  %399 = load i8, ptr %398, align 4
  %400 = zext i8 %399 to i16
  store i16 %400, ptr %29, align 4
  %401 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %401, align 2
  store i16 3, ptr %397, align 4
  %402 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %402, align 4
  store i8 92, ptr %28, align 1
  %403 = load i16, ptr %60, align 2
  store i16 %403, ptr %396, align 1
  %404 = load ptr, ptr %62, align 4
  %405 = call i32 @i2c_transfer(ptr noundef %404, ptr noundef nonnull %29, i32 noundef 1) #10
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %412, label %407

407:                                              ; preds = %395
  %408 = load ptr, ptr %331, align 4
  %409 = load i8, ptr %408, align 4
  %410 = zext i8 %409 to i32
  %411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %410, i32 noundef %405) #12
  br label %412

412:                                              ; preds = %407, %395
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %28) #10
  br label %413

413:                                              ; preds = %412, %394
  store i8 5, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %26) #10
  %414 = getelementptr inbounds i8, ptr %26, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %414, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %415 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 0, ptr %415, align 4, !annotation !8
  %416 = load ptr, ptr %331, align 4
  %417 = load i8, ptr %416, align 4
  %418 = zext i8 %417 to i16
  store i16 %418, ptr %27, align 4
  %419 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %419, align 2
  store i16 2, ptr %415, align 4
  %420 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %420, align 4
  store i8 67, ptr %26, align 1
  store i8 5, ptr %414, align 1
  %421 = load ptr, ptr %62, align 4
  %422 = call i32 @i2c_transfer(ptr noundef %421, ptr noundef nonnull %27, i32 noundef 1) #10
  %423 = icmp eq i32 %422, 1
  br i1 %423, label %429, label %424

424:                                              ; preds = %413
  %425 = load ptr, ptr %331, align 4
  %426 = load i8, ptr %425, align 4
  %427 = zext i8 %426 to i32
  %428 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %427, i32 noundef %422) #12
  br label %429

429:                                              ; preds = %424, %413
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %26) #10
  %430 = load i32, ptr %63, align 4
  %431 = icmp eq i32 %430, 2
  br i1 %431, label %432, label %451

432:                                              ; preds = %429
  store i8 0, ptr %60, align 2
  store i8 0, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %24) #10
  %433 = getelementptr inbounds i8, ptr %24, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %433, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %434 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 0, ptr %434, align 4, !annotation !8
  %435 = load ptr, ptr %331, align 4
  %436 = load i8, ptr %435, align 4
  %437 = zext i8 %436 to i16
  store i16 %437, ptr %25, align 4
  %438 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %438, align 2
  store i16 3, ptr %434, align 4
  %439 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %439, align 4
  store i8 70, ptr %24, align 1
  %440 = load i16, ptr %60, align 2
  store i16 %440, ptr %433, align 1
  %441 = load ptr, ptr %62, align 4
  %442 = call i32 @i2c_transfer(ptr noundef %441, ptr noundef nonnull %25, i32 noundef 1) #10
  %443 = icmp eq i32 %442, 1
  br i1 %443, label %449, label %444

444:                                              ; preds = %432
  %445 = load ptr, ptr %331, align 4
  %446 = load i8, ptr %445, align 4
  %447 = zext i8 %446 to i32
  %448 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %447, i32 noundef %442) #12
  br label %449

449:                                              ; preds = %444, %432
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %24) #10
  %450 = load i32, ptr %63, align 4
  br label %451

451:                                              ; preds = %449, %429
  %452 = phi i32 [ %450, %449 ], [ %430, %429 ]
  store i8 -128, ptr %60, align 2
  store i8 0, ptr %366, align 1
  switch i32 %452, label %664 [
    i32 1, label %453
    i32 2, label %454
  ]

453:                                              ; preds = %451
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 75, ptr noundef nonnull %60, i8 noundef zeroext 2)
  br label %472

454:                                              ; preds = %451
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %22) #10
  %455 = getelementptr inbounds i8, ptr %22, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %455, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %456 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 0, ptr %456, align 4, !annotation !8
  %457 = load ptr, ptr %331, align 4
  %458 = load i8, ptr %457, align 4
  %459 = zext i8 %458 to i16
  store i16 %459, ptr %23, align 4
  %460 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %460, align 2
  store i16 3, ptr %456, align 4
  %461 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %461, align 4
  store i8 75, ptr %22, align 1
  %462 = load i16, ptr %60, align 2
  store i16 %462, ptr %455, align 1
  %463 = load ptr, ptr %62, align 4
  %464 = call i32 @i2c_transfer(ptr noundef %463, ptr noundef nonnull %23, i32 noundef 1) #10
  %465 = icmp eq i32 %464, 1
  br i1 %465, label %471, label %466

466:                                              ; preds = %454
  %467 = load ptr, ptr %331, align 4
  %468 = load i8, ptr %467, align 4
  %469 = zext i8 %468 to i32
  %470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %469, i32 noundef %464) #12
  br label %471

471:                                              ; preds = %466, %454
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %22) #10
  br label %472

472:                                              ; preds = %471, %453
  store i8 0, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #10
  %473 = getelementptr inbounds i8, ptr %20, i32 1
  %474 = getelementptr inbounds i8, ptr %20, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %474, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %475 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %475, align 4, !annotation !8
  %476 = load ptr, ptr %331, align 4
  %477 = load i8, ptr %476, align 4
  %478 = zext i8 %477 to i16
  store i16 %478, ptr %21, align 4
  %479 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %479, align 2
  %480 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %480, align 4
  store i8 77, ptr %20, align 1
  store i8 0, ptr %473, align 1
  %481 = load ptr, ptr %62, align 4
  %482 = call i32 @i2c_transfer(ptr noundef %481, ptr noundef nonnull %21, i32 noundef 1) #10
  %483 = icmp eq i32 %482, 1
  br i1 %483, label %489, label %484

484:                                              ; preds = %472
  %485 = load ptr, ptr %331, align 4
  %486 = load i8, ptr %485, align 4
  %487 = zext i8 %486 to i32
  %488 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %487, i32 noundef %482) #12
  br label %489

489:                                              ; preds = %484, %472
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #10
  store i8 68, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %18) #10
  %490 = getelementptr inbounds i8, ptr %18, i32 1
  %491 = getelementptr inbounds i8, ptr %18, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %491, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %492 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %492, align 4, !annotation !8
  %493 = load ptr, ptr %331, align 4
  %494 = load i8, ptr %493, align 4
  %495 = zext i8 %494 to i16
  store i16 %495, ptr %19, align 4
  %496 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %496, align 2
  %497 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %497, align 4
  store i8 85, ptr %18, align 1
  store i8 68, ptr %490, align 1
  %498 = load ptr, ptr %62, align 4
  %499 = call i32 @i2c_transfer(ptr noundef %498, ptr noundef nonnull %19, i32 noundef 1) #10
  %500 = icmp eq i32 %499, 1
  br i1 %500, label %506, label %501

501:                                              ; preds = %489
  %502 = load ptr, ptr %331, align 4
  %503 = load i8, ptr %502, align 4
  %504 = zext i8 %503 to i32
  %505 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %504, i32 noundef %499) #12
  br label %506

506:                                              ; preds = %501, %489
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %18) #10
  store i8 4, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #10
  %507 = getelementptr inbounds i8, ptr %16, i32 1
  %508 = getelementptr inbounds i8, ptr %16, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %508, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %509 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %509, align 4, !annotation !8
  %510 = load ptr, ptr %331, align 4
  %511 = load i8, ptr %510, align 4
  %512 = zext i8 %511 to i16
  store i16 %512, ptr %17, align 4
  %513 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %513, align 2
  %514 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %514, align 4
  store i8 65, ptr %16, align 1
  store i8 4, ptr %507, align 1
  %515 = load ptr, ptr %62, align 4
  %516 = call i32 @i2c_transfer(ptr noundef %515, ptr noundef nonnull %17, i32 noundef 1) #10
  %517 = icmp eq i32 %516, 1
  br i1 %517, label %523, label %518

518:                                              ; preds = %506
  %519 = load ptr, ptr %331, align 4
  %520 = load i8, ptr %519, align 4
  %521 = zext i8 %520 to i32
  %522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %521, i32 noundef %516) #12
  br label %523

523:                                              ; preds = %518, %506
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #10
  %524 = load i32, ptr %63, align 4
  %525 = icmp eq i32 %524, 2
  br i1 %525, label %526, label %528

526:                                              ; preds = %523
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %62, i8 noundef zeroext -128, ptr noundef nonnull %60, i8 noundef zeroext 1)
  store i8 36, ptr %60, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext -128, ptr noundef nonnull %60, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %62, i8 noundef zeroext 8, ptr noundef nonnull %60, i8 noundef zeroext 1)
  store i8 16, ptr %60, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 8, ptr noundef nonnull %60, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %62, i8 noundef zeroext 8, ptr noundef nonnull %60, i8 noundef zeroext 1)
  store i8 0, ptr %60, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 8, ptr noundef nonnull %60, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %62, i8 noundef zeroext -128, ptr noundef nonnull %60, i8 noundef zeroext 1)
  store i8 4, ptr %60, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext -128, ptr noundef nonnull %60, i8 noundef zeroext 1)
  store i8 0, ptr %60, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext -127, ptr noundef nonnull %60, i8 noundef zeroext 1)
  store i8 -128, ptr %60, align 2
  store i8 0, ptr %366, align 1
  %527 = getelementptr inbounds [5 x i8], ptr %60, i32 0, i32 2
  store i8 0, ptr %527, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext -126, ptr noundef nonnull %60, i8 noundef zeroext 3)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %62, i8 noundef zeroext -120, ptr noundef nonnull %60, i8 noundef zeroext 1)
  store i8 17, ptr %60, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext -120, ptr noundef nonnull %60, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %62, i8 noundef zeroext -128, ptr noundef nonnull %60, i8 noundef zeroext 1)
  store i8 68, ptr %60, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext -128, ptr noundef nonnull %60, i8 noundef zeroext 1)
  br label %528

528:                                              ; preds = %526, %523
  %529 = load i32, ptr %101, align 4
  switch i32 %529, label %664 [
    i32 3, label %530
    i32 5, label %531
    i32 7, label %532
  ]

530:                                              ; preds = %528
  store i8 2, ptr %60, align 2
  br label %533

531:                                              ; preds = %528
  store i8 3, ptr %60, align 2
  br label %533

532:                                              ; preds = %528
  store i8 0, ptr %60, align 2
  br label %533

533:                                              ; preds = %532, %531, %530
  %534 = phi i8 [ 0, %532 ], [ 3, %531 ], [ 2, %530 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #10
  %535 = getelementptr inbounds i8, ptr %14, i32 1
  %536 = getelementptr inbounds i8, ptr %14, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %536, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %537 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %537, align 4, !annotation !8
  %538 = load ptr, ptr %331, align 4
  %539 = load i8, ptr %538, align 4
  %540 = zext i8 %539 to i16
  store i16 %540, ptr %15, align 4
  %541 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %541, align 2
  %542 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %542, align 4
  store i8 48, ptr %14, align 1
  store i8 %534, ptr %535, align 1
  %543 = load ptr, ptr %62, align 4
  %544 = call i32 @i2c_transfer(ptr noundef %543, ptr noundef nonnull %15, i32 noundef 1) #10
  %545 = icmp eq i32 %544, 1
  br i1 %545, label %551, label %546

546:                                              ; preds = %533
  %547 = load ptr, ptr %331, align 4
  %548 = load i8, ptr %547, align 4
  %549 = zext i8 %548 to i32
  %550 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %549, i32 noundef %544) #12
  br label %551

551:                                              ; preds = %546, %533
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #10
  store i8 0, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #10
  %552 = getelementptr inbounds i8, ptr %12, i32 1
  %553 = getelementptr inbounds i8, ptr %12, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %553, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %554 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %554, align 4, !annotation !8
  %555 = load ptr, ptr %331, align 4
  %556 = load i8, ptr %555, align 4
  %557 = zext i8 %556 to i16
  store i16 %557, ptr %13, align 4
  %558 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %558, align 2
  %559 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %559, align 4
  store i8 65, ptr %12, align 1
  store i8 0, ptr %552, align 1
  %560 = load ptr, ptr %62, align 4
  %561 = call i32 @i2c_transfer(ptr noundef %560, ptr noundef nonnull %13, i32 noundef 1) #10
  %562 = icmp eq i32 %561, 1
  br i1 %562, label %568, label %563

563:                                              ; preds = %551
  %564 = load ptr, ptr %331, align 4
  %565 = load i8, ptr %564, align 4
  %566 = zext i8 %565 to i32
  %567 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %566, i32 noundef %561) #12
  br label %568

568:                                              ; preds = %563, %551
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #10
  store i8 -128, ptr %60, align 2
  store i8 0, ptr %366, align 1
  %569 = load i32, ptr %63, align 4
  switch i32 %569, label %664 [
    i32 1, label %570
    i32 2, label %571
  ]

570:                                              ; preds = %568
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 73, ptr noundef nonnull %60, i8 noundef zeroext 2)
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %62, i8 noundef zeroext 75, ptr noundef nonnull %60, i8 noundef zeroext 2)
  br label %608

571:                                              ; preds = %568
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #10
  %572 = getelementptr inbounds i8, ptr %10, i32 1
  %573 = getelementptr inbounds i8, ptr %10, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %573, i8 0, i32 253, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %574 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %574, align 4, !annotation !8
  %575 = load ptr, ptr %331, align 4
  %576 = load i8, ptr %575, align 4
  %577 = zext i8 %576 to i16
  store i16 %577, ptr %11, align 4
  %578 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %578, align 2
  %579 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %579, align 4
  store i8 73, ptr %10, align 1
  %580 = load i16, ptr %60, align 2
  store i16 %580, ptr %572, align 1
  %581 = load ptr, ptr %62, align 4
  %582 = call i32 @i2c_transfer(ptr noundef %581, ptr noundef nonnull %11, i32 noundef 1) #10
  %583 = icmp eq i32 %582, 1
  br i1 %583, label %589, label %584

584:                                              ; preds = %571
  %585 = load ptr, ptr %331, align 4
  %586 = load i8, ptr %585, align 4
  %587 = zext i8 %586 to i32
  %588 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %587, i32 noundef %582) #12
  br label %589

589:                                              ; preds = %584, %571
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #10
  %590 = getelementptr inbounds i8, ptr %8, i32 1
  %591 = getelementptr inbounds i8, ptr %8, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %591, i8 0, i32 253, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %592 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %592, align 4, !annotation !8
  %593 = load ptr, ptr %331, align 4
  %594 = load i8, ptr %593, align 4
  %595 = zext i8 %594 to i16
  store i16 %595, ptr %9, align 4
  %596 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %596, align 2
  %597 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %597, align 4
  store i8 75, ptr %8, align 1
  %598 = load i16, ptr %60, align 2
  store i16 %598, ptr %590, align 1
  %599 = load ptr, ptr %62, align 4
  %600 = call i32 @i2c_transfer(ptr noundef %599, ptr noundef nonnull %9, i32 noundef 1) #10
  %601 = icmp eq i32 %600, 1
  br i1 %601, label %607, label %602

602:                                              ; preds = %589
  %603 = load ptr, ptr %331, align 4
  %604 = load i8, ptr %603, align 4
  %605 = zext i8 %604 to i32
  %606 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %605, i32 noundef %600) #12
  br label %607

607:                                              ; preds = %602, %589
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #10
  br label %608

608:                                              ; preds = %607, %570
  store i8 4, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  %609 = getelementptr inbounds i8, ptr %6, i32 1
  %610 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %610, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %611 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %611, align 4, !annotation !8
  %612 = load ptr, ptr %331, align 4
  %613 = load i8, ptr %612, align 4
  %614 = zext i8 %613 to i16
  store i16 %614, ptr %7, align 4
  %615 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %615, align 2
  %616 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %616, align 4
  store i8 65, ptr %6, align 1
  store i8 4, ptr %609, align 1
  %617 = load ptr, ptr %62, align 4
  %618 = call i32 @i2c_transfer(ptr noundef %617, ptr noundef nonnull %7, i32 noundef 1) #10
  %619 = icmp eq i32 %618, 1
  br i1 %619, label %625, label %620

620:                                              ; preds = %608
  %621 = load ptr, ptr %331, align 4
  %622 = load i8, ptr %621, align 4
  %623 = zext i8 %622 to i32
  %624 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %623, i32 noundef %618) #12
  br label %625

625:                                              ; preds = %620, %608
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  %626 = getelementptr inbounds i8, ptr %4, i32 1
  %627 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %627, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %628 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %628, align 4, !annotation !8
  %629 = load ptr, ptr %331, align 4
  %630 = load i8, ptr %629, align 4
  %631 = zext i8 %630 to i16
  store i16 %631, ptr %5, align 4
  %632 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %632, align 2
  %633 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %633, align 4
  store i8 34, ptr %4, align 1
  store i8 0, ptr %626, align 1
  %634 = load ptr, ptr %62, align 4
  %635 = call i32 @i2c_transfer(ptr noundef %634, ptr noundef nonnull %5, i32 noundef 1) #10
  %636 = icmp eq i32 %635, 1
  br i1 %636, label %642, label %637

637:                                              ; preds = %625
  %638 = load ptr, ptr %331, align 4
  %639 = load i8, ptr %638, align 4
  %640 = zext i8 %639 to i32
  %641 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %640, i32 noundef %635) #12
  br label %642

642:                                              ; preds = %637, %625
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  %643 = load i32, ptr %63, align 4
  %644 = icmp eq i32 %643, 2
  br i1 %644, label %645, label %664

645:                                              ; preds = %642
  call fastcc void @nxt2004_microcontroller_init(ptr noundef %62)
  store i8 -16, ptr %60, align 2
  store i8 0, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #10
  %646 = getelementptr inbounds i8, ptr %2, i32 1
  %647 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %647, i8 0, i32 253, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %648 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %648, align 4, !annotation !8
  %649 = load ptr, ptr %331, align 4
  %650 = load i8, ptr %649, align 4
  %651 = zext i8 %650 to i16
  store i16 %651, ptr %3, align 4
  %652 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %652, align 2
  %653 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %653, align 4
  store i8 92, ptr %2, align 1
  %654 = load i16, ptr %60, align 2
  store i16 %654, ptr %646, align 1
  %655 = load ptr, ptr %62, align 4
  %656 = call i32 @i2c_transfer(ptr noundef %655, ptr noundef nonnull %3, i32 noundef 1) #10
  %657 = icmp eq i32 %656, 1
  br i1 %657, label %663, label %658

658:                                              ; preds = %645
  %659 = load ptr, ptr %331, align 4
  %660 = load i8, ptr %659, align 4
  %661 = zext i8 %660 to i32
  %662 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %661, i32 noundef %656) #12
  br label %663

663:                                              ; preds = %658, %645
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #10
  br label %664

664:                                              ; preds = %663, %642, %568, %528, %451, %392, %387, %365, %345, %324, %100
  %665 = phi i32 [ -22, %100 ], [ -22, %324 ], [ -22, %345 ], [ -22, %365 ], [ -22, %387 ], [ -22, %392 ], [ -22, %451 ], [ -22, %528 ], [ -22, %568 ], [ 0, %663 ], [ 0, %642 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %60) #10
  ret i32 %665
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nxt200x_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 500, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt200x_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 49, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %4, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %9, align 4
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %27, i32 noundef %22) #12
  br label %29

29:                                               ; preds = %24, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %30 = load i8, ptr %5, align 1
  %31 = and i8 %30, 32
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i32 0, i32 31
  store i32 %33, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt200x_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %5, i8 noundef zeroext -26, ptr noundef nonnull %3, i8 noundef zeroext 3)
  %6 = load i8, ptr %3, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %7, 11
  %12 = shl nuw nsw i32 %10, 3
  %13 = or i32 %12, %11
  store i32 %13, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt200x_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [256 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #10
  %8 = getelementptr inbounds i8, ptr %3, i32 1
  %9 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %9, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %4, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %16, align 4
  store i8 -95, ptr %3, align 1
  store i8 0, ptr %8, align 1
  %17 = load ptr, ptr %7, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 1) #10
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %11, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %23, i32 noundef %18) #12
  br label %25

25:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %7, i8 noundef zeroext -90, ptr noundef nonnull %5, i8 noundef zeroext 2)
  %26 = load i8, ptr %5, align 2
  %27 = zext i8 %26 to i16
  %28 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i16
  %31 = mul i16 %27, -4096
  %32 = mul nsw i16 %30, -16
  %33 = add i16 %31, -16
  %34 = add i16 %33, %32
  store i16 %34, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt200x_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [256 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #10
  %8 = getelementptr inbounds i8, ptr %3, i32 1
  %9 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %9, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.nxt200x_state, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %4, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %16, align 4
  store i8 -95, ptr %3, align 1
  store i8 0, ptr %8, align 1
  %17 = load ptr, ptr %7, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 1) #10
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %11, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %23, i32 noundef %18) #12
  br label %25

25:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %7, i8 noundef zeroext -90, ptr noundef nonnull %5, i8 noundef zeroext 2)
  %26 = load i8, ptr %5, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %28, %31
  %33 = sub nsw i32 32767, %32
  %34 = and i32 %33, 65535
  %35 = icmp ugt i32 %34, 32512
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = mul nuw nsw i32 %34, 6000
  %38 = add nsw i32 %37, -195072000
  %39 = udiv i32 %38, 255
  %40 = add nuw nsw i32 %39, 24000
  br label %58

41:                                               ; preds = %25
  %42 = icmp ugt i32 %34, 32448
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = mul nuw nsw i32 %34, 6000
  %45 = add nsw i32 %44, -194688000
  %46 = lshr i32 %45, 6
  %47 = add nuw nsw i32 %46, 18000
  br label %58

48:                                               ; preds = %41
  %49 = icmp ugt i32 %34, 31744
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = mul nuw nsw i32 %34, 6000
  %52 = add nsw i32 %51, -190464000
  %53 = udiv i32 %52, 704
  %54 = add nuw nsw i32 %53, 12000
  br label %58

55:                                               ; preds = %48
  %56 = mul nuw nsw i32 %34, 12000
  %57 = udiv i32 %56, 31744
  br label %58

58:                                               ; preds = %55, %50, %43, %36
  %59 = phi i32 [ %40, %36 ], [ %47, %43 ], [ %54, %50 ], [ %57, %55 ]
  %60 = trunc i32 %59 to i16
  %61 = shl i16 %60, 1
  store i16 %61, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nxt200x_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %5, i8 noundef zeroext -26, ptr noundef nonnull %3, i8 noundef zeroext 3)
  %6 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  store i32 %8, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nxt200x_microcontroller_stop(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.nxt200x_state, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 16, i32 0
  %11 = icmp eq i32 %8, 1
  %12 = select i1 %11, i32 64, i32 %10
  store i8 -128, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  %13 = getelementptr inbounds i8, ptr %4, i32 1
  %14 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %14, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.nxt200x_state, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %5, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %21, align 4
  store i8 34, ptr %4, align 1
  store i8 -128, ptr %13, align 1
  %22 = load ptr, ptr %0, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 1) #10
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr %16, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %28, i32 noundef %23) #12
  br label %30

30:                                               ; preds = %25, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  %31 = getelementptr inbounds i8, ptr %3, i32 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  br label %38

38:                                               ; preds = %58, %30
  %39 = phi i8 [ 0, %30 ], [ %59, %58 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 49, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #10, !annotation !8
  %40 = load ptr, ptr %16, align 4
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %3, align 4
  store i16 0, ptr %32, align 2
  store i16 1, ptr %31, align 4
  store ptr %2, ptr %33, align 4
  %43 = load i8, ptr %40, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %34, align 4
  store i16 1, ptr %35, align 2
  store i16 1, ptr %36, align 4
  store ptr %6, ptr %37, align 4
  %45 = load ptr, ptr %0, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %3, i32 noundef 2) #10
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = load ptr, ptr %16, align 4
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %51, i32 noundef %46) #12
  br label %53

53:                                               ; preds = %48, %38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %54 = load i8, ptr %6, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %12, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  call void @msleep(i32 noundef 10) #10
  %59 = add nuw nsw i8 %39, 1
  %60 = icmp ult i8 %39, 19
  br i1 %60, label %38, label %61

61:                                               ; preds = %58
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %63

63:                                               ; preds = %61, %53
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nxt2004_microcontroller_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [256 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [256 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [256 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [256 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %14) #10
  %15 = getelementptr inbounds i8, ptr %14, i32 1
  store i64 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #10
  %16 = getelementptr inbounds i8, ptr %12, i32 1
  %17 = getelementptr inbounds i8, ptr %12, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %17, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %18 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %18, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.nxt200x_state, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %13, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %24, align 4
  store i8 43, ptr %12, align 1
  store i8 0, ptr %16, align 1
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %13, i32 noundef 1) #10
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load ptr, ptr %19, align 4
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %31, i32 noundef %26) #12
  br label %33

33:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #10
  store i8 112, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #10
  %34 = getelementptr inbounds i8, ptr %10, i32 1
  %35 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %35, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %36 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %36, align 4, !annotation !8
  %37 = load ptr, ptr %19, align 4
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %11, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %41, align 4
  store i8 52, ptr %10, align 1
  store i8 112, ptr %34, align 1
  %42 = load ptr, ptr %0, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %11, i32 noundef 1) #10
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %50, label %45

45:                                               ; preds = %33
  %46 = load ptr, ptr %19, align 4
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i32
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %48, i32 noundef %43) #12
  br label %50

50:                                               ; preds = %45, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #10
  %51 = getelementptr inbounds i8, ptr %8, i32 1
  %52 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %52, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %53 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %53, align 4, !annotation !8
  %54 = load ptr, ptr %19, align 4
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %9, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %58, align 4
  store i8 53, ptr %8, align 1
  store i8 4, ptr %51, align 1
  %59 = load ptr, ptr %0, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %9, i32 noundef 1) #10
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %67, label %62

62:                                               ; preds = %50
  %63 = load ptr, ptr %19, align 4
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i32
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %65, i32 noundef %60) #12
  br label %67

67:                                               ; preds = %62, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #10
  store i8 1, ptr %14, align 1
  %68 = getelementptr inbounds [9 x i8], ptr %14, i32 0, i32 1
  store i8 35, ptr %68, align 1
  %69 = getelementptr inbounds [9 x i8], ptr %14, i32 0, i32 2
  store i8 69, ptr %69, align 1
  %70 = getelementptr inbounds [9 x i8], ptr %14, i32 0, i32 3
  store i8 103, ptr %70, align 1
  %71 = getelementptr inbounds [9 x i8], ptr %14, i32 0, i32 4
  store i8 -119, ptr %71, align 1
  %72 = getelementptr inbounds [9 x i8], ptr %14, i32 0, i32 5
  store i8 -85, ptr %72, align 1
  %73 = getelementptr inbounds [9 x i8], ptr %14, i32 0, i32 6
  store i8 -51, ptr %73, align 1
  %74 = getelementptr inbounds [9 x i8], ptr %14, i32 0, i32 7
  store i8 -17, ptr %74, align 1
  %75 = getelementptr inbounds [9 x i8], ptr %14, i32 0, i32 8
  store i8 -64, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  %76 = getelementptr inbounds i8, ptr %6, i32 1
  %77 = getelementptr inbounds i8, ptr %6, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %77, i8 0, i32 246, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %78 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 10, ptr %78, align 4, !annotation !8
  %79 = load ptr, ptr %19, align 4
  %80 = load i8, ptr %79, align 4
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %7, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %82, align 2
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %83, align 4
  store i8 54, ptr %6, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %76, ptr noundef nonnull align 1 dereferenceable(9) %14, i32 9, i1 false) #10
  %84 = load ptr, ptr %0, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %7, i32 noundef 1) #10
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %92, label %87

87:                                               ; preds = %67
  %88 = load ptr, ptr %19, align 4
  %89 = load i8, ptr %88, align 4
  %90 = zext i8 %89 to i32
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %90, i32 noundef %85) #12
  br label %92

92:                                               ; preds = %87, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  store i8 -128, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  %93 = getelementptr inbounds i8, ptr %4, i32 1
  %94 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %94, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %95 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %95, align 4, !annotation !8
  %96 = load ptr, ptr %19, align 4
  %97 = load i8, ptr %96, align 4
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %5, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %99, align 2
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %100, align 4
  store i8 33, ptr %4, align 1
  store i8 -128, ptr %93, align 1
  %101 = load ptr, ptr %0, align 4
  %102 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %5, i32 noundef 1) #10
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %109, label %104

104:                                              ; preds = %92
  %105 = load ptr, ptr %19, align 4
  %106 = load i8, ptr %105, align 4
  %107 = zext i8 %106 to i32
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %107, i32 noundef %102) #12
  br label %109

109:                                              ; preds = %104, %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  %110 = getelementptr inbounds i8, ptr %3, i32 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  br label %117

117:                                              ; preds = %135, %109
  %118 = phi i8 [ 0, %109 ], [ %136, %135 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 33, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %110, i8 0, i32 16, i1 false) #10, !annotation !8
  %119 = load ptr, ptr %19, align 4
  %120 = load i8, ptr %119, align 4
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %3, align 4
  store i16 0, ptr %111, align 2
  store i16 1, ptr %110, align 4
  store ptr %2, ptr %112, align 4
  %122 = load i8, ptr %119, align 4
  %123 = zext i8 %122 to i16
  store i16 %123, ptr %113, align 4
  store i16 1, ptr %114, align 2
  store i16 1, ptr %115, align 4
  store ptr %14, ptr %116, align 4
  %124 = load ptr, ptr %0, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %3, i32 noundef 2) #10
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %132, label %127

127:                                              ; preds = %117
  %128 = load ptr, ptr %19, align 4
  %129 = load i8, ptr %128, align 4
  %130 = zext i8 %129 to i32
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %130, i32 noundef %125) #12
  br label %132

132:                                              ; preds = %127, %117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %133 = load i8, ptr %14, align 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  call void @msleep(i32 noundef 10) #10
  %136 = add nuw nsw i8 %118, 1
  %137 = icmp ult i8 %118, 19
  br i1 %137, label %117, label %138

138:                                              ; preds = %135
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %140

140:                                              ; preds = %138, %132
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %14) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nxt200x_writereg_multibyte(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [256 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [256 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [256 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [256 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 0, ptr %15, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %13) #10
  %16 = getelementptr inbounds i8, ptr %13, i32 1
  %17 = getelementptr inbounds i8, ptr %13, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %17, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %18 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %18, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.nxt200x_state, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %14, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %24, align 4
  store i8 53, ptr %13, align 1
  store i8 %1, ptr %16, align 1
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %14, i32 noundef 1) #10
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load ptr, ptr %19, align 4
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %31, i32 noundef %26) #12
  br label %33

33:                                               ; preds = %28, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #10
  %34 = getelementptr inbounds i8, ptr %11, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %34, i8 0, i32 255, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %35 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 0, ptr %35, align 4, !annotation !8
  %36 = load ptr, ptr %19, align 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %12, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = zext i8 %3 to i16
  %41 = add nuw nsw i16 %40, 1
  store i16 %41, ptr %35, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %42, align 4
  %43 = zext i8 %3 to i32
  store i8 54, ptr %11, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr align 1 %2, i32 %43, i1 false) #10
  %44 = load ptr, ptr %0, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %12, i32 noundef 1) #10
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %52, label %47

47:                                               ; preds = %33
  %48 = load ptr, ptr %19, align 4
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %50, i32 noundef %45) #12
  br label %52

52:                                               ; preds = %47, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #10
  %53 = getelementptr inbounds %struct.nxt200x_state, ptr %0, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %133 [
    i32 1, label %64
    i32 2, label %55
  ]

55:                                               ; preds = %52
  %56 = zext i8 %1 to i32
  %57 = and i32 %56, 128
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %56, 4
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i8 80, i8 48
  %62 = select i1 %58, i8 48, i8 %61
  %63 = or i8 %62, %3
  br label %64

64:                                               ; preds = %55, %52
  %65 = phi i8 [ %63, %55 ], [ %3, %52 ]
  %66 = phi i8 [ -128, %55 ], [ 2, %52 ]
  store i8 %66, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #10
  %67 = getelementptr inbounds i8, ptr %9, i32 1
  %68 = getelementptr inbounds i8, ptr %9, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %68, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %69 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %69, align 4, !annotation !8
  %70 = load ptr, ptr %19, align 4
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %10, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %74, align 4
  store i8 52, ptr %9, align 1
  store i8 %65, ptr %67, align 1
  %75 = load ptr, ptr %0, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %10, i32 noundef 1) #10
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %83, label %78

78:                                               ; preds = %64
  %79 = load ptr, ptr %19, align 4
  %80 = load i8, ptr %79, align 4
  %81 = zext i8 %80 to i32
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %81, i32 noundef %76) #12
  br label %83

83:                                               ; preds = %78, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #10
  %84 = getelementptr inbounds i8, ptr %7, i32 1
  %85 = getelementptr inbounds i8, ptr %7, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %85, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %86 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %86, align 4, !annotation !8
  %87 = load ptr, ptr %19, align 4
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %8, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %91, align 4
  store i8 33, ptr %7, align 1
  store i8 %66, ptr %84, align 1
  %92 = load ptr, ptr %0, align 4
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %8, i32 noundef 1) #10
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %100, label %95

95:                                               ; preds = %83
  %96 = load ptr, ptr %19, align 4
  %97 = load i8, ptr %96, align 4
  %98 = zext i8 %97 to i32
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %98, i32 noundef %93) #12
  br label %100

100:                                              ; preds = %95, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 33, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %101 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %101, i8 0, i32 16, i1 false) #10, !annotation !8
  %102 = load ptr, ptr %19, align 4
  %103 = load i8, ptr %102, align 4
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %6, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %105, align 2
  store i16 1, ptr %101, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %106, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %108 = load i8, ptr %102, align 4
  %109 = zext i8 %108 to i16
  store i16 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %110, align 2
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %111, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %15, ptr %112, align 4
  %113 = load ptr, ptr %0, align 4
  %114 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %6, i32 noundef 2) #10
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %121, label %116

116:                                              ; preds = %100
  %117 = load ptr, ptr %19, align 4
  %118 = load i8, ptr %117, align 4
  %119 = zext i8 %118 to i32
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %119, i32 noundef %114) #12
  br label %121

121:                                              ; preds = %116, %100
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %122 = load i32, ptr %53, align 4
  switch i32 %122, label %133 [
    i32 1, label %123
    i32 2, label %127
  ]

123:                                              ; preds = %121
  %124 = load i8, ptr %15, align 1
  %125 = and i8 %124, 2
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %133, label %130

127:                                              ; preds = %121
  %128 = load i8, ptr %15, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127, %123
  %131 = zext i8 %1 to i32
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %131) #12
  br label %133

133:                                              ; preds = %130, %127, %123, %121, %52
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nxt200x_readreg_multibyte(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [256 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [256 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [256 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [256 x i8], align 1
  %16 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %15) #10
  %17 = getelementptr inbounds i8, ptr %15, i32 1
  %18 = getelementptr inbounds i8, ptr %15, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %18, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %19 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %19, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.nxt200x_state, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %16, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %25, align 4
  store i8 53, ptr %15, align 1
  store i8 %1, ptr %17, align 1
  %26 = load ptr, ptr %0, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %16, i32 noundef 1) #10
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load ptr, ptr %20, align 4
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %32, i32 noundef %27) #12
  br label %34

34:                                               ; preds = %29, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %15) #10
  %35 = getelementptr inbounds %struct.nxt200x_state, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %152 [
    i32 1, label %37
    i32 2, label %78
  ]

37:                                               ; preds = %34
  %38 = and i8 %3, -128
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %13) #10
  %39 = getelementptr inbounds i8, ptr %13, i32 1
  %40 = getelementptr inbounds i8, ptr %13, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %40, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %41 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %41, align 4, !annotation !8
  %42 = load ptr, ptr %20, align 4
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %14, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %46, align 4
  store i8 52, ptr %13, align 1
  store i8 %38, ptr %39, align 1
  %47 = load ptr, ptr %0, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %14, i32 noundef 1) #10
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %55, label %50

50:                                               ; preds = %37
  %51 = load ptr, ptr %20, align 4
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %53, i32 noundef %48) #12
  br label %55

55:                                               ; preds = %50, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 %1, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  %56 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #10, !annotation !8
  %57 = load ptr, ptr %20, align 4
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %12, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %60, align 2
  store i16 1, ptr %56, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %63 = load i8, ptr %57, align 4
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  %67 = zext i8 %3 to i16
  store i16 %67, ptr %66, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %2, ptr %68, align 4
  %69 = load ptr, ptr %0, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %12, i32 noundef 2) #10
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %77, label %72

72:                                               ; preds = %55
  %73 = load ptr, ptr %20, align 4
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i32
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %75, i32 noundef %70) #12
  br label %77

77:                                               ; preds = %72, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  br label %152

78:                                               ; preds = %34
  %79 = zext i8 %1 to i32
  %80 = and i32 %79, 128
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %79, 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i8 64, i8 32
  %85 = select i1 %81, i8 32, i8 %84
  %86 = zext i8 %3 to i32
  %87 = or i8 %85, %3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #10
  %88 = getelementptr inbounds i8, ptr %9, i32 1
  %89 = getelementptr inbounds i8, ptr %9, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %89, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %90 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %90, align 4, !annotation !8
  %91 = load ptr, ptr %20, align 4
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i16
  store i16 %93, ptr %10, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %94, align 2
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %95, align 4
  store i8 52, ptr %9, align 1
  store i8 %87, ptr %88, align 1
  %96 = load ptr, ptr %0, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %10, i32 noundef 1) #10
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %104, label %99

99:                                               ; preds = %78
  %100 = load ptr, ptr %20, align 4
  %101 = load i8, ptr %100, align 4
  %102 = zext i8 %101 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %102, i32 noundef %97) #12
  br label %104

104:                                              ; preds = %99, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #10
  %105 = getelementptr inbounds i8, ptr %7, i32 1
  %106 = getelementptr inbounds i8, ptr %7, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %106, i8 0, i32 254, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %107 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %107, align 4, !annotation !8
  %108 = load ptr, ptr %20, align 4
  %109 = load i8, ptr %108, align 4
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %8, align 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %111, align 2
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %112, align 4
  store i8 33, ptr %7, align 1
  store i8 -128, ptr %105, align 1
  %113 = load ptr, ptr %0, align 4
  %114 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %8, i32 noundef 1) #10
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %121, label %116

116:                                              ; preds = %104
  %117 = load ptr, ptr %20, align 4
  %118 = load i8, ptr %117, align 4
  %119 = zext i8 %118 to i32
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nxt200x_writebytes, i32 noundef %119, i32 noundef %114) #12
  br label %121

121:                                              ; preds = %116, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #10
  %122 = icmp eq i8 %3, 0
  br i1 %122, label %152, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds i8, ptr %6, i32 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  br label %131

131:                                              ; preds = %149, %123
  %132 = phi i32 [ 0, %123 ], [ %150, %149 ]
  %133 = trunc i32 %132 to i8
  %134 = add i8 %133, 54
  %135 = getelementptr i8, ptr %2, i32 %132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 %134, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %124, i8 0, i32 16, i1 false) #10, !annotation !8
  %136 = load ptr, ptr %20, align 4
  %137 = load i8, ptr %136, align 4
  %138 = zext i8 %137 to i16
  store i16 %138, ptr %6, align 4
  store i16 0, ptr %125, align 2
  store i16 1, ptr %124, align 4
  store ptr %5, ptr %126, align 4
  %139 = load i8, ptr %136, align 4
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %127, align 4
  store i16 1, ptr %128, align 2
  store i16 1, ptr %129, align 4
  store ptr %135, ptr %130, align 4
  %141 = load ptr, ptr %0, align 4
  %142 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %6, i32 noundef 2) #10
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %149, label %144

144:                                              ; preds = %131
  %145 = load ptr, ptr %20, align 4
  %146 = load i8, ptr %145, align 4
  %147 = zext i8 %146 to i32
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nxt200x_readbytes, i32 noundef %147, i32 noundef %142) #12
  br label %149

149:                                              ; preds = %144, %131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %150 = add nuw nsw i32 %132, 1
  %151 = icmp eq i32 %150, %86
  br i1 %151, label %152, label %131

152:                                              ; preds = %149, %121, %77, %34
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
