; ModuleID = '/llk/IR/drivers/media/dvb-frontends/or51211.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/or51211.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_or51211_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22or51211_attach\22\09\09\09\09\09"
module asm "__kstrtabns_or51211_attach:\09\09\09\09\09"
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
%struct.or51211_state = type { ptr, ptr, %struct.dvb_frontend, ptr, i8, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.or51211_config = type { i8, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@or51211_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Oren OR51211 VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44000000, i32 958000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 2097838 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @or51211_release, ptr null, ptr @or51211_init, ptr @or51211_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @or51211_set_parameters, ptr @or51211_get_tune_settings, ptr null, ptr @or51211_read_status, ptr @or51211_read_ber, ptr @or51211_read_signal_strength, ptr @or51211_read_snr, ptr @or51211_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [65 x i8] c"description=Oren OR51211 VSB [pcHDTV HD-2000] Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [19 x i8] c"author=Kirk Lapray\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_or51211_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_or51211_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_or51211_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @or51211_attach to i32), ptr @__kstrtab_or51211_attach, ptr @__kstrtabns_or51211_attach }, section "___ksymtab+or51211_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.or51211_init.get_ver_buf = private unnamed_addr constant [5 x i8] c"\04\000\00\00", align 1
@.str = private unnamed_addr constant [52 x i8] c"\016or51211: %s: Waiting for firmware upload (%s)...\0A\00", align 1
@__func__.or51211_init = private unnamed_addr constant [13 x i8] c"or51211_init\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"dvb-fe-or51211.fw\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\016or51211: %s: Got Hotplug firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"\014or51211: %s: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\014or51211: %s: Writing firmware to device failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\016or51211: %s: Firmware upload complete.\0A\00", align 1
@cmd_buf = internal global [5 x i8] c"\04\01P\80\06", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error 5\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error A\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error B\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error C\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error D\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\014or51211: %s: Load DVR Error 6 - %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\014or51211: %s: Load DVR Error 7 - %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"\016or51211: %s: ver TU%02x%02x%02x VSB mode %02x Status %02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error 8\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: Load DVR Error 9\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"\014or51211: %s: error eprom addr\0A\00", align 1
@__func__.or51211_load_firmware = private unnamed_addr constant [22 x i8] c"or51211_load_firmware\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\014or51211: %s: error eprom\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 1\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 2\0A\00", align 1
@run_buf = internal global [2 x i8] c"\7F\01", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 3\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 4\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"\016or51211: %s: Done.\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"\014or51211: %s: error (addr %02x, err == %i)\0A\00", align 1
@__func__.i2c_writebytes = private unnamed_addr constant [15 x i8] c"i2c_writebytes\00", align 1
@__func__.i2c_readbytes = private unnamed_addr constant [14 x i8] c"i2c_readbytes\00", align 1
@__func__.or51211_setmode = private unnamed_addr constant [16 x i8] c"or51211_setmode\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 5\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"\014or51211: %s: error 6\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"\014or51211: %s: write error\0A\00", align 1
@__func__.or51211_read_status = private unnamed_addr constant [20 x i8] c"or51211_read_status\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"\014or51211: %s: read error\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"\014or51211: %s: error writing snr reg\0A\00", align 1
@__func__.or51211_read_snr = private unnamed_addr constant [17 x i8] c"or51211_read_snr\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"\014or51211: %s: read_status read error\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_or51211_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @or51211_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1064) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.or51211_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %4, align 8
  %8 = getelementptr inbounds %struct.or51211_state, ptr %4, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -2
  store i8 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.or51211_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.or51211_state, ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.or51211_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %13, ptr noundef nonnull align 4 dereferenceable(544) @or51211_ops, i32 544, i1 false)
  %14 = getelementptr inbounds %struct.or51211_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %14, align 8
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi ptr [ %12, %6 ], [ null, %2 ]
  ret ptr %16
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
define internal void @or51211_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.or51211_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.or51211_config, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51211_init(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [585 x i8], align 1
  %11 = alloca ptr, align 4
  %12 = alloca [5 x i8], align 1
  %13 = alloca [14 x i8], align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.or51211_state, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store ptr null, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %12) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %12, ptr noundef nonnull align 1 dereferenceable(5) @__const.or51211_init.get_ver_buf, i32 5, i1 false)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %13) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(14) %13, i8 0, i32 14, i1 false), !annotation !8
  %18 = getelementptr inbounds %struct.or51211_state, ptr %15, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %253

22:                                               ; preds = %1
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.or51211_init, ptr noundef nonnull @.str.1) #11
  %24 = getelementptr inbounds %struct.or51211_config, ptr %17, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull @.str.1) #10
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.or51211_init) #11
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

31:                                               ; preds = %22
  %32 = load ptr, ptr %11, align 4
  %33 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 585, ptr nonnull %10) #10
  %34 = getelementptr inbounds i8, ptr %10, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(585) %34, i8 0, i32 584, i1 false) #10, !annotation !8
  store i8 17, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %35 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 1, ptr %35, align 4, !annotation !8
  store i16 80, ptr %9, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %10, ptr %37, align 4
  %38 = load ptr, ptr %33, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %9, i32 noundef 1) #10
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef 80, i32 noundef %39) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  br label %138

43:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  %44 = getelementptr inbounds [585 x i8], ptr %10, i32 0, i32 145
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %45 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 192, ptr %45, align 4, !annotation !8
  store i16 80, ptr %8, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %44, ptr %47, align 4
  %48 = load ptr, ptr %33, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %8, i32 noundef 1) #10
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %52 = getelementptr inbounds %struct.firmware, ptr %32, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  br label %56

54:                                               ; preds = %43
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_readbytes, i32 noundef 80, i32 noundef %49) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  br label %138

56:                                               ; preds = %56, %51
  %57 = phi i32 [ 0, %51 ], [ %61, %56 ]
  %58 = getelementptr i8, ptr %53, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr [585 x i8], ptr %10, i32 0, i32 %57
  store i8 %59, ptr %60, align 1
  %61 = add nuw nsw i32 %57, 1
  %62 = icmp eq i32 %61, 145
  br i1 %62, label %63, label %56

63:                                               ; preds = %63, %56
  %64 = phi i32 [ %70, %63 ], [ 0, %56 ]
  %65 = add nuw nsw i32 %64, 145
  %66 = getelementptr i8, ptr %53, i32 %65
  %67 = load i8, ptr %66, align 1
  %68 = add nuw nsw i32 %64, 337
  %69 = getelementptr [585 x i8], ptr %10, i32 0, i32 %68
  store i8 %67, ptr %69, align 1
  %70 = add nuw nsw i32 %64, 1
  %71 = icmp eq i32 %70, 248
  br i1 %71, label %72, label %63

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.or51211_state, ptr %33, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.or51211_config, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  call void %76(ptr noundef %0) #10
  %77 = load ptr, ptr %73, align 4
  %78 = load i8, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %79 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 585, ptr %79, align 4, !annotation !8
  %80 = zext i8 %78 to i16
  store i16 %80, ptr %7, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %10, ptr %82, align 4
  %83 = load ptr, ptr %33, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %7, i32 noundef 1) #10
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %89, label %86

86:                                               ; preds = %72
  %87 = zext i8 %78 to i32
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %87, i32 noundef %84) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  br label %138

89:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @msleep(i32 noundef 1) #10
  %90 = load ptr, ptr %73, align 4
  %91 = load i8, ptr %90, align 4
  %92 = load ptr, ptr %52, align 4
  %93 = getelementptr i8, ptr %92, i32 393
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %94 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 8125, ptr %94, align 4, !annotation !8
  %95 = zext i8 %91 to i16
  store i16 %95, ptr %6, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %96, align 2
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %93, ptr %97, align 4
  %98 = load ptr, ptr %33, align 4
  %99 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %6, i32 noundef 1) #10
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %89
  %102 = zext i8 %91 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %102, i32 noundef %99) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %138

104:                                              ; preds = %89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @msleep(i32 noundef 1) #10
  %105 = load ptr, ptr %73, align 4
  %106 = load i8, ptr %105, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %107 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %107, align 4, !annotation !8
  %108 = zext i8 %106 to i16
  store i16 %108, ptr %5, align 4
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %109, align 2
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr @run_buf, ptr %110, align 4
  %111 = load ptr, ptr %33, align 4
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %5, i32 noundef 1) #10
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %104
  %115 = zext i8 %106 to i32
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %115, i32 noundef %112) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  br label %138

117:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @msleep(i32 noundef 10) #10
  %118 = load ptr, ptr %73, align 4
  %119 = load i8, ptr %118, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %120 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %120, align 4, !annotation !8
  %121 = zext i8 %119 to i16
  store i16 %121, ptr %4, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %122, align 2
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr @run_buf, ptr %123, align 4
  %124 = load ptr, ptr %33, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %4, i32 noundef 1) #10
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %130, label %127

127:                                              ; preds = %117
  %128 = zext i8 %119 to i32
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %128, i32 noundef %125) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %138

130:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @msleep(i32 noundef 10) #10
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.or51211_load_firmware) #11
  call void @llvm.lifetime.end.p0(i64 585, ptr nonnull %10) #10
  %132 = load ptr, ptr %11, align 4
  call void @release_firmware(ptr noundef %132) #10
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.or51211_init) #11
  %134 = load ptr, ptr %16, align 4
  %135 = load i8, ptr %134, align 4
  %136 = call fastcc i32 @i2c_writebytes(ptr noundef %15, i8 noundef zeroext %135, ptr noundef nonnull @cmd_buf, i32 noundef 3)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %145, label %143

138:                                              ; preds = %127, %114, %101, %86, %54, %41
  %139 = phi ptr [ @.str.21, %127 ], [ @.str.20, %114 ], [ @.str.19, %101 ], [ @.str.18, %86 ], [ @.str.17, %54 ], [ @.str.16, %41 ]
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %139, ptr noundef nonnull @__func__.or51211_load_firmware) #11
  call void @llvm.lifetime.end.p0(i64 585, ptr nonnull %10) #10
  %141 = load ptr, ptr %11, align 4
  call void @release_firmware(ptr noundef %141) #10
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

143:                                              ; preds = %130
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

145:                                              ; preds = %130
  store i8 4, ptr %13, align 8
  %146 = getelementptr inbounds [14 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %146, align 1
  %147 = getelementptr inbounds [14 x i8], ptr %13, i32 0, i32 2
  store i8 3, ptr %147, align 2
  %148 = getelementptr inbounds [14 x i8], ptr %13, i32 0, i32 3
  store i8 0, ptr %148, align 1
  call void @msleep(i32 noundef 30) #10
  %149 = load ptr, ptr %16, align 4
  %150 = load i8, ptr %149, align 4
  %151 = call fastcc i32 @i2c_writebytes(ptr noundef %15, i8 noundef zeroext %150, ptr noundef nonnull %13, i32 noundef 3)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %145
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

155:                                              ; preds = %145
  call void @msleep(i32 noundef 3) #10
  %156 = load ptr, ptr %16, align 4
  %157 = load i8, ptr %156, align 4
  %158 = getelementptr inbounds [14 x i8], ptr %13, i32 0, i32 10
  %159 = call fastcc i32 @i2c_readbytes(ptr noundef %15, i8 noundef zeroext %157, ptr noundef %158, i32 noundef 2)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %155
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

163:                                              ; preds = %155
  store i8 4, ptr %13, align 8
  store i8 0, ptr %146, align 1
  store i8 1, ptr %147, align 2
  store i8 0, ptr %148, align 1
  call void @msleep(i32 noundef 20) #10
  %164 = load ptr, ptr %16, align 4
  %165 = load i8, ptr %164, align 4
  %166 = call fastcc i32 @i2c_writebytes(ptr noundef %15, i8 noundef zeroext %165, ptr noundef nonnull %13, i32 noundef 3)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

170:                                              ; preds = %163
  call void @msleep(i32 noundef 3) #10
  %171 = load ptr, ptr %16, align 4
  %172 = load i8, ptr %171, align 4
  %173 = getelementptr inbounds [14 x i8], ptr %13, i32 0, i32 12
  %174 = call fastcc i32 @i2c_readbytes(ptr noundef %15, i8 noundef zeroext %172, ptr noundef %173, i32 noundef 2)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %170
  store i64 -1302123111085380115, ptr %13, align 8
  %177 = getelementptr inbounds [5 x i8], ptr %12, i32 0, i32 4
  %178 = getelementptr inbounds i8, ptr %3, i32 4
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %181 = getelementptr inbounds i8, ptr %2, i32 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  br label %186

184:                                              ; preds = %170
  %185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

186:                                              ; preds = %213, %176
  %187 = phi i32 [ 0, %176 ], [ %220, %213 ]
  call void @msleep(i32 noundef 30) #10
  %188 = add nsw i32 %187, 1
  %189 = trunc i32 %188 to i8
  store i8 %189, ptr %177, align 1
  %190 = load ptr, ptr %16, align 4
  %191 = load i8, ptr %190, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 5, ptr %178, align 4, !annotation !8
  %192 = zext i8 %191 to i16
  store i16 %192, ptr %3, align 4
  store i16 0, ptr %179, align 2
  store ptr %12, ptr %180, align 4
  %193 = load ptr, ptr %15, align 4
  %194 = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %3, i32 noundef 1) #10
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %200, label %196

196:                                              ; preds = %186
  %197 = zext i8 %191 to i32
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %197, i32 noundef %194) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.or51211_init, i32 noundef %187) #11
  br label %253

200:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @msleep(i32 noundef 3) #10
  %201 = load ptr, ptr %16, align 4
  %202 = load i8, ptr %201, align 4
  %203 = shl i32 %187, 1
  %204 = getelementptr [14 x i8], ptr %13, i32 0, i32 %203
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  store i32 2, ptr %181, align 4, !annotation !8
  %205 = zext i8 %202 to i16
  store i16 %205, ptr %2, align 4
  store i16 1, ptr %182, align 2
  store ptr %204, ptr %183, align 4
  %206 = load ptr, ptr %15, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %2, i32 noundef 1) #10
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %213, label %209

209:                                              ; preds = %200
  %210 = zext i8 %202 to i32
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_readbytes, i32 noundef %210, i32 noundef %207) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.or51211_init, i32 noundef %187) #11
  br label %253

213:                                              ; preds = %200
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %214 = or i32 %203, 1
  %215 = getelementptr [14 x i8], ptr %13, i32 0, i32 %214
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp ne i32 %188, %217
  %219 = sext i1 %218 to i32
  %220 = add nsw i32 %188, %219
  %221 = icmp slt i32 %220, 5
  br i1 %221, label %186, label %222

222:                                              ; preds = %213
  %223 = load i8, ptr %147, align 2
  %224 = zext i8 %223 to i32
  %225 = getelementptr inbounds [14 x i8], ptr %13, i32 0, i32 4
  %226 = load i8, ptr %225, align 4
  %227 = zext i8 %226 to i32
  %228 = getelementptr inbounds [14 x i8], ptr %13, i32 0, i32 6
  %229 = load i8, ptr %228, align 2
  %230 = zext i8 %229 to i32
  %231 = load i8, ptr %173, align 4
  %232 = zext i8 %231 to i32
  %233 = load i8, ptr %158, align 2
  %234 = zext i8 %233 to i32
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.or51211_init, i32 noundef %224, i32 noundef %227, i32 noundef %230, i32 noundef %232, i32 noundef %234) #11
  store i8 4, ptr %13, align 8
  store i8 0, ptr %146, align 1
  store i8 3, ptr %147, align 2
  store i8 0, ptr %148, align 1
  call void @msleep(i32 noundef 20) #10
  %236 = load ptr, ptr %16, align 4
  %237 = load i8, ptr %236, align 4
  %238 = call fastcc i32 @i2c_writebytes(ptr noundef %15, i8 noundef zeroext %237, ptr noundef nonnull %13, i32 noundef 3)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %222
  %241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

242:                                              ; preds = %222
  call void @msleep(i32 noundef 20) #10
  %243 = load ptr, ptr %16, align 4
  %244 = load i8, ptr %243, align 4
  %245 = getelementptr inbounds [14 x i8], ptr %13, i32 0, i32 8
  %246 = call fastcc i32 @i2c_readbytes(ptr noundef %15, i8 noundef zeroext %244, ptr noundef %245, i32 noundef 2)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %242
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.or51211_init) #11
  br label %253

250:                                              ; preds = %242
  %251 = load i8, ptr %18, align 4
  %252 = or i8 %251, 1
  store i8 %252, ptr %18, align 4
  br label %253

253:                                              ; preds = %250, %248, %240, %209, %196, %184, %168, %161, %153, %143, %138, %29, %1
  %254 = phi i32 [ %26, %29 ], [ -1, %138 ], [ -1, %143 ], [ -1, %153 ], [ -1, %161 ], [ -1, %168 ], [ -1, %184 ], [ -1, %196 ], [ -1, %209 ], [ -1, %240 ], [ -1, %248 ], [ 0, %250 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  ret i32 %254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @or51211_sleep(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51211_set_parameters(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [14 x i8], align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.or51211_state, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %8, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %109, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0) #10
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 %22(ptr noundef %0, i32 noundef 0) #10
  br label %26

26:                                               ; preds = %24, %19, %15
  %27 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %7, i8 0, i32 14, i1 false) #10, !annotation !8
  %28 = getelementptr inbounds %struct.or51211_state, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.or51211_config, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0, i32 noundef 0) #10
  %32 = load ptr, ptr %28, align 4
  %33 = load i8, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %34 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = zext i8 %33 to i16
  store i16 %35, ptr %6, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr @run_buf, ptr %37, align 4
  %38 = load ptr, ptr %27, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %6, i32 noundef 1) #10
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %26
  %42 = zext i8 %33 to i32
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %42, i32 noundef %39) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.or51211_setmode) #11
  br label %107

45:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @msleep(i32 noundef 10) #10
  %46 = load ptr, ptr %28, align 4
  %47 = load i8, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %48 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %48, align 4, !annotation !8
  %49 = zext i8 %47 to i16
  store i16 %49, ptr %5, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr @run_buf, ptr %51, align 4
  %52 = load ptr, ptr %27, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %5, i32 noundef 1) #10
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = zext i8 %47 to i32
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %56, i32 noundef %53) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.or51211_setmode) #11
  br label %107

59:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @msleep(i32 noundef 10) #10
  %60 = load ptr, ptr %28, align 4
  %61 = load i8, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %62 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %62, align 4, !annotation !8
  %63 = zext i8 %61 to i16
  store i16 %63, ptr %4, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr @cmd_buf, ptr %65, align 4
  %66 = load ptr, ptr %27, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %4, i32 noundef 1) #10
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = zext i8 %61 to i32
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %70, i32 noundef %67) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.or51211_setmode) #11
  br label %107

73:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  store i8 4, ptr %7, align 1
  %74 = getelementptr inbounds [14 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %74, align 1
  %75 = getelementptr inbounds [14 x i8], ptr %7, i32 0, i32 2
  store i8 3, ptr %75, align 1
  %76 = getelementptr inbounds [14 x i8], ptr %7, i32 0, i32 3
  store i8 0, ptr %76, align 1
  call void @msleep(i32 noundef 20) #10
  %77 = load ptr, ptr %28, align 4
  %78 = load i8, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %79 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %79, align 4, !annotation !8
  %80 = zext i8 %78 to i16
  store i16 %80, ptr %3, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %7, ptr %82, align 4
  %83 = load ptr, ptr %27, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %3, i32 noundef 1) #10
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %91

87:                                               ; preds = %73
  %88 = zext i8 %78 to i32
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %88, i32 noundef %84) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.or51211_setmode) #11
  br label %91

91:                                               ; preds = %87, %86
  call void @msleep(i32 noundef 3) #10
  %92 = load ptr, ptr %28, align 4
  %93 = load i8, ptr %92, align 4
  %94 = getelementptr inbounds [14 x i8], ptr %7, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %95 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %95, align 4, !annotation !8
  %96 = zext i8 %93 to i16
  store i16 %96, ptr %2, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 1, ptr %97, align 2
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %94, ptr %98, align 4
  %99 = load ptr, ptr %27, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %2, i32 noundef 1) #10
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %106, label %102

102:                                              ; preds = %91
  %103 = zext i8 %93 to i32
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_readbytes, i32 noundef %103, i32 noundef %100) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.or51211_setmode) #11
  br label %107

106:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  br label %107

107:                                              ; preds = %106, %102, %69, %55, %41
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %7) #10
  %108 = load i32, ptr %8, align 4
  store i32 %108, ptr %11, align 4
  br label %109

109:                                              ; preds = %107, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51211_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i32 500, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51211_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [4 x i8], align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 196612, ptr %6, align 4
  store i32 0, ptr %1, align 4
  %9 = getelementptr inbounds %struct.or51211_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %12, align 4, !annotation !8
  %13 = zext i8 %11 to i16
  store i16 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1) #10
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = zext i8 %11 to i32
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %20, i32 noundef %17) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.or51211_read_status) #11
  br label %44

23:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @msleep(i32 noundef 3) #10
  %24 = load ptr, ptr %9, align 4
  %25 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  %27 = zext i8 %25 to i16
  store i16 %27, ptr %3, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %29, align 4
  %30 = load ptr, ptr %8, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 1) #10
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = zext i8 %25 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_readbytes, i32 noundef %34, i32 noundef %31) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.or51211_read_status) #11
  br label %44

37:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %38 = load i8, ptr %5, align 2
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %1, align 4
  %43 = or i32 %42, 31
  store i32 %43, ptr %1, align 4
  br label %44

44:                                               ; preds = %41, %37, %33, %19
  %45 = phi i32 [ -1, %19 ], [ -1, %33 ], [ 0, %41 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %45
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51211_read_ber(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i32 -38, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @or51211_read_signal_strength(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
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
  %11 = getelementptr inbounds %struct.or51211_state, ptr %5, i32 0, i32 5
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
define internal i32 @or51211_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [3 x i8], align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  store i8 4, ptr %6, align 1
  %9 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 2
  store i8 4, ptr %10, align 1
  %11 = getelementptr inbounds %struct.or51211_state, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %14 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %14, align 4, !annotation !8
  %15 = zext i8 %13 to i16
  store i16 %15, ptr %4, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %4, i32 noundef 1) #10
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = zext i8 %13 to i32
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %22, i32 noundef %19) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.or51211_read_snr) #11
  br label %55

25:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %26 = load ptr, ptr %11, align 4
  %27 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %28 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %28, align 4, !annotation !8
  %29 = zext i8 %27 to i16
  store i16 %29, ptr %3, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %31, align 4
  %32 = load ptr, ptr %8, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %3, i32 noundef 1) #10
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = zext i8 %27 to i32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_readbytes, i32 noundef %36, i32 noundef %33) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.or51211_read_snr) #11
  br label %55

39:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %40 = load i8, ptr %5, align 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = zext i8 %40 to i32
  %44 = call i32 @intlog10(i32 noundef %43) #10
  %45 = shl i32 %44, 1
  %46 = icmp ugt i32 %45, 89599047
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = sub nuw nsw i32 89599047, %45
  %49 = mul nuw nsw i32 %48, 10
  br label %50

50:                                               ; preds = %47, %42, %39
  %51 = phi i32 [ %49, %47 ], [ 0, %39 ], [ 0, %42 ]
  %52 = getelementptr inbounds %struct.or51211_state, ptr %8, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  %53 = lshr i32 %51, 16
  %54 = trunc i32 %53 to i16
  store i16 %54, ptr %1, align 2
  br label %55

55:                                               ; preds = %50, %35, %21
  %56 = phi i32 [ -1, %21 ], [ -1, %35 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %56
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @or51211_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i32 -38, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_writebytes(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = zext i8 %1 to i16
  store i16 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = trunc i32 %3 to i16
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %5, i32 noundef 1) #10
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = zext i8 %1 to i32
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_writebytes, i32 noundef %16, i32 noundef %13) #11
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i32 [ -121, %15 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_readbytes(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = zext i8 %1 to i16
  store i16 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 1, ptr %8, align 2
  %9 = trunc i32 %3 to i16
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %5, i32 noundef 1) #10
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = zext i8 %1 to i32
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.i2c_readbytes, i32 noundef %16, i32 noundef %13) #11
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i32 [ -121, %15 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret i32 %19
}

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
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
