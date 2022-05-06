; ModuleID = '/llk/IR/drivers/media/tuners/tea5767.c_pt.bc'
source_filename = "../drivers/media/tuners/tea5767.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tea5767_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tea5767_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tea5767_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tea5767_autodetection:\09\09\09\09\09"
module asm "\09.asciz \09\22tea5767_autodetection\22\09\09\09\09\09"
module asm "__kstrtabns_tea5767_autodetection:\09\09\09\09\09"
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.tea5767_priv = type { %struct.tuner_i2c_props, i32, %struct.tea5767_ctrl }
%struct.tea5767_ctrl = type { i8, i32 }
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
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [52 x i8] c"\014tea5767: It is not a TEA5767. Received %i bytes.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\014tea5767: All bytes are equal. It is not a TEA5767\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\014tea5767: Chip ID is not zero. It is not a TEA5767\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tea5767\00", align 1
@tea5767_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"tea5767\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @tea5767_release, ptr null, ptr @tea5767_standby, ptr null, ptr null, ptr null, ptr @set_radio_freq, ptr @tea5767_set_config, ptr @tea5767_get_frequency, ptr null, ptr null, ptr @tea5767_get_status, ptr @tea5767_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Philips TEA5767HN FM Radio\00", align 1
@__kstrtab_tea5767_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tea5767_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tea5767_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tea5767_attach to i32), ptr @__kstrtab_tea5767_attach, ptr @__kstrtabns_tea5767_attach }, section "___ksymtab_gpl+tea5767_attach", align 4
@__kstrtab_tea5767_autodetection = external dso_local constant [0 x i8], align 1
@__kstrtabns_tea5767_autodetection = external dso_local constant [0 x i8], align 1
@__ksymtab_tea5767_autodetection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tea5767_autodetection to i32), ptr @__kstrtab_tea5767_autodetection, ptr @__kstrtabns_tea5767_autodetection }, section "___ksymtab_gpl+tea5767_autodetection", align 4
@__UNIQUE_ID_description251 = internal constant [44 x i8] c"description=Philips TEA5767 FM tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [50 x i8] c"author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 5)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\017%s %d-%04x: radio freq = %d.%03d MHz\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: TEA5767 set to mono\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\017%s %d-%04x: TEA5767 set to stereo\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"\017%s %d-%04x: radio HIGH LO inject xtal @ 13 MHz\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"\017%s %d-%04x: radio LOW LO inject xtal @ 13 MHz\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"\017%s %d-%04x: radio LOW LO inject xtal @ 32,768 MHz\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"\017%s %d-%04x: radio HIGH LO inject xtal @ 32,768 MHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\016%s %d-%04x: Ready Flag ON\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: Ready Flag OFF\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: Tuner at band limit\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"\016%s %d-%04x: Tuner not at band limit\0A\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"\016%s %d-%04x: Frequency %d.%03d KHz (divider = 0x%04x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"\016%s %d-%04x: Stereo\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\016%s %d-%04x: Mono\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\016%s %d-%04x: IF Counter = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: ADC Level = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"\016%s %d-%04x: Chip ID = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\016%s %d-%04x: Reserved = 0x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: Signal strength: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: Radio ST GET = %02x\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_tea5767_attach, ptr @__ksymtab_tea5767_autodetection, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tea5767_autodetection(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %4, i8 -1, i32 7, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 7, ptr %5, align 4, !annotation !8
  %6 = zext i8 %1 to i16
  store i16 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %7, align 2
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %8, align 4
  %9 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #8
  %10 = icmp eq i32 %9, 1
  %11 = select i1 %10, i32 7, i32 %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %11) #9
  br label %41

15:                                               ; preds = %2
  %16 = load i8, ptr %4, align 1
  %17 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %16, %18
  %20 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %16, %21
  %23 = select i1 %19, i1 %22, i1 false
  %24 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %16, %25
  %27 = select i1 %23, i1 %26, i1 false
  %28 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %16, %29
  %31 = select i1 %27, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %41

34:                                               ; preds = %15
  %35 = and i8 %25, 15
  %36 = icmp ne i8 %35, 0
  %37 = icmp ne i8 %29, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %41

41:                                               ; preds = %39, %34, %32, %13
  %42 = phi i32 [ -22, %13 ], [ -22, %32 ], [ -22, %39 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #8
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tea5767_attach(ptr noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %8, align 4
  store i8 %2, ptr %5, align 8
  %9 = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 3
  store ptr @.str.3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tea5767_priv, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.tea5767_priv, ptr %5, i32 0, i32 2, i32 1
  store i32 1, ptr %12, align 8
  %13 = load i8, ptr %11, align 4
  %14 = or i8 %13, 47
  store i8 %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %15, ptr noundef nonnull align 4 dereferenceable(220) @tea5767_tuner_ops, i32 220, i1 false)
  %16 = icmp eq ptr %1, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi i32 [ %19, %17 ], [ -1, %7 ]
  %22 = zext i8 %2 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %21, i32 noundef %22, ptr noundef nonnull @.str.5) #9
  br label %24

24:                                               ; preds = %20, %3
  %25 = phi ptr [ %0, %20 ], [ null, %3 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tea5767_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tea5767_standby(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  store i8 27, ptr %3, align 1
  %6 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 1
  store i8 107, ptr %6, align 1
  %7 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 2
  store i8 1, ptr %7, align 1
  %8 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 3
  store i8 -26, ptr %8, align 1
  %9 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 4
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %10 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 5, ptr %10, align 4, !annotation !8
  %11 = load i8, ptr %5, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %18 = and i32 %17, -5
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %33, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %27, %25 ], [ -1, %20 ]
  %30 = load i8, ptr %5, align 4
  %31 = zext i8 %30 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %22, i32 noundef %29, i32 noundef %31, i32 noundef %17) #9
  br label %33

33:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_radio_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [5 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !8
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i32 [ %19, %17 ], [ -1, %11 ]
  %22 = load i8, ptr %7, align 4
  %23 = zext i8 %22 to i32
  %24 = udiv i32 %8, 16000
  %25 = lshr i32 %8, 4
  %26 = urem i32 %25, 1000
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %13, i32 noundef %21, i32 noundef %23, i32 noundef %24, i32 noundef %26) #9
  br label %28

28:                                               ; preds = %20, %2
  %29 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 2
  %30 = getelementptr inbounds %struct.tea5767_priv, ptr %7, i32 0, i32 2
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  store i8 %32, ptr %29, align 2
  %33 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr @debug, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %35, label %38, label %55

38:                                               ; preds = %28
  br i1 %37, label %53, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i32 [ %47, %45 ], [ -1, %39 ]
  %50 = load i8, ptr %7, align 4
  %51 = zext i8 %50 to i32
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %41, i32 noundef %49, i32 noundef %51) #9
  br label %53

53:                                               ; preds = %48, %38
  %54 = or i8 %32, 8
  store i8 %54, ptr %29, align 2
  br label %70

55:                                               ; preds = %28
  br i1 %37, label %70, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i32 [ %64, %62 ], [ -1, %56 ]
  %67 = load i8, ptr %7, align 4
  %68 = zext i8 %67 to i32
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %58, i32 noundef %66, i32 noundef %68) #9
  br label %70

70:                                               ; preds = %65, %55, %53
  %71 = phi i8 [ %32, %55 ], [ %32, %65 ], [ %54, %53 ]
  %72 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 3
  %73 = load i8, ptr %30, align 4
  %74 = shl i8 %73, 6
  %75 = and i8 %74, -128
  %76 = and i8 %73, 4
  %77 = or i8 %76, %75
  %78 = lshr i8 %73, 2
  %79 = and i8 %78, 2
  %80 = or i8 %79, %77
  %81 = lshr i8 %73, 1
  %82 = and i8 %81, 8
  %83 = or i8 %82, %80
  %84 = and i8 %73, 32
  %85 = or i8 %84, %83
  store i8 %85, ptr %72, align 1
  %86 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 4
  %87 = and i8 %73, 64
  %88 = or i8 %87, -128
  %89 = icmp slt i8 %73, 0
  %90 = select i1 %89, i8 %88, i8 %87
  store i8 %90, ptr %86, align 2
  %91 = getelementptr inbounds %struct.tea5767_priv, ptr %7, i32 0, i32 2, i32 1
  %92 = load i32, ptr %91, align 4
  switch i32 %92, label %158 [
    i32 3, label %93
    i32 2, label %115
    i32 0, label %136
  ]

93:                                               ; preds = %70
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.i2c_adapter, ptr %100, i32 0, i32 11
  %104 = load i32, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = phi i32 [ %104, %102 ], [ -1, %96 ]
  %107 = load i8, ptr %7, align 4
  %108 = zext i8 %107 to i32
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %98, i32 noundef %106, i32 noundef %108) #9
  br label %110

110:                                              ; preds = %105, %93
  %111 = or i8 %71, 16
  store i8 %111, ptr %29, align 2
  %112 = mul i32 %8, 250
  %113 = add i32 %112, 950000
  %114 = udiv i32 %113, 50000
  br label %181

115:                                              ; preds = %70
  %116 = load i32, ptr @debug, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.i2c_adapter, ptr %122, i32 0, i32 11
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %118
  %128 = phi i32 [ %126, %124 ], [ -1, %118 ]
  %129 = load i8, ptr %7, align 4
  %130 = zext i8 %129 to i32
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %120, i32 noundef %128, i32 noundef %130) #9
  br label %132

132:                                              ; preds = %127, %115
  %133 = mul i32 %8, 250
  %134 = add i32 %133, -900000
  %135 = udiv i32 %134, 50000
  br label %181

136:                                              ; preds = %70
  %137 = load i32, ptr @debug, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %153, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.i2c_adapter, ptr %143, i32 0, i32 11
  %147 = load i32, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %139
  %149 = phi i32 [ %147, %145 ], [ -1, %139 ]
  %150 = load i8, ptr %7, align 4
  %151 = zext i8 %150 to i32
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %141, i32 noundef %149, i32 noundef %151) #9
  br label %153

153:                                              ; preds = %148, %136
  %154 = or i8 %85, 16
  store i8 %154, ptr %72, align 1
  %155 = mul i32 %8, 250
  %156 = add i32 %155, -908616
  %157 = lshr i32 %156, 15
  br label %181

158:                                              ; preds = %70
  %159 = load i32, ptr @debug, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.i2c_adapter, ptr %165, i32 0, i32 11
  %169 = load i32, ptr %168, align 4
  br label %170

170:                                              ; preds = %167, %161
  %171 = phi i32 [ %169, %167 ], [ -1, %161 ]
  %172 = load i8, ptr %7, align 4
  %173 = zext i8 %172 to i32
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %163, i32 noundef %171, i32 noundef %173) #9
  br label %175

175:                                              ; preds = %170, %158
  %176 = or i8 %71, 16
  store i8 %176, ptr %29, align 2
  %177 = or i8 %85, 16
  store i8 %177, ptr %72, align 1
  %178 = mul i32 %8, 250
  %179 = add i32 %178, 941384
  %180 = lshr i32 %179, 15
  br label %181

181:                                              ; preds = %175, %153, %132, %110
  %182 = phi i32 [ %180, %175 ], [ %157, %153 ], [ %135, %132 ], [ %114, %110 ]
  %183 = lshr i32 %182, 8
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 63
  store i8 %185, ptr %5, align 2
  %186 = trunc i32 %182 to i8
  %187 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 1
  store i8 %186, ptr %187, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %188 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 5, ptr %188, align 4, !annotation !8
  %189 = load i8, ptr %7, align 4
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %4, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %191, align 2
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %192, align 4
  %193 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  %196 = and i32 %195, -5
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %211, label %198

198:                                              ; preds = %181
  %199 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr %193, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.i2c_adapter, ptr %201, i32 0, i32 11
  %205 = load i32, ptr %204, align 4
  br label %206

206:                                              ; preds = %203, %198
  %207 = phi i32 [ %205, %203 ], [ -1, %198 ]
  %208 = load i8, ptr %7, align 4
  %209 = zext i8 %208 to i32
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %200, i32 noundef %207, i32 noundef %209, i32 noundef %195) #9
  br label %211

211:                                              ; preds = %206, %181
  %212 = load i32, ptr @debug, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %403, label %214

214:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %215 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 5, ptr %215, align 4, !annotation !8
  %216 = load i8, ptr %7, align 4
  %217 = zext i8 %216 to i16
  store i16 %217, ptr %3, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %218, align 2
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %219, align 4
  %220 = load ptr, ptr %193, align 4
  %221 = call i32 @i2c_transfer(ptr noundef %220, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %222 = and i32 %221, -5
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %237, label %224

224:                                              ; preds = %214
  %225 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %226 = load ptr, ptr %225, align 4
  %227 = load ptr, ptr %193, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.i2c_adapter, ptr %227, i32 0, i32 11
  %231 = load i32, ptr %230, align 4
  br label %232

232:                                              ; preds = %229, %224
  %233 = phi i32 [ %231, %229 ], [ -1, %224 ]
  %234 = load i8, ptr %7, align 4
  %235 = zext i8 %234 to i32
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %226, i32 noundef %233, i32 noundef %235, i32 noundef %221) #9
  br label %403

237:                                              ; preds = %214
  %238 = load i8, ptr %5, align 2
  %239 = icmp sgt i8 %238, -1
  %240 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %241 = load ptr, ptr %240, align 4
  %242 = load ptr, ptr %193, align 4
  %243 = icmp eq ptr %242, null
  br i1 %239, label %253, label %244

244:                                              ; preds = %237
  br i1 %243, label %248, label %245

245:                                              ; preds = %244
  %246 = getelementptr inbounds %struct.i2c_adapter, ptr %242, i32 0, i32 11
  %247 = load i32, ptr %246, align 4
  br label %248

248:                                              ; preds = %245, %244
  %249 = phi i32 [ %247, %245 ], [ -1, %244 ]
  %250 = load i8, ptr %7, align 4
  %251 = zext i8 %250 to i32
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %241, i32 noundef %249, i32 noundef %251) #9
  br label %262

253:                                              ; preds = %237
  br i1 %243, label %257, label %254

254:                                              ; preds = %253
  %255 = getelementptr inbounds %struct.i2c_adapter, ptr %242, i32 0, i32 11
  %256 = load i32, ptr %255, align 4
  br label %257

257:                                              ; preds = %254, %253
  %258 = phi i32 [ %256, %254 ], [ -1, %253 ]
  %259 = load i8, ptr %7, align 4
  %260 = zext i8 %259 to i32
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %241, i32 noundef %258, i32 noundef %260) #9
  br label %262

262:                                              ; preds = %257, %248
  %263 = load i8, ptr %5, align 2
  %264 = and i8 %263, 64
  %265 = icmp eq i8 %264, 0
  %266 = load ptr, ptr %240, align 4
  %267 = load ptr, ptr %193, align 4
  %268 = icmp eq ptr %267, null
  br i1 %265, label %278, label %269

269:                                              ; preds = %262
  br i1 %268, label %273, label %270

270:                                              ; preds = %269
  %271 = getelementptr inbounds %struct.i2c_adapter, ptr %267, i32 0, i32 11
  %272 = load i32, ptr %271, align 4
  br label %273

273:                                              ; preds = %270, %269
  %274 = phi i32 [ %272, %270 ], [ -1, %269 ]
  %275 = load i8, ptr %7, align 4
  %276 = zext i8 %275 to i32
  %277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %266, i32 noundef %274, i32 noundef %276) #9
  br label %287

278:                                              ; preds = %262
  br i1 %268, label %282, label %279

279:                                              ; preds = %278
  %280 = getelementptr inbounds %struct.i2c_adapter, ptr %267, i32 0, i32 11
  %281 = load i32, ptr %280, align 4
  br label %282

282:                                              ; preds = %279, %278
  %283 = phi i32 [ %281, %279 ], [ -1, %278 ]
  %284 = load i8, ptr %7, align 4
  %285 = zext i8 %284 to i32
  %286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %266, i32 noundef %283, i32 noundef %285) #9
  br label %287

287:                                              ; preds = %282, %273
  %288 = load i8, ptr %5, align 2
  %289 = and i8 %288, 63
  %290 = zext i8 %289 to i32
  %291 = shl nuw nsw i32 %290, 8
  %292 = load i8, ptr %187, align 1
  %293 = zext i8 %292 to i32
  %294 = or i32 %291, %293
  %295 = load i32, ptr %91, align 4
  switch i32 %295, label %305 [
    i32 3, label %296
    i32 2, label %299
    i32 0, label %302
  ]

296:                                              ; preds = %287
  %297 = mul nuw nsw i32 %294, 50000
  %298 = add nsw i32 %297, -925000
  br label %308

299:                                              ; preds = %287
  %300 = mul nuw nsw i32 %294, 50000
  %301 = add nuw nsw i32 %300, 925000
  br label %308

302:                                              ; preds = %287
  %303 = shl nuw nsw i32 %294, 15
  %304 = add nuw nsw i32 %303, 925000
  br label %308

305:                                              ; preds = %287
  %306 = shl nuw nsw i32 %294, 15
  %307 = add nsw i32 %306, -925000
  br label %308

308:                                              ; preds = %305, %302, %299, %296
  %309 = phi i32 [ %307, %305 ], [ %304, %302 ], [ %301, %299 ], [ %298, %296 ]
  %310 = lshr exact i32 %309, 2
  store i8 %289, ptr %5, align 2
  %311 = load ptr, ptr %240, align 4
  %312 = load ptr, ptr %193, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.i2c_adapter, ptr %312, i32 0, i32 11
  %316 = load i32, ptr %315, align 4
  br label %317

317:                                              ; preds = %314, %308
  %318 = phi i32 [ %316, %314 ], [ -1, %308 ]
  %319 = load i8, ptr %7, align 4
  %320 = zext i8 %319 to i32
  %321 = udiv i32 %309, 4000
  %322 = urem i32 %310, 1000
  %323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %311, i32 noundef %318, i32 noundef %320, i32 noundef %321, i32 noundef %322, i32 noundef %294) #9
  %324 = load i8, ptr %29, align 2
  %325 = icmp sgt i8 %324, -1
  %326 = load ptr, ptr %240, align 4
  %327 = load ptr, ptr %193, align 4
  %328 = icmp eq ptr %327, null
  br i1 %325, label %338, label %329

329:                                              ; preds = %317
  br i1 %328, label %333, label %330

330:                                              ; preds = %329
  %331 = getelementptr inbounds %struct.i2c_adapter, ptr %327, i32 0, i32 11
  %332 = load i32, ptr %331, align 4
  br label %333

333:                                              ; preds = %330, %329
  %334 = phi i32 [ %332, %330 ], [ -1, %329 ]
  %335 = load i8, ptr %7, align 4
  %336 = zext i8 %335 to i32
  %337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %326, i32 noundef %334, i32 noundef %336) #9
  br label %347

338:                                              ; preds = %317
  br i1 %328, label %342, label %339

339:                                              ; preds = %338
  %340 = getelementptr inbounds %struct.i2c_adapter, ptr %327, i32 0, i32 11
  %341 = load i32, ptr %340, align 4
  br label %342

342:                                              ; preds = %339, %338
  %343 = phi i32 [ %341, %339 ], [ -1, %338 ]
  %344 = load i8, ptr %7, align 4
  %345 = zext i8 %344 to i32
  %346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %326, i32 noundef %343, i32 noundef %345) #9
  br label %347

347:                                              ; preds = %342, %333
  %348 = load ptr, ptr %240, align 4
  %349 = load ptr, ptr %193, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.i2c_adapter, ptr %349, i32 0, i32 11
  %353 = load i32, ptr %352, align 4
  br label %354

354:                                              ; preds = %351, %347
  %355 = phi i32 [ %353, %351 ], [ -1, %347 ]
  %356 = load i8, ptr %7, align 4
  %357 = zext i8 %356 to i32
  %358 = load i8, ptr %29, align 2
  %359 = and i8 %358, 127
  %360 = zext i8 %359 to i32
  %361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %348, i32 noundef %355, i32 noundef %357, i32 noundef %360) #9
  %362 = load ptr, ptr %240, align 4
  %363 = load ptr, ptr %193, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %368, label %365

365:                                              ; preds = %354
  %366 = getelementptr inbounds %struct.i2c_adapter, ptr %363, i32 0, i32 11
  %367 = load i32, ptr %366, align 4
  br label %368

368:                                              ; preds = %365, %354
  %369 = phi i32 [ %367, %365 ], [ -1, %354 ]
  %370 = load i8, ptr %7, align 4
  %371 = zext i8 %370 to i32
  %372 = load i8, ptr %72, align 1
  %373 = lshr i8 %372, 4
  %374 = zext i8 %373 to i32
  %375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %362, i32 noundef %369, i32 noundef %371, i32 noundef %374) #9
  %376 = load ptr, ptr %240, align 4
  %377 = load ptr, ptr %193, align 4
  %378 = icmp eq ptr %377, null
  br i1 %378, label %382, label %379

379:                                              ; preds = %368
  %380 = getelementptr inbounds %struct.i2c_adapter, ptr %377, i32 0, i32 11
  %381 = load i32, ptr %380, align 4
  br label %382

382:                                              ; preds = %379, %368
  %383 = phi i32 [ %381, %379 ], [ -1, %368 ]
  %384 = load i8, ptr %7, align 4
  %385 = zext i8 %384 to i32
  %386 = load i8, ptr %72, align 1
  %387 = and i8 %386, 15
  %388 = zext i8 %387 to i32
  %389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %376, i32 noundef %383, i32 noundef %385, i32 noundef %388) #9
  %390 = load ptr, ptr %240, align 4
  %391 = load ptr, ptr %193, align 4
  %392 = icmp eq ptr %391, null
  br i1 %392, label %396, label %393

393:                                              ; preds = %382
  %394 = getelementptr inbounds %struct.i2c_adapter, ptr %391, i32 0, i32 11
  %395 = load i32, ptr %394, align 4
  br label %396

396:                                              ; preds = %393, %382
  %397 = phi i32 [ %395, %393 ], [ -1, %382 ]
  %398 = load i8, ptr %7, align 4
  %399 = zext i8 %398 to i32
  %400 = load i8, ptr %86, align 2
  %401 = zext i8 %400 to i32
  %402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %390, i32 noundef %397, i32 noundef %399, i32 noundef %401) #9
  br label %403

403:                                              ; preds = %396, %232, %211
  %404 = mul i32 %8, 125
  %405 = lshr i32 %404, 1
  %406 = getelementptr inbounds %struct.tea5767_priv, ptr %7, i32 0, i32 1
  store i32 %405, ptr %406, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %5) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tea5767_set_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tea5767_priv, ptr %4, i32 0, i32 2
  %6 = load i64, ptr %1, align 1
  store i64 %6, ptr %5, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tea5767_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tea5767_priv, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tea5767_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #8
  store i32 0, ptr %1, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 5, ptr %7, align 4, !annotation !8
  %8 = load i8, ptr %6, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %15 = and i32 %14, -5
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %24, %22 ], [ -1, %17 ]
  %27 = load i8, ptr %6, align 4
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %19, i32 noundef %26, i32 noundef %28, i32 noundef %14) #9
  br label %83

30:                                               ; preds = %2
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds i8, ptr %4, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, -16
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.tuner_i2c_props, ptr %31, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tuner_i2c_props, ptr %31, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i32 [ %47, %45 ], [ -1, %39 ]
  %50 = load i8, ptr %31, align 4
  %51 = zext i8 %50 to i32
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %41, i32 noundef %49, i32 noundef %51, i32 noundef %36) #9
  br label %53

53:                                               ; preds = %48, %30
  %54 = icmp eq i8 %34, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  store i32 1, ptr %1, align 4
  br label %56

56:                                               ; preds = %55, %53
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr inbounds i8, ptr %4, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, -128
  %61 = zext i8 %60 to i32
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.tuner_i2c_props, ptr %57, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tuner_i2c_props, ptr %57, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 11
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %64
  %74 = phi i32 [ %72, %70 ], [ -1, %64 ]
  %75 = load i8, ptr %57, align 4
  %76 = zext i8 %75 to i32
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %66, i32 noundef %74, i32 noundef %76, i32 noundef %61) #9
  br label %78

78:                                               ; preds = %73, %56
  %79 = icmp eq i8 %60, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %1, align 4
  %82 = or i32 %81, 2
  store i32 %82, ptr %1, align 4
  br label %83

83:                                               ; preds = %80, %78, %25
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tea5767_get_rf_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #8
  store i16 0, ptr %1, align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 5, ptr %7, align 4, !annotation !8
  %8 = load i8, ptr %6, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %15 = and i32 %14, -5
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %24, %22 ], [ -1, %17 ]
  %27 = load i8, ptr %6, align 4
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %19, i32 noundef %26, i32 noundef %28, i32 noundef %14) #9
  br label %55

30:                                               ; preds = %2
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds i8, ptr %4, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, -16
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.tuner_i2c_props, ptr %31, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tuner_i2c_props, ptr %31, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i32 [ %47, %45 ], [ -1, %39 ]
  %50 = load i8, ptr %31, align 4
  %51 = zext i8 %50 to i32
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %41, i32 noundef %49, i32 noundef %51, i32 noundef %36) #9
  br label %53

53:                                               ; preds = %48, %30
  %54 = trunc i32 %36 to i16
  store i16 %54, ptr %1, align 2
  br label %55

55:                                               ; preds = %53, %25
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
